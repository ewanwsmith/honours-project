using DataFrames, Query
using CategoricalArrays
using CSV
using StatsBase
using Dates
using Gadfly

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

# filter into months
March2020_data = data |> @filter(_.SampleMonth == Date("2020-03-01")) |> DataFrame
April2020_data = data |> @filter(_.SampleMonth == Date("2020-04-01")) |> DataFrame
May2020_data = data |> @filter(_.SampleMonth == Date("2020-05-01")) |> DataFrame
June2020_data = data |> @filter(_.SampleMonth == Date("2020-06-01")) |> DataFrame
July2020_data = data |> @filter(_.SampleMonth == Date("2020-07-01")) |> DataFrame
August2020_data = data |> @filter(_.SampleMonth == Date("2020-08-01")) |> DataFrame
September2020_data = data |> @filter(_.SampleMonth == Date("2020-09-01")) |> DataFrame
October2020_data = data |> @filter(_.SampleMonth == Date("2020-10-01")) |> DataFrame
November2020_data = data |> @filter(_.SampleMonth == Date("2020-11-01")) |> DataFrame
December2020_data = data |> @filter(_.SampleMonth == Date("2020-12-01")) |> DataFrame
January2021_data = data |> @filter(_.SampleMonth == Date("2021-01-01")) |> DataFrame