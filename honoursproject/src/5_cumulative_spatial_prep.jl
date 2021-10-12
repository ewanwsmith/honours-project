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
push!(c_data, (("2020-03-16"),
        (count(i -> (i > 0), week1.S1_seropositive)),
        ((count(i -> (i > 0), week1.S1_seropositive)) / length(week1.S1_seropositive)),
        (count(i -> (i > 0), week1.RBD_seropositive)),
        ((count(i -> (i > 0), week1.RBD_seropositive)) / length(week1.RBD_seropositive)),
        ))
week2 = data |> @filter(_.DaysSince < (Date("2020-03-23") - firstdate)) |> DataFrame
push!(c_data, (("2020-03-23"),
        (count(i -> (i > 0), week2.S1_seropositive)),
        ((count(i -> (i > 0), week2.S1_seropositive)) / length(week2.S1_seropositive)),
        (count(i -> (i > 0), week2.RBD_seropositive)),
        ((count(i -> (i > 0), week2.RBD_seropositive)) / length(week2.RBD_seropositive)),
        ))
week3 = data |> @filter(_.DaysSince < (Date("2020-03-30") - firstdate)) |> DataFrame
push!(c_data, (("2020-03-30"),
        (count(i -> (i > 0), week3.S1_seropositive)),
        ((count(i -> (i > 0), week3.S1_seropositive)) / length(week3.S1_seropositive)),
        (count(i -> (i > 0), week3.RBD_seropositive)),
        ((count(i -> (i > 0), week3.RBD_seropositive)) / length(week3.RBD_seropositive)),
        ))
week4 = data |> @filter(_.DaysSince < (Date("2020-04-06") - firstdate)) |> DataFrame
push!(c_data, (("2020-04-06"),
            (count(i -> (i > 0), week4.S1_seropositive)),
            ((count(i -> (i > 0), week4.S1_seropositive)) / length(week4.S1_seropositive)),
            (count(i -> (i > 0), week4.RBD_seropositive)),
            ((count(i -> (i > 0), week4.RBD_seropositive)) / length(week4.RBD_seropositive)),
            ))
week5 = data |> @filter(_.DaysSince < (Date("2020-04-13") - firstdate)) |> DataFrame
push!(c_data, (("2020-04-13"),
        (count(i -> (i > 0), week5.S1_seropositive)),
        ((count(i -> (i > 0), week5.S1_seropositive)) / length(week5.S1_seropositive)),
        (count(i -> (i > 0), week5.RBD_seropositive)),
        ((count(i -> (i > 0), week5.RBD_seropositive)) / length(week5.RBD_seropositive)),
        ))
week6 = data |> @filter(_.DaysSince < (Date("2020-04-20") - firstdate)) |> DataFrame
push!(c_data, (("2020-04-20"),
            (count(i -> (i > 0), week6.S1_seropositive)),
            ((count(i -> (i > 0), week6.S1_seropositive)) / length(week6.S1_seropositive)),
            (count(i -> (i > 0), week6.RBD_seropositive)),
            ((count(i -> (i > 0), week6.RBD_seropositive)) / length(week6.RBD_seropositive)),
            ))
week7 = data |> @filter(_.DaysSince < (Date("2020-04-27") - firstdate)) |> DataFrame
push!(c_data, (("2020-04-27"),
                (count(i -> (i > 0), week7.S1_seropositive)),
                ((count(i -> (i > 0), week7.S1_seropositive)) / length(week7.S1_seropositive)),
                (count(i -> (i > 0), week7.RBD_seropositive)),
                ((count(i -> (i > 0), week7.RBD_seropositive)) / length(week7.RBD_seropositive)),
                ))
week8 = data |> @filter(_.DaysSince < (Date("2020-05-04") - firstdate)) |> DataFrame
push!(c_data, (("2020-05-04"),
                    (count(i -> (i > 0), week8.S1_seropositive)),
                    ((count(i -> (i > 0), week8.S1_seropositive)) / length(week8.S1_seropositive)),
                    (count(i -> (i > 0), week8.RBD_seropositive)),
                    ((count(i -> (i > 0), week8.RBD_seropositive)) / length(week8.RBD_seropositive)),
                    ))
week9 = data |> @filter(_.DaysSince < (Date("2020-05-11") - firstdate)) |> DataFrame
push!(c_data, (("2020-05-11"),
                        (count(i -> (i > 0), week9.S1_seropositive)),
                        ((count(i -> (i > 0), week9.S1_seropositive)) / length(week9.S1_seropositive)),
                        (count(i -> (i > 0), week9.RBD_seropositive)),
                        ((count(i -> (i > 0), week9.RBD_seropositive)) / length(week9.RBD_seropositive)),
                        ))
week10 = data |> @filter(_.DaysSince < (Date("2020-05-18") - firstdate)) |> DataFrame
push!(c_data, (("2020-05-18"),
                                            (count(i -> (i > 0), week10.S1_seropositive)),
                                            ((count(i -> (i > 0), week10.S1_seropositive)) / length(week10.S1_seropositive)),
                                            (count(i -> (i > 0), week10.RBD_seropositive)),
                                            ((count(i -> (i > 0), week10.RBD_seropositive)) / length(week10.RBD_seropositive)),
                                            ))   
