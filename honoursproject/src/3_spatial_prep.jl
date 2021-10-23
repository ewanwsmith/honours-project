using Base:String
using DataFrames, Query
using CategoricalArrays
using CSV
using StatsBase
using Dates

include("1_data_import_filter.jl")

# add day of dataset to data
firstdate = Date(first(sort(data.SampleDate)))
data.DaysSince = (data.SampleDate - firstdate)

# create dataframe
c_data = DataFrame(
Date=String[],
S1=Int64[],
S1_prop=Float64[],
RBD=Int64[],
RBD_prop=Float64[],
)

# weekly data
week1 = data |> @filter(_.DaysSince < (Date("2020-03-16") - firstdate)) |> DataFrame
week46 = data |> @filter(_.DaysSince < (Date("2021-01-18") - firstdate)) |> DataFrame    

push!(c_data, (("2020-03-16"),
    (count(i -> (i > 0), week1.S1_seropositive)),
    ((count(i -> (i > 0), week1.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week1.RBD_seropositive)),
    ((count(i -> (i > 0), week1.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))
week2 = data |> @filter(_.DaysSince < (Date("2020-03-23") - firstdate)) |> DataFrame
push!(c_data, (("2020-03-23"),
    (count(i -> (i > 0), week2.S1_seropositive)),
    ((count(i -> (i > 0), week2.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week2.RBD_seropositive)),
    ((count(i -> (i > 0), week2.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))
week3 = data |> @filter(_.DaysSince < (Date("2020-03-30") - firstdate)) |> DataFrame
push!(c_data, (("2020-03-30"),
    (count(i -> (i > 0), week3.S1_seropositive)),
    ((count(i -> (i > 0), week3.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week3.RBD_seropositive)),
    ((count(i -> (i > 0), week3.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))
week4 = data |> @filter(_.DaysSince < (Date("2020-04-06") - firstdate)) |> DataFrame
push!(c_data, (("2020-04-06"),
    (count(i -> (i > 0), week4.S1_seropositive)),
    ((count(i -> (i > 0), week4.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week4.RBD_seropositive)),
    ((count(i -> (i > 0), week4.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))
week5 = data |> @filter(_.DaysSince < (Date("2020-04-13") - firstdate)) |> DataFrame
push!(c_data, (("2020-04-13"),
    (count(i -> (i > 0), week5.S1_seropositive)),
    ((count(i -> (i > 0), week5.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week5.RBD_seropositive)),
    ((count(i -> (i > 0), week5.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))
week6 = data |> @filter(_.DaysSince < (Date("2020-04-20") - firstdate)) |> DataFrame
push!(c_data, (("2020-04-20"),
    (count(i -> (i > 0), week6.S1_seropositive)),
    ((count(i -> (i > 0), week6.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week6.RBD_seropositive)),
    ((count(i -> (i > 0), week6.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))
week7 = data |> @filter(_.DaysSince < (Date("2020-04-27") - firstdate)) |> DataFrame
push!(c_data, (("2020-04-27"),
    (count(i -> (i > 0), week7.S1_seropositive)),
    ((count(i -> (i > 0), week7.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week7.RBD_seropositive)),
    ((count(i -> (i > 0), week7.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))
week8 = data |> @filter(_.DaysSince < (Date("2020-05-04") - firstdate)) |> DataFrame
push!(c_data, (("2020-05-04"),
    (count(i -> (i > 0), week8.S1_seropositive)),
    ((count(i -> (i > 0), week8.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week8.RBD_seropositive)),
    ((count(i -> (i > 0), week8.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))
week9 = data |> @filter(_.DaysSince < (Date("2020-05-11") - firstdate)) |> DataFrame
push!(c_data, (("2020-05-11"),
    (count(i -> (i > 0), week9.S1_seropositive)),
    ((count(i -> (i > 0), week9.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week9.RBD_seropositive)),
    ((count(i -> (i > 0), week9.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))
week10 = data |> @filter(_.DaysSince < (Date("2020-05-18") - firstdate)) |> DataFrame
push!(c_data, (("2020-05-18"),
    (count(i -> (i > 0), week10.S1_seropositive)),
    ((count(i -> (i > 0), week10.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week10.RBD_seropositive)),
    ((count(i -> (i > 0), week10.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))   
week11 = data |> @filter(_.DaysSince < (Date("2020-05-25") - firstdate)) |> DataFrame
push!(c_data, (("2020-05-25"),
    (count(i -> (i > 0), week11.S1_seropositive)),
    ((count(i -> (i > 0), week11.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week11.RBD_seropositive)),
    ((count(i -> (i > 0), week11.RBD_seropositive)) / length(week46.RBD_seropositive)),
    )) 
week12 = data |> @filter(_.DaysSince < (Date("2020-06-01") - firstdate)) |> DataFrame    
push!(c_data, (("2020-06-01"),
    (count(i -> (i > 0), week12.S1_seropositive)),
    ((count(i -> (i > 0), week12.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week12.RBD_seropositive)),
    ((count(i -> (i > 0), week12.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))                  
week13 = data |> @filter(_.DaysSince < (Date("2020-06-08") - firstdate)) |> DataFrame    
push!(c_data, (("2020-06-08"),
    (count(i -> (i > 0), week13.S1_seropositive)),
    ((count(i -> (i > 0), week13.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week13.RBD_seropositive)),
    ((count(i -> (i > 0), week13.RBD_seropositive)) / length(week46.RBD_seropositive)),
    )) 
week14 = data |> @filter(_.DaysSince < (Date("2020-06-15") - firstdate)) |> DataFrame    
push!(c_data, (("2020-06-15"),
    (count(i -> (i > 0), week14.S1_seropositive)),
    ((count(i -> (i > 0), week14.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week14.RBD_seropositive)),
    ((count(i -> (i > 0), week14.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))
week15 = data |> @filter(_.DaysSince < (Date("2020-06-22") - firstdate)) |> DataFrame    
push!(c_data, (("2020-06-22"),
    (count(i -> (i > 0), week15.S1_seropositive)),
    ((count(i -> (i > 0), week15.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week15.RBD_seropositive)),
    ((count(i -> (i > 0), week15.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))   
week16 = data |> @filter(_.DaysSince < (Date("2020-06-29") - firstdate)) |> DataFrame    
push!(c_data, (("2020-06-29"),
    (count(i -> (i > 0), week16.S1_seropositive)),
    ((count(i -> (i > 0), week16.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week16.RBD_seropositive)),
    ((count(i -> (i > 0), week16.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))   
week17 = data |> @filter(_.DaysSince < (Date("2020-07-06") - firstdate)) |> DataFrame    
push!(c_data, (("2020-07-06"),
    (count(i -> (i > 0), week17.S1_seropositive)),
    ((count(i -> (i > 0), week17.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week17.RBD_seropositive)),
    ((count(i -> (i > 0), week17.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))   
week18 = data |> @filter(_.DaysSince < (Date("2020-07-13") - firstdate)) |> DataFrame    
push!(c_data, (("2020-07-13"),
    (count(i -> (i > 0), week18.S1_seropositive)),
    ((count(i -> (i > 0), week18.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week18.RBD_seropositive)),
    ((count(i -> (i > 0), week18.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))                                                                                               
week20 = data |> @filter(_.DaysSince < (Date("2020-07-20") - firstdate)) |> DataFrame    
push!(c_data, (("2020-07-20"),
    (count(i -> (i > 0), week20.S1_seropositive)),
    ((count(i -> (i > 0), week20.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week20.RBD_seropositive)),
    ((count(i -> (i > 0), week20.RBD_seropositive)) / length(week46.RBD_seropositive)),
    )) 
week21 = data |> @filter(_.DaysSince < (Date("2020-07-27") - firstdate)) |> DataFrame    
push!(c_data, (("2020-07-27"),
    (count(i -> (i > 0), week21.S1_seropositive)),
    ((count(i -> (i > 0), week21.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week21.RBD_seropositive)),
    ((count(i -> (i > 0), week21.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))
week22 = data |> @filter(_.DaysSince < (Date("2020-08-03") - firstdate)) |> DataFrame    
push!(c_data, (("2020-08-03"),
    (count(i -> (i > 0), week22.S1_seropositive)),
    ((count(i -> (i > 0), week22.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week22.RBD_seropositive)),
    ((count(i -> (i > 0), week22.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))   
week23 = data |> @filter(_.DaysSince < (Date("2020-08-10") - firstdate)) |> DataFrame    
push!(c_data, (("2020-08-10"),
    (count(i -> (i > 0), week23.S1_seropositive)),
    ((count(i -> (i > 0), week23.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week23.RBD_seropositive)),
    ((count(i -> (i > 0), week23.RBD_seropositive)) / length(week46.RBD_seropositive)),
    )) 
week24 = data |> @filter(_.DaysSince < (Date("2020-08-17") - firstdate)) |> DataFrame    
push!(c_data, (("2020-08-17"),
    (count(i -> (i > 0), week24.S1_seropositive)),
    ((count(i -> (i > 0), week24.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week24.RBD_seropositive)),
    ((count(i -> (i > 0), week24.RBD_seropositive)) / length(week46.RBD_seropositive)),
    )) 
week25 = data |> @filter(_.DaysSince < (Date("2020-08-24") - firstdate)) |> DataFrame    
push!(c_data, (("2020-08-24"),
    (count(i -> (i > 0), week25.S1_seropositive)),
    ((count(i -> (i > 0), week25.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week25.RBD_seropositive)),
    ((count(i -> (i > 0), week25.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))     
week26 = data |> @filter(_.DaysSince < (Date("2020-08-31") - firstdate)) |> DataFrame    
push!(c_data, (("2020-08-31"),
    (count(i -> (i > 0), week26.S1_seropositive)),
    ((count(i -> (i > 0), week26.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week26.RBD_seropositive)),
    ((count(i -> (i > 0), week26.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))   
week27 = data |> @filter(_.DaysSince < (Date("2020-09-07") - firstdate)) |> DataFrame    
push!(c_data, (("2020-09-07"),
    (count(i -> (i > 0), week27.S1_seropositive)),
    ((count(i -> (i > 0), week27.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week27.RBD_seropositive)),
    ((count(i -> (i > 0), week27.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))  
week28 = data |> @filter(_.DaysSince < (Date("2020-09-14") - firstdate)) |> DataFrame    
push!(c_data, (("2020-09-14"),
    (count(i -> (i > 0), week28.S1_seropositive)),
    ((count(i -> (i > 0), week28.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week28.RBD_seropositive)),
    ((count(i -> (i > 0), week28.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))     
week29 = data |> @filter(_.DaysSince < (Date("2020-09-21") - firstdate)) |> DataFrame    
push!(c_data, (("2020-09-21"),
    (count(i -> (i > 0), week29.S1_seropositive)),
    ((count(i -> (i > 0), week29.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week29.RBD_seropositive)),
    ((count(i -> (i > 0), week29.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))     
week30 = data |> @filter(_.DaysSince < (Date("2020-09-28") - firstdate)) |> DataFrame    
push!(c_data, (("2020-09-28"),
    (count(i -> (i > 0), week30.S1_seropositive)),
    ((count(i -> (i > 0), week30.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week30.RBD_seropositive)),
    ((count(i -> (i > 0), week30.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))   
week31 = data |> @filter(_.DaysSince < (Date("2020-10-05") - firstdate)) |> DataFrame    
push!(c_data, (("2020-10-05"),
    (count(i -> (i > 0), week31.S1_seropositive)),
    ((count(i -> (i > 0), week31.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week31.RBD_seropositive)),
    ((count(i -> (i > 0), week31.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))  
week32 = data |> @filter(_.DaysSince < (Date("2020-10-12") - firstdate)) |> DataFrame    
push!(c_data, (("2020-10-12"),
    (count(i -> (i > 0), week32.S1_seropositive)),
    ((count(i -> (i > 0), week32.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week32.RBD_seropositive)),
    ((count(i -> (i > 0), week32.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))    
week33 = data |> @filter(_.DaysSince < (Date("2020-10-19") - firstdate)) |> DataFrame    
push!(c_data, (("2020-10-19"),
    (count(i -> (i > 0), week33.S1_seropositive)),
    ((count(i -> (i > 0), week33.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week33.RBD_seropositive)),
    ((count(i -> (i > 0), week33.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))                                                                                                                                                                                                                                                                                                                          
week34 = data |> @filter(_.DaysSince < (Date("2020-10-26") - firstdate)) |> DataFrame    
push!(c_data, (("2020-10-26"),
    (count(i -> (i > 0), week34.S1_seropositive)),
    ((count(i -> (i > 0), week34.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week34.RBD_seropositive)),
    ((count(i -> (i > 0), week34.RBD_seropositive)) / length(week46.RBD_seropositive)),
    )) 
week35 = data |> @filter(_.DaysSince < (Date("2020-11-02") - firstdate)) |> DataFrame    
push!(c_data, (("2020-11-02"),
    (count(i -> (i > 0), week35.S1_seropositive)),
    ((count(i -> (i > 0), week35.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week35.RBD_seropositive)),
    ((count(i -> (i > 0), week35.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))   
week36 = data |> @filter(_.DaysSince < (Date("2020-11-09") - firstdate)) |> DataFrame    
push!(c_data, (("2020-11-09"),
    (count(i -> (i > 0), week36.S1_seropositive)),
    ((count(i -> (i > 0), week36.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week36.RBD_seropositive)),
    ((count(i -> (i > 0), week36.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))  
week37 = data |> @filter(_.DaysSince < (Date("2020-11-16") - firstdate)) |> DataFrame    
push!(c_data, (("2020-11-16"),
    (count(i -> (i > 0), week37.S1_seropositive)),
    ((count(i -> (i > 0), week37.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week37.RBD_seropositive)),
    ((count(i -> (i > 0), week37.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))  
week38 = data |> @filter(_.DaysSince < (Date("2020-11-23") - firstdate)) |> DataFrame    
push!(c_data, (("2020-11-23"),
    (count(i -> (i > 0), week38.S1_seropositive)),
    ((count(i -> (i > 0), week38.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week38.RBD_seropositive)),
    ((count(i -> (i > 0), week38.RBD_seropositive)) / length(week46.RBD_seropositive)),
    )) 
week39 = data |> @filter(_.DaysSince < (Date("2020-11-30") - firstdate)) |> DataFrame    
push!(c_data, (("2020-11-30"),
    (count(i -> (i > 0), week39.S1_seropositive)),
    ((count(i -> (i > 0), week39.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week39.RBD_seropositive)),
    ((count(i -> (i > 0), week39.RBD_seropositive)) / length(week46.RBD_seropositive)),
    )) 
week40 = data |> @filter(_.DaysSince < (Date("2020-12-07") - firstdate)) |> DataFrame    
push!(c_data, (("2020-12-07"),
    (count(i -> (i > 0), week40.S1_seropositive)),
    ((count(i -> (i > 0), week40.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week40.RBD_seropositive)),
    ((count(i -> (i > 0), week40.RBD_seropositive)) / length(week46.RBD_seropositive)),
    )) 
week41 = data |> @filter(_.DaysSince < (Date("2020-12-14") - firstdate)) |> DataFrame    
push!(c_data, (("2020-12-14"),
    (count(i -> (i > 0), week41.S1_seropositive)),
    ((count(i -> (i > 0), week41.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week41.RBD_seropositive)),
    ((count(i -> (i > 0), week41.RBD_seropositive)) / length(week46.RBD_seropositive)),
    )) 
week42 = data |> @filter(_.DaysSince < (Date("2020-12-21") - firstdate)) |> DataFrame    
push!(c_data, (("2020-12-21"),
    (count(i -> (i > 0), week42.S1_seropositive)),
    ((count(i -> (i > 0), week42.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week42.RBD_seropositive)),
    ((count(i -> (i > 0), week42.RBD_seropositive)) / length(week46.RBD_seropositive)),
    )) 
week43 = data |> @filter(_.DaysSince < (Date("2020-12-28") - firstdate)) |> DataFrame    
push!(c_data, (("2020-12-28"),
    (count(i -> (i > 0), week43.S1_seropositive)),
    ((count(i -> (i > 0), week43.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week43.RBD_seropositive)),
    ((count(i -> (i > 0), week43.RBD_seropositive)) / length(week46.RBD_seropositive)),
    )) 
week44 = data |> @filter(_.DaysSince < (Date("2021-01-04") - firstdate)) |> DataFrame    
push!(c_data, (("2021-01-04"),
    (count(i -> (i > 0), week44.S1_seropositive)),
    ((count(i -> (i > 0), week44.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week44.RBD_seropositive)),
    ((count(i -> (i > 0), week44.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))
week45 = data |> @filter(_.DaysSince < (Date("2021-01-11") - firstdate)) |> DataFrame    
push!(c_data, (("2021-01-11"),
    (count(i -> (i > 0), week45.S1_seropositive)),
    ((count(i -> (i > 0), week45.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week45.RBD_seropositive)),
    ((count(i -> (i > 0), week45.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))
push!(c_data, (("2021-01-18"),
    (count(i -> (i > 0), week46.S1_seropositive)),
    ((count(i -> (i > 0), week46.S1_seropositive)) / length(week46.S1_seropositive)),
    (count(i -> (i > 0), week46.RBD_seropositive)),
    ((count(i -> (i > 0), week46.RBD_seropositive)) / length(week46.RBD_seropositive)),
    ))

c_data |> CSV.write("./honoursproject/data/c_data.csv")
