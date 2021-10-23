using Base:Int8
using GLM, MixedModels
using Gadfly
using Cairo

include("1_data_import_filter.jl")

weekly_sero = DataFrame(
    Week=String[],
    S1=Int8[],
    RBD=Int8[],
)

push!(weekly_sero, 
(("2020x-03-16"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020x-03-16").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020x-03-16").RBD_seropositive)))
push!(weekly_sero, 
(("2020-03-23"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-03-23").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-03-23").RBD_seropositive)))
push!(weekly_sero, 
(("2020-03-30"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-03-30").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-03-30").RBD_seropositive)))
push!(weekly_sero, 
(("2020-04-06"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-04-06").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-04-06").RBD_seropositive)))
push!(weekly_sero, 
(("2020-04-13"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-04-13").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-04-13").RBD_seropositive)))
push!(weekly_sero, 
(("2020-04-20"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-04-20").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-04-20").RBD_seropositive)))
push!(weekly_sero, 
(("2020-04-27"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-04-27").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-04-27").RBD_seropositive)))
push!(weekly_sero, 
(("2020-05-04"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-05-04").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-05-04").RBD_seropositive)))
push!(weekly_sero, 
(("2020-05-11"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-05-11").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-05-11").RBD_seropositive)))
push!(weekly_sero, 
(("2020-05-18"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-05-18").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-05-18").RBD_seropositive)))
push!(weekly_sero, 
(("2020-05-25"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-05-25").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-05-25").RBD_seropositive)))
push!(weekly_sero, 
(("2020-06-01"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-06-01").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-06-01").RBD_seropositive)))
push!(weekly_sero, 
(("2020-06-08"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-06-08").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-06-08").RBD_seropositive)))
push!(weekly_sero, 
(("2020-06-15"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-06-15").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-06-15").RBD_seropositive)))
push!(weekly_sero, 
(("2020-06-22"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-06-22").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-06-22").RBD_seropositive)))
push!(weekly_sero, 
(("2020-06-29"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-06-29").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-06-29").RBD_seropositive)))
push!(weekly_sero, 
(("2020-07-06"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-07-06").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-07-06").RBD_seropositive)))
push!(weekly_sero, 
(("2020-07-13"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-07-13").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-07-13").RBD_seropositive)))
push!(weekly_sero, 
(("2020-07-20"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-07-20").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-07-20").RBD_seropositive)))
push!(weekly_sero, 
(("2020-07-27"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-07-27").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-07-27").RBD_seropositive)))
push!(weekly_sero, 
(("2020-08-03"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-08-03").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-08-03").RBD_seropositive)))
push!(weekly_sero, 
(("2020-08-10"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-08-10").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-08-10").RBD_seropositive)))
push!(weekly_sero, 
(("2020-08-17"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-08-17").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-08-17").RBD_seropositive)))
push!(weekly_sero, 
(("2020-08-24"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-08-24").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-08-24").RBD_seropositive)))
push!(weekly_sero, 
(("2020-08-31"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-08-31").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-08-31").RBD_seropositive)))
push!(weekly_sero, 
(("2020-09-07"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-09-07").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-09-07").RBD_seropositive)))
push!(weekly_sero, 
(("2020-09-14"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-09-14").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-09-14").RBD_seropositive)))
push!(weekly_sero, 
(("2020-09-21"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-09-21").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-09-21").RBD_seropositive)))
push!(weekly_sero, 
(("2020-09-28"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-09-28").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-09-28").RBD_seropositive)))
push!(weekly_sero, 
(("2020-10-05"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-10-05").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-10-05").RBD_seropositive)))
push!(weekly_sero, 
(("2020-10-12"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-10-12").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-10-12").RBD_seropositive)))
push!(weekly_sero, 
(("2020-10-19"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-10-19").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-10-19").RBD_seropositive)))
push!(weekly_sero, 
(("2020-10-26"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-10-26").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-10-26").RBD_seropositive)))
push!(weekly_sero, 
(("2020-11-02"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-11-02").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-11-02").RBD_seropositive)))
push!(weekly_sero, 
(("2020-11-09"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-11-09").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-11-09").RBD_seropositive)))
push!(weekly_sero, 
(("2020-11-16"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-11-16").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-11-16").RBD_seropositive)))
push!(weekly_sero, 
(("2020-11-23"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-11-23").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-11-23").RBD_seropositive)))
push!(weekly_sero, 
(("2020-11-30"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-11-30").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-11-30").RBD_seropositive)))
push!(weekly_sero, 
(("2020-12-07"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-12-07").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-12-07").RBD_seropositive)))
push!(weekly_sero, 
(("2020-12-14"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-12-14").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-12-14").RBD_seropositive)))
push!(weekly_sero, 
(("2020-12-21"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-12-21").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-12-21").RBD_seropositive)))
push!(weekly_sero, 
(("2020-12-28"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-12-28").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2020-12-28").RBD_seropositive)))
push!(weekly_sero, 
(("2021-01-04"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2021-01-04").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2021-01-04").RBD_seropositive)))
push!(weekly_sero, 
(("2021-01-11"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2021-01-11").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2021-01-11").RBD_seropositive)))
push!(weekly_sero, 
(("2021-01-18"),
count(i -> (i > 0), subset(data, :SampleWeek => x -> x .== "2021-01-18").S1_seropositive),
count(i -> (i > 0), subset(data, :SampleWeek == "2021-01-18").RBD_seropositive)))
