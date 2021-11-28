using DataFrames, Query
using CategoricalArrays
using CSV
using StatsBase
using Dates
using RCall

# import ELISA data
raw_ELISA_data = DataFrame(CSV.File("./honoursproject/data/S1_RBD_ELISAs.csv"; missingstring = "NA", pool = true))

# import metadata
raw_metadata = DataFrame(CSV.File("./honoursproject/data/metadata.csv"; missingstring = "NA", pool = true))

# join datasets
joined_data = innerjoin(raw_ELISA_data, raw_metadata, on = :SampleID)
joined_data |> CSV.write("./honoursproject/data/joined_data.csv")

# remove multiple observations
data = combine(groupby(joined_data, :PatientID)) do sdf
    first(sort(sdf, :SampleDate, rev = true))
end

# remove "unknown" CareType
data = filter(data -> !(data.CareType == "Unknown"), data)

# create SampleWeek & SampleMonth
data.SampleWeek = (broadcast(Dates.firstdayofweek, data.SampleDate))
data.SampleMonth = (broadcast(Dates.firstdayofmonth, data.SampleDate))


# remove entries after Christmas lag
data = filter(data -> (data.SampleDate < Date("2020-12-08")), data)


# read in postcode data for GG&C healthcare board
raw_East_Dunbartonshire_postcode = DataFrame(CSV.File("./honoursproject/data/postcodes/East Dunbartonshire postcodes.csv"; missingstring = "NA"))
raw_East_Renfrewshire_postcode = DataFrame(CSV.File("./honoursproject/data/postcodes/East Renfrewshire postcodes.csv"; missingstring = "NA"))
raw_Glasgow_postcode = DataFrame(CSV.File("./honoursproject/data/postcodes/Glasgow City postcodes.csv"; missingstring = "NA"))
raw_Inverclyde_postcode = DataFrame(CSV.File("./honoursproject/data/postcodes/Inverclyde postcodes.csv"; missingstring = "NA"))
raw_Renfrewshire_postcode = DataFrame(CSV.File("./honoursproject/data/postcodes/Renfrewshire postcodes.csv"; missingstring = "NA"))
raw_West_Dunbartonshire_postcode = DataFrame(CSV.File("./honoursproject/data/postcodes/West Dunbartonshire postcodes.csv"; missingstring = "NA"))

# merge postcodes into list 
postcodes = vcat(raw_East_Dunbartonshire_postcode.Postcode,
    raw_East_Renfrewshire_postcode.Postcode,
   raw_Glasgow_postcode.Postcode,
   raw_Inverclyde_postcode.Postcode,
   raw_Renfrewshire_postcode.Postcode,
   raw_West_Dunbartonshire_postcode.Postcode)

# filter dataset for just GG&C postcodes
@rput data postcodes
R"postcodes <- ifelse(nchar(postcodes) > 3, paste0(strtrim(postcodes, 3)), postcodes)"
R"library(stringr)"
R"str_trim(postcodes)"
R"data <- subset(data, data$PostcodePart %in% postcodes)"
@rget data postcodes

postcodes = unique(postcodes)


# save dataframes
CSV.write("./honoursproject/data/postcodes/postcodes.csv",  Tables.table(postcodes), writeheader=false)
data |> CSV.write("./honoursproject/data/data.csv")
