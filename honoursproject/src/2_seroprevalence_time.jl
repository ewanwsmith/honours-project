using GLM, MixedModels
using Gadfly
using Cairo

include("1_data_import_filter.jl")

# generate % seropositivity for each month
month_data = DataFrame(
    Month=String[],
    S1=Float64[],
    RBD=Float64[],
)

# March 2020
push!(month_data, (("March 2020"), ((count(i -> (i > 0), Mar20_data.S1_seropositive)) / length(Mar20_data.S1_seropositive)), ((count(i -> (i > 0), Mar20_data.RBD_seropositive)) / length(Mar20_data.RBD_seropositive))))
# April 2020
push!(month_data, (("April 2020"), ((count(i -> (i > 0), Apr20_data.S1_seropositive)) / length(Apr20_data.S1_seropositive)), ((count(i -> (i > 0), Apr20_data.RBD_seropositive)) / length(Apr20_data.RBD_seropositive))))
# May 2020
push!(month_data, (("May 2020"), ((count(i -> (i > 0), May20_data.S1_seropositive)) / length(May20_data.S1_seropositive)), ((count(i -> (i > 0), May20_data.RBD_seropositive)) / length(May20_data.RBD_seropositive))))
# June 2020
push!(month_data, (("June 2020"), ((count(i -> (i > 0), Jun20_data.S1_seropositive)) / length(Jun20_data.S1_seropositive)), ((count(i -> (i > 0), Jun20_data.RBD_seropositive)) / length(Jun20_data.RBD_seropositive))))
# July 2020
push!(month_data, (("July 2020"), ((count(i -> (i > 0), Jul20_data.S1_seropositive)) / length(Jul20_data.S1_seropositive)), ((count(i -> (i > 0), Jul20_data.RBD_seropositive)) / length(Jul20_data.RBD_seropositive))))
# August 2020
push!(month_data, (("August 2020"), ((count(i -> (i > 0), Aug20_data.S1_seropositive)) / length(Aug20_data.S1_seropositive)), ((count(i -> (i > 0), Aug20_data.RBD_seropositive)) / length(Aug20_data.RBD_seropositive))))
# September 2020
push!(month_data, (("September 2020"), ((count(i -> (i > 0), Sep20_data.S1_seropositive)) / length(Sep20_data.S1_seropositive)), ((count(i -> (i > 0), Sep20_data.RBD_seropositive)) / length(Sep20_data.RBD_seropositive))))
# October 2020
push!(month_data, (("October 2020"), ((count(i -> (i > 0), Oct20_data.S1_seropositive)) / length(Oct20_data.S1_seropositive)), ((count(i -> (i > 0), Oct20_data.RBD_seropositive)) / length(Oct20_data.RBD_seropositive))))
# November 2020
push!(month_data, (("November 2020"), ((count(i -> (i > 0), Nov20_data.S1_seropositive)) / length(Nov20_data.S1_seropositive)), ((count(i -> (i > 0), Nov20_data.RBD_seropositive)) / length(Nov20_data.RBD_seropositive))))
# December 2020
push!(month_data, (("December 2020"), ((count(i -> (i > 0), Dec20_data.S1_seropositive)) / length(Dec20_data.S1_seropositive)), ((count(i -> (i > 0), Dec20_data.RBD_seropositive)) / length(Dec20_data.RBD_seropositive))))
# January 2021
push!(month_data, (("January 2021"), ((count(i -> (i > 0), Jan21_data.S1_seropositive)) / length(Jan21_data.S1_seropositive)), ((count(i -> (i > 0), Jan21_data.RBD_seropositive)) / length(Jan21_data.RBD_seropositive))))
