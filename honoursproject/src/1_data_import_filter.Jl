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

# create SampleWeek & SampleMonth
data.SampleWeek = (broadcast(Dates.firstdayofweek, data.SampleDate))
data.SampleMonth = (broadcast(Dates.firstdayofmonth, data.SampleDate))
data |> CSV.write("./honoursproject/data/data.csv")

# filter into months
Mar20_data = data |> @filter(_.SampleMonth == Date("2020-03-01")) |> DataFrame
Apr20_data = data |> @filter(_.SampleMonth == Date("2020-04-01")) |> DataFrame
May20_data = data |> @filter(_.SampleMonth == Date("2020-05-01")) |> DataFrame
Jun20_data = data |> @filter(_.SampleMonth == Date("2020-06-01")) |> DataFrame
Jul20_data = data |> @filter(_.SampleMonth == Date("2020-07-01")) |> DataFrame
Aug20_data = data |> @filter(_.SampleMonth == Date("2020-08-01")) |> DataFrame
Sep20_data = data |> @filter(_.SampleMonth == Date("2020-09-01")) |> DataFrame
Oct20_data = data |> @filter(_.SampleMonth == Date("2020-10-01")) |> DataFrame
Nov20_data = data |> @filter(_.SampleMonth == Date("2020-11-01")) |> DataFrame
Dec20_data = data |> @filter(_.SampleMonth == Date("2020-12-01")) |> DataFrame
Jan21_data = data |> @filter(_.SampleMonth == Date("2021-01-01")) |> DataFrame