week11 = data |> @filter(_.DaysSince < (Date("2020-05-25") - firstdate)) |> DataFrame
push!(c_data, (("2020-05-25"),
                                            (count(i -> (i > 0), week11.S1_seropositive)),
                                            ((count(i -> (i > 0), week11.S1_seropositive)) / length(week11.S1_seropositive)),
                                            (count(i -> (i > 0), week11.RBD_seropositive)),
                                            ((count(i -> (i > 0), week11.RBD_seropositive)) / length(week11.RBD_seropositive)),
                                            )) 
week12 = data |> @filter(_.DaysSince < (Date("2020-06-01") - firstdate)) |> DataFrame    
push!(c_data, (("2020-06-01"),
                                            (count(i -> (i > 0), week12.S1_seropositive)),
                                            ((count(i -> (i > 0), week12.S1_seropositive)) / length(week12.S1_seropositive)),
                                            (count(i -> (i > 0), week12.RBD_seropositive)),
                                            ((count(i -> (i > 0), week12.RBD_seropositive)) / length(week12.RBD_seropositive)),
                                            ))                  
week13 = data |> @filter(_.DaysSince < (Date("2020-06-08") - firstdate)) |> DataFrame    
push!(c_data, (("2020-06-08"),
                                            (count(i -> (i > 0), week13.S1_seropositive)),
                                            ((count(i -> (i > 0), week13.S1_seropositive)) / length(week13.S1_seropositive)),
                                            (count(i -> (i > 0), week13.RBD_seropositive)),
                                            ((count(i -> (i > 0), week13.RBD_seropositive)) / length(week13.RBD_seropositive)),
                                            )) 
week14 = data |> @filter(_.DaysSince < (Date("2020-06-15") - firstdate)) |> DataFrame    
push!(c_data, (("2020-06-15"),
                                                                                    (count(i -> (i > 0), week14.S1_seropositive)),
                                                                                    ((count(i -> (i > 0), week14.S1_seropositive)) / length(week14.S1_seropositive)),
                                                                                    (count(i -> (i > 0), week14.RBD_seropositive)),
                                                                                    ((count(i -> (i > 0), week14.RBD_seropositive)) / length(week14.RBD_seropositive)),
                                                                                    ))
week15 = data |> @filter(_.DaysSince < (Date("2020-06-22") - firstdate)) |> DataFrame    
push!(c_data, (("2020-06-22"),
                                                                                    (count(i -> (i > 0), week15.S1_seropositive)),
                                                                                    ((count(i -> (i > 0), week15.S1_seropositive)) / length(week15.S1_seropositive)),
                                                                                    (count(i -> (i > 0), week15.RBD_seropositive)),
                                                                                    ((count(i -> (i > 0), week15.RBD_seropositive)) / length(week15.RBD_seropositive)),
                                                                                    ))   
week16 = data |> @filter(_.DaysSince < (Date("2020-06-29") - firstdate)) |> DataFrame    
push!(c_data, (("2020-06-29"),
                                                                                                                                                                    (count(i -> (i > 0), week16.S1_seropositive)),
                                                                                                                                                                    ((count(i -> (i > 0), week16.S1_seropositive)) / length(week16.S1_seropositive)),
                                                                                                                                                                    (count(i -> (i > 0), week16.RBD_seropositive)),
                                                                                                                                                                    ((count(i -> (i > 0), week16.RBD_seropositive)) / length(week16.RBD_seropositive)),
                                                                                                                                                                    ))   
week17 = data |> @filter(_.DaysSince < (Date("2020-07-06") - firstdate)) |> DataFrame    
push!(c_data, (("2020-07-06"),
                                                                                                                                                                    (count(i -> (i > 0), week17.S1_seropositive)),
                                                                                                                                                                    ((count(i -> (i > 0), week17.S1_seropositive)) / length(week17.S1_seropositive)),
                                                                                                                                                                    (count(i -> (i > 0), week17.RBD_seropositive)),
                                                                                                                                                                    ((count(i -> (i > 0), week17.RBD_seropositive)) / length(week17.RBD_seropositive)),
                                                                                                                                                                    ))   
week18 = data |> @filter(_.DaysSince < (Date("2020-07-13") - firstdate)) |> DataFrame    
push!(c_data, (("2020-07-13"),
                                                                                                                                                                                                                                                                                                                                        (count(i -> (i > 0), week18.S1_seropositive)),
                                                                                                                                                                                                                                                                                                                                        ((count(i -> (i > 0), week18.S1_seropositive)) / length(week18.S1_seropositive)),
                                                                                                                                                                                                                                                                                                                                        (count(i -> (i > 0), week18.RBD_seropositive)),
                                                                                                                                                                                                                                                                                                                                        ((count(i -> (i > 0), week18.RBD_seropositive)) / length(week18.RBD_seropositive)),
                                                                                                                                                                                                                                                                                                                                        ))                                                                                               
week18 = data |> @filter(_.DaysSince < (Date("2020-07-20") - firstdate)) |> DataFrame    
push!(c_data, (("2020-07-20"),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            (count(i -> (i > 0), week18.S1_seropositive)),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ((count(i -> (i > 0), week18.S1_seropositive)) / length(week18.S1_seropositive)),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            (count(i -> (i > 0), week18.RBD_seropositive)),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ((count(i -> (i > 0), week18.RBD_seropositive)) / length(week18.RBD_seropositive)),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ))                                                                                                                                                                                                                                    