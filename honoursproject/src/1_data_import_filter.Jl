using DataFrames, Query
using CategoricalArrays
using CSV
using StatsBase
using Dates

# import ELISA data
raw_ELISA_data = DataFrame(CSV.File("./honoursproject/data/S1_RBD_ELISAs.csv"; missingstring="NA", pool=true))

# import metadata
raw_metadata = DataFrame(CSV.File("./honoursproject/data/metadata.csv"; missingstring="NA", pool=true))

# join datasets
joined_data = innerjoin(raw_ELISA_data, raw_metadata, on=:SampleID)
joined_data |> CSV.write("./honoursproject/data/joined_data.csv")

# remove multiple observations
data = combine(groupby(joined_data, :PatientID)) do sdf
    first(sort(sdf, :SampleDate, rev=true))
end

# proportion of seropositives per box
box = groupby(data, :Box)