using Base:String
using DataFrames, Query
using CategoricalArrays
using CSV
using StatsBase
using Dates

include("1_data_import_filter.jl")

# create dataframe
c_data = DataFrame(
    Date=String[],
    S1=Float64[],
    RBD=Float64[],
)

# generate weekly dfs
Week1_data = data |> @filter(_.SampleWeek == Date("2020-03-30")) |> DataFrame
Week2_data = data |> @filter(_.SampleWeek == Date("2020-04-06")) |> DataFrame
Week3_data = data |> @filter(_.SampleWeek == Date("2020-04-13")) |> DataFrame
Week4_data = data |> @filter(_.SampleWeek == Date("2020-04-20")) |> DataFrame
Week5_data = data |> @filter(_.SampleWeek == Date("2020-04-27")) |> DataFrame
Week6_data = data |> @filter(_.SampleWeek == Date("2020-05-04")) |> DataFrame
Week7_data = data |> @filter(_.SampleWeek == Date("2020-05-11")) |> DataFrame
Week8_data = data |> @filter(_.SampleWeek == Date("2020-05-18")) |> DataFrame
Week9_data = data |> @filter(_.SampleWeek == Date("2020-05-25")) |> DataFrame
Week10_data = data |> @filter(_.SampleWeek == Date("2020-06-01")) |> DataFrame
Week11_data = data |> @filter(_.SampleWeek == Date("2020-06-08")) |> DataFrame
Week12_data = data |> @filter(_.SampleWeek == Date("2020-06-15")) |> DataFrame
Week13_data = data |> @filter(_.SampleWeek == Date("2020-06-22")) |> DataFrame
Week14_data = data |> @filter(_.SampleWeek == Date("2020-06-29")) |> DataFrame
Week15_data = data |> @filter(_.SampleWeek == Date("2020-07-06")) |> DataFrame
Week16_data = data |> @filter(_.SampleWeek == Date("2020-07-13")) |> DataFrame
Week17_data = data |> @filter(_.SampleWeek == Date("2020-07-20")) |> DataFrame
Week18_data = data |> @filter(_.SampleWeek == Date("2020-07-27")) |> DataFrame
Week19_data = data |> @filter(_.SampleWeek == Date("2020-08-03")) |> DataFrame
Week20_data = data |> @filter(_.SampleWeek == Date("2020-08-10")) |> DataFrame
Week21_data = data |> @filter(_.SampleWeek == Date("2020-08-17")) |> DataFrame
Week22_data = data |> @filter(_.SampleWeek == Date("2020-08-24")) |> DataFrame
Week23_data = data |> @filter(_.SampleWeek == Date("2020-08-31")) |> DataFrame
Week24_data = data |> @filter(_.SampleWeek == Date("2020-09-07")) |> DataFrame
Week25_data = data |> @filter(_.SampleWeek == Date("2020-09-14")) |> DataFrame
Week26_data = data |> @filter(_.SampleWeek == Date("2020-09-21")) |> DataFrame
Week27_data = data |> @filter(_.SampleWeek == Date("2020-09-28")) |> DataFrame
Week28_data = data |> @filter(_.SampleWeek == Date("2020-10-05")) |> DataFrame
Week29_data = data |> @filter(_.SampleWeek == Date("2020-10-12")) |> DataFrame
Week30_data = data |> @filter(_.SampleWeek == Date("2020-10-19")) |> DataFrame
Week31_data = data |> @filter(_.SampleWeek == Date("2020-10-26")) |> DataFrame
Week32_data = data |> @filter(_.SampleWeek == Date("2020-11-02")) |> DataFrame
Week33_data = data |> @filter(_.SampleWeek == Date("2020-11-09")) |> DataFrame
Week34_data = data |> @filter(_.SampleWeek == Date("2020-11-16")) |> DataFrame
Week35_data = data |> @filter(_.SampleWeek == Date("2020-11-23")) |> DataFrame
Week36_data = data |> @filter(_.SampleWeek == Date("2020-11-30")) |> DataFrame
Week37_data = data |> @filter(_.SampleWeek == Date("2020-12-07")) |> DataFrame
Week38_data = data |> @filter(_.SampleWeek == Date("2020-12-14")) |> DataFrame
Week39_data = data |> @filter(_.SampleWeek == Date("2020-12-21")) |> DataFrame
Week40_data = data |> @filter(_.SampleWeek == Date("2020-12-28")) |> DataFrame
Week41_data = data |> @filter(_.SampleWeek == Date("2021-01-04")) |> DataFrame
Week42_data = data |> @filter(_.SampleWeek == Date("2021-01-11")) |> DataFrame

# cumulative df
push!(c_data, (
        ("2020-03-30"),
        ((count(i -> (i > 0), Week1_data.S1_seropositive)))
        ((count(i -> (i > 0), Week1_data.RBD_seropositive)))