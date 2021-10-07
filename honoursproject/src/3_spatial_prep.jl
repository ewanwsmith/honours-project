using DataFrames, Query
using CategoricalArrays
using CSV
using StatsBase
using Dates

include("1_data_import_filter.jl")

# March
Mar20_spa = DataFrame(
    Postcode=String[],
    S1=Float64[],
    RBD=Float64[],
)

        # G1
Mar20_G1 = Mar20_data |> @filter(_.PostcodePart == "G1") |> DataFrame
push!(Mar20_spa, (
        ("G1"),
        ((count(i -> (i > 0), Mar20_G1.S1_seropositive)) / length(Mar20_G1.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G1.RBD_seropositive)) / length(Mar20_G1.RBD_seropositive))))
        # G2
Mar20_G2 = Mar20_data |> @filter(_.PostcodePart == "G2") |> DataFrame
push!(Mar20_spa, (
        ("G2"),
        ((count(i -> (i > 0), Mar20_G2.S1_seropositive)) / length(Mar20_G2.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G2.RBD_seropositive)) / length(Mar20_G2.RBD_seropositive))))
        # G3
Mar20_G3 = Mar20_data |> @filter(_.PostcodePart == "G3") |> DataFrame
push!(Mar20_spa, (
        ("G3"),
        ((count(i -> (i > 0), Mar20_G3.S1_seropositive)) / length(Mar20_G3.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G3.RBD_seropositive)) / length(Mar20_G3.RBD_seropositive))))
        # G4
Mar20_G4 = Mar20_data |> @filter(_.PostcodePart == "G4") |> DataFrame
push!(Mar20_spa, (
        ("G4"),
        ((count(i -> (i > 0), Mar20_G4.S1_seropositive)) / length(Mar20_G4.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G4.RBD_seropositive)) / length(Mar20_G4.RBD_seropositive))))
        # G5
Mar20_G5 = Mar20_data |> @filter(_.PostcodePart == "G5") |> DataFrame
push!(Mar20_spa, (
        ("G5"),
        ((count(i -> (i > 0), Mar20_G5.S1_seropositive)) / length(Mar20_G5.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G5.RBD_seropositive)) / length(Mar20_G5.RBD_seropositive))))
        # G9
Mar20_G9 = Mar20_data |> @filter(_.PostcodePart == "G9") |> DataFrame
push!(Mar20_spa, (
        ("G9"),
        ((count(i -> (i > 0), Mar20_G9.S1_seropositive)) / length(Mar20_G9.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G9.RBD_seropositive)) / length(Mar20_G9.RBD_seropositive))))
        # G11
Mar20_G11 = Mar20_data |> @filter(_.PostcodePart == "G11") |> DataFrame
push!(Mar20_spa, (
        ("G11"),
        ((count(i -> (i > 0), Mar20_G11.S1_seropositive)) / length(Mar20_G11.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G11.RBD_seropositive)) / length(Mar20_G11.RBD_seropositive))))
        # G12
Mar20_G12 = Mar20_data |> @filter(_.PostcodePart == "G12") |> DataFrame
push!(Mar20_spa, (
        ("G12"),
        ((count(i -> (i > 0), Mar20_G12.S1_seropositive)) / length(Mar20_G12.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G12.RBD_seropositive)) / length(Mar20_G12.RBD_seropositive))))
        # G13
Mar20_G13 = Mar20_data |> @filter(_.PostcodePart == "G13") |> DataFrame
push!(Mar20_spa, (
        ("G13"),
        ((count(i -> (i > 0), Mar20_G13.S1_seropositive)) / length(Mar20_G13.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G13.RBD_seropositive)) / length(Mar20_G13.RBD_seropositive))))
        # G14
Mar20_G14 = Mar20_data |> @filter(_.PostcodePart == "G14") |> DataFrame
push!(Mar20_spa, (
        ("G14"),
        ((count(i -> (i > 0), Mar20_G14.S1_seropositive)) / length(Mar20_G14.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G14.RBD_seropositive)) / length(Mar20_G14.RBD_seropositive))))
        # G15
Mar20_G15 = Mar20_data |> @filter(_.PostcodePart == "G15") |> DataFrame
push!(Mar20_spa, (
        ("G15"),
        ((count(i -> (i > 0), Mar20_G15.S1_seropositive)) / length(Mar20_G15.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G15.RBD_seropositive)) / length(Mar20_G15.RBD_seropositive))))
        # G20
Mar20_G20 = Mar20_data |> @filter(_.PostcodePart == "G20") |> DataFrame
push!(Mar20_spa, (
        ("G20"),
        ((count(i -> (i > 0), Mar20_G20.S1_seropositive)) / length(Mar20_G20.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G20.RBD_seropositive)) / length(Mar20_G20.RBD_seropositive))))
        # G21
Mar20_G21 = Mar20_data |> @filter(_.PostcodePart == "G21") |> DataFrame
push!(Mar20_spa, (
        ("G21"),
        ((count(i -> (i > 0), Mar20_G21.S1_seropositive)) / length(Mar20_G21.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G21.RBD_seropositive)) / length(Mar20_G21.RBD_seropositive))))
        # G22
Mar20_G22 = Mar20_data |> @filter(_.PostcodePart == "G22") |> DataFrame
push!(Mar20_spa, (
        ("G22"),
        ((count(i -> (i > 0), Mar20_G22.S1_seropositive)) / length(Mar20_G22.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G22.RBD_seropositive)) / length(Mar20_G22.RBD_seropositive))))
        # G23
Mar20_G23 = Mar20_data |> @filter(_.PostcodePart == "G23") |> DataFrame
push!(Mar20_spa, (
        ("G23"),
        ((count(i -> (i > 0), Mar20_G23.S1_seropositive)) / length(Mar20_G23.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G23.RBD_seropositive)) / length(Mar20_G23.RBD_seropositive))))
        # G31
Mar20_G31 = Mar20_data |> @filter(_.PostcodePart == "G31") |> DataFrame
push!(Mar20_spa, (
        ("G31"),
        ((count(i -> (i > 0), Mar20_G31.S1_seropositive)) / length(Mar20_G31.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G31.RBD_seropositive)) / length(Mar20_G31.RBD_seropositive))))
        # G32
Mar20_G32 = Mar20_data |> @filter(_.PostcodePart == "G32") |> DataFrame
push!(Mar20_spa, (
        ("G32"),
        ((count(i -> (i > 0), Mar20_G32.S1_seropositive)) / length(Mar20_G32.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G32.RBD_seropositive)) / length(Mar20_G32.RBD_seropositive))))
        # G33
Mar20_G33 = Mar20_data |> @filter(_.PostcodePart == "G33") |> DataFrame
push!(Mar20_spa, (
        ("G33"),
        ((count(i -> (i > 0), Mar20_G33.S1_seropositive)) / length(Mar20_G33.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G33.RBD_seropositive)) / length(Mar20_G33.RBD_seropositive))))
        # G34
Mar20_G34 = Mar20_data |> @filter(_.PostcodePart == "G34") |> DataFrame
push!(Mar20_spa, (
        ("G34"),
        ((count(i -> (i > 0), Mar20_G34.S1_seropositive)) / length(Mar20_G34.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G34.RBD_seropositive)) / length(Mar20_G34.RBD_seropositive))))
        # G40
Mar20_G40 = Mar20_data |> @filter(_.PostcodePart == "G40") |> DataFrame
push!(Mar20_spa, (
        ("G40"),
        ((count(i -> (i > 0), Mar20_G40.S1_seropositive)) / length(Mar20_G40.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G40.RBD_seropositive)) / length(Mar20_G40.RBD_seropositive))))
        # G41
Mar20_G41 = Mar20_data |> @filter(_.PostcodePart == "G41") |> DataFrame
push!(Mar20_spa, (
        ("G41"),
        ((count(i -> (i > 0), Mar20_G41.S1_seropositive)) / length(Mar20_G41.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G41.RBD_seropositive)) / length(Mar20_G41.RBD_seropositive))))
        # G42
Mar20_G42 = Mar20_data |> @filter(_.PostcodePart == "G42") |> DataFrame
push!(Mar20_spa, (
        ("G42"),
        ((count(i -> (i > 0), Mar20_G42.S1_seropositive)) / length(Mar20_G42.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G42.RBD_seropositive)) / length(Mar20_G42.RBD_seropositive))))
        # G43
Mar20_G43 = Mar20_data |> @filter(_.PostcodePart == "G43") |> DataFrame
push!(Mar20_spa, (
        ("G43"),
        ((count(i -> (i > 0), Mar20_G43.S1_seropositive)) / length(Mar20_G43.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G43.RBD_seropositive)) / length(Mar20_G43.RBD_seropositive))))
        # G44
Mar20_G44 = Mar20_data |> @filter(_.PostcodePart == "G44") |> DataFrame
push!(Mar20_spa, (
        ("G44"),
        ((count(i -> (i > 0), Mar20_G44.S1_seropositive)) / length(Mar20_G44.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G44.RBD_seropositive)) / length(Mar20_G44.RBD_seropositive))))
        # G45
Mar20_G45 = Mar20_data |> @filter(_.PostcodePart == "G45") |> DataFrame
push!(Mar20_spa, (
        ("G45"),
        ((count(i -> (i > 0), Mar20_G45.S1_seropositive)) / length(Mar20_G45.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G45.RBD_seropositive)) / length(Mar20_G45.RBD_seropositive))))
        # G46
Mar20_G46 = Mar20_data |> @filter(_.PostcodePart == "G46") |> DataFrame
push!(Mar20_spa, (
        ("G46"),
        ((count(i -> (i > 0), Mar20_G46.S1_seropositive)) / length(Mar20_G46.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G46.RBD_seropositive)) / length(Mar20_G46.RBD_seropositive))))
        # G51
Mar20_G51 = Mar20_data |> @filter(_.PostcodePart == "G51") |> DataFrame
push!(Mar20_spa, (
        ("G51"),
        ((count(i -> (i > 0), Mar20_G51.S1_seropositive)) / length(Mar20_G51.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G51.RBD_seropositive)) / length(Mar20_G51.RBD_seropositive))))
        # G52
Mar20_G52 = Mar20_data |> @filter(_.PostcodePart == "G52") |> DataFrame
push!(Mar20_spa, (
        ("G52"),
        ((count(i -> (i > 0), Mar20_G52.S1_seropositive)) / length(Mar20_G52.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G52.RBD_seropositive)) / length(Mar20_G52.RBD_seropositive))))
        # G53
Mar20_G53 = Mar20_data |> @filter(_.PostcodePart == "G53") |> DataFrame
push!(Mar20_spa, (
        ("G53"),
        ((count(i -> (i > 0), Mar20_G53.S1_seropositive)) / length(Mar20_G53.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G53.RBD_seropositive)) / length(Mar20_G53.RBD_seropositive))))
        # G58
Mar20_G58 = Mar20_data |> @filter(_.PostcodePart == "G58") |> DataFrame
push!(Mar20_spa, (
        ("G58"),
        ((count(i -> (i > 0), Mar20_G58.S1_seropositive)) / length(Mar20_G58.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G58.RBD_seropositive)) / length(Mar20_G58.RBD_seropositive))))
        # G60
Mar20_G60 = Mar20_data |> @filter(_.PostcodePart == "G60") |> DataFrame
push!(Mar20_spa, (
        ("G60"),
        ((count(i -> (i > 0), Mar20_G60.S1_seropositive)) / length(Mar20_G60.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G60.RBD_seropositive)) / length(Mar20_G60.RBD_seropositive))))
        # G61
Mar20_G61 = Mar20_data |> @filter(_.PostcodePart == "G61") |> DataFrame
push!(Mar20_spa, (
        ("G61"),
        ((count(i -> (i > 0), Mar20_G61.S1_seropositive)) / length(Mar20_G61.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G61.RBD_seropositive)) / length(Mar20_G61.RBD_seropositive))))
        # G62
Mar20_G62 = Mar20_data |> @filter(_.PostcodePart == "G62") |> DataFrame
push!(Mar20_spa, (
        ("G62"),
        ((count(i -> (i > 0), Mar20_G62.S1_seropositive)) / length(Mar20_G62.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G62.RBD_seropositive)) / length(Mar20_G62.RBD_seropositive))))
        # G63
Mar20_G63 = Mar20_data |> @filter(_.PostcodePart == "G63") |> DataFrame
push!(Mar20_spa, (
        ("G63"),
        ((count(i -> (i > 0), Mar20_G63.S1_seropositive)) / length(Mar20_G63.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G63.RBD_seropositive)) / length(Mar20_G63.RBD_seropositive))))
        # G64
Mar20_G64 = Mar20_data |> @filter(_.PostcodePart == "G64") |> DataFrame
push!(Mar20_spa, (
        ("G64"),
        ((count(i -> (i > 0), Mar20_G64.S1_seropositive)) / length(Mar20_G64.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G64.RBD_seropositive)) / length(Mar20_G64.RBD_seropositive))))
        # G65
Mar20_G65 = Mar20_data |> @filter(_.PostcodePart == "G65") |> DataFrame
push!(Mar20_spa, (
        ("G65"),
        ((count(i -> (i > 0), Mar20_G65.S1_seropositive)) / length(Mar20_G65.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G65.RBD_seropositive)) / length(Mar20_G65.RBD_seropositive))))
        # G66
Mar20_G66 = Mar20_data |> @filter(_.PostcodePart == "G66") |> DataFrame
push!(Mar20_spa, (
        ("G66"),
        ((count(i -> (i > 0), Mar20_G66.S1_seropositive)) / length(Mar20_G66.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G66.RBD_seropositive)) / length(Mar20_G66.RBD_seropositive))))
        # G67
Mar20_G67 = Mar20_data |> @filter(_.PostcodePart == "G67") |> DataFrame
push!(Mar20_spa, (
        ("G67"),
        ((count(i -> (i > 0), Mar20_G67.S1_seropositive)) / length(Mar20_G67.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G67.RBD_seropositive)) / length(Mar20_G67.RBD_seropositive))))
        # G68
Mar20_G68 = Mar20_data |> @filter(_.PostcodePart == "G68") |> DataFrame
push!(Mar20_spa, (
        ("G68"),
        ((count(i -> (i > 0), Mar20_G68.S1_seropositive)) / length(Mar20_G68.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G68.RBD_seropositive)) / length(Mar20_G68.RBD_seropositive))))
        # G69
Mar20_G69 = Mar20_data |> @filter(_.PostcodePart == "G69") |> DataFrame
push!(Mar20_spa, (
        ("G69"),
        ((count(i -> (i > 0), Mar20_G69.S1_seropositive)) / length(Mar20_G69.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G69.RBD_seropositive)) / length(Mar20_G69.RBD_seropositive))))
        #  G70
Mar20_G70 = Mar20_data |> @filter(_.PostcodePart == "G70") |> DataFrame
push!(Mar20_spa, (
        ("G70"),
        ((count(i -> (i > 0), Mar20_G70.S1_seropositive)) / length(Mar20_G70.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G70.RBD_seropositive)) / length(Mar20_G70.RBD_seropositive))))
        # G71
Mar20_G71 = Mar20_data |> @filter(_.PostcodePart == "G71") |> DataFrame
push!(Mar20_spa, (
        ("G71"),
        ((count(i -> (i > 0), Mar20_G71.S1_seropositive)) / length(Mar20_G71.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G71.RBD_seropositive)) / length(Mar20_G71.RBD_seropositive))))
        # G72
Mar20_G72 = Mar20_data |> @filter(_.PostcodePart == "G72") |> DataFrame
push!(Mar20_spa, (
        ("G72"),
        ((count(i -> (i > 0), Mar20_G72.S1_seropositive)) / length(Mar20_G72.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G72.RBD_seropositive)) / length(Mar20_G72.RBD_seropositive))))
        # G73
Mar20_G73 = Mar20_data |> @filter(_.PostcodePart == "G73") |> DataFrame
push!(Mar20_spa, (
        ("G73"),
        ((count(i -> (i > 0), Mar20_G73.S1_seropositive)) / length(Mar20_G73.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G73.RBD_seropositive)) / length(Mar20_G73.RBD_seropositive))))
        # G74
Mar20_G74 = Mar20_data |> @filter(_.PostcodePart == "G74") |> DataFrame
push!(Mar20_spa, (
        ("G74"),
        ((count(i -> (i > 0), Mar20_G74.S1_seropositive)) / length(Mar20_G74.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G74.RBD_seropositive)) / length(Mar20_G74.RBD_seropositive))))
        # G75
Mar20_G75 = Mar20_data |> @filter(_.PostcodePart == "G75") |> DataFrame
push!(Mar20_spa, (
        ("G75"),
        ((count(i -> (i > 0), Mar20_G75.S1_seropositive)) / length(Mar20_G75.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G75.RBD_seropositive)) / length(Mar20_G75.RBD_seropositive))))
        # G77
Mar20_G77 = Mar20_data |> @filter(_.PostcodePart == "G77") |> DataFrame
push!(Mar20_spa, (
        ("G77"),
        ((count(i -> (i > 0), Mar20_G77.S1_seropositive)) / length(Mar20_G77.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G77.RBD_seropositive)) / length(Mar20_G77.RBD_seropositive))))
        # G78
Mar20_G78 = Mar20_data |> @filter(_.PostcodePart == "G78") |> DataFrame
push!(Mar20_spa, (
        ("G78"),
        ((count(i -> (i > 0), Mar20_G78.S1_seropositive)) / length(Mar20_G78.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G78.RBD_seropositive)) / length(Mar20_G78.RBD_seropositive))))
        # G79
Mar20_G79 = Mar20_data |> @filter(_.PostcodePart == "G79") |> DataFrame
push!(Mar20_spa, (
        ("G79"),
        ((count(i -> (i > 0), Mar20_G79.S1_seropositive)) / length(Mar20_G79.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G79.RBD_seropositive)) / length(Mar20_G79.RBD_seropositive))))
        # G81
Mar20_G81 = Mar20_data |> @filter(_.PostcodePart == "G81") |> DataFrame
push!(Mar20_spa, (
        ("G81"),
        ((count(i -> (i > 0), Mar20_G81.S1_seropositive)) / length(Mar20_G81.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G81.RBD_seropositive)) / length(Mar20_G81.RBD_seropositive))))
        # G82
Mar20_G82 = Mar20_data |> @filter(_.PostcodePart == "G82") |> DataFrame
push!(Mar20_spa, (
        ("G82"),
        ((count(i -> (i > 0), Mar20_G82.S1_seropositive)) / length(Mar20_G82.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G82.RBD_seropositive)) / length(Mar20_G82.RBD_seropositive))))
        # G83
Mar20_G83 = Mar20_data |> @filter(_.PostcodePart == "G83") |> DataFrame
push!(Mar20_spa, (
        ("G83"),
        ((count(i -> (i > 0), Mar20_G83.S1_seropositive)) / length(Mar20_G83.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G83.RBD_seropositive)) / length(Mar20_G83.RBD_seropositive))))
        # G84
Mar20_G84 = Mar20_data |> @filter(_.PostcodePart == "G84") |> DataFrame
push!(Mar20_spa, (
        ("G84"),
        ((count(i -> (i > 0), Mar20_G84.S1_seropositive)) / length(Mar20_G84.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G84.RBD_seropositive)) / length(Mar20_G84.RBD_seropositive))))
        # G90
Mar20_G90 = Mar20_data |> @filter(_.PostcodePart == "G90") |> DataFrame
push!(Mar20_spa, (
        ("G90"),
        ((count(i -> (i > 0), Mar20_G90.S1_seropositive)) / length(Mar20_G90.S1_seropositive)),
        ((count(i -> (i > 0), Mar20_G90.RBD_seropositive)) / length(Mar20_G90.RBD_seropositive))))

Mar20_spa |> CSV.write("./honoursproject/data/by_postcode/March_20_postcode_data.csv")

# April
Apr20_spa = DataFrame(
    Postcode=String[],
    S1=Float64[],
    RBD=Float64[],
)

        # G1
Apr20_G1 = Apr20_data |> @filter(_.PostcodePart == "G1") |> DataFrame
push!(Apr20_spa, (
        ("G1"),
        ((count(i -> (i > 0), Apr20_G1.S1_seropositive)) / length(Apr20_G1.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G1.RBD_seropositive)) / length(Apr20_G1.RBD_seropositive))))
        # G2
Apr20_G2 = Apr20_data |> @filter(_.PostcodePart == "G2") |> DataFrame
push!(Apr20_spa, (
        ("G2"),
        ((count(i -> (i > 0), Apr20_G2.S1_seropositive)) / length(Apr20_G2.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G2.RBD_seropositive)) / length(Apr20_G2.RBD_seropositive))))
        # G3
Apr20_G3 = Apr20_data |> @filter(_.PostcodePart == "G3") |> DataFrame
push!(Apr20_spa, (
        ("G3"),
        ((count(i -> (i > 0), Apr20_G3.S1_seropositive)) / length(Apr20_G3.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G3.RBD_seropositive)) / length(Apr20_G3.RBD_seropositive))))
        # G4
Apr20_G4 = Apr20_data |> @filter(_.PostcodePart == "G4") |> DataFrame
push!(Apr20_spa, (
        ("G4"),
        ((count(i -> (i > 0), Apr20_G4.S1_seropositive)) / length(Apr20_G4.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G4.RBD_seropositive)) / length(Apr20_G4.RBD_seropositive))))
        # G5
Apr20_G5 = Apr20_data |> @filter(_.PostcodePart == "G5") |> DataFrame
push!(Apr20_spa, (
        ("G5"),
        ((count(i -> (i > 0), Apr20_G5.S1_seropositive)) / length(Apr20_G5.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G5.RBD_seropositive)) / length(Apr20_G5.RBD_seropositive))))
        # G9
Apr20_G9 = Apr20_data |> @filter(_.PostcodePart == "G9") |> DataFrame
push!(Apr20_spa, (
        ("G9"),
        ((count(i -> (i > 0), Apr20_G9.S1_seropositive)) / length(Apr20_G9.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G9.RBD_seropositive)) / length(Apr20_G9.RBD_seropositive))))
        # G11
Apr20_G11 = Apr20_data |> @filter(_.PostcodePart == "G11") |> DataFrame
push!(Apr20_spa, (
        ("G11"),
        ((count(i -> (i > 0), Apr20_G11.S1_seropositive)) / length(Apr20_G11.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G11.RBD_seropositive)) / length(Apr20_G11.RBD_seropositive))))
        # G12
Apr20_G12 = Apr20_data |> @filter(_.PostcodePart == "G12") |> DataFrame
push!(Apr20_spa, (
        ("G12"),
        ((count(i -> (i > 0), Apr20_G12.S1_seropositive)) / length(Apr20_G12.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G12.RBD_seropositive)) / length(Apr20_G12.RBD_seropositive))))
        # G13
Apr20_G13 = Apr20_data |> @filter(_.PostcodePart == "G13") |> DataFrame
push!(Apr20_spa, (
        ("G13"),
        ((count(i -> (i > 0), Apr20_G13.S1_seropositive)) / length(Apr20_G13.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G13.RBD_seropositive)) / length(Apr20_G13.RBD_seropositive))))
        # G14
Apr20_G14 = Apr20_data |> @filter(_.PostcodePart == "G14") |> DataFrame
push!(Apr20_spa, (
        ("G14"),
        ((count(i -> (i > 0), Apr20_G14.S1_seropositive)) / length(Apr20_G14.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G14.RBD_seropositive)) / length(Apr20_G14.RBD_seropositive))))
        # G15
Apr20_G15 = Apr20_data |> @filter(_.PostcodePart == "G15") |> DataFrame
push!(Apr20_spa, (
        ("G15"),
        ((count(i -> (i > 0), Apr20_G15.S1_seropositive)) / length(Apr20_G15.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G15.RBD_seropositive)) / length(Apr20_G15.RBD_seropositive))))
        # G20
Apr20_G20 = Apr20_data |> @filter(_.PostcodePart == "G20") |> DataFrame
push!(Apr20_spa, (
        ("G20"),
        ((count(i -> (i > 0), Apr20_G20.S1_seropositive)) / length(Apr20_G20.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G20.RBD_seropositive)) / length(Apr20_G20.RBD_seropositive))))
        # G21
Apr20_G21 = Apr20_data |> @filter(_.PostcodePart == "G21") |> DataFrame
push!(Apr20_spa, (
        ("G21"),
        ((count(i -> (i > 0), Apr20_G21.S1_seropositive)) / length(Apr20_G21.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G21.RBD_seropositive)) / length(Apr20_G21.RBD_seropositive))))
        # G22
Apr20_G22 = Apr20_data |> @filter(_.PostcodePart == "G22") |> DataFrame
push!(Apr20_spa, (
        ("G22"),
        ((count(i -> (i > 0), Apr20_G22.S1_seropositive)) / length(Apr20_G22.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G22.RBD_seropositive)) / length(Apr20_G22.RBD_seropositive))))
        # G23
Apr20_G23 = Apr20_data |> @filter(_.PostcodePart == "G23") |> DataFrame
push!(Apr20_spa, (
        ("G23"),
        ((count(i -> (i > 0), Apr20_G23.S1_seropositive)) / length(Apr20_G23.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G23.RBD_seropositive)) / length(Apr20_G23.RBD_seropositive))))
        # G31
Apr20_G31 = Apr20_data |> @filter(_.PostcodePart == "G31") |> DataFrame
push!(Apr20_spa, (
        ("G31"),
        ((count(i -> (i > 0), Apr20_G31.S1_seropositive)) / length(Apr20_G31.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G31.RBD_seropositive)) / length(Apr20_G31.RBD_seropositive))))
        # G32
Apr20_G32 = Apr20_data |> @filter(_.PostcodePart == "G32") |> DataFrame
push!(Apr20_spa, (
        ("G32"),
        ((count(i -> (i > 0), Apr20_G32.S1_seropositive)) / length(Apr20_G32.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G32.RBD_seropositive)) / length(Apr20_G32.RBD_seropositive))))
        # G33
Apr20_G33 = Apr20_data |> @filter(_.PostcodePart == "G33") |> DataFrame
push!(Apr20_spa, (
        ("G33"),
        ((count(i -> (i > 0), Apr20_G33.S1_seropositive)) / length(Apr20_G33.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G33.RBD_seropositive)) / length(Apr20_G33.RBD_seropositive))))
        # G34
Apr20_G34 = Apr20_data |> @filter(_.PostcodePart == "G34") |> DataFrame
push!(Apr20_spa, (
        ("G34"),
        ((count(i -> (i > 0), Apr20_G34.S1_seropositive)) / length(Apr20_G34.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G34.RBD_seropositive)) / length(Apr20_G34.RBD_seropositive))))
        # G40
Apr20_G40 = Apr20_data |> @filter(_.PostcodePart == "G40") |> DataFrame
push!(Apr20_spa, (
        ("G40"),
        ((count(i -> (i > 0), Apr20_G40.S1_seropositive)) / length(Apr20_G40.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G40.RBD_seropositive)) / length(Apr20_G40.RBD_seropositive))))
        # G41
Apr20_G41 = Apr20_data |> @filter(_.PostcodePart == "G41") |> DataFrame
push!(Apr20_spa, (
        ("G41"),
        ((count(i -> (i > 0), Apr20_G41.S1_seropositive)) / length(Apr20_G41.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G41.RBD_seropositive)) / length(Apr20_G41.RBD_seropositive))))
        # G42
Apr20_G42 = Apr20_data |> @filter(_.PostcodePart == "G42") |> DataFrame
push!(Apr20_spa, (
        ("G42"),
        ((count(i -> (i > 0), Apr20_G42.S1_seropositive)) / length(Apr20_G42.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G42.RBD_seropositive)) / length(Apr20_G42.RBD_seropositive))))
        # G43
Apr20_G43 = Apr20_data |> @filter(_.PostcodePart == "G43") |> DataFrame
push!(Apr20_spa, (
        ("G43"),
        ((count(i -> (i > 0), Apr20_G43.S1_seropositive)) / length(Apr20_G43.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G43.RBD_seropositive)) / length(Apr20_G43.RBD_seropositive))))
        # G44
Apr20_G44 = Apr20_data |> @filter(_.PostcodePart == "G44") |> DataFrame
push!(Apr20_spa, (
        ("G44"),
        ((count(i -> (i > 0), Apr20_G44.S1_seropositive)) / length(Apr20_G44.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G44.RBD_seropositive)) / length(Apr20_G44.RBD_seropositive))))
        # G45
Apr20_G45 = Apr20_data |> @filter(_.PostcodePart == "G45") |> DataFrame
push!(Apr20_spa, (
        ("G45"),
        ((count(i -> (i > 0), Apr20_G45.S1_seropositive)) / length(Apr20_G45.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G45.RBD_seropositive)) / length(Apr20_G45.RBD_seropositive))))
        # G46
Apr20_G46 = Apr20_data |> @filter(_.PostcodePart == "G46") |> DataFrame
push!(Apr20_spa, (
        ("G46"),
        ((count(i -> (i > 0), Apr20_G46.S1_seropositive)) / length(Apr20_G46.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G46.RBD_seropositive)) / length(Apr20_G46.RBD_seropositive))))
        # G51
Apr20_G51 = Apr20_data |> @filter(_.PostcodePart == "G51") |> DataFrame
push!(Apr20_spa, (
        ("G51"),
        ((count(i -> (i > 0), Apr20_G51.S1_seropositive)) / length(Apr20_G51.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G51.RBD_seropositive)) / length(Apr20_G51.RBD_seropositive))))
        # G52
Apr20_G52 = Apr20_data |> @filter(_.PostcodePart == "G52") |> DataFrame
push!(Apr20_spa, (
        ("G52"),
        ((count(i -> (i > 0), Apr20_G52.S1_seropositive)) / length(Apr20_G52.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G52.RBD_seropositive)) / length(Apr20_G52.RBD_seropositive))))
        # G53
Apr20_G53 = Apr20_data |> @filter(_.PostcodePart == "G53") |> DataFrame
push!(Apr20_spa, (
        ("G53"),
        ((count(i -> (i > 0), Apr20_G53.S1_seropositive)) / length(Apr20_G53.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G53.RBD_seropositive)) / length(Apr20_G53.RBD_seropositive))))
        # G58
Apr20_G58 = Apr20_data |> @filter(_.PostcodePart == "G58") |> DataFrame
push!(Apr20_spa, (
        ("G58"),
        ((count(i -> (i > 0), Apr20_G58.S1_seropositive)) / length(Apr20_G58.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G58.RBD_seropositive)) / length(Apr20_G58.RBD_seropositive))))
        # G60
Apr20_G60 = Apr20_data |> @filter(_.PostcodePart == "G60") |> DataFrame
push!(Apr20_spa, (
        ("G60"),
        ((count(i -> (i > 0), Apr20_G60.S1_seropositive)) / length(Apr20_G60.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G60.RBD_seropositive)) / length(Apr20_G60.RBD_seropositive))))
        # G61
Apr20_G61 = Apr20_data |> @filter(_.PostcodePart == "G61") |> DataFrame
push!(Apr20_spa, (
        ("G61"),
        ((count(i -> (i > 0), Apr20_G61.S1_seropositive)) / length(Apr20_G61.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G61.RBD_seropositive)) / length(Apr20_G61.RBD_seropositive))))
        # G62
Apr20_G62 = Apr20_data |> @filter(_.PostcodePart == "G62") |> DataFrame
push!(Apr20_spa, (
        ("G62"),
        ((count(i -> (i > 0), Apr20_G62.S1_seropositive)) / length(Apr20_G62.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G62.RBD_seropositive)) / length(Apr20_G62.RBD_seropositive))))
        # G63
Apr20_G63 = Apr20_data |> @filter(_.PostcodePart == "G63") |> DataFrame
push!(Apr20_spa, (
        ("G63"),
        ((count(i -> (i > 0), Apr20_G63.S1_seropositive)) / length(Apr20_G63.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G63.RBD_seropositive)) / length(Apr20_G63.RBD_seropositive))))
        # G64
Apr20_G64 = Apr20_data |> @filter(_.PostcodePart == "G64") |> DataFrame
push!(Apr20_spa, (
        ("G64"),
        ((count(i -> (i > 0), Apr20_G64.S1_seropositive)) / length(Apr20_G64.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G64.RBD_seropositive)) / length(Apr20_G64.RBD_seropositive))))
        # G65
Apr20_G65 = Apr20_data |> @filter(_.PostcodePart == "G65") |> DataFrame
push!(Apr20_spa, (
        ("G65"),
        ((count(i -> (i > 0), Apr20_G65.S1_seropositive)) / length(Apr20_G65.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G65.RBD_seropositive)) / length(Apr20_G65.RBD_seropositive))))
        # G66
Apr20_G66 = Apr20_data |> @filter(_.PostcodePart == "G66") |> DataFrame
push!(Apr20_spa, (
        ("G66"),
        ((count(i -> (i > 0), Apr20_G66.S1_seropositive)) / length(Apr20_G66.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G66.RBD_seropositive)) / length(Apr20_G66.RBD_seropositive))))
        # G67
Apr20_G67 = Apr20_data |> @filter(_.PostcodePart == "G67") |> DataFrame
push!(Apr20_spa, (
        ("G67"),
        ((count(i -> (i > 0), Apr20_G67.S1_seropositive)) / length(Apr20_G67.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G67.RBD_seropositive)) / length(Apr20_G67.RBD_seropositive))))
        # G68
Apr20_G68 = Apr20_data |> @filter(_.PostcodePart == "G68") |> DataFrame
push!(Apr20_spa, (
        ("G68"),
        ((count(i -> (i > 0), Apr20_G68.S1_seropositive)) / length(Apr20_G68.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G68.RBD_seropositive)) / length(Apr20_G68.RBD_seropositive))))
        # G69
Apr20_G69 = Apr20_data |> @filter(_.PostcodePart == "G69") |> DataFrame
push!(Apr20_spa, (
        ("G69"),
        ((count(i -> (i > 0), Apr20_G69.S1_seropositive)) / length(Apr20_G69.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G69.RBD_seropositive)) / length(Apr20_G69.RBD_seropositive))))
        #  G70
Apr20_G70 = Apr20_data |> @filter(_.PostcodePart == "G70") |> DataFrame
push!(Apr20_spa, (
        ("G70"),
        ((count(i -> (i > 0), Apr20_G70.S1_seropositive)) / length(Apr20_G70.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G70.RBD_seropositive)) / length(Apr20_G70.RBD_seropositive))))
        # G71
Apr20_G71 = Apr20_data |> @filter(_.PostcodePart == "G71") |> DataFrame
push!(Apr20_spa, (
        ("G71"),
        ((count(i -> (i > 0), Apr20_G71.S1_seropositive)) / length(Apr20_G71.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G71.RBD_seropositive)) / length(Apr20_G71.RBD_seropositive))))
        # G72
Apr20_G72 = Apr20_data |> @filter(_.PostcodePart == "G72") |> DataFrame
push!(Apr20_spa, (
        ("G72"),
        ((count(i -> (i > 0), Apr20_G72.S1_seropositive)) / length(Apr20_G72.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G72.RBD_seropositive)) / length(Apr20_G72.RBD_seropositive))))
        # G73
Apr20_G73 = Apr20_data |> @filter(_.PostcodePart == "G73") |> DataFrame
push!(Apr20_spa, (
        ("G73"),
        ((count(i -> (i > 0), Apr20_G73.S1_seropositive)) / length(Apr20_G73.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G73.RBD_seropositive)) / length(Apr20_G73.RBD_seropositive))))
        # G74
Apr20_G74 = Apr20_data |> @filter(_.PostcodePart == "G74") |> DataFrame
push!(Apr20_spa, (
        ("G74"),
        ((count(i -> (i > 0), Apr20_G74.S1_seropositive)) / length(Apr20_G74.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G74.RBD_seropositive)) / length(Apr20_G74.RBD_seropositive))))
        # G75
Apr20_G75 = Apr20_data |> @filter(_.PostcodePart == "G75") |> DataFrame
push!(Apr20_spa, (
        ("G75"),
        ((count(i -> (i > 0), Apr20_G75.S1_seropositive)) / length(Apr20_G75.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G75.RBD_seropositive)) / length(Apr20_G75.RBD_seropositive))))
        # G77
Apr20_G77 = Apr20_data |> @filter(_.PostcodePart == "G77") |> DataFrame
push!(Apr20_spa, (
        ("G77"),
        ((count(i -> (i > 0), Apr20_G77.S1_seropositive)) / length(Apr20_G77.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G77.RBD_seropositive)) / length(Apr20_G77.RBD_seropositive))))
        # G78
Apr20_G78 = Apr20_data |> @filter(_.PostcodePart == "G78") |> DataFrame
push!(Apr20_spa, (
        ("G78"),
        ((count(i -> (i > 0), Apr20_G78.S1_seropositive)) / length(Apr20_G78.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G78.RBD_seropositive)) / length(Apr20_G78.RBD_seropositive))))
        # G79
Apr20_G79 = Apr20_data |> @filter(_.PostcodePart == "G79") |> DataFrame
push!(Apr20_spa, (
        ("G79"),
        ((count(i -> (i > 0), Apr20_G79.S1_seropositive)) / length(Apr20_G79.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G79.RBD_seropositive)) / length(Apr20_G79.RBD_seropositive))))
        # G81
Apr20_G81 = Apr20_data |> @filter(_.PostcodePart == "G81") |> DataFrame
push!(Apr20_spa, (
        ("G81"),
        ((count(i -> (i > 0), Apr20_G81.S1_seropositive)) / length(Apr20_G81.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G81.RBD_seropositive)) / length(Apr20_G81.RBD_seropositive))))
        # G82
Apr20_G82 = Apr20_data |> @filter(_.PostcodePart == "G82") |> DataFrame
push!(Apr20_spa, (
        ("G82"),
        ((count(i -> (i > 0), Apr20_G82.S1_seropositive)) / length(Apr20_G82.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G82.RBD_seropositive)) / length(Apr20_G82.RBD_seropositive))))
        # G83
Apr20_G83 = Apr20_data |> @filter(_.PostcodePart == "G83") |> DataFrame
push!(Apr20_spa, (
        ("G83"),
        ((count(i -> (i > 0), Apr20_G83.S1_seropositive)) / length(Apr20_G83.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G83.RBD_seropositive)) / length(Apr20_G83.RBD_seropositive))))
        # G84
Apr20_G84 = Apr20_data |> @filter(_.PostcodePart == "G84") |> DataFrame
push!(Apr20_spa, (
        ("G84"),
        ((count(i -> (i > 0), Apr20_G84.S1_seropositive)) / length(Apr20_G84.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G84.RBD_seropositive)) / length(Apr20_G84.RBD_seropositive))))
        # G90
Apr20_G90 = Apr20_data |> @filter(_.PostcodePart == "G90") |> DataFrame
push!(Apr20_spa, (
        ("G90"),
        ((count(i -> (i > 0), Apr20_G90.S1_seropositive)) / length(Apr20_G90.S1_seropositive)),
        ((count(i -> (i > 0), Apr20_G90.RBD_seropositive)) / length(Apr20_G90.RBD_seropositive))))

Apr20_spa |> CSV.write("./honoursproject/data/by_postcode/April_20_postcode_data.csv")

# May
May20_spa = DataFrame(
    Postcode=String[],
    S1=Float64[],
    RBD=Float64[],
)

        # G1
May20_G1 = May20_data |> @filter(_.PostcodePart == "G1") |> DataFrame
push!(May20_spa, (
        ("G1"),
        ((count(i -> (i > 0), May20_G1.S1_seropositive)) / length(May20_G1.S1_seropositive)),
        ((count(i -> (i > 0), May20_G1.RBD_seropositive)) / length(May20_G1.RBD_seropositive))))
        # G2
May20_G2 = May20_data |> @filter(_.PostcodePart == "G2") |> DataFrame
push!(May20_spa, (
        ("G2"),
        ((count(i -> (i > 0), May20_G2.S1_seropositive)) / length(May20_G2.S1_seropositive)),
        ((count(i -> (i > 0), May20_G2.RBD_seropositive)) / length(May20_G2.RBD_seropositive))))
        # G3
May20_G3 = May20_data |> @filter(_.PostcodePart == "G3") |> DataFrame
push!(May20_spa, (
        ("G3"),
        ((count(i -> (i > 0), May20_G3.S1_seropositive)) / length(May20_G3.S1_seropositive)),
        ((count(i -> (i > 0), May20_G3.RBD_seropositive)) / length(May20_G3.RBD_seropositive))))
        # G4
May20_G4 = May20_data |> @filter(_.PostcodePart == "G4") |> DataFrame
push!(May20_spa, (
        ("G4"),
        ((count(i -> (i > 0), May20_G4.S1_seropositive)) / length(May20_G4.S1_seropositive)),
        ((count(i -> (i > 0), May20_G4.RBD_seropositive)) / length(May20_G4.RBD_seropositive))))
        # G5
May20_G5 = May20_data |> @filter(_.PostcodePart == "G5") |> DataFrame
push!(May20_spa, (
        ("G5"),
        ((count(i -> (i > 0), May20_G5.S1_seropositive)) / length(May20_G5.S1_seropositive)),
        ((count(i -> (i > 0), May20_G5.RBD_seropositive)) / length(May20_G5.RBD_seropositive))))
        # G9
May20_G9 = May20_data |> @filter(_.PostcodePart == "G9") |> DataFrame
push!(May20_spa, (
        ("G9"),
        ((count(i -> (i > 0), May20_G9.S1_seropositive)) / length(May20_G9.S1_seropositive)),
        ((count(i -> (i > 0), May20_G9.RBD_seropositive)) / length(May20_G9.RBD_seropositive))))
        # G11
May20_G11 = May20_data |> @filter(_.PostcodePart == "G11") |> DataFrame
push!(May20_spa, (
        ("G11"),
        ((count(i -> (i > 0), May20_G11.S1_seropositive)) / length(May20_G11.S1_seropositive)),
        ((count(i -> (i > 0), May20_G11.RBD_seropositive)) / length(May20_G11.RBD_seropositive))))
        # G12
May20_G12 = May20_data |> @filter(_.PostcodePart == "G12") |> DataFrame
push!(May20_spa, (
        ("G12"),
        ((count(i -> (i > 0), May20_G12.S1_seropositive)) / length(May20_G12.S1_seropositive)),
        ((count(i -> (i > 0), May20_G12.RBD_seropositive)) / length(May20_G12.RBD_seropositive))))
        # G13
May20_G13 = May20_data |> @filter(_.PostcodePart == "G13") |> DataFrame
push!(May20_spa, (
        ("G13"),
        ((count(i -> (i > 0), May20_G13.S1_seropositive)) / length(May20_G13.S1_seropositive)),
        ((count(i -> (i > 0), May20_G13.RBD_seropositive)) / length(May20_G13.RBD_seropositive))))
        # G14
May20_G14 = May20_data |> @filter(_.PostcodePart == "G14") |> DataFrame
push!(May20_spa, (
        ("G14"),
        ((count(i -> (i > 0), May20_G14.S1_seropositive)) / length(May20_G14.S1_seropositive)),
        ((count(i -> (i > 0), May20_G14.RBD_seropositive)) / length(May20_G14.RBD_seropositive))))
        # G15
May20_G15 = May20_data |> @filter(_.PostcodePart == "G15") |> DataFrame
push!(May20_spa, (
        ("G15"),
        ((count(i -> (i > 0), May20_G15.S1_seropositive)) / length(May20_G15.S1_seropositive)),
        ((count(i -> (i > 0), May20_G15.RBD_seropositive)) / length(May20_G15.RBD_seropositive))))
        # G20
May20_G20 = May20_data |> @filter(_.PostcodePart == "G20") |> DataFrame
push!(May20_spa, (
        ("G20"),
        ((count(i -> (i > 0), May20_G20.S1_seropositive)) / length(May20_G20.S1_seropositive)),
        ((count(i -> (i > 0), May20_G20.RBD_seropositive)) / length(May20_G20.RBD_seropositive))))
        # G21
May20_G21 = May20_data |> @filter(_.PostcodePart == "G21") |> DataFrame
push!(May20_spa, (
        ("G21"),
        ((count(i -> (i > 0), May20_G21.S1_seropositive)) / length(May20_G21.S1_seropositive)),
        ((count(i -> (i > 0), May20_G21.RBD_seropositive)) / length(May20_G21.RBD_seropositive))))
        # G22
May20_G22 = May20_data |> @filter(_.PostcodePart == "G22") |> DataFrame
push!(May20_spa, (
        ("G22"),
        ((count(i -> (i > 0), May20_G22.S1_seropositive)) / length(May20_G22.S1_seropositive)),
        ((count(i -> (i > 0), May20_G22.RBD_seropositive)) / length(May20_G22.RBD_seropositive))))
        # G23
May20_G23 = May20_data |> @filter(_.PostcodePart == "G23") |> DataFrame
push!(May20_spa, (
        ("G23"),
        ((count(i -> (i > 0), May20_G23.S1_seropositive)) / length(May20_G23.S1_seropositive)),
        ((count(i -> (i > 0), May20_G23.RBD_seropositive)) / length(May20_G23.RBD_seropositive))))
        # G31
May20_G31 = May20_data |> @filter(_.PostcodePart == "G31") |> DataFrame
push!(May20_spa, (
        ("G31"),
        ((count(i -> (i > 0), May20_G31.S1_seropositive)) / length(May20_G31.S1_seropositive)),
        ((count(i -> (i > 0), May20_G31.RBD_seropositive)) / length(May20_G31.RBD_seropositive))))
        # G32
May20_G32 = May20_data |> @filter(_.PostcodePart == "G32") |> DataFrame
push!(May20_spa, (
        ("G32"),
        ((count(i -> (i > 0), May20_G32.S1_seropositive)) / length(May20_G32.S1_seropositive)),
        ((count(i -> (i > 0), May20_G32.RBD_seropositive)) / length(May20_G32.RBD_seropositive))))
        # G33
May20_G33 = May20_data |> @filter(_.PostcodePart == "G33") |> DataFrame
push!(May20_spa, (
        ("G33"),
        ((count(i -> (i > 0), May20_G33.S1_seropositive)) / length(May20_G33.S1_seropositive)),
        ((count(i -> (i > 0), May20_G33.RBD_seropositive)) / length(May20_G33.RBD_seropositive))))
        # G34
May20_G34 = May20_data |> @filter(_.PostcodePart == "G34") |> DataFrame
push!(May20_spa, (
        ("G34"),
        ((count(i -> (i > 0), May20_G34.S1_seropositive)) / length(May20_G34.S1_seropositive)),
        ((count(i -> (i > 0), May20_G34.RBD_seropositive)) / length(May20_G34.RBD_seropositive))))
        # G40
May20_G40 = May20_data |> @filter(_.PostcodePart == "G40") |> DataFrame
push!(May20_spa, (
        ("G40"),
        ((count(i -> (i > 0), May20_G40.S1_seropositive)) / length(May20_G40.S1_seropositive)),
        ((count(i -> (i > 0), May20_G40.RBD_seropositive)) / length(May20_G40.RBD_seropositive))))
        # G41
May20_G41 = May20_data |> @filter(_.PostcodePart == "G41") |> DataFrame
push!(May20_spa, (
        ("G41"),
        ((count(i -> (i > 0), May20_G41.S1_seropositive)) / length(May20_G41.S1_seropositive)),
        ((count(i -> (i > 0), May20_G41.RBD_seropositive)) / length(May20_G41.RBD_seropositive))))
        # G42
May20_G42 = May20_data |> @filter(_.PostcodePart == "G42") |> DataFrame
push!(May20_spa, (
        ("G42"),
        ((count(i -> (i > 0), May20_G42.S1_seropositive)) / length(May20_G42.S1_seropositive)),
        ((count(i -> (i > 0), May20_G42.RBD_seropositive)) / length(May20_G42.RBD_seropositive))))
        # G43
May20_G43 = May20_data |> @filter(_.PostcodePart == "G43") |> DataFrame
push!(May20_spa, (
        ("G43"),
        ((count(i -> (i > 0), May20_G43.S1_seropositive)) / length(May20_G43.S1_seropositive)),
        ((count(i -> (i > 0), May20_G43.RBD_seropositive)) / length(May20_G43.RBD_seropositive))))
        # G44
May20_G44 = May20_data |> @filter(_.PostcodePart == "G44") |> DataFrame
push!(May20_spa, (
        ("G44"),
        ((count(i -> (i > 0), May20_G44.S1_seropositive)) / length(May20_G44.S1_seropositive)),
        ((count(i -> (i > 0), May20_G44.RBD_seropositive)) / length(May20_G44.RBD_seropositive))))
        # G45
May20_G45 = May20_data |> @filter(_.PostcodePart == "G45") |> DataFrame
push!(May20_spa, (
        ("G45"),
        ((count(i -> (i > 0), May20_G45.S1_seropositive)) / length(May20_G45.S1_seropositive)),
        ((count(i -> (i > 0), May20_G45.RBD_seropositive)) / length(May20_G45.RBD_seropositive))))
        # G46
May20_G46 = May20_data |> @filter(_.PostcodePart == "G46") |> DataFrame
push!(May20_spa, (
        ("G46"),
        ((count(i -> (i > 0), May20_G46.S1_seropositive)) / length(May20_G46.S1_seropositive)),
        ((count(i -> (i > 0), May20_G46.RBD_seropositive)) / length(May20_G46.RBD_seropositive))))
        # G51
May20_G51 = May20_data |> @filter(_.PostcodePart == "G51") |> DataFrame
push!(May20_spa, (
        ("G51"),
        ((count(i -> (i > 0), May20_G51.S1_seropositive)) / length(May20_G51.S1_seropositive)),
        ((count(i -> (i > 0), May20_G51.RBD_seropositive)) / length(May20_G51.RBD_seropositive))))
        # G52
May20_G52 = May20_data |> @filter(_.PostcodePart == "G52") |> DataFrame
push!(May20_spa, (
        ("G52"),
        ((count(i -> (i > 0), May20_G52.S1_seropositive)) / length(May20_G52.S1_seropositive)),
        ((count(i -> (i > 0), May20_G52.RBD_seropositive)) / length(May20_G52.RBD_seropositive))))
        # G53
May20_G53 = May20_data |> @filter(_.PostcodePart == "G53") |> DataFrame
push!(May20_spa, (
        ("G53"),
        ((count(i -> (i > 0), May20_G53.S1_seropositive)) / length(May20_G53.S1_seropositive)),
        ((count(i -> (i > 0), May20_G53.RBD_seropositive)) / length(May20_G53.RBD_seropositive))))
        # G58
May20_G58 = May20_data |> @filter(_.PostcodePart == "G58") |> DataFrame
push!(May20_spa, (
        ("G58"),
        ((count(i -> (i > 0), May20_G58.S1_seropositive)) / length(May20_G58.S1_seropositive)),
        ((count(i -> (i > 0), May20_G58.RBD_seropositive)) / length(May20_G58.RBD_seropositive))))
        # G60
May20_G60 = May20_data |> @filter(_.PostcodePart == "G60") |> DataFrame
push!(May20_spa, (
        ("G60"),
        ((count(i -> (i > 0), May20_G60.S1_seropositive)) / length(May20_G60.S1_seropositive)),
        ((count(i -> (i > 0), May20_G60.RBD_seropositive)) / length(May20_G60.RBD_seropositive))))
        # G61
May20_G61 = May20_data |> @filter(_.PostcodePart == "G61") |> DataFrame
push!(May20_spa, (
        ("G61"),
        ((count(i -> (i > 0), May20_G61.S1_seropositive)) / length(May20_G61.S1_seropositive)),
        ((count(i -> (i > 0), May20_G61.RBD_seropositive)) / length(May20_G61.RBD_seropositive))))
        # G62
May20_G62 = May20_data |> @filter(_.PostcodePart == "G62") |> DataFrame
push!(May20_spa, (
        ("G62"),
        ((count(i -> (i > 0), May20_G62.S1_seropositive)) / length(May20_G62.S1_seropositive)),
        ((count(i -> (i > 0), May20_G62.RBD_seropositive)) / length(May20_G62.RBD_seropositive))))
        # G63
May20_G63 = May20_data |> @filter(_.PostcodePart == "G63") |> DataFrame
push!(May20_spa, (
        ("G63"),
        ((count(i -> (i > 0), May20_G63.S1_seropositive)) / length(May20_G63.S1_seropositive)),
        ((count(i -> (i > 0), May20_G63.RBD_seropositive)) / length(May20_G63.RBD_seropositive))))
        # G64
May20_G64 = May20_data |> @filter(_.PostcodePart == "G64") |> DataFrame
push!(May20_spa, (
        ("G64"),
        ((count(i -> (i > 0), May20_G64.S1_seropositive)) / length(May20_G64.S1_seropositive)),
        ((count(i -> (i > 0), May20_G64.RBD_seropositive)) / length(May20_G64.RBD_seropositive))))
        # G65
May20_G65 = May20_data |> @filter(_.PostcodePart == "G65") |> DataFrame
push!(May20_spa, (
        ("G65"),
        ((count(i -> (i > 0), May20_G65.S1_seropositive)) / length(May20_G65.S1_seropositive)),
        ((count(i -> (i > 0), May20_G65.RBD_seropositive)) / length(May20_G65.RBD_seropositive))))
        # G66
May20_G66 = May20_data |> @filter(_.PostcodePart == "G66") |> DataFrame
push!(May20_spa, (
        ("G66"),
        ((count(i -> (i > 0), May20_G66.S1_seropositive)) / length(May20_G66.S1_seropositive)),
        ((count(i -> (i > 0), May20_G66.RBD_seropositive)) / length(May20_G66.RBD_seropositive))))
        # G67
May20_G67 = May20_data |> @filter(_.PostcodePart == "G67") |> DataFrame
push!(May20_spa, (
        ("G67"),
        ((count(i -> (i > 0), May20_G67.S1_seropositive)) / length(May20_G67.S1_seropositive)),
        ((count(i -> (i > 0), May20_G67.RBD_seropositive)) / length(May20_G67.RBD_seropositive))))
        # G68
May20_G68 = May20_data |> @filter(_.PostcodePart == "G68") |> DataFrame
push!(May20_spa, (
        ("G68"),
        ((count(i -> (i > 0), May20_G68.S1_seropositive)) / length(May20_G68.S1_seropositive)),
        ((count(i -> (i > 0), May20_G68.RBD_seropositive)) / length(May20_G68.RBD_seropositive))))
        # G69
May20_G69 = May20_data |> @filter(_.PostcodePart == "G69") |> DataFrame
push!(May20_spa, (
        ("G69"),
        ((count(i -> (i > 0), May20_G69.S1_seropositive)) / length(May20_G69.S1_seropositive)),
        ((count(i -> (i > 0), May20_G69.RBD_seropositive)) / length(May20_G69.RBD_seropositive))))
        #  G70
May20_G70 = May20_data |> @filter(_.PostcodePart == "G70") |> DataFrame
push!(May20_spa, (
        ("G70"),
        ((count(i -> (i > 0), May20_G70.S1_seropositive)) / length(May20_G70.S1_seropositive)),
        ((count(i -> (i > 0), May20_G70.RBD_seropositive)) / length(May20_G70.RBD_seropositive))))
        # G71
May20_G71 = May20_data |> @filter(_.PostcodePart == "G71") |> DataFrame
push!(May20_spa, (
        ("G71"),
        ((count(i -> (i > 0), May20_G71.S1_seropositive)) / length(May20_G71.S1_seropositive)),
        ((count(i -> (i > 0), May20_G71.RBD_seropositive)) / length(May20_G71.RBD_seropositive))))
        # G72
May20_G72 = May20_data |> @filter(_.PostcodePart == "G72") |> DataFrame
push!(May20_spa, (
        ("G72"),
        ((count(i -> (i > 0), May20_G72.S1_seropositive)) / length(May20_G72.S1_seropositive)),
        ((count(i -> (i > 0), May20_G72.RBD_seropositive)) / length(May20_G72.RBD_seropositive))))
        # G73
May20_G73 = May20_data |> @filter(_.PostcodePart == "G73") |> DataFrame
push!(May20_spa, (
        ("G73"),
        ((count(i -> (i > 0), May20_G73.S1_seropositive)) / length(May20_G73.S1_seropositive)),
        ((count(i -> (i > 0), May20_G73.RBD_seropositive)) / length(May20_G73.RBD_seropositive))))
        # G74
May20_G74 = May20_data |> @filter(_.PostcodePart == "G74") |> DataFrame
push!(May20_spa, (
        ("G74"),
        ((count(i -> (i > 0), May20_G74.S1_seropositive)) / length(May20_G74.S1_seropositive)),
        ((count(i -> (i > 0), May20_G74.RBD_seropositive)) / length(May20_G74.RBD_seropositive))))
        # G75
May20_G75 = May20_data |> @filter(_.PostcodePart == "G75") |> DataFrame
push!(May20_spa, (
        ("G75"),
        ((count(i -> (i > 0), May20_G75.S1_seropositive)) / length(May20_G75.S1_seropositive)),
        ((count(i -> (i > 0), May20_G75.RBD_seropositive)) / length(May20_G75.RBD_seropositive))))
        # G77
May20_G77 = May20_data |> @filter(_.PostcodePart == "G77") |> DataFrame
push!(May20_spa, (
        ("G77"),
        ((count(i -> (i > 0), May20_G77.S1_seropositive)) / length(May20_G77.S1_seropositive)),
        ((count(i -> (i > 0), May20_G77.RBD_seropositive)) / length(May20_G77.RBD_seropositive))))
        # G78
May20_G78 = May20_data |> @filter(_.PostcodePart == "G78") |> DataFrame
push!(May20_spa, (
        ("G78"),
        ((count(i -> (i > 0), May20_G78.S1_seropositive)) / length(May20_G78.S1_seropositive)),
        ((count(i -> (i > 0), May20_G78.RBD_seropositive)) / length(May20_G78.RBD_seropositive))))
        # G79
May20_G79 = May20_data |> @filter(_.PostcodePart == "G79") |> DataFrame
push!(May20_spa, (
        ("G79"),
        ((count(i -> (i > 0), May20_G79.S1_seropositive)) / length(May20_G79.S1_seropositive)),
        ((count(i -> (i > 0), May20_G79.RBD_seropositive)) / length(May20_G79.RBD_seropositive))))
        # G81
May20_G81 = May20_data |> @filter(_.PostcodePart == "G81") |> DataFrame
push!(May20_spa, (
        ("G81"),
        ((count(i -> (i > 0), May20_G81.S1_seropositive)) / length(May20_G81.S1_seropositive)),
        ((count(i -> (i > 0), May20_G81.RBD_seropositive)) / length(May20_G81.RBD_seropositive))))
        # G82
May20_G82 = May20_data |> @filter(_.PostcodePart == "G82") |> DataFrame
push!(May20_spa, (
        ("G82"),
        ((count(i -> (i > 0), May20_G82.S1_seropositive)) / length(May20_G82.S1_seropositive)),
        ((count(i -> (i > 0), May20_G82.RBD_seropositive)) / length(May20_G82.RBD_seropositive))))
        # G83
May20_G83 = May20_data |> @filter(_.PostcodePart == "G83") |> DataFrame
push!(May20_spa, (
        ("G83"),
        ((count(i -> (i > 0), May20_G83.S1_seropositive)) / length(May20_G83.S1_seropositive)),
        ((count(i -> (i > 0), May20_G83.RBD_seropositive)) / length(May20_G83.RBD_seropositive))))
        # G84
May20_G84 = May20_data |> @filter(_.PostcodePart == "G84") |> DataFrame
push!(May20_spa, (
        ("G84"),
        ((count(i -> (i > 0), May20_G84.S1_seropositive)) / length(May20_G84.S1_seropositive)),
        ((count(i -> (i > 0), May20_G84.RBD_seropositive)) / length(May20_G84.RBD_seropositive))))
        # G90
May20_G90 = May20_data |> @filter(_.PostcodePart == "G90") |> DataFrame
push!(May20_spa, (
        ("G90"),
        ((count(i -> (i > 0), May20_G90.S1_seropositive)) / length(May20_G90.S1_seropositive)),
        ((count(i -> (i > 0), May20_G90.RBD_seropositive)) / length(May20_G90.RBD_seropositive))))

May20_spa |> CSV.write("./honoursproject/data/by_postcode/May_20_postcode_data.csv")

# June
Jun20_spa = DataFrame(
    Postcode=String[],
    S1=Float64[],
    RBD=Float64[],
)

        # G1
Jun20_G1 = Jun20_data |> @filter(_.PostcodePart == "G1") |> DataFrame
push!(Jun20_spa, (
        ("G1"),
        ((count(i -> (i > 0), Jun20_G1.S1_seropositive)) / length(Jun20_G1.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G1.RBD_seropositive)) / length(Jun20_G1.RBD_seropositive))))
        # G2
Jun20_G2 = Jun20_data |> @filter(_.PostcodePart == "G2") |> DataFrame
push!(Jun20_spa, (
        ("G2"),
        ((count(i -> (i > 0), Jun20_G2.S1_seropositive)) / length(Jun20_G2.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G2.RBD_seropositive)) / length(Jun20_G2.RBD_seropositive))))
        # G3
Jun20_G3 = Jun20_data |> @filter(_.PostcodePart == "G3") |> DataFrame
push!(Jun20_spa, (
        ("G3"),
        ((count(i -> (i > 0), Jun20_G3.S1_seropositive)) / length(Jun20_G3.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G3.RBD_seropositive)) / length(Jun20_G3.RBD_seropositive))))
        # G4
Jun20_G4 = Jun20_data |> @filter(_.PostcodePart == "G4") |> DataFrame
push!(Jun20_spa, (
        ("G4"),
        ((count(i -> (i > 0), Jun20_G4.S1_seropositive)) / length(Jun20_G4.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G4.RBD_seropositive)) / length(Jun20_G4.RBD_seropositive))))
        # G5
Jun20_G5 = Jun20_data |> @filter(_.PostcodePart == "G5") |> DataFrame
push!(Jun20_spa, (
        ("G5"),
        ((count(i -> (i > 0), Jun20_G5.S1_seropositive)) / length(Jun20_G5.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G5.RBD_seropositive)) / length(Jun20_G5.RBD_seropositive))))
        # G9
Jun20_G9 = Jun20_data |> @filter(_.PostcodePart == "G9") |> DataFrame
push!(Jun20_spa, (
        ("G9"),
        ((count(i -> (i > 0), Jun20_G9.S1_seropositive)) / length(Jun20_G9.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G9.RBD_seropositive)) / length(Jun20_G9.RBD_seropositive))))
        # G11
Jun20_G11 = Jun20_data |> @filter(_.PostcodePart == "G11") |> DataFrame
push!(Jun20_spa, (
        ("G11"),
        ((count(i -> (i > 0), Jun20_G11.S1_seropositive)) / length(Jun20_G11.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G11.RBD_seropositive)) / length(Jun20_G11.RBD_seropositive))))
        # G12
Jun20_G12 = Jun20_data |> @filter(_.PostcodePart == "G12") |> DataFrame
push!(Jun20_spa, (
        ("G12"),
        ((count(i -> (i > 0), Jun20_G12.S1_seropositive)) / length(Jun20_G12.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G12.RBD_seropositive)) / length(Jun20_G12.RBD_seropositive))))
        # G13
Jun20_G13 = Jun20_data |> @filter(_.PostcodePart == "G13") |> DataFrame
push!(Jun20_spa, (
        ("G13"),
        ((count(i -> (i > 0), Jun20_G13.S1_seropositive)) / length(Jun20_G13.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G13.RBD_seropositive)) / length(Jun20_G13.RBD_seropositive))))
        # G14
Jun20_G14 = Jun20_data |> @filter(_.PostcodePart == "G14") |> DataFrame
push!(Jun20_spa, (
        ("G14"),
        ((count(i -> (i > 0), Jun20_G14.S1_seropositive)) / length(Jun20_G14.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G14.RBD_seropositive)) / length(Jun20_G14.RBD_seropositive))))
        # G15
Jun20_G15 = Jun20_data |> @filter(_.PostcodePart == "G15") |> DataFrame
push!(Jun20_spa, (
        ("G15"),
        ((count(i -> (i > 0), Jun20_G15.S1_seropositive)) / length(Jun20_G15.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G15.RBD_seropositive)) / length(Jun20_G15.RBD_seropositive))))
        # G20
Jun20_G20 = Jun20_data |> @filter(_.PostcodePart == "G20") |> DataFrame
push!(Jun20_spa, (
        ("G20"),
        ((count(i -> (i > 0), Jun20_G20.S1_seropositive)) / length(Jun20_G20.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G20.RBD_seropositive)) / length(Jun20_G20.RBD_seropositive))))
        # G21
Jun20_G21 = Jun20_data |> @filter(_.PostcodePart == "G21") |> DataFrame
push!(Jun20_spa, (
        ("G21"),
        ((count(i -> (i > 0), Jun20_G21.S1_seropositive)) / length(Jun20_G21.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G21.RBD_seropositive)) / length(Jun20_G21.RBD_seropositive))))
        # G22
Jun20_G22 = Jun20_data |> @filter(_.PostcodePart == "G22") |> DataFrame
push!(Jun20_spa, (
        ("G22"),
        ((count(i -> (i > 0), Jun20_G22.S1_seropositive)) / length(Jun20_G22.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G22.RBD_seropositive)) / length(Jun20_G22.RBD_seropositive))))
        # G23
Jun20_G23 = Jun20_data |> @filter(_.PostcodePart == "G23") |> DataFrame
push!(Jun20_spa, (
        ("G23"),
        ((count(i -> (i > 0), Jun20_G23.S1_seropositive)) / length(Jun20_G23.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G23.RBD_seropositive)) / length(Jun20_G23.RBD_seropositive))))
        # G31
Jun20_G31 = Jun20_data |> @filter(_.PostcodePart == "G31") |> DataFrame
push!(Jun20_spa, (
        ("G31"),
        ((count(i -> (i > 0), Jun20_G31.S1_seropositive)) / length(Jun20_G31.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G31.RBD_seropositive)) / length(Jun20_G31.RBD_seropositive))))
        # G32
Jun20_G32 = Jun20_data |> @filter(_.PostcodePart == "G32") |> DataFrame
push!(Jun20_spa, (
        ("G32"),
        ((count(i -> (i > 0), Jun20_G32.S1_seropositive)) / length(Jun20_G32.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G32.RBD_seropositive)) / length(Jun20_G32.RBD_seropositive))))
        # G33
Jun20_G33 = Jun20_data |> @filter(_.PostcodePart == "G33") |> DataFrame
push!(Jun20_spa, (
        ("G33"),
        ((count(i -> (i > 0), Jun20_G33.S1_seropositive)) / length(Jun20_G33.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G33.RBD_seropositive)) / length(Jun20_G33.RBD_seropositive))))
        # G34
Jun20_G34 = Jun20_data |> @filter(_.PostcodePart == "G34") |> DataFrame
push!(Jun20_spa, (
        ("G34"),
        ((count(i -> (i > 0), Jun20_G34.S1_seropositive)) / length(Jun20_G34.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G34.RBD_seropositive)) / length(Jun20_G34.RBD_seropositive))))
        # G40
Jun20_G40 = Jun20_data |> @filter(_.PostcodePart == "G40") |> DataFrame
push!(Jun20_spa, (
        ("G40"),
        ((count(i -> (i > 0), Jun20_G40.S1_seropositive)) / length(Jun20_G40.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G40.RBD_seropositive)) / length(Jun20_G40.RBD_seropositive))))
        # G41
Jun20_G41 = Jun20_data |> @filter(_.PostcodePart == "G41") |> DataFrame
push!(Jun20_spa, (
        ("G41"),
        ((count(i -> (i > 0), Jun20_G41.S1_seropositive)) / length(Jun20_G41.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G41.RBD_seropositive)) / length(Jun20_G41.RBD_seropositive))))
        # G42
Jun20_G42 = Jun20_data |> @filter(_.PostcodePart == "G42") |> DataFrame
push!(Jun20_spa, (
        ("G42"),
        ((count(i -> (i > 0), Jun20_G42.S1_seropositive)) / length(Jun20_G42.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G42.RBD_seropositive)) / length(Jun20_G42.RBD_seropositive))))
        # G43
Jun20_G43 = Jun20_data |> @filter(_.PostcodePart == "G43") |> DataFrame
push!(Jun20_spa, (
        ("G43"),
        ((count(i -> (i > 0), Jun20_G43.S1_seropositive)) / length(Jun20_G43.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G43.RBD_seropositive)) / length(Jun20_G43.RBD_seropositive))))
        # G44
Jun20_G44 = Jun20_data |> @filter(_.PostcodePart == "G44") |> DataFrame
push!(Jun20_spa, (
        ("G44"),
        ((count(i -> (i > 0), Jun20_G44.S1_seropositive)) / length(Jun20_G44.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G44.RBD_seropositive)) / length(Jun20_G44.RBD_seropositive))))
        # G45
Jun20_G45 = Jun20_data |> @filter(_.PostcodePart == "G45") |> DataFrame
push!(Jun20_spa, (
        ("G45"),
        ((count(i -> (i > 0), Jun20_G45.S1_seropositive)) / length(Jun20_G45.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G45.RBD_seropositive)) / length(Jun20_G45.RBD_seropositive))))
        # G46
Jun20_G46 = Jun20_data |> @filter(_.PostcodePart == "G46") |> DataFrame
push!(Jun20_spa, (
        ("G46"),
        ((count(i -> (i > 0), Jun20_G46.S1_seropositive)) / length(Jun20_G46.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G46.RBD_seropositive)) / length(Jun20_G46.RBD_seropositive))))
        # G51
Jun20_G51 = Jun20_data |> @filter(_.PostcodePart == "G51") |> DataFrame
push!(Jun20_spa, (
        ("G51"),
        ((count(i -> (i > 0), Jun20_G51.S1_seropositive)) / length(Jun20_G51.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G51.RBD_seropositive)) / length(Jun20_G51.RBD_seropositive))))
        # G52
Jun20_G52 = Jun20_data |> @filter(_.PostcodePart == "G52") |> DataFrame
push!(Jun20_spa, (
        ("G52"),
        ((count(i -> (i > 0), Jun20_G52.S1_seropositive)) / length(Jun20_G52.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G52.RBD_seropositive)) / length(Jun20_G52.RBD_seropositive))))
        # G53
Jun20_G53 = Jun20_data |> @filter(_.PostcodePart == "G53") |> DataFrame
push!(Jun20_spa, (
        ("G53"),
        ((count(i -> (i > 0), Jun20_G53.S1_seropositive)) / length(Jun20_G53.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G53.RBD_seropositive)) / length(Jun20_G53.RBD_seropositive))))
        # G58
Jun20_G58 = Jun20_data |> @filter(_.PostcodePart == "G58") |> DataFrame
push!(Jun20_spa, (
        ("G58"),
        ((count(i -> (i > 0), Jun20_G58.S1_seropositive)) / length(Jun20_G58.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G58.RBD_seropositive)) / length(Jun20_G58.RBD_seropositive))))
        # G60
Jun20_G60 = Jun20_data |> @filter(_.PostcodePart == "G60") |> DataFrame
push!(Jun20_spa, (
        ("G60"),
        ((count(i -> (i > 0), Jun20_G60.S1_seropositive)) / length(Jun20_G60.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G60.RBD_seropositive)) / length(Jun20_G60.RBD_seropositive))))
        # G61
Jun20_G61 = Jun20_data |> @filter(_.PostcodePart == "G61") |> DataFrame
push!(Jun20_spa, (
        ("G61"),
        ((count(i -> (i > 0), Jun20_G61.S1_seropositive)) / length(Jun20_G61.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G61.RBD_seropositive)) / length(Jun20_G61.RBD_seropositive))))
        # G62
Jun20_G62 = Jun20_data |> @filter(_.PostcodePart == "G62") |> DataFrame
push!(Jun20_spa, (
        ("G62"),
        ((count(i -> (i > 0), Jun20_G62.S1_seropositive)) / length(Jun20_G62.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G62.RBD_seropositive)) / length(Jun20_G62.RBD_seropositive))))
        # G63
Jun20_G63 = Jun20_data |> @filter(_.PostcodePart == "G63") |> DataFrame
push!(Jun20_spa, (
        ("G63"),
        ((count(i -> (i > 0), Jun20_G63.S1_seropositive)) / length(Jun20_G63.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G63.RBD_seropositive)) / length(Jun20_G63.RBD_seropositive))))
        # G64
Jun20_G64 = Jun20_data |> @filter(_.PostcodePart == "G64") |> DataFrame
push!(Jun20_spa, (
        ("G64"),
        ((count(i -> (i > 0), Jun20_G64.S1_seropositive)) / length(Jun20_G64.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G64.RBD_seropositive)) / length(Jun20_G64.RBD_seropositive))))
        # G65
Jun20_G65 = Jun20_data |> @filter(_.PostcodePart == "G65") |> DataFrame
push!(Jun20_spa, (
        ("G65"),
        ((count(i -> (i > 0), Jun20_G65.S1_seropositive)) / length(Jun20_G65.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G65.RBD_seropositive)) / length(Jun20_G65.RBD_seropositive))))
        # G66
Jun20_G66 = Jun20_data |> @filter(_.PostcodePart == "G66") |> DataFrame
push!(Jun20_spa, (
        ("G66"),
        ((count(i -> (i > 0), Jun20_G66.S1_seropositive)) / length(Jun20_G66.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G66.RBD_seropositive)) / length(Jun20_G66.RBD_seropositive))))
        # G67
Jun20_G67 = Jun20_data |> @filter(_.PostcodePart == "G67") |> DataFrame
push!(Jun20_spa, (
        ("G67"),
        ((count(i -> (i > 0), Jun20_G67.S1_seropositive)) / length(Jun20_G67.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G67.RBD_seropositive)) / length(Jun20_G67.RBD_seropositive))))
        # G68
Jun20_G68 = Jun20_data |> @filter(_.PostcodePart == "G68") |> DataFrame
push!(Jun20_spa, (
        ("G68"),
        ((count(i -> (i > 0), Jun20_G68.S1_seropositive)) / length(Jun20_G68.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G68.RBD_seropositive)) / length(Jun20_G68.RBD_seropositive))))
        # G69
Jun20_G69 = Jun20_data |> @filter(_.PostcodePart == "G69") |> DataFrame
push!(Jun20_spa, (
        ("G69"),
        ((count(i -> (i > 0), Jun20_G69.S1_seropositive)) / length(Jun20_G69.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G69.RBD_seropositive)) / length(Jun20_G69.RBD_seropositive))))
        #  G70
Jun20_G70 = Jun20_data |> @filter(_.PostcodePart == "G70") |> DataFrame
push!(Jun20_spa, (
        ("G70"),
        ((count(i -> (i > 0), Jun20_G70.S1_seropositive)) / length(Jun20_G70.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G70.RBD_seropositive)) / length(Jun20_G70.RBD_seropositive))))
        # G71
Jun20_G71 = Jun20_data |> @filter(_.PostcodePart == "G71") |> DataFrame
push!(Jun20_spa, (
        ("G71"),
        ((count(i -> (i > 0), Jun20_G71.S1_seropositive)) / length(Jun20_G71.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G71.RBD_seropositive)) / length(Jun20_G71.RBD_seropositive))))
        # G72
Jun20_G72 = Jun20_data |> @filter(_.PostcodePart == "G72") |> DataFrame
push!(Jun20_spa, (
        ("G72"),
        ((count(i -> (i > 0), Jun20_G72.S1_seropositive)) / length(Jun20_G72.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G72.RBD_seropositive)) / length(Jun20_G72.RBD_seropositive))))
        # G73
Jun20_G73 = Jun20_data |> @filter(_.PostcodePart == "G73") |> DataFrame
push!(Jun20_spa, (
        ("G73"),
        ((count(i -> (i > 0), Jun20_G73.S1_seropositive)) / length(Jun20_G73.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G73.RBD_seropositive)) / length(Jun20_G73.RBD_seropositive))))
        # G74
Jun20_G74 = Jun20_data |> @filter(_.PostcodePart == "G74") |> DataFrame
push!(Jun20_spa, (
        ("G74"),
        ((count(i -> (i > 0), Jun20_G74.S1_seropositive)) / length(Jun20_G74.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G74.RBD_seropositive)) / length(Jun20_G74.RBD_seropositive))))
        # G75
Jun20_G75 = Jun20_data |> @filter(_.PostcodePart == "G75") |> DataFrame
push!(Jun20_spa, (
        ("G75"),
        ((count(i -> (i > 0), Jun20_G75.S1_seropositive)) / length(Jun20_G75.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G75.RBD_seropositive)) / length(Jun20_G75.RBD_seropositive))))
        # G77
Jun20_G77 = Jun20_data |> @filter(_.PostcodePart == "G77") |> DataFrame
push!(Jun20_spa, (
        ("G77"),
        ((count(i -> (i > 0), Jun20_G77.S1_seropositive)) / length(Jun20_G77.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G77.RBD_seropositive)) / length(Jun20_G77.RBD_seropositive))))
        # G78
Jun20_G78 = Jun20_data |> @filter(_.PostcodePart == "G78") |> DataFrame
push!(Jun20_spa, (
        ("G78"),
        ((count(i -> (i > 0), Jun20_G78.S1_seropositive)) / length(Jun20_G78.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G78.RBD_seropositive)) / length(Jun20_G78.RBD_seropositive))))
        # G79
Jun20_G79 = Jun20_data |> @filter(_.PostcodePart == "G79") |> DataFrame
push!(Jun20_spa, (
        ("G79"),
        ((count(i -> (i > 0), Jun20_G79.S1_seropositive)) / length(Jun20_G79.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G79.RBD_seropositive)) / length(Jun20_G79.RBD_seropositive))))
        # G81
Jun20_G81 = Jun20_data |> @filter(_.PostcodePart == "G81") |> DataFrame
push!(Jun20_spa, (
        ("G81"),
        ((count(i -> (i > 0), Jun20_G81.S1_seropositive)) / length(Jun20_G81.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G81.RBD_seropositive)) / length(Jun20_G81.RBD_seropositive))))
        # G82
Jun20_G82 = Jun20_data |> @filter(_.PostcodePart == "G82") |> DataFrame
push!(Jun20_spa, (
        ("G82"),
        ((count(i -> (i > 0), Jun20_G82.S1_seropositive)) / length(Jun20_G82.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G82.RBD_seropositive)) / length(Jun20_G82.RBD_seropositive))))
        # G83
Jun20_G83 = Jun20_data |> @filter(_.PostcodePart == "G83") |> DataFrame
push!(Jun20_spa, (
        ("G83"),
        ((count(i -> (i > 0), Jun20_G83.S1_seropositive)) / length(Jun20_G83.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G83.RBD_seropositive)) / length(Jun20_G83.RBD_seropositive))))
        # G84
Jun20_G84 = Jun20_data |> @filter(_.PostcodePart == "G84") |> DataFrame
push!(Jun20_spa, (
        ("G84"),
        ((count(i -> (i > 0), Jun20_G84.S1_seropositive)) / length(Jun20_G84.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G84.RBD_seropositive)) / length(Jun20_G84.RBD_seropositive))))
        # G90
Jun20_G90 = Jun20_data |> @filter(_.PostcodePart == "G90") |> DataFrame
push!(Jun20_spa, (
        ("G90"),
        ((count(i -> (i > 0), Jun20_G90.S1_seropositive)) / length(Jun20_G90.S1_seropositive)),
        ((count(i -> (i > 0), Jun20_G90.RBD_seropositive)) / length(Jun20_G90.RBD_seropositive))))

Jun20_spa |> CSV.write("./honoursproject/data/by_postcode/June_20_postcode_data.csv")

# July
Jul20_spa = DataFrame(
    Postcode=String[],
    S1=Float64[],
    RBD=Float64[],
)

        # G1
Jul20_G1 = Jul20_data |> @filter(_.PostcodePart == "G1") |> DataFrame
push!(Jul20_spa, (
        ("G1"),
        ((count(i -> (i > 0), Jul20_G1.S1_seropositive)) / length(Jul20_G1.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G1.RBD_seropositive)) / length(Jul20_G1.RBD_seropositive))))
        # G2
Jul20_G2 = Jul20_data |> @filter(_.PostcodePart == "G2") |> DataFrame
push!(Jul20_spa, (
        ("G2"),
        ((count(i -> (i > 0), Jul20_G2.S1_seropositive)) / length(Jul20_G2.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G2.RBD_seropositive)) / length(Jul20_G2.RBD_seropositive))))
        # G3
Jul20_G3 = Jul20_data |> @filter(_.PostcodePart == "G3") |> DataFrame
push!(Jul20_spa, (
        ("G3"),
        ((count(i -> (i > 0), Jul20_G3.S1_seropositive)) / length(Jul20_G3.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G3.RBD_seropositive)) / length(Jul20_G3.RBD_seropositive))))
        # G4
Jul20_G4 = Jul20_data |> @filter(_.PostcodePart == "G4") |> DataFrame
push!(Jul20_spa, (
        ("G4"),
        ((count(i -> (i > 0), Jul20_G4.S1_seropositive)) / length(Jul20_G4.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G4.RBD_seropositive)) / length(Jul20_G4.RBD_seropositive))))
        # G5
Jul20_G5 = Jul20_data |> @filter(_.PostcodePart == "G5") |> DataFrame
push!(Jul20_spa, (
        ("G5"),
        ((count(i -> (i > 0), Jul20_G5.S1_seropositive)) / length(Jul20_G5.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G5.RBD_seropositive)) / length(Jul20_G5.RBD_seropositive))))
        # G9
Jul20_G9 = Jul20_data |> @filter(_.PostcodePart == "G9") |> DataFrame
push!(Jul20_spa, (
        ("G9"),
        ((count(i -> (i > 0), Jul20_G9.S1_seropositive)) / length(Jul20_G9.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G9.RBD_seropositive)) / length(Jul20_G9.RBD_seropositive))))
        # G11
Jul20_G11 = Jul20_data |> @filter(_.PostcodePart == "G11") |> DataFrame
push!(Jul20_spa, (
        ("G11"),
        ((count(i -> (i > 0), Jul20_G11.S1_seropositive)) / length(Jul20_G11.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G11.RBD_seropositive)) / length(Jul20_G11.RBD_seropositive))))
        # G12
Jul20_G12 = Jul20_data |> @filter(_.PostcodePart == "G12") |> DataFrame
push!(Jul20_spa, (
        ("G12"),
        ((count(i -> (i > 0), Jul20_G12.S1_seropositive)) / length(Jul20_G12.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G12.RBD_seropositive)) / length(Jul20_G12.RBD_seropositive))))
        # G13
Jul20_G13 = Jul20_data |> @filter(_.PostcodePart == "G13") |> DataFrame
push!(Jul20_spa, (
        ("G13"),
        ((count(i -> (i > 0), Jul20_G13.S1_seropositive)) / length(Jul20_G13.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G13.RBD_seropositive)) / length(Jul20_G13.RBD_seropositive))))
        # G14
Jul20_G14 = Jul20_data |> @filter(_.PostcodePart == "G14") |> DataFrame
push!(Jul20_spa, (
        ("G14"),
        ((count(i -> (i > 0), Jul20_G14.S1_seropositive)) / length(Jul20_G14.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G14.RBD_seropositive)) / length(Jul20_G14.RBD_seropositive))))
        # G15
Jul20_G15 = Jul20_data |> @filter(_.PostcodePart == "G15") |> DataFrame
push!(Jul20_spa, (
        ("G15"),
        ((count(i -> (i > 0), Jul20_G15.S1_seropositive)) / length(Jul20_G15.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G15.RBD_seropositive)) / length(Jul20_G15.RBD_seropositive))))
        # G20
Jul20_G20 = Jul20_data |> @filter(_.PostcodePart == "G20") |> DataFrame
push!(Jul20_spa, (
        ("G20"),
        ((count(i -> (i > 0), Jul20_G20.S1_seropositive)) / length(Jul20_G20.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G20.RBD_seropositive)) / length(Jul20_G20.RBD_seropositive))))
        # G21
Jul20_G21 = Jul20_data |> @filter(_.PostcodePart == "G21") |> DataFrame
push!(Jul20_spa, (
        ("G21"),
        ((count(i -> (i > 0), Jul20_G21.S1_seropositive)) / length(Jul20_G21.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G21.RBD_seropositive)) / length(Jul20_G21.RBD_seropositive))))
        # G22
Jul20_G22 = Jul20_data |> @filter(_.PostcodePart == "G22") |> DataFrame
push!(Jul20_spa, (
        ("G22"),
        ((count(i -> (i > 0), Jul20_G22.S1_seropositive)) / length(Jul20_G22.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G22.RBD_seropositive)) / length(Jul20_G22.RBD_seropositive))))
        # G23
Jul20_G23 = Jul20_data |> @filter(_.PostcodePart == "G23") |> DataFrame
push!(Jul20_spa, (
        ("G23"),
        ((count(i -> (i > 0), Jul20_G23.S1_seropositive)) / length(Jul20_G23.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G23.RBD_seropositive)) / length(Jul20_G23.RBD_seropositive))))
        # G31
Jul20_G31 = Jul20_data |> @filter(_.PostcodePart == "G31") |> DataFrame
push!(Jul20_spa, (
        ("G31"),
        ((count(i -> (i > 0), Jul20_G31.S1_seropositive)) / length(Jul20_G31.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G31.RBD_seropositive)) / length(Jul20_G31.RBD_seropositive))))
        # G32
Jul20_G32 = Jul20_data |> @filter(_.PostcodePart == "G32") |> DataFrame
push!(Jul20_spa, (
        ("G32"),
        ((count(i -> (i > 0), Jul20_G32.S1_seropositive)) / length(Jul20_G32.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G32.RBD_seropositive)) / length(Jul20_G32.RBD_seropositive))))
        # G33
Jul20_G33 = Jul20_data |> @filter(_.PostcodePart == "G33") |> DataFrame
push!(Jul20_spa, (
        ("G33"),
        ((count(i -> (i > 0), Jul20_G33.S1_seropositive)) / length(Jul20_G33.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G33.RBD_seropositive)) / length(Jul20_G33.RBD_seropositive))))
        # G34
Jul20_G34 = Jul20_data |> @filter(_.PostcodePart == "G34") |> DataFrame
push!(Jul20_spa, (
        ("G34"),
        ((count(i -> (i > 0), Jul20_G34.S1_seropositive)) / length(Jul20_G34.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G34.RBD_seropositive)) / length(Jul20_G34.RBD_seropositive))))
        # G40
Jul20_G40 = Jul20_data |> @filter(_.PostcodePart == "G40") |> DataFrame
push!(Jul20_spa, (
        ("G40"),
        ((count(i -> (i > 0), Jul20_G40.S1_seropositive)) / length(Jul20_G40.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G40.RBD_seropositive)) / length(Jul20_G40.RBD_seropositive))))
        # G41
Jul20_G41 = Jul20_data |> @filter(_.PostcodePart == "G41") |> DataFrame
push!(Jul20_spa, (
        ("G41"),
        ((count(i -> (i > 0), Jul20_G41.S1_seropositive)) / length(Jul20_G41.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G41.RBD_seropositive)) / length(Jul20_G41.RBD_seropositive))))
        # G42
Jul20_G42 = Jul20_data |> @filter(_.PostcodePart == "G42") |> DataFrame
push!(Jul20_spa, (
        ("G42"),
        ((count(i -> (i > 0), Jul20_G42.S1_seropositive)) / length(Jul20_G42.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G42.RBD_seropositive)) / length(Jul20_G42.RBD_seropositive))))
        # G43
Jul20_G43 = Jul20_data |> @filter(_.PostcodePart == "G43") |> DataFrame
push!(Jul20_spa, (
        ("G43"),
        ((count(i -> (i > 0), Jul20_G43.S1_seropositive)) / length(Jul20_G43.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G43.RBD_seropositive)) / length(Jul20_G43.RBD_seropositive))))
        # G44
Jul20_G44 = Jul20_data |> @filter(_.PostcodePart == "G44") |> DataFrame
push!(Jul20_spa, (
        ("G44"),
        ((count(i -> (i > 0), Jul20_G44.S1_seropositive)) / length(Jul20_G44.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G44.RBD_seropositive)) / length(Jul20_G44.RBD_seropositive))))
        # G45
Jul20_G45 = Jul20_data |> @filter(_.PostcodePart == "G45") |> DataFrame
push!(Jul20_spa, (
        ("G45"),
        ((count(i -> (i > 0), Jul20_G45.S1_seropositive)) / length(Jul20_G45.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G45.RBD_seropositive)) / length(Jul20_G45.RBD_seropositive))))
        # G46
Jul20_G46 = Jul20_data |> @filter(_.PostcodePart == "G46") |> DataFrame
push!(Jul20_spa, (
        ("G46"),
        ((count(i -> (i > 0), Jul20_G46.S1_seropositive)) / length(Jul20_G46.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G46.RBD_seropositive)) / length(Jul20_G46.RBD_seropositive))))
        # G51
Jul20_G51 = Jul20_data |> @filter(_.PostcodePart == "G51") |> DataFrame
push!(Jul20_spa, (
        ("G51"),
        ((count(i -> (i > 0), Jul20_G51.S1_seropositive)) / length(Jul20_G51.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G51.RBD_seropositive)) / length(Jul20_G51.RBD_seropositive))))
        # G52
Jul20_G52 = Jul20_data |> @filter(_.PostcodePart == "G52") |> DataFrame
push!(Jul20_spa, (
        ("G52"),
        ((count(i -> (i > 0), Jul20_G52.S1_seropositive)) / length(Jul20_G52.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G52.RBD_seropositive)) / length(Jul20_G52.RBD_seropositive))))
        # G53
Jul20_G53 = Jul20_data |> @filter(_.PostcodePart == "G53") |> DataFrame
push!(Jul20_spa, (
        ("G53"),
        ((count(i -> (i > 0), Jul20_G53.S1_seropositive)) / length(Jul20_G53.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G53.RBD_seropositive)) / length(Jul20_G53.RBD_seropositive))))
        # G58
Jul20_G58 = Jul20_data |> @filter(_.PostcodePart == "G58") |> DataFrame
push!(Jul20_spa, (
        ("G58"),
        ((count(i -> (i > 0), Jul20_G58.S1_seropositive)) / length(Jul20_G58.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G58.RBD_seropositive)) / length(Jul20_G58.RBD_seropositive))))
        # G60
Jul20_G60 = Jul20_data |> @filter(_.PostcodePart == "G60") |> DataFrame
push!(Jul20_spa, (
        ("G60"),
        ((count(i -> (i > 0), Jul20_G60.S1_seropositive)) / length(Jul20_G60.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G60.RBD_seropositive)) / length(Jul20_G60.RBD_seropositive))))
        # G61
Jul20_G61 = Jul20_data |> @filter(_.PostcodePart == "G61") |> DataFrame
push!(Jul20_spa, (
        ("G61"),
        ((count(i -> (i > 0), Jul20_G61.S1_seropositive)) / length(Jul20_G61.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G61.RBD_seropositive)) / length(Jul20_G61.RBD_seropositive))))
        # G62
Jul20_G62 = Jul20_data |> @filter(_.PostcodePart == "G62") |> DataFrame
push!(Jul20_spa, (
        ("G62"),
        ((count(i -> (i > 0), Jul20_G62.S1_seropositive)) / length(Jul20_G62.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G62.RBD_seropositive)) / length(Jul20_G62.RBD_seropositive))))
        # G63
Jul20_G63 = Jul20_data |> @filter(_.PostcodePart == "G63") |> DataFrame
push!(Jul20_spa, (
        ("G63"),
        ((count(i -> (i > 0), Jul20_G63.S1_seropositive)) / length(Jul20_G63.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G63.RBD_seropositive)) / length(Jul20_G63.RBD_seropositive))))
        # G64
Jul20_G64 = Jul20_data |> @filter(_.PostcodePart == "G64") |> DataFrame
push!(Jul20_spa, (
        ("G64"),
        ((count(i -> (i > 0), Jul20_G64.S1_seropositive)) / length(Jul20_G64.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G64.RBD_seropositive)) / length(Jul20_G64.RBD_seropositive))))
        # G65
Jul20_G65 = Jul20_data |> @filter(_.PostcodePart == "G65") |> DataFrame
push!(Jul20_spa, (
        ("G65"),
        ((count(i -> (i > 0), Jul20_G65.S1_seropositive)) / length(Jul20_G65.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G65.RBD_seropositive)) / length(Jul20_G65.RBD_seropositive))))
        # G66
Jul20_G66 = Jul20_data |> @filter(_.PostcodePart == "G66") |> DataFrame
push!(Jul20_spa, (
        ("G66"),
        ((count(i -> (i > 0), Jul20_G66.S1_seropositive)) / length(Jul20_G66.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G66.RBD_seropositive)) / length(Jul20_G66.RBD_seropositive))))
        # G67
Jul20_G67 = Jul20_data |> @filter(_.PostcodePart == "G67") |> DataFrame
push!(Jul20_spa, (
        ("G67"),
        ((count(i -> (i > 0), Jul20_G67.S1_seropositive)) / length(Jul20_G67.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G67.RBD_seropositive)) / length(Jul20_G67.RBD_seropositive))))
        # G68
Jul20_G68 = Jul20_data |> @filter(_.PostcodePart == "G68") |> DataFrame
push!(Jul20_spa, (
        ("G68"),
        ((count(i -> (i > 0), Jul20_G68.S1_seropositive)) / length(Jul20_G68.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G68.RBD_seropositive)) / length(Jul20_G68.RBD_seropositive))))
        # G69
Jul20_G69 = Jul20_data |> @filter(_.PostcodePart == "G69") |> DataFrame
push!(Jul20_spa, (
        ("G69"),
        ((count(i -> (i > 0), Jul20_G69.S1_seropositive)) / length(Jul20_G69.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G69.RBD_seropositive)) / length(Jul20_G69.RBD_seropositive))))
        #  G70
Jul20_G70 = Jul20_data |> @filter(_.PostcodePart == "G70") |> DataFrame
push!(Jul20_spa, (
        ("G70"),
        ((count(i -> (i > 0), Jul20_G70.S1_seropositive)) / length(Jul20_G70.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G70.RBD_seropositive)) / length(Jul20_G70.RBD_seropositive))))
        # G71
Jul20_G71 = Jul20_data |> @filter(_.PostcodePart == "G71") |> DataFrame
push!(Jul20_spa, (
        ("G71"),
        ((count(i -> (i > 0), Jul20_G71.S1_seropositive)) / length(Jul20_G71.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G71.RBD_seropositive)) / length(Jul20_G71.RBD_seropositive))))
        # G72
Jul20_G72 = Jul20_data |> @filter(_.PostcodePart == "G72") |> DataFrame
push!(Jul20_spa, (
        ("G72"),
        ((count(i -> (i > 0), Jul20_G72.S1_seropositive)) / length(Jul20_G72.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G72.RBD_seropositive)) / length(Jul20_G72.RBD_seropositive))))
        # G73
Jul20_G73 = Jul20_data |> @filter(_.PostcodePart == "G73") |> DataFrame
push!(Jul20_spa, (
        ("G73"),
        ((count(i -> (i > 0), Jul20_G73.S1_seropositive)) / length(Jul20_G73.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G73.RBD_seropositive)) / length(Jul20_G73.RBD_seropositive))))
        # G74
Jul20_G74 = Jul20_data |> @filter(_.PostcodePart == "G74") |> DataFrame
push!(Jul20_spa, (
        ("G74"),
        ((count(i -> (i > 0), Jul20_G74.S1_seropositive)) / length(Jul20_G74.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G74.RBD_seropositive)) / length(Jul20_G74.RBD_seropositive))))
        # G75
Jul20_G75 = Jul20_data |> @filter(_.PostcodePart == "G75") |> DataFrame
push!(Jul20_spa, (
        ("G75"),
        ((count(i -> (i > 0), Jul20_G75.S1_seropositive)) / length(Jul20_G75.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G75.RBD_seropositive)) / length(Jul20_G75.RBD_seropositive))))
        # G77
Jul20_G77 = Jul20_data |> @filter(_.PostcodePart == "G77") |> DataFrame
push!(Jul20_spa, (
        ("G77"),
        ((count(i -> (i > 0), Jul20_G77.S1_seropositive)) / length(Jul20_G77.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G77.RBD_seropositive)) / length(Jul20_G77.RBD_seropositive))))
        # G78
Jul20_G78 = Jul20_data |> @filter(_.PostcodePart == "G78") |> DataFrame
push!(Jul20_spa, (
        ("G78"),
        ((count(i -> (i > 0), Jul20_G78.S1_seropositive)) / length(Jul20_G78.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G78.RBD_seropositive)) / length(Jul20_G78.RBD_seropositive))))
        # G79
Jul20_G79 = Jul20_data |> @filter(_.PostcodePart == "G79") |> DataFrame
push!(Jul20_spa, (
        ("G79"),
        ((count(i -> (i > 0), Jul20_G79.S1_seropositive)) / length(Jul20_G79.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G79.RBD_seropositive)) / length(Jul20_G79.RBD_seropositive))))
        # G81
Jul20_G81 = Jul20_data |> @filter(_.PostcodePart == "G81") |> DataFrame
push!(Jul20_spa, (
        ("G81"),
        ((count(i -> (i > 0), Jul20_G81.S1_seropositive)) / length(Jul20_G81.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G81.RBD_seropositive)) / length(Jul20_G81.RBD_seropositive))))
        # G82
Jul20_G82 = Jul20_data |> @filter(_.PostcodePart == "G82") |> DataFrame
push!(Jul20_spa, (
        ("G82"),
        ((count(i -> (i > 0), Jul20_G82.S1_seropositive)) / length(Jul20_G82.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G82.RBD_seropositive)) / length(Jul20_G82.RBD_seropositive))))
        # G83
Jul20_G83 = Jul20_data |> @filter(_.PostcodePart == "G83") |> DataFrame
push!(Jul20_spa, (
        ("G83"),
        ((count(i -> (i > 0), Jul20_G83.S1_seropositive)) / length(Jul20_G83.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G83.RBD_seropositive)) / length(Jul20_G83.RBD_seropositive))))
        # G84
Jul20_G84 = Jul20_data |> @filter(_.PostcodePart == "G84") |> DataFrame
push!(Jul20_spa, (
        ("G84"),
        ((count(i -> (i > 0), Jul20_G84.S1_seropositive)) / length(Jul20_G84.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G84.RBD_seropositive)) / length(Jul20_G84.RBD_seropositive))))
        # G90
Jul20_G90 = Jul20_data |> @filter(_.PostcodePart == "G90") |> DataFrame
push!(Jul20_spa, (
        ("G90"),
        ((count(i -> (i > 0), Jul20_G90.S1_seropositive)) / length(Jul20_G90.S1_seropositive)),
        ((count(i -> (i > 0), Jul20_G90.RBD_seropositive)) / length(Jul20_G90.RBD_seropositive))))

Jul20_spa |> CSV.write("./honoursproject/data/by_postcode/July_20_postcode_data.csv")

# August
Aug20_spa = DataFrame(
    Postcode=String[],
    S1=Float64[],
    RBD=Float64[],
)

        # G1
Aug20_G1 = Aug20_data |> @filter(_.PostcodePart == "G1") |> DataFrame
push!(Aug20_spa, (
        ("G1"),
        ((count(i -> (i > 0), Aug20_G1.S1_seropositive)) / length(Aug20_G1.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G1.RBD_seropositive)) / length(Aug20_G1.RBD_seropositive))))
        # G2
Aug20_G2 = Aug20_data |> @filter(_.PostcodePart == "G2") |> DataFrame
push!(Aug20_spa, (
        ("G2"),
        ((count(i -> (i > 0), Aug20_G2.S1_seropositive)) / length(Aug20_G2.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G2.RBD_seropositive)) / length(Aug20_G2.RBD_seropositive))))
        # G3
Aug20_G3 = Aug20_data |> @filter(_.PostcodePart == "G3") |> DataFrame
push!(Aug20_spa, (
        ("G3"),
        ((count(i -> (i > 0), Aug20_G3.S1_seropositive)) / length(Aug20_G3.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G3.RBD_seropositive)) / length(Aug20_G3.RBD_seropositive))))
        # G4
Aug20_G4 = Aug20_data |> @filter(_.PostcodePart == "G4") |> DataFrame
push!(Aug20_spa, (
        ("G4"),
        ((count(i -> (i > 0), Aug20_G4.S1_seropositive)) / length(Aug20_G4.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G4.RBD_seropositive)) / length(Aug20_G4.RBD_seropositive))))
        # G5
Aug20_G5 = Aug20_data |> @filter(_.PostcodePart == "G5") |> DataFrame
push!(Aug20_spa, (
        ("G5"),
        ((count(i -> (i > 0), Aug20_G5.S1_seropositive)) / length(Aug20_G5.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G5.RBD_seropositive)) / length(Aug20_G5.RBD_seropositive))))
        # G9
Aug20_G9 = Aug20_data |> @filter(_.PostcodePart == "G9") |> DataFrame
push!(Aug20_spa, (
        ("G9"),
        ((count(i -> (i > 0), Aug20_G9.S1_seropositive)) / length(Aug20_G9.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G9.RBD_seropositive)) / length(Aug20_G9.RBD_seropositive))))
        # G11
Aug20_G11 = Aug20_data |> @filter(_.PostcodePart == "G11") |> DataFrame
push!(Aug20_spa, (
        ("G11"),
        ((count(i -> (i > 0), Aug20_G11.S1_seropositive)) / length(Aug20_G11.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G11.RBD_seropositive)) / length(Aug20_G11.RBD_seropositive))))
        # G12
Aug20_G12 = Aug20_data |> @filter(_.PostcodePart == "G12") |> DataFrame
push!(Aug20_spa, (
        ("G12"),
        ((count(i -> (i > 0), Aug20_G12.S1_seropositive)) / length(Aug20_G12.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G12.RBD_seropositive)) / length(Aug20_G12.RBD_seropositive))))
        # G13
Aug20_G13 = Aug20_data |> @filter(_.PostcodePart == "G13") |> DataFrame
push!(Aug20_spa, (
        ("G13"),
        ((count(i -> (i > 0), Aug20_G13.S1_seropositive)) / length(Aug20_G13.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G13.RBD_seropositive)) / length(Aug20_G13.RBD_seropositive))))
        # G14
Aug20_G14 = Aug20_data |> @filter(_.PostcodePart == "G14") |> DataFrame
push!(Aug20_spa, (
        ("G14"),
        ((count(i -> (i > 0), Aug20_G14.S1_seropositive)) / length(Aug20_G14.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G14.RBD_seropositive)) / length(Aug20_G14.RBD_seropositive))))
        # G15
Aug20_G15 = Aug20_data |> @filter(_.PostcodePart == "G15") |> DataFrame
push!(Aug20_spa, (
        ("G15"),
        ((count(i -> (i > 0), Aug20_G15.S1_seropositive)) / length(Aug20_G15.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G15.RBD_seropositive)) / length(Aug20_G15.RBD_seropositive))))
        # G20
Aug20_G20 = Aug20_data |> @filter(_.PostcodePart == "G20") |> DataFrame
push!(Aug20_spa, (
        ("G20"),
        ((count(i -> (i > 0), Aug20_G20.S1_seropositive)) / length(Aug20_G20.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G20.RBD_seropositive)) / length(Aug20_G20.RBD_seropositive))))
        # G21
Aug20_G21 = Aug20_data |> @filter(_.PostcodePart == "G21") |> DataFrame
push!(Aug20_spa, (
        ("G21"),
        ((count(i -> (i > 0), Aug20_G21.S1_seropositive)) / length(Aug20_G21.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G21.RBD_seropositive)) / length(Aug20_G21.RBD_seropositive))))
        # G22
Aug20_G22 = Aug20_data |> @filter(_.PostcodePart == "G22") |> DataFrame
push!(Aug20_spa, (
        ("G22"),
        ((count(i -> (i > 0), Aug20_G22.S1_seropositive)) / length(Aug20_G22.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G22.RBD_seropositive)) / length(Aug20_G22.RBD_seropositive))))
        # G23
Aug20_G23 = Aug20_data |> @filter(_.PostcodePart == "G23") |> DataFrame
push!(Aug20_spa, (
        ("G23"),
        ((count(i -> (i > 0), Aug20_G23.S1_seropositive)) / length(Aug20_G23.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G23.RBD_seropositive)) / length(Aug20_G23.RBD_seropositive))))
        # G31
Aug20_G31 = Aug20_data |> @filter(_.PostcodePart == "G31") |> DataFrame
push!(Aug20_spa, (
        ("G31"),
        ((count(i -> (i > 0), Aug20_G31.S1_seropositive)) / length(Aug20_G31.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G31.RBD_seropositive)) / length(Aug20_G31.RBD_seropositive))))
        # G32
Aug20_G32 = Aug20_data |> @filter(_.PostcodePart == "G32") |> DataFrame
push!(Aug20_spa, (
        ("G32"),
        ((count(i -> (i > 0), Aug20_G32.S1_seropositive)) / length(Aug20_G32.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G32.RBD_seropositive)) / length(Aug20_G32.RBD_seropositive))))
        # G33
Aug20_G33 = Aug20_data |> @filter(_.PostcodePart == "G33") |> DataFrame
push!(Aug20_spa, (
        ("G33"),
        ((count(i -> (i > 0), Aug20_G33.S1_seropositive)) / length(Aug20_G33.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G33.RBD_seropositive)) / length(Aug20_G33.RBD_seropositive))))
        # G34
Aug20_G34 = Aug20_data |> @filter(_.PostcodePart == "G34") |> DataFrame
push!(Aug20_spa, (
        ("G34"),
        ((count(i -> (i > 0), Aug20_G34.S1_seropositive)) / length(Aug20_G34.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G34.RBD_seropositive)) / length(Aug20_G34.RBD_seropositive))))
        # G40
Aug20_G40 = Aug20_data |> @filter(_.PostcodePart == "G40") |> DataFrame
push!(Aug20_spa, (
        ("G40"),
        ((count(i -> (i > 0), Aug20_G40.S1_seropositive)) / length(Aug20_G40.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G40.RBD_seropositive)) / length(Aug20_G40.RBD_seropositive))))
        # G41
Aug20_G41 = Aug20_data |> @filter(_.PostcodePart == "G41") |> DataFrame
push!(Aug20_spa, (
        ("G41"),
        ((count(i -> (i > 0), Aug20_G41.S1_seropositive)) / length(Aug20_G41.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G41.RBD_seropositive)) / length(Aug20_G41.RBD_seropositive))))
        # G42
Aug20_G42 = Aug20_data |> @filter(_.PostcodePart == "G42") |> DataFrame
push!(Aug20_spa, (
        ("G42"),
        ((count(i -> (i > 0), Aug20_G42.S1_seropositive)) / length(Aug20_G42.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G42.RBD_seropositive)) / length(Aug20_G42.RBD_seropositive))))
        # G43
Aug20_G43 = Aug20_data |> @filter(_.PostcodePart == "G43") |> DataFrame
push!(Aug20_spa, (
        ("G43"),
        ((count(i -> (i > 0), Aug20_G43.S1_seropositive)) / length(Aug20_G43.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G43.RBD_seropositive)) / length(Aug20_G43.RBD_seropositive))))
        # G44
Aug20_G44 = Aug20_data |> @filter(_.PostcodePart == "G44") |> DataFrame
push!(Aug20_spa, (
        ("G44"),
        ((count(i -> (i > 0), Aug20_G44.S1_seropositive)) / length(Aug20_G44.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G44.RBD_seropositive)) / length(Aug20_G44.RBD_seropositive))))
        # G45
Aug20_G45 = Aug20_data |> @filter(_.PostcodePart == "G45") |> DataFrame
push!(Aug20_spa, (
        ("G45"),
        ((count(i -> (i > 0), Aug20_G45.S1_seropositive)) / length(Aug20_G45.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G45.RBD_seropositive)) / length(Aug20_G45.RBD_seropositive))))
        # G46
Aug20_G46 = Aug20_data |> @filter(_.PostcodePart == "G46") |> DataFrame
push!(Aug20_spa, (
        ("G46"),
        ((count(i -> (i > 0), Aug20_G46.S1_seropositive)) / length(Aug20_G46.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G46.RBD_seropositive)) / length(Aug20_G46.RBD_seropositive))))
        # G51
Aug20_G51 = Aug20_data |> @filter(_.PostcodePart == "G51") |> DataFrame
push!(Aug20_spa, (
        ("G51"),
        ((count(i -> (i > 0), Aug20_G51.S1_seropositive)) / length(Aug20_G51.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G51.RBD_seropositive)) / length(Aug20_G51.RBD_seropositive))))
        # G52
Aug20_G52 = Aug20_data |> @filter(_.PostcodePart == "G52") |> DataFrame
push!(Aug20_spa, (
        ("G52"),
        ((count(i -> (i > 0), Aug20_G52.S1_seropositive)) / length(Aug20_G52.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G52.RBD_seropositive)) / length(Aug20_G52.RBD_seropositive))))
        # G53
Aug20_G53 = Aug20_data |> @filter(_.PostcodePart == "G53") |> DataFrame
push!(Aug20_spa, (
        ("G53"),
        ((count(i -> (i > 0), Aug20_G53.S1_seropositive)) / length(Aug20_G53.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G53.RBD_seropositive)) / length(Aug20_G53.RBD_seropositive))))
        # G58
Aug20_G58 = Aug20_data |> @filter(_.PostcodePart == "G58") |> DataFrame
push!(Aug20_spa, (
        ("G58"),
        ((count(i -> (i > 0), Aug20_G58.S1_seropositive)) / length(Aug20_G58.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G58.RBD_seropositive)) / length(Aug20_G58.RBD_seropositive))))
        # G60
Aug20_G60 = Aug20_data |> @filter(_.PostcodePart == "G60") |> DataFrame
push!(Aug20_spa, (
        ("G60"),
        ((count(i -> (i > 0), Aug20_G60.S1_seropositive)) / length(Aug20_G60.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G60.RBD_seropositive)) / length(Aug20_G60.RBD_seropositive))))
        # G61
Aug20_G61 = Aug20_data |> @filter(_.PostcodePart == "G61") |> DataFrame
push!(Aug20_spa, (
        ("G61"),
        ((count(i -> (i > 0), Aug20_G61.S1_seropositive)) / length(Aug20_G61.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G61.RBD_seropositive)) / length(Aug20_G61.RBD_seropositive))))
        # G62
Aug20_G62 = Aug20_data |> @filter(_.PostcodePart == "G62") |> DataFrame
push!(Aug20_spa, (
        ("G62"),
        ((count(i -> (i > 0), Aug20_G62.S1_seropositive)) / length(Aug20_G62.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G62.RBD_seropositive)) / length(Aug20_G62.RBD_seropositive))))
        # G63
Aug20_G63 = Aug20_data |> @filter(_.PostcodePart == "G63") |> DataFrame
push!(Aug20_spa, (
        ("G63"),
        ((count(i -> (i > 0), Aug20_G63.S1_seropositive)) / length(Aug20_G63.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G63.RBD_seropositive)) / length(Aug20_G63.RBD_seropositive))))
        # G64
Aug20_G64 = Aug20_data |> @filter(_.PostcodePart == "G64") |> DataFrame
push!(Aug20_spa, (
        ("G64"),
        ((count(i -> (i > 0), Aug20_G64.S1_seropositive)) / length(Aug20_G64.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G64.RBD_seropositive)) / length(Aug20_G64.RBD_seropositive))))
        # G65
Aug20_G65 = Aug20_data |> @filter(_.PostcodePart == "G65") |> DataFrame
push!(Aug20_spa, (
        ("G65"),
        ((count(i -> (i > 0), Aug20_G65.S1_seropositive)) / length(Aug20_G65.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G65.RBD_seropositive)) / length(Aug20_G65.RBD_seropositive))))
        # G66
Aug20_G66 = Aug20_data |> @filter(_.PostcodePart == "G66") |> DataFrame
push!(Aug20_spa, (
        ("G66"),
        ((count(i -> (i > 0), Aug20_G66.S1_seropositive)) / length(Aug20_G66.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G66.RBD_seropositive)) / length(Aug20_G66.RBD_seropositive))))
        # G67
Aug20_G67 = Aug20_data |> @filter(_.PostcodePart == "G67") |> DataFrame
push!(Aug20_spa, (
        ("G67"),
        ((count(i -> (i > 0), Aug20_G67.S1_seropositive)) / length(Aug20_G67.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G67.RBD_seropositive)) / length(Aug20_G67.RBD_seropositive))))
        # G68
Aug20_G68 = Aug20_data |> @filter(_.PostcodePart == "G68") |> DataFrame
push!(Aug20_spa, (
        ("G68"),
        ((count(i -> (i > 0), Aug20_G68.S1_seropositive)) / length(Aug20_G68.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G68.RBD_seropositive)) / length(Aug20_G68.RBD_seropositive))))
        # G69
Aug20_G69 = Aug20_data |> @filter(_.PostcodePart == "G69") |> DataFrame
push!(Aug20_spa, (
        ("G69"),
        ((count(i -> (i > 0), Aug20_G69.S1_seropositive)) / length(Aug20_G69.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G69.RBD_seropositive)) / length(Aug20_G69.RBD_seropositive))))
        #  G70
Aug20_G70 = Aug20_data |> @filter(_.PostcodePart == "G70") |> DataFrame
push!(Aug20_spa, (
        ("G70"),
        ((count(i -> (i > 0), Aug20_G70.S1_seropositive)) / length(Aug20_G70.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G70.RBD_seropositive)) / length(Aug20_G70.RBD_seropositive))))
        # G71
Aug20_G71 = Aug20_data |> @filter(_.PostcodePart == "G71") |> DataFrame
push!(Aug20_spa, (
        ("G71"),
        ((count(i -> (i > 0), Aug20_G71.S1_seropositive)) / length(Aug20_G71.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G71.RBD_seropositive)) / length(Aug20_G71.RBD_seropositive))))
        # G72
Aug20_G72 = Aug20_data |> @filter(_.PostcodePart == "G72") |> DataFrame
push!(Aug20_spa, (
        ("G72"),
        ((count(i -> (i > 0), Aug20_G72.S1_seropositive)) / length(Aug20_G72.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G72.RBD_seropositive)) / length(Aug20_G72.RBD_seropositive))))
        # G73
Aug20_G73 = Aug20_data |> @filter(_.PostcodePart == "G73") |> DataFrame
push!(Aug20_spa, (
        ("G73"),
        ((count(i -> (i > 0), Aug20_G73.S1_seropositive)) / length(Aug20_G73.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G73.RBD_seropositive)) / length(Aug20_G73.RBD_seropositive))))
        # G74
Aug20_G74 = Aug20_data |> @filter(_.PostcodePart == "G74") |> DataFrame
push!(Aug20_spa, (
        ("G74"),
        ((count(i -> (i > 0), Aug20_G74.S1_seropositive)) / length(Aug20_G74.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G74.RBD_seropositive)) / length(Aug20_G74.RBD_seropositive))))
        # G75
Aug20_G75 = Aug20_data |> @filter(_.PostcodePart == "G75") |> DataFrame
push!(Aug20_spa, (
        ("G75"),
        ((count(i -> (i > 0), Aug20_G75.S1_seropositive)) / length(Aug20_G75.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G75.RBD_seropositive)) / length(Aug20_G75.RBD_seropositive))))
        # G77
Aug20_G77 = Aug20_data |> @filter(_.PostcodePart == "G77") |> DataFrame
push!(Aug20_spa, (
        ("G77"),
        ((count(i -> (i > 0), Aug20_G77.S1_seropositive)) / length(Aug20_G77.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G77.RBD_seropositive)) / length(Aug20_G77.RBD_seropositive))))
        # G78
Aug20_G78 = Aug20_data |> @filter(_.PostcodePart == "G78") |> DataFrame
push!(Aug20_spa, (
        ("G78"),
        ((count(i -> (i > 0), Aug20_G78.S1_seropositive)) / length(Aug20_G78.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G78.RBD_seropositive)) / length(Aug20_G78.RBD_seropositive))))
        # G79
Aug20_G79 = Aug20_data |> @filter(_.PostcodePart == "G79") |> DataFrame
push!(Aug20_spa, (
        ("G79"),
        ((count(i -> (i > 0), Aug20_G79.S1_seropositive)) / length(Aug20_G79.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G79.RBD_seropositive)) / length(Aug20_G79.RBD_seropositive))))
        # G81
Aug20_G81 = Aug20_data |> @filter(_.PostcodePart == "G81") |> DataFrame
push!(Aug20_spa, (
        ("G81"),
        ((count(i -> (i > 0), Aug20_G81.S1_seropositive)) / length(Aug20_G81.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G81.RBD_seropositive)) / length(Aug20_G81.RBD_seropositive))))
        # G82
Aug20_G82 = Aug20_data |> @filter(_.PostcodePart == "G82") |> DataFrame
push!(Aug20_spa, (
        ("G82"),
        ((count(i -> (i > 0), Aug20_G82.S1_seropositive)) / length(Aug20_G82.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G82.RBD_seropositive)) / length(Aug20_G82.RBD_seropositive))))
        # G83
Aug20_G83 = Aug20_data |> @filter(_.PostcodePart == "G83") |> DataFrame
push!(Aug20_spa, (
        ("G83"),
        ((count(i -> (i > 0), Aug20_G83.S1_seropositive)) / length(Aug20_G83.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G83.RBD_seropositive)) / length(Aug20_G83.RBD_seropositive))))
        # G84
Aug20_G84 = Aug20_data |> @filter(_.PostcodePart == "G84") |> DataFrame
push!(Aug20_spa, (
        ("G84"),
        ((count(i -> (i > 0), Aug20_G84.S1_seropositive)) / length(Aug20_G84.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G84.RBD_seropositive)) / length(Aug20_G84.RBD_seropositive))))
        # G90
Aug20_G90 = Aug20_data |> @filter(_.PostcodePart == "G90") |> DataFrame
push!(Aug20_spa, (
        ("G90"),
        ((count(i -> (i > 0), Aug20_G90.S1_seropositive)) / length(Aug20_G90.S1_seropositive)),
        ((count(i -> (i > 0), Aug20_G90.RBD_seropositive)) / length(Aug20_G90.RBD_seropositive))))

Aug20_spa |> CSV.write("./honoursproject/data/by_postcode/August_20_postcode_data.csv")

# September
Sep20_spa = DataFrame(
    Postcode=String[],
    S1=Float64[],
    RBD=Float64[],
)

        # G1
Sep20_G1 = Sep20_data |> @filter(_.PostcodePart == "G1") |> DataFrame
push!(Sep20_spa, (
        ("G1"),
        ((count(i -> (i > 0), Sep20_G1.S1_seropositive)) / length(Sep20_G1.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G1.RBD_seropositive)) / length(Sep20_G1.RBD_seropositive))))
        # G2
Sep20_G2 = Sep20_data |> @filter(_.PostcodePart == "G2") |> DataFrame
push!(Sep20_spa, (
        ("G2"),
        ((count(i -> (i > 0), Sep20_G2.S1_seropositive)) / length(Sep20_G2.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G2.RBD_seropositive)) / length(Sep20_G2.RBD_seropositive))))
        # G3
Sep20_G3 = Sep20_data |> @filter(_.PostcodePart == "G3") |> DataFrame
push!(Sep20_spa, (
        ("G3"),
        ((count(i -> (i > 0), Sep20_G3.S1_seropositive)) / length(Sep20_G3.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G3.RBD_seropositive)) / length(Sep20_G3.RBD_seropositive))))
        # G4
Sep20_G4 = Sep20_data |> @filter(_.PostcodePart == "G4") |> DataFrame
push!(Sep20_spa, (
        ("G4"),
        ((count(i -> (i > 0), Sep20_G4.S1_seropositive)) / length(Sep20_G4.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G4.RBD_seropositive)) / length(Sep20_G4.RBD_seropositive))))
        # G5
Sep20_G5 = Sep20_data |> @filter(_.PostcodePart == "G5") |> DataFrame
push!(Sep20_spa, (
        ("G5"),
        ((count(i -> (i > 0), Sep20_G5.S1_seropositive)) / length(Sep20_G5.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G5.RBD_seropositive)) / length(Sep20_G5.RBD_seropositive))))
        # G9
Sep20_G9 = Sep20_data |> @filter(_.PostcodePart == "G9") |> DataFrame
push!(Sep20_spa, (
        ("G9"),
        ((count(i -> (i > 0), Sep20_G9.S1_seropositive)) / length(Sep20_G9.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G9.RBD_seropositive)) / length(Sep20_G9.RBD_seropositive))))
        # G11
Sep20_G11 = Sep20_data |> @filter(_.PostcodePart == "G11") |> DataFrame
push!(Sep20_spa, (
        ("G11"),
        ((count(i -> (i > 0), Sep20_G11.S1_seropositive)) / length(Sep20_G11.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G11.RBD_seropositive)) / length(Sep20_G11.RBD_seropositive))))
        # G12
Sep20_G12 = Sep20_data |> @filter(_.PostcodePart == "G12") |> DataFrame
push!(Sep20_spa, (
        ("G12"),
        ((count(i -> (i > 0), Sep20_G12.S1_seropositive)) / length(Sep20_G12.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G12.RBD_seropositive)) / length(Sep20_G12.RBD_seropositive))))
        # G13
Sep20_G13 = Sep20_data |> @filter(_.PostcodePart == "G13") |> DataFrame
push!(Sep20_spa, (
        ("G13"),
        ((count(i -> (i > 0), Sep20_G13.S1_seropositive)) / length(Sep20_G13.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G13.RBD_seropositive)) / length(Sep20_G13.RBD_seropositive))))
        # G14
Sep20_G14 = Sep20_data |> @filter(_.PostcodePart == "G14") |> DataFrame
push!(Sep20_spa, (
        ("G14"),
        ((count(i -> (i > 0), Sep20_G14.S1_seropositive)) / length(Sep20_G14.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G14.RBD_seropositive)) / length(Sep20_G14.RBD_seropositive))))
        # G15
Sep20_G15 = Sep20_data |> @filter(_.PostcodePart == "G15") |> DataFrame
push!(Sep20_spa, (
        ("G15"),
        ((count(i -> (i > 0), Sep20_G15.S1_seropositive)) / length(Sep20_G15.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G15.RBD_seropositive)) / length(Sep20_G15.RBD_seropositive))))
        # G20
Sep20_G20 = Sep20_data |> @filter(_.PostcodePart == "G20") |> DataFrame
push!(Sep20_spa, (
        ("G20"),
        ((count(i -> (i > 0), Sep20_G20.S1_seropositive)) / length(Sep20_G20.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G20.RBD_seropositive)) / length(Sep20_G20.RBD_seropositive))))
        # G21
Sep20_G21 = Sep20_data |> @filter(_.PostcodePart == "G21") |> DataFrame
push!(Sep20_spa, (
        ("G21"),
        ((count(i -> (i > 0), Sep20_G21.S1_seropositive)) / length(Sep20_G21.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G21.RBD_seropositive)) / length(Sep20_G21.RBD_seropositive))))
        # G22
Sep20_G22 = Sep20_data |> @filter(_.PostcodePart == "G22") |> DataFrame
push!(Sep20_spa, (
        ("G22"),
        ((count(i -> (i > 0), Sep20_G22.S1_seropositive)) / length(Sep20_G22.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G22.RBD_seropositive)) / length(Sep20_G22.RBD_seropositive))))
        # G23
Sep20_G23 = Sep20_data |> @filter(_.PostcodePart == "G23") |> DataFrame
push!(Sep20_spa, (
        ("G23"),
        ((count(i -> (i > 0), Sep20_G23.S1_seropositive)) / length(Sep20_G23.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G23.RBD_seropositive)) / length(Sep20_G23.RBD_seropositive))))
        # G31
Sep20_G31 = Sep20_data |> @filter(_.PostcodePart == "G31") |> DataFrame
push!(Sep20_spa, (
        ("G31"),
        ((count(i -> (i > 0), Sep20_G31.S1_seropositive)) / length(Sep20_G31.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G31.RBD_seropositive)) / length(Sep20_G31.RBD_seropositive))))
        # G32
Sep20_G32 = Sep20_data |> @filter(_.PostcodePart == "G32") |> DataFrame
push!(Sep20_spa, (
        ("G32"),
        ((count(i -> (i > 0), Sep20_G32.S1_seropositive)) / length(Sep20_G32.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G32.RBD_seropositive)) / length(Sep20_G32.RBD_seropositive))))
        # G33
Sep20_G33 = Sep20_data |> @filter(_.PostcodePart == "G33") |> DataFrame
push!(Sep20_spa, (
        ("G33"),
        ((count(i -> (i > 0), Sep20_G33.S1_seropositive)) / length(Sep20_G33.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G33.RBD_seropositive)) / length(Sep20_G33.RBD_seropositive))))
        # G34
Sep20_G34 = Sep20_data |> @filter(_.PostcodePart == "G34") |> DataFrame
push!(Sep20_spa, (
        ("G34"),
        ((count(i -> (i > 0), Sep20_G34.S1_seropositive)) / length(Sep20_G34.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G34.RBD_seropositive)) / length(Sep20_G34.RBD_seropositive))))
        # G40
Sep20_G40 = Sep20_data |> @filter(_.PostcodePart == "G40") |> DataFrame
push!(Sep20_spa, (
        ("G40"),
        ((count(i -> (i > 0), Sep20_G40.S1_seropositive)) / length(Sep20_G40.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G40.RBD_seropositive)) / length(Sep20_G40.RBD_seropositive))))
        # G41
Sep20_G41 = Sep20_data |> @filter(_.PostcodePart == "G41") |> DataFrame
push!(Sep20_spa, (
        ("G41"),
        ((count(i -> (i > 0), Sep20_G41.S1_seropositive)) / length(Sep20_G41.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G41.RBD_seropositive)) / length(Sep20_G41.RBD_seropositive))))
        # G42
Sep20_G42 = Sep20_data |> @filter(_.PostcodePart == "G42") |> DataFrame
push!(Sep20_spa, (
        ("G42"),
        ((count(i -> (i > 0), Sep20_G42.S1_seropositive)) / length(Sep20_G42.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G42.RBD_seropositive)) / length(Sep20_G42.RBD_seropositive))))
        # G43
Sep20_G43 = Sep20_data |> @filter(_.PostcodePart == "G43") |> DataFrame
push!(Sep20_spa, (
        ("G43"),
        ((count(i -> (i > 0), Sep20_G43.S1_seropositive)) / length(Sep20_G43.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G43.RBD_seropositive)) / length(Sep20_G43.RBD_seropositive))))
        # G44
Sep20_G44 = Sep20_data |> @filter(_.PostcodePart == "G44") |> DataFrame
push!(Sep20_spa, (
        ("G44"),
        ((count(i -> (i > 0), Sep20_G44.S1_seropositive)) / length(Sep20_G44.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G44.RBD_seropositive)) / length(Sep20_G44.RBD_seropositive))))
        # G45
Sep20_G45 = Sep20_data |> @filter(_.PostcodePart == "G45") |> DataFrame
push!(Sep20_spa, (
        ("G45"),
        ((count(i -> (i > 0), Sep20_G45.S1_seropositive)) / length(Sep20_G45.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G45.RBD_seropositive)) / length(Sep20_G45.RBD_seropositive))))
        # G46
Sep20_G46 = Sep20_data |> @filter(_.PostcodePart == "G46") |> DataFrame
push!(Sep20_spa, (
        ("G46"),
        ((count(i -> (i > 0), Sep20_G46.S1_seropositive)) / length(Sep20_G46.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G46.RBD_seropositive)) / length(Sep20_G46.RBD_seropositive))))
        # G51
Sep20_G51 = Sep20_data |> @filter(_.PostcodePart == "G51") |> DataFrame
push!(Sep20_spa, (
        ("G51"),
        ((count(i -> (i > 0), Sep20_G51.S1_seropositive)) / length(Sep20_G51.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G51.RBD_seropositive)) / length(Sep20_G51.RBD_seropositive))))
        # G52
Sep20_G52 = Sep20_data |> @filter(_.PostcodePart == "G52") |> DataFrame
push!(Sep20_spa, (
        ("G52"),
        ((count(i -> (i > 0), Sep20_G52.S1_seropositive)) / length(Sep20_G52.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G52.RBD_seropositive)) / length(Sep20_G52.RBD_seropositive))))
        # G53
Sep20_G53 = Sep20_data |> @filter(_.PostcodePart == "G53") |> DataFrame
push!(Sep20_spa, (
        ("G53"),
        ((count(i -> (i > 0), Sep20_G53.S1_seropositive)) / length(Sep20_G53.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G53.RBD_seropositive)) / length(Sep20_G53.RBD_seropositive))))
        # G58
Sep20_G58 = Sep20_data |> @filter(_.PostcodePart == "G58") |> DataFrame
push!(Sep20_spa, (
        ("G58"),
        ((count(i -> (i > 0), Sep20_G58.S1_seropositive)) / length(Sep20_G58.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G58.RBD_seropositive)) / length(Sep20_G58.RBD_seropositive))))
        # G60
Sep20_G60 = Sep20_data |> @filter(_.PostcodePart == "G60") |> DataFrame
push!(Sep20_spa, (
        ("G60"),
        ((count(i -> (i > 0), Sep20_G60.S1_seropositive)) / length(Sep20_G60.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G60.RBD_seropositive)) / length(Sep20_G60.RBD_seropositive))))
        # G61
Sep20_G61 = Sep20_data |> @filter(_.PostcodePart == "G61") |> DataFrame
push!(Sep20_spa, (
        ("G61"),
        ((count(i -> (i > 0), Sep20_G61.S1_seropositive)) / length(Sep20_G61.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G61.RBD_seropositive)) / length(Sep20_G61.RBD_seropositive))))
        # G62
Sep20_G62 = Sep20_data |> @filter(_.PostcodePart == "G62") |> DataFrame
push!(Sep20_spa, (
        ("G62"),
        ((count(i -> (i > 0), Sep20_G62.S1_seropositive)) / length(Sep20_G62.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G62.RBD_seropositive)) / length(Sep20_G62.RBD_seropositive))))
        # G63
Sep20_G63 = Sep20_data |> @filter(_.PostcodePart == "G63") |> DataFrame
push!(Sep20_spa, (
        ("G63"),
        ((count(i -> (i > 0), Sep20_G63.S1_seropositive)) / length(Sep20_G63.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G63.RBD_seropositive)) / length(Sep20_G63.RBD_seropositive))))
        # G64
Sep20_G64 = Sep20_data |> @filter(_.PostcodePart == "G64") |> DataFrame
push!(Sep20_spa, (
        ("G64"),
        ((count(i -> (i > 0), Sep20_G64.S1_seropositive)) / length(Sep20_G64.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G64.RBD_seropositive)) / length(Sep20_G64.RBD_seropositive))))
        # G65
Sep20_G65 = Sep20_data |> @filter(_.PostcodePart == "G65") |> DataFrame
push!(Sep20_spa, (
        ("G65"),
        ((count(i -> (i > 0), Sep20_G65.S1_seropositive)) / length(Sep20_G65.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G65.RBD_seropositive)) / length(Sep20_G65.RBD_seropositive))))
        # G66
Sep20_G66 = Sep20_data |> @filter(_.PostcodePart == "G66") |> DataFrame
push!(Sep20_spa, (
        ("G66"),
        ((count(i -> (i > 0), Sep20_G66.S1_seropositive)) / length(Sep20_G66.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G66.RBD_seropositive)) / length(Sep20_G66.RBD_seropositive))))
        # G67
Sep20_G67 = Sep20_data |> @filter(_.PostcodePart == "G67") |> DataFrame
push!(Sep20_spa, (
        ("G67"),
        ((count(i -> (i > 0), Sep20_G67.S1_seropositive)) / length(Sep20_G67.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G67.RBD_seropositive)) / length(Sep20_G67.RBD_seropositive))))
        # G68
Sep20_G68 = Sep20_data |> @filter(_.PostcodePart == "G68") |> DataFrame
push!(Sep20_spa, (
        ("G68"),
        ((count(i -> (i > 0), Sep20_G68.S1_seropositive)) / length(Sep20_G68.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G68.RBD_seropositive)) / length(Sep20_G68.RBD_seropositive))))
        # G69
Sep20_G69 = Sep20_data |> @filter(_.PostcodePart == "G69") |> DataFrame
push!(Sep20_spa, (
        ("G69"),
        ((count(i -> (i > 0), Sep20_G69.S1_seropositive)) / length(Sep20_G69.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G69.RBD_seropositive)) / length(Sep20_G69.RBD_seropositive))))
        #  G70
Sep20_G70 = Sep20_data |> @filter(_.PostcodePart == "G70") |> DataFrame
push!(Sep20_spa, (
        ("G70"),
        ((count(i -> (i > 0), Sep20_G70.S1_seropositive)) / length(Sep20_G70.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G70.RBD_seropositive)) / length(Sep20_G70.RBD_seropositive))))
        # G71
Sep20_G71 = Sep20_data |> @filter(_.PostcodePart == "G71") |> DataFrame
push!(Sep20_spa, (
        ("G71"),
        ((count(i -> (i > 0), Sep20_G71.S1_seropositive)) / length(Sep20_G71.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G71.RBD_seropositive)) / length(Sep20_G71.RBD_seropositive))))
        # G72
Sep20_G72 = Sep20_data |> @filter(_.PostcodePart == "G72") |> DataFrame
push!(Sep20_spa, (
        ("G72"),
        ((count(i -> (i > 0), Sep20_G72.S1_seropositive)) / length(Sep20_G72.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G72.RBD_seropositive)) / length(Sep20_G72.RBD_seropositive))))
        # G73
Sep20_G73 = Sep20_data |> @filter(_.PostcodePart == "G73") |> DataFrame
push!(Sep20_spa, (
        ("G73"),
        ((count(i -> (i > 0), Sep20_G73.S1_seropositive)) / length(Sep20_G73.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G73.RBD_seropositive)) / length(Sep20_G73.RBD_seropositive))))
        # G74
Sep20_G74 = Sep20_data |> @filter(_.PostcodePart == "G74") |> DataFrame
push!(Sep20_spa, (
        ("G74"),
        ((count(i -> (i > 0), Sep20_G74.S1_seropositive)) / length(Sep20_G74.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G74.RBD_seropositive)) / length(Sep20_G74.RBD_seropositive))))
        # G75
Sep20_G75 = Sep20_data |> @filter(_.PostcodePart == "G75") |> DataFrame
push!(Sep20_spa, (
        ("G75"),
        ((count(i -> (i > 0), Sep20_G75.S1_seropositive)) / length(Sep20_G75.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G75.RBD_seropositive)) / length(Sep20_G75.RBD_seropositive))))
        # G77
Sep20_G77 = Sep20_data |> @filter(_.PostcodePart == "G77") |> DataFrame
push!(Sep20_spa, (
        ("G77"),
        ((count(i -> (i > 0), Sep20_G77.S1_seropositive)) / length(Sep20_G77.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G77.RBD_seropositive)) / length(Sep20_G77.RBD_seropositive))))
        # G78
Sep20_G78 = Sep20_data |> @filter(_.PostcodePart == "G78") |> DataFrame
push!(Sep20_spa, (
        ("G78"),
        ((count(i -> (i > 0), Sep20_G78.S1_seropositive)) / length(Sep20_G78.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G78.RBD_seropositive)) / length(Sep20_G78.RBD_seropositive))))
        # G79
Sep20_G79 = Sep20_data |> @filter(_.PostcodePart == "G79") |> DataFrame
push!(Sep20_spa, (
        ("G79"),
        ((count(i -> (i > 0), Sep20_G79.S1_seropositive)) / length(Sep20_G79.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G79.RBD_seropositive)) / length(Sep20_G79.RBD_seropositive))))
        # G81
Sep20_G81 = Sep20_data |> @filter(_.PostcodePart == "G81") |> DataFrame
push!(Sep20_spa, (
        ("G81"),
        ((count(i -> (i > 0), Sep20_G81.S1_seropositive)) / length(Sep20_G81.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G81.RBD_seropositive)) / length(Sep20_G81.RBD_seropositive))))
        # G82
Sep20_G82 = Sep20_data |> @filter(_.PostcodePart == "G82") |> DataFrame
push!(Sep20_spa, (
        ("G82"),
        ((count(i -> (i > 0), Sep20_G82.S1_seropositive)) / length(Sep20_G82.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G82.RBD_seropositive)) / length(Sep20_G82.RBD_seropositive))))
        # G83
Sep20_G83 = Sep20_data |> @filter(_.PostcodePart == "G83") |> DataFrame
push!(Sep20_spa, (
        ("G83"),
        ((count(i -> (i > 0), Sep20_G83.S1_seropositive)) / length(Sep20_G83.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G83.RBD_seropositive)) / length(Sep20_G83.RBD_seropositive))))
        # G84
Sep20_G84 = Sep20_data |> @filter(_.PostcodePart == "G84") |> DataFrame
push!(Sep20_spa, (
        ("G84"),
        ((count(i -> (i > 0), Sep20_G84.S1_seropositive)) / length(Sep20_G84.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G84.RBD_seropositive)) / length(Sep20_G84.RBD_seropositive))))
        # G90
Sep20_G90 = Sep20_data |> @filter(_.PostcodePart == "G90") |> DataFrame
push!(Sep20_spa, (
        ("G90"),
        ((count(i -> (i > 0), Sep20_G90.S1_seropositive)) / length(Sep20_G90.S1_seropositive)),
        ((count(i -> (i > 0), Sep20_G90.RBD_seropositive)) / length(Sep20_G90.RBD_seropositive))))

Sep20_spa |> CSV.write("./honoursproject/data/by_postcode/September_20_postcode_data.csv")

# October
Oct20_spa = DataFrame(
    Postcode=String[],
    S1=Float64[],
    RBD=Float64[],
)

        # G1
Oct20_G1 = Oct20_data |> @filter(_.PostcodePart == "G1") |> DataFrame
push!(Oct20_spa, (
        ("G1"),
        ((count(i -> (i > 0), Oct20_G1.S1_seropositive)) / length(Oct20_G1.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G1.RBD_seropositive)) / length(Oct20_G1.RBD_seropositive))))
        # G2
Oct20_G2 = Oct20_data |> @filter(_.PostcodePart == "G2") |> DataFrame
push!(Oct20_spa, (
        ("G2"),
        ((count(i -> (i > 0), Oct20_G2.S1_seropositive)) / length(Oct20_G2.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G2.RBD_seropositive)) / length(Oct20_G2.RBD_seropositive))))
        # G3
Oct20_G3 = Oct20_data |> @filter(_.PostcodePart == "G3") |> DataFrame
push!(Oct20_spa, (
        ("G3"),
        ((count(i -> (i > 0), Oct20_G3.S1_seropositive)) / length(Oct20_G3.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G3.RBD_seropositive)) / length(Oct20_G3.RBD_seropositive))))
        # G4
Oct20_G4 = Oct20_data |> @filter(_.PostcodePart == "G4") |> DataFrame
push!(Oct20_spa, (
        ("G4"),
        ((count(i -> (i > 0), Oct20_G4.S1_seropositive)) / length(Oct20_G4.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G4.RBD_seropositive)) / length(Oct20_G4.RBD_seropositive))))
        # G5
Oct20_G5 = Oct20_data |> @filter(_.PostcodePart == "G5") |> DataFrame
push!(Oct20_spa, (
        ("G5"),
        ((count(i -> (i > 0), Oct20_G5.S1_seropositive)) / length(Oct20_G5.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G5.RBD_seropositive)) / length(Oct20_G5.RBD_seropositive))))
        # G9
Oct20_G9 = Oct20_data |> @filter(_.PostcodePart == "G9") |> DataFrame
push!(Oct20_spa, (
        ("G9"),
        ((count(i -> (i > 0), Oct20_G9.S1_seropositive)) / length(Oct20_G9.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G9.RBD_seropositive)) / length(Oct20_G9.RBD_seropositive))))
        # G11
Oct20_G11 = Oct20_data |> @filter(_.PostcodePart == "G11") |> DataFrame
push!(Oct20_spa, (
        ("G11"),
        ((count(i -> (i > 0), Oct20_G11.S1_seropositive)) / length(Oct20_G11.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G11.RBD_seropositive)) / length(Oct20_G11.RBD_seropositive))))
        # G12
Oct20_G12 = Oct20_data |> @filter(_.PostcodePart == "G12") |> DataFrame
push!(Oct20_spa, (
        ("G12"),
        ((count(i -> (i > 0), Oct20_G12.S1_seropositive)) / length(Oct20_G12.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G12.RBD_seropositive)) / length(Oct20_G12.RBD_seropositive))))
        # G13
Oct20_G13 = Oct20_data |> @filter(_.PostcodePart == "G13") |> DataFrame
push!(Oct20_spa, (
        ("G13"),
        ((count(i -> (i > 0), Oct20_G13.S1_seropositive)) / length(Oct20_G13.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G13.RBD_seropositive)) / length(Oct20_G13.RBD_seropositive))))
        # G14
Oct20_G14 = Oct20_data |> @filter(_.PostcodePart == "G14") |> DataFrame
push!(Oct20_spa, (
        ("G14"),
        ((count(i -> (i > 0), Oct20_G14.S1_seropositive)) / length(Oct20_G14.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G14.RBD_seropositive)) / length(Oct20_G14.RBD_seropositive))))
        # G15
Oct20_G15 = Oct20_data |> @filter(_.PostcodePart == "G15") |> DataFrame
push!(Oct20_spa, (
        ("G15"),
        ((count(i -> (i > 0), Oct20_G15.S1_seropositive)) / length(Oct20_G15.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G15.RBD_seropositive)) / length(Oct20_G15.RBD_seropositive))))
        # G20
Oct20_G20 = Oct20_data |> @filter(_.PostcodePart == "G20") |> DataFrame
push!(Oct20_spa, (
        ("G20"),
        ((count(i -> (i > 0), Oct20_G20.S1_seropositive)) / length(Oct20_G20.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G20.RBD_seropositive)) / length(Oct20_G20.RBD_seropositive))))
        # G21
Oct20_G21 = Oct20_data |> @filter(_.PostcodePart == "G21") |> DataFrame
push!(Oct20_spa, (
        ("G21"),
        ((count(i -> (i > 0), Oct20_G21.S1_seropositive)) / length(Oct20_G21.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G21.RBD_seropositive)) / length(Oct20_G21.RBD_seropositive))))
        # G22
Oct20_G22 = Oct20_data |> @filter(_.PostcodePart == "G22") |> DataFrame
push!(Oct20_spa, (
        ("G22"),
        ((count(i -> (i > 0), Oct20_G22.S1_seropositive)) / length(Oct20_G22.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G22.RBD_seropositive)) / length(Oct20_G22.RBD_seropositive))))
        # G23
Oct20_G23 = Oct20_data |> @filter(_.PostcodePart == "G23") |> DataFrame
push!(Oct20_spa, (
        ("G23"),
        ((count(i -> (i > 0), Oct20_G23.S1_seropositive)) / length(Oct20_G23.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G23.RBD_seropositive)) / length(Oct20_G23.RBD_seropositive))))
        # G31
Oct20_G31 = Oct20_data |> @filter(_.PostcodePart == "G31") |> DataFrame
push!(Oct20_spa, (
        ("G31"),
        ((count(i -> (i > 0), Oct20_G31.S1_seropositive)) / length(Oct20_G31.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G31.RBD_seropositive)) / length(Oct20_G31.RBD_seropositive))))
        # G32
Oct20_G32 = Oct20_data |> @filter(_.PostcodePart == "G32") |> DataFrame
push!(Oct20_spa, (
        ("G32"),
        ((count(i -> (i > 0), Oct20_G32.S1_seropositive)) / length(Oct20_G32.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G32.RBD_seropositive)) / length(Oct20_G32.RBD_seropositive))))
        # G33
Oct20_G33 = Oct20_data |> @filter(_.PostcodePart == "G33") |> DataFrame
push!(Oct20_spa, (
        ("G33"),
        ((count(i -> (i > 0), Oct20_G33.S1_seropositive)) / length(Oct20_G33.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G33.RBD_seropositive)) / length(Oct20_G33.RBD_seropositive))))
        # G34
Oct20_G34 = Oct20_data |> @filter(_.PostcodePart == "G34") |> DataFrame
push!(Oct20_spa, (
        ("G34"),
        ((count(i -> (i > 0), Oct20_G34.S1_seropositive)) / length(Oct20_G34.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G34.RBD_seropositive)) / length(Oct20_G34.RBD_seropositive))))
        # G40
Oct20_G40 = Oct20_data |> @filter(_.PostcodePart == "G40") |> DataFrame
push!(Oct20_spa, (
        ("G40"),
        ((count(i -> (i > 0), Oct20_G40.S1_seropositive)) / length(Oct20_G40.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G40.RBD_seropositive)) / length(Oct20_G40.RBD_seropositive))))
        # G41
Oct20_G41 = Oct20_data |> @filter(_.PostcodePart == "G41") |> DataFrame
push!(Oct20_spa, (
        ("G41"),
        ((count(i -> (i > 0), Oct20_G41.S1_seropositive)) / length(Oct20_G41.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G41.RBD_seropositive)) / length(Oct20_G41.RBD_seropositive))))
        # G42
Oct20_G42 = Oct20_data |> @filter(_.PostcodePart == "G42") |> DataFrame
push!(Oct20_spa, (
        ("G42"),
        ((count(i -> (i > 0), Oct20_G42.S1_seropositive)) / length(Oct20_G42.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G42.RBD_seropositive)) / length(Oct20_G42.RBD_seropositive))))
        # G43
Oct20_G43 = Oct20_data |> @filter(_.PostcodePart == "G43") |> DataFrame
push!(Oct20_spa, (
        ("G43"),
        ((count(i -> (i > 0), Oct20_G43.S1_seropositive)) / length(Oct20_G43.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G43.RBD_seropositive)) / length(Oct20_G43.RBD_seropositive))))
        # G44
Oct20_G44 = Oct20_data |> @filter(_.PostcodePart == "G44") |> DataFrame
push!(Oct20_spa, (
        ("G44"),
        ((count(i -> (i > 0), Oct20_G44.S1_seropositive)) / length(Oct20_G44.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G44.RBD_seropositive)) / length(Oct20_G44.RBD_seropositive))))
        # G45
Oct20_G45 = Oct20_data |> @filter(_.PostcodePart == "G45") |> DataFrame
push!(Oct20_spa, (
        ("G45"),
        ((count(i -> (i > 0), Oct20_G45.S1_seropositive)) / length(Oct20_G45.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G45.RBD_seropositive)) / length(Oct20_G45.RBD_seropositive))))
        # G46
Oct20_G46 = Oct20_data |> @filter(_.PostcodePart == "G46") |> DataFrame
push!(Oct20_spa, (
        ("G46"),
        ((count(i -> (i > 0), Oct20_G46.S1_seropositive)) / length(Oct20_G46.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G46.RBD_seropositive)) / length(Oct20_G46.RBD_seropositive))))
        # G51
Oct20_G51 = Oct20_data |> @filter(_.PostcodePart == "G51") |> DataFrame
push!(Oct20_spa, (
        ("G51"),
        ((count(i -> (i > 0), Oct20_G51.S1_seropositive)) / length(Oct20_G51.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G51.RBD_seropositive)) / length(Oct20_G51.RBD_seropositive))))
        # G52
Oct20_G52 = Oct20_data |> @filter(_.PostcodePart == "G52") |> DataFrame
push!(Oct20_spa, (
        ("G52"),
        ((count(i -> (i > 0), Oct20_G52.S1_seropositive)) / length(Oct20_G52.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G52.RBD_seropositive)) / length(Oct20_G52.RBD_seropositive))))
        # G53
Oct20_G53 = Oct20_data |> @filter(_.PostcodePart == "G53") |> DataFrame
push!(Oct20_spa, (
        ("G53"),
        ((count(i -> (i > 0), Oct20_G53.S1_seropositive)) / length(Oct20_G53.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G53.RBD_seropositive)) / length(Oct20_G53.RBD_seropositive))))
        # G58
Oct20_G58 = Oct20_data |> @filter(_.PostcodePart == "G58") |> DataFrame
push!(Oct20_spa, (
        ("G58"),
        ((count(i -> (i > 0), Oct20_G58.S1_seropositive)) / length(Oct20_G58.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G58.RBD_seropositive)) / length(Oct20_G58.RBD_seropositive))))
        # G60
Oct20_G60 = Oct20_data |> @filter(_.PostcodePart == "G60") |> DataFrame
push!(Oct20_spa, (
        ("G60"),
        ((count(i -> (i > 0), Oct20_G60.S1_seropositive)) / length(Oct20_G60.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G60.RBD_seropositive)) / length(Oct20_G60.RBD_seropositive))))
        # G61
Oct20_G61 = Oct20_data |> @filter(_.PostcodePart == "G61") |> DataFrame
push!(Oct20_spa, (
        ("G61"),
        ((count(i -> (i > 0), Oct20_G61.S1_seropositive)) / length(Oct20_G61.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G61.RBD_seropositive)) / length(Oct20_G61.RBD_seropositive))))
        # G62
Oct20_G62 = Oct20_data |> @filter(_.PostcodePart == "G62") |> DataFrame
push!(Oct20_spa, (
        ("G62"),
        ((count(i -> (i > 0), Oct20_G62.S1_seropositive)) / length(Oct20_G62.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G62.RBD_seropositive)) / length(Oct20_G62.RBD_seropositive))))
        # G63
Oct20_G63 = Oct20_data |> @filter(_.PostcodePart == "G63") |> DataFrame
push!(Oct20_spa, (
        ("G63"),
        ((count(i -> (i > 0), Oct20_G63.S1_seropositive)) / length(Oct20_G63.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G63.RBD_seropositive)) / length(Oct20_G63.RBD_seropositive))))
        # G64
Oct20_G64 = Oct20_data |> @filter(_.PostcodePart == "G64") |> DataFrame
push!(Oct20_spa, (
        ("G64"),
        ((count(i -> (i > 0), Oct20_G64.S1_seropositive)) / length(Oct20_G64.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G64.RBD_seropositive)) / length(Oct20_G64.RBD_seropositive))))
        # G65
Oct20_G65 = Oct20_data |> @filter(_.PostcodePart == "G65") |> DataFrame
push!(Oct20_spa, (
        ("G65"),
        ((count(i -> (i > 0), Oct20_G65.S1_seropositive)) / length(Oct20_G65.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G65.RBD_seropositive)) / length(Oct20_G65.RBD_seropositive))))
        # G66
Oct20_G66 = Oct20_data |> @filter(_.PostcodePart == "G66") |> DataFrame
push!(Oct20_spa, (
        ("G66"),
        ((count(i -> (i > 0), Oct20_G66.S1_seropositive)) / length(Oct20_G66.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G66.RBD_seropositive)) / length(Oct20_G66.RBD_seropositive))))
        # G67
Oct20_G67 = Oct20_data |> @filter(_.PostcodePart == "G67") |> DataFrame
push!(Oct20_spa, (
        ("G67"),
        ((count(i -> (i > 0), Oct20_G67.S1_seropositive)) / length(Oct20_G67.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G67.RBD_seropositive)) / length(Oct20_G67.RBD_seropositive))))
        # G68
Oct20_G68 = Oct20_data |> @filter(_.PostcodePart == "G68") |> DataFrame
push!(Oct20_spa, (
        ("G68"),
        ((count(i -> (i > 0), Oct20_G68.S1_seropositive)) / length(Oct20_G68.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G68.RBD_seropositive)) / length(Oct20_G68.RBD_seropositive))))
        # G69
Oct20_G69 = Oct20_data |> @filter(_.PostcodePart == "G69") |> DataFrame
push!(Oct20_spa, (
        ("G69"),
        ((count(i -> (i > 0), Oct20_G69.S1_seropositive)) / length(Oct20_G69.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G69.RBD_seropositive)) / length(Oct20_G69.RBD_seropositive))))
        #  G70
Oct20_G70 = Oct20_data |> @filter(_.PostcodePart == "G70") |> DataFrame
push!(Oct20_spa, (
        ("G70"),
        ((count(i -> (i > 0), Oct20_G70.S1_seropositive)) / length(Oct20_G70.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G70.RBD_seropositive)) / length(Oct20_G70.RBD_seropositive))))
        # G71
Oct20_G71 = Oct20_data |> @filter(_.PostcodePart == "G71") |> DataFrame
push!(Oct20_spa, (
        ("G71"),
        ((count(i -> (i > 0), Oct20_G71.S1_seropositive)) / length(Oct20_G71.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G71.RBD_seropositive)) / length(Oct20_G71.RBD_seropositive))))
        # G72
Oct20_G72 = Oct20_data |> @filter(_.PostcodePart == "G72") |> DataFrame
push!(Oct20_spa, (
        ("G72"),
        ((count(i -> (i > 0), Oct20_G72.S1_seropositive)) / length(Oct20_G72.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G72.RBD_seropositive)) / length(Oct20_G72.RBD_seropositive))))
        # G73
Oct20_G73 = Oct20_data |> @filter(_.PostcodePart == "G73") |> DataFrame
push!(Oct20_spa, (
        ("G73"),
        ((count(i -> (i > 0), Oct20_G73.S1_seropositive)) / length(Oct20_G73.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G73.RBD_seropositive)) / length(Oct20_G73.RBD_seropositive))))
        # G74
Oct20_G74 = Oct20_data |> @filter(_.PostcodePart == "G74") |> DataFrame
push!(Oct20_spa, (
        ("G74"),
        ((count(i -> (i > 0), Oct20_G74.S1_seropositive)) / length(Oct20_G74.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G74.RBD_seropositive)) / length(Oct20_G74.RBD_seropositive))))
        # G75
Oct20_G75 = Oct20_data |> @filter(_.PostcodePart == "G75") |> DataFrame
push!(Oct20_spa, (
        ("G75"),
        ((count(i -> (i > 0), Oct20_G75.S1_seropositive)) / length(Oct20_G75.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G75.RBD_seropositive)) / length(Oct20_G75.RBD_seropositive))))
        # G77
Oct20_G77 = Oct20_data |> @filter(_.PostcodePart == "G77") |> DataFrame
push!(Oct20_spa, (
        ("G77"),
        ((count(i -> (i > 0), Oct20_G77.S1_seropositive)) / length(Oct20_G77.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G77.RBD_seropositive)) / length(Oct20_G77.RBD_seropositive))))
        # G78
Oct20_G78 = Oct20_data |> @filter(_.PostcodePart == "G78") |> DataFrame
push!(Oct20_spa, (
        ("G78"),
        ((count(i -> (i > 0), Oct20_G78.S1_seropositive)) / length(Oct20_G78.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G78.RBD_seropositive)) / length(Oct20_G78.RBD_seropositive))))
        # G79
Oct20_G79 = Oct20_data |> @filter(_.PostcodePart == "G79") |> DataFrame
push!(Oct20_spa, (
        ("G79"),
        ((count(i -> (i > 0), Oct20_G79.S1_seropositive)) / length(Oct20_G79.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G79.RBD_seropositive)) / length(Oct20_G79.RBD_seropositive))))
        # G81
Oct20_G81 = Oct20_data |> @filter(_.PostcodePart == "G81") |> DataFrame
push!(Oct20_spa, (
        ("G81"),
        ((count(i -> (i > 0), Oct20_G81.S1_seropositive)) / length(Oct20_G81.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G81.RBD_seropositive)) / length(Oct20_G81.RBD_seropositive))))
        # G82
Oct20_G82 = Oct20_data |> @filter(_.PostcodePart == "G82") |> DataFrame
push!(Oct20_spa, (
        ("G82"),
        ((count(i -> (i > 0), Oct20_G82.S1_seropositive)) / length(Oct20_G82.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G82.RBD_seropositive)) / length(Oct20_G82.RBD_seropositive))))
        # G83
Oct20_G83 = Oct20_data |> @filter(_.PostcodePart == "G83") |> DataFrame
push!(Oct20_spa, (
        ("G83"),
        ((count(i -> (i > 0), Oct20_G83.S1_seropositive)) / length(Oct20_G83.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G83.RBD_seropositive)) / length(Oct20_G83.RBD_seropositive))))
        # G84
Oct20_G84 = Oct20_data |> @filter(_.PostcodePart == "G84") |> DataFrame
push!(Oct20_spa, (
        ("G84"),
        ((count(i -> (i > 0), Oct20_G84.S1_seropositive)) / length(Oct20_G84.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G84.RBD_seropositive)) / length(Oct20_G84.RBD_seropositive))))
        # G90
Oct20_G90 = Oct20_data |> @filter(_.PostcodePart == "G90") |> DataFrame
push!(Oct20_spa, (
        ("G90"),
        ((count(i -> (i > 0), Oct20_G90.S1_seropositive)) / length(Oct20_G90.S1_seropositive)),
        ((count(i -> (i > 0), Oct20_G90.RBD_seropositive)) / length(Oct20_G90.RBD_seropositive))))

Oct20_spa |> CSV.write("./honoursproject/data/by_postcode/October_20_postcode_data.csv")

# November
Nov20_spa = DataFrame(
    Postcode=String[],
    S1=Float64[],
    RBD=Float64[],
)

        # G1
Nov20_G1 = Nov20_data |> @filter(_.PostcodePart == "G1") |> DataFrame
push!(Nov20_spa, (
        ("G1"),
        ((count(i -> (i > 0), Nov20_G1.S1_seropositive)) / length(Nov20_G1.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G1.RBD_seropositive)) / length(Nov20_G1.RBD_seropositive))))
        # G2
Nov20_G2 = Nov20_data |> @filter(_.PostcodePart == "G2") |> DataFrame
push!(Nov20_spa, (
        ("G2"),
        ((count(i -> (i > 0), Nov20_G2.S1_seropositive)) / length(Nov20_G2.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G2.RBD_seropositive)) / length(Nov20_G2.RBD_seropositive))))
        # G3
Nov20_G3 = Nov20_data |> @filter(_.PostcodePart == "G3") |> DataFrame
push!(Nov20_spa, (
        ("G3"),
        ((count(i -> (i > 0), Nov20_G3.S1_seropositive)) / length(Nov20_G3.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G3.RBD_seropositive)) / length(Nov20_G3.RBD_seropositive))))
        # G4
Nov20_G4 = Nov20_data |> @filter(_.PostcodePart == "G4") |> DataFrame
push!(Nov20_spa, (
        ("G4"),
        ((count(i -> (i > 0), Nov20_G4.S1_seropositive)) / length(Nov20_G4.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G4.RBD_seropositive)) / length(Nov20_G4.RBD_seropositive))))
        # G5
Nov20_G5 = Nov20_data |> @filter(_.PostcodePart == "G5") |> DataFrame
push!(Nov20_spa, (
        ("G5"),
        ((count(i -> (i > 0), Nov20_G5.S1_seropositive)) / length(Nov20_G5.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G5.RBD_seropositive)) / length(Nov20_G5.RBD_seropositive))))
        # G9
Nov20_G9 = Nov20_data |> @filter(_.PostcodePart == "G9") |> DataFrame
push!(Nov20_spa, (
        ("G9"),
        ((count(i -> (i > 0), Nov20_G9.S1_seropositive)) / length(Nov20_G9.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G9.RBD_seropositive)) / length(Nov20_G9.RBD_seropositive))))
        # G11
Nov20_G11 = Nov20_data |> @filter(_.PostcodePart == "G11") |> DataFrame
push!(Nov20_spa, (
        ("G11"),
        ((count(i -> (i > 0), Nov20_G11.S1_seropositive)) / length(Nov20_G11.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G11.RBD_seropositive)) / length(Nov20_G11.RBD_seropositive))))
        # G12
Nov20_G12 = Nov20_data |> @filter(_.PostcodePart == "G12") |> DataFrame
push!(Nov20_spa, (
        ("G12"),
        ((count(i -> (i > 0), Nov20_G12.S1_seropositive)) / length(Nov20_G12.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G12.RBD_seropositive)) / length(Nov20_G12.RBD_seropositive))))
        # G13
Nov20_G13 = Nov20_data |> @filter(_.PostcodePart == "G13") |> DataFrame
push!(Nov20_spa, (
        ("G13"),
        ((count(i -> (i > 0), Nov20_G13.S1_seropositive)) / length(Nov20_G13.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G13.RBD_seropositive)) / length(Nov20_G13.RBD_seropositive))))
        # G14
Nov20_G14 = Nov20_data |> @filter(_.PostcodePart == "G14") |> DataFrame
push!(Nov20_spa, (
        ("G14"),
        ((count(i -> (i > 0), Nov20_G14.S1_seropositive)) / length(Nov20_G14.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G14.RBD_seropositive)) / length(Nov20_G14.RBD_seropositive))))
        # G15
Nov20_G15 = Nov20_data |> @filter(_.PostcodePart == "G15") |> DataFrame
push!(Nov20_spa, (
        ("G15"),
        ((count(i -> (i > 0), Nov20_G15.S1_seropositive)) / length(Nov20_G15.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G15.RBD_seropositive)) / length(Nov20_G15.RBD_seropositive))))
        # G20
Nov20_G20 = Nov20_data |> @filter(_.PostcodePart == "G20") |> DataFrame
push!(Nov20_spa, (
        ("G20"),
        ((count(i -> (i > 0), Nov20_G20.S1_seropositive)) / length(Nov20_G20.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G20.RBD_seropositive)) / length(Nov20_G20.RBD_seropositive))))
        # G21
Nov20_G21 = Nov20_data |> @filter(_.PostcodePart == "G21") |> DataFrame
push!(Nov20_spa, (
        ("G21"),
        ((count(i -> (i > 0), Nov20_G21.S1_seropositive)) / length(Nov20_G21.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G21.RBD_seropositive)) / length(Nov20_G21.RBD_seropositive))))
        # G22
Nov20_G22 = Nov20_data |> @filter(_.PostcodePart == "G22") |> DataFrame
push!(Nov20_spa, (
        ("G22"),
        ((count(i -> (i > 0), Nov20_G22.S1_seropositive)) / length(Nov20_G22.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G22.RBD_seropositive)) / length(Nov20_G22.RBD_seropositive))))
        # G23
Nov20_G23 = Nov20_data |> @filter(_.PostcodePart == "G23") |> DataFrame
push!(Nov20_spa, (
        ("G23"),
        ((count(i -> (i > 0), Nov20_G23.S1_seropositive)) / length(Nov20_G23.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G23.RBD_seropositive)) / length(Nov20_G23.RBD_seropositive))))
        # G31
Nov20_G31 = Nov20_data |> @filter(_.PostcodePart == "G31") |> DataFrame
push!(Nov20_spa, (
        ("G31"),
        ((count(i -> (i > 0), Nov20_G31.S1_seropositive)) / length(Nov20_G31.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G31.RBD_seropositive)) / length(Nov20_G31.RBD_seropositive))))
        # G32
Nov20_G32 = Nov20_data |> @filter(_.PostcodePart == "G32") |> DataFrame
push!(Nov20_spa, (
        ("G32"),
        ((count(i -> (i > 0), Nov20_G32.S1_seropositive)) / length(Nov20_G32.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G32.RBD_seropositive)) / length(Nov20_G32.RBD_seropositive))))
        # G33
Nov20_G33 = Nov20_data |> @filter(_.PostcodePart == "G33") |> DataFrame
push!(Nov20_spa, (
        ("G33"),
        ((count(i -> (i > 0), Nov20_G33.S1_seropositive)) / length(Nov20_G33.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G33.RBD_seropositive)) / length(Nov20_G33.RBD_seropositive))))
        # G34
Nov20_G34 = Nov20_data |> @filter(_.PostcodePart == "G34") |> DataFrame
push!(Nov20_spa, (
        ("G34"),
        ((count(i -> (i > 0), Nov20_G34.S1_seropositive)) / length(Nov20_G34.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G34.RBD_seropositive)) / length(Nov20_G34.RBD_seropositive))))
        # G40
Nov20_G40 = Nov20_data |> @filter(_.PostcodePart == "G40") |> DataFrame
push!(Nov20_spa, (
        ("G40"),
        ((count(i -> (i > 0), Nov20_G40.S1_seropositive)) / length(Nov20_G40.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G40.RBD_seropositive)) / length(Nov20_G40.RBD_seropositive))))
        # G41
Nov20_G41 = Nov20_data |> @filter(_.PostcodePart == "G41") |> DataFrame
push!(Nov20_spa, (
        ("G41"),
        ((count(i -> (i > 0), Nov20_G41.S1_seropositive)) / length(Nov20_G41.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G41.RBD_seropositive)) / length(Nov20_G41.RBD_seropositive))))
        # G42
Nov20_G42 = Nov20_data |> @filter(_.PostcodePart == "G42") |> DataFrame
push!(Nov20_spa, (
        ("G42"),
        ((count(i -> (i > 0), Nov20_G42.S1_seropositive)) / length(Nov20_G42.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G42.RBD_seropositive)) / length(Nov20_G42.RBD_seropositive))))
        # G43
Nov20_G43 = Nov20_data |> @filter(_.PostcodePart == "G43") |> DataFrame
push!(Nov20_spa, (
        ("G43"),
        ((count(i -> (i > 0), Nov20_G43.S1_seropositive)) / length(Nov20_G43.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G43.RBD_seropositive)) / length(Nov20_G43.RBD_seropositive))))
        # G44
Nov20_G44 = Nov20_data |> @filter(_.PostcodePart == "G44") |> DataFrame
push!(Nov20_spa, (
        ("G44"),
        ((count(i -> (i > 0), Nov20_G44.S1_seropositive)) / length(Nov20_G44.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G44.RBD_seropositive)) / length(Nov20_G44.RBD_seropositive))))
        # G45
Nov20_G45 = Nov20_data |> @filter(_.PostcodePart == "G45") |> DataFrame
push!(Nov20_spa, (
        ("G45"),
        ((count(i -> (i > 0), Nov20_G45.S1_seropositive)) / length(Nov20_G45.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G45.RBD_seropositive)) / length(Nov20_G45.RBD_seropositive))))
        # G46
Nov20_G46 = Nov20_data |> @filter(_.PostcodePart == "G46") |> DataFrame
push!(Nov20_spa, (
        ("G46"),
        ((count(i -> (i > 0), Nov20_G46.S1_seropositive)) / length(Nov20_G46.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G46.RBD_seropositive)) / length(Nov20_G46.RBD_seropositive))))
        # G51
Nov20_G51 = Nov20_data |> @filter(_.PostcodePart == "G51") |> DataFrame
push!(Nov20_spa, (
        ("G51"),
        ((count(i -> (i > 0), Nov20_G51.S1_seropositive)) / length(Nov20_G51.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G51.RBD_seropositive)) / length(Nov20_G51.RBD_seropositive))))
        # G52
Nov20_G52 = Nov20_data |> @filter(_.PostcodePart == "G52") |> DataFrame
push!(Nov20_spa, (
        ("G52"),
        ((count(i -> (i > 0), Nov20_G52.S1_seropositive)) / length(Nov20_G52.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G52.RBD_seropositive)) / length(Nov20_G52.RBD_seropositive))))
        # G53
Nov20_G53 = Nov20_data |> @filter(_.PostcodePart == "G53") |> DataFrame
push!(Nov20_spa, (
        ("G53"),
        ((count(i -> (i > 0), Nov20_G53.S1_seropositive)) / length(Nov20_G53.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G53.RBD_seropositive)) / length(Nov20_G53.RBD_seropositive))))
        # G58
Nov20_G58 = Nov20_data |> @filter(_.PostcodePart == "G58") |> DataFrame
push!(Nov20_spa, (
        ("G58"),
        ((count(i -> (i > 0), Nov20_G58.S1_seropositive)) / length(Nov20_G58.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G58.RBD_seropositive)) / length(Nov20_G58.RBD_seropositive))))
        # G60
Nov20_G60 = Nov20_data |> @filter(_.PostcodePart == "G60") |> DataFrame
push!(Nov20_spa, (
        ("G60"),
        ((count(i -> (i > 0), Nov20_G60.S1_seropositive)) / length(Nov20_G60.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G60.RBD_seropositive)) / length(Nov20_G60.RBD_seropositive))))
        # G61
Nov20_G61 = Nov20_data |> @filter(_.PostcodePart == "G61") |> DataFrame
push!(Nov20_spa, (
        ("G61"),
        ((count(i -> (i > 0), Nov20_G61.S1_seropositive)) / length(Nov20_G61.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G61.RBD_seropositive)) / length(Nov20_G61.RBD_seropositive))))
        # G62
Nov20_G62 = Nov20_data |> @filter(_.PostcodePart == "G62") |> DataFrame
push!(Nov20_spa, (
        ("G62"),
        ((count(i -> (i > 0), Nov20_G62.S1_seropositive)) / length(Nov20_G62.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G62.RBD_seropositive)) / length(Nov20_G62.RBD_seropositive))))
        # G63
Nov20_G63 = Nov20_data |> @filter(_.PostcodePart == "G63") |> DataFrame
push!(Nov20_spa, (
        ("G63"),
        ((count(i -> (i > 0), Nov20_G63.S1_seropositive)) / length(Nov20_G63.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G63.RBD_seropositive)) / length(Nov20_G63.RBD_seropositive))))
        # G64
Nov20_G64 = Nov20_data |> @filter(_.PostcodePart == "G64") |> DataFrame
push!(Nov20_spa, (
        ("G64"),
        ((count(i -> (i > 0), Nov20_G64.S1_seropositive)) / length(Nov20_G64.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G64.RBD_seropositive)) / length(Nov20_G64.RBD_seropositive))))
        # G65
Nov20_G65 = Nov20_data |> @filter(_.PostcodePart == "G65") |> DataFrame
push!(Nov20_spa, (
        ("G65"),
        ((count(i -> (i > 0), Nov20_G65.S1_seropositive)) / length(Nov20_G65.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G65.RBD_seropositive)) / length(Nov20_G65.RBD_seropositive))))
        # G66
Nov20_G66 = Nov20_data |> @filter(_.PostcodePart == "G66") |> DataFrame
push!(Nov20_spa, (
        ("G66"),
        ((count(i -> (i > 0), Nov20_G66.S1_seropositive)) / length(Nov20_G66.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G66.RBD_seropositive)) / length(Nov20_G66.RBD_seropositive))))
        # G67
Nov20_G67 = Nov20_data |> @filter(_.PostcodePart == "G67") |> DataFrame
push!(Nov20_spa, (
        ("G67"),
        ((count(i -> (i > 0), Nov20_G67.S1_seropositive)) / length(Nov20_G67.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G67.RBD_seropositive)) / length(Nov20_G67.RBD_seropositive))))
        # G68
Nov20_G68 = Nov20_data |> @filter(_.PostcodePart == "G68") |> DataFrame
push!(Nov20_spa, (
        ("G68"),
        ((count(i -> (i > 0), Nov20_G68.S1_seropositive)) / length(Nov20_G68.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G68.RBD_seropositive)) / length(Nov20_G68.RBD_seropositive))))
        # G69
Nov20_G69 = Nov20_data |> @filter(_.PostcodePart == "G69") |> DataFrame
push!(Nov20_spa, (
        ("G69"),
        ((count(i -> (i > 0), Nov20_G69.S1_seropositive)) / length(Nov20_G69.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G69.RBD_seropositive)) / length(Nov20_G69.RBD_seropositive))))
        #  G70
Nov20_G70 = Nov20_data |> @filter(_.PostcodePart == "G70") |> DataFrame
push!(Nov20_spa, (
        ("G70"),
        ((count(i -> (i > 0), Nov20_G70.S1_seropositive)) / length(Nov20_G70.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G70.RBD_seropositive)) / length(Nov20_G70.RBD_seropositive))))
        # G71
Nov20_G71 = Nov20_data |> @filter(_.PostcodePart == "G71") |> DataFrame
push!(Nov20_spa, (
        ("G71"),
        ((count(i -> (i > 0), Nov20_G71.S1_seropositive)) / length(Nov20_G71.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G71.RBD_seropositive)) / length(Nov20_G71.RBD_seropositive))))
        # G72
Nov20_G72 = Nov20_data |> @filter(_.PostcodePart == "G72") |> DataFrame
push!(Nov20_spa, (
        ("G72"),
        ((count(i -> (i > 0), Nov20_G72.S1_seropositive)) / length(Nov20_G72.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G72.RBD_seropositive)) / length(Nov20_G72.RBD_seropositive))))
        # G73
Nov20_G73 = Nov20_data |> @filter(_.PostcodePart == "G73") |> DataFrame
push!(Nov20_spa, (
        ("G73"),
        ((count(i -> (i > 0), Nov20_G73.S1_seropositive)) / length(Nov20_G73.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G73.RBD_seropositive)) / length(Nov20_G73.RBD_seropositive))))
        # G74
Nov20_G74 = Nov20_data |> @filter(_.PostcodePart == "G74") |> DataFrame
push!(Nov20_spa, (
        ("G74"),
        ((count(i -> (i > 0), Nov20_G74.S1_seropositive)) / length(Nov20_G74.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G74.RBD_seropositive)) / length(Nov20_G74.RBD_seropositive))))
        # G75
Nov20_G75 = Nov20_data |> @filter(_.PostcodePart == "G75") |> DataFrame
push!(Nov20_spa, (
        ("G75"),
        ((count(i -> (i > 0), Nov20_G75.S1_seropositive)) / length(Nov20_G75.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G75.RBD_seropositive)) / length(Nov20_G75.RBD_seropositive))))
        # G77
Nov20_G77 = Nov20_data |> @filter(_.PostcodePart == "G77") |> DataFrame
push!(Nov20_spa, (
        ("G77"),
        ((count(i -> (i > 0), Nov20_G77.S1_seropositive)) / length(Nov20_G77.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G77.RBD_seropositive)) / length(Nov20_G77.RBD_seropositive))))
        # G78
Nov20_G78 = Nov20_data |> @filter(_.PostcodePart == "G78") |> DataFrame
push!(Nov20_spa, (
        ("G78"),
        ((count(i -> (i > 0), Nov20_G78.S1_seropositive)) / length(Nov20_G78.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G78.RBD_seropositive)) / length(Nov20_G78.RBD_seropositive))))
        # G79
Nov20_G79 = Nov20_data |> @filter(_.PostcodePart == "G79") |> DataFrame
push!(Nov20_spa, (
        ("G79"),
        ((count(i -> (i > 0), Nov20_G79.S1_seropositive)) / length(Nov20_G79.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G79.RBD_seropositive)) / length(Nov20_G79.RBD_seropositive))))
        # G81
Nov20_G81 = Nov20_data |> @filter(_.PostcodePart == "G81") |> DataFrame
push!(Nov20_spa, (
        ("G81"),
        ((count(i -> (i > 0), Nov20_G81.S1_seropositive)) / length(Nov20_G81.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G81.RBD_seropositive)) / length(Nov20_G81.RBD_seropositive))))
        # G82
Nov20_G82 = Nov20_data |> @filter(_.PostcodePart == "G82") |> DataFrame
push!(Nov20_spa, (
        ("G82"),
        ((count(i -> (i > 0), Nov20_G82.S1_seropositive)) / length(Nov20_G82.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G82.RBD_seropositive)) / length(Nov20_G82.RBD_seropositive))))
        # G83
Nov20_G83 = Nov20_data |> @filter(_.PostcodePart == "G83") |> DataFrame
push!(Nov20_spa, (
        ("G83"),
        ((count(i -> (i > 0), Nov20_G83.S1_seropositive)) / length(Nov20_G83.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G83.RBD_seropositive)) / length(Nov20_G83.RBD_seropositive))))
        # G84
Nov20_G84 = Nov20_data |> @filter(_.PostcodePart == "G84") |> DataFrame
push!(Nov20_spa, (
        ("G84"),
        ((count(i -> (i > 0), Nov20_G84.S1_seropositive)) / length(Nov20_G84.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G84.RBD_seropositive)) / length(Nov20_G84.RBD_seropositive))))
        # G90
Nov20_G90 = Nov20_data |> @filter(_.PostcodePart == "G90") |> DataFrame
push!(Nov20_spa, (
        ("G90"),
        ((count(i -> (i > 0), Nov20_G90.S1_seropositive)) / length(Nov20_G90.S1_seropositive)),
        ((count(i -> (i > 0), Nov20_G90.RBD_seropositive)) / length(Nov20_G90.RBD_seropositive))))

Nov20_spa |> CSV.write("./honoursproject/data/by_postcode/November_20_postcode_data.csv")

# June
Dec20_spa = DataFrame(
    Postcode=String[],
    S1=Float64[],
    RBD=Float64[],
)

        # G1
Dec20_G1 = Dec20_data |> @filter(_.PostcodePart == "G1") |> DataFrame
push!(Dec20_spa, (
        ("G1"),
        ((count(i -> (i > 0), Dec20_G1.S1_seropositive)) / length(Dec20_G1.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G1.RBD_seropositive)) / length(Dec20_G1.RBD_seropositive))))
        # G2
Dec20_G2 = Dec20_data |> @filter(_.PostcodePart == "G2") |> DataFrame
push!(Dec20_spa, (
        ("G2"),
        ((count(i -> (i > 0), Dec20_G2.S1_seropositive)) / length(Dec20_G2.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G2.RBD_seropositive)) / length(Dec20_G2.RBD_seropositive))))
        # G3
Dec20_G3 = Dec20_data |> @filter(_.PostcodePart == "G3") |> DataFrame
push!(Dec20_spa, (
        ("G3"),
        ((count(i -> (i > 0), Dec20_G3.S1_seropositive)) / length(Dec20_G3.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G3.RBD_seropositive)) / length(Dec20_G3.RBD_seropositive))))
        # G4
Dec20_G4 = Dec20_data |> @filter(_.PostcodePart == "G4") |> DataFrame
push!(Dec20_spa, (
        ("G4"),
        ((count(i -> (i > 0), Dec20_G4.S1_seropositive)) / length(Dec20_G4.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G4.RBD_seropositive)) / length(Dec20_G4.RBD_seropositive))))
        # G5
Dec20_G5 = Dec20_data |> @filter(_.PostcodePart == "G5") |> DataFrame
push!(Dec20_spa, (
        ("G5"),
        ((count(i -> (i > 0), Dec20_G5.S1_seropositive)) / length(Dec20_G5.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G5.RBD_seropositive)) / length(Dec20_G5.RBD_seropositive))))
        # G9
Dec20_G9 = Dec20_data |> @filter(_.PostcodePart == "G9") |> DataFrame
push!(Dec20_spa, (
        ("G9"),
        ((count(i -> (i > 0), Dec20_G9.S1_seropositive)) / length(Dec20_G9.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G9.RBD_seropositive)) / length(Dec20_G9.RBD_seropositive))))
        # G11
Dec20_G11 = Dec20_data |> @filter(_.PostcodePart == "G11") |> DataFrame
push!(Dec20_spa, (
        ("G11"),
        ((count(i -> (i > 0), Dec20_G11.S1_seropositive)) / length(Dec20_G11.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G11.RBD_seropositive)) / length(Dec20_G11.RBD_seropositive))))
        # G12
Dec20_G12 = Dec20_data |> @filter(_.PostcodePart == "G12") |> DataFrame
push!(Dec20_spa, (
        ("G12"),
        ((count(i -> (i > 0), Dec20_G12.S1_seropositive)) / length(Dec20_G12.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G12.RBD_seropositive)) / length(Dec20_G12.RBD_seropositive))))
        # G13
Dec20_G13 = Dec20_data |> @filter(_.PostcodePart == "G13") |> DataFrame
push!(Dec20_spa, (
        ("G13"),
        ((count(i -> (i > 0), Dec20_G13.S1_seropositive)) / length(Dec20_G13.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G13.RBD_seropositive)) / length(Dec20_G13.RBD_seropositive))))
        # G14
Dec20_G14 = Dec20_data |> @filter(_.PostcodePart == "G14") |> DataFrame
push!(Dec20_spa, (
        ("G14"),
        ((count(i -> (i > 0), Dec20_G14.S1_seropositive)) / length(Dec20_G14.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G14.RBD_seropositive)) / length(Dec20_G14.RBD_seropositive))))
        # G15
Dec20_G15 = Dec20_data |> @filter(_.PostcodePart == "G15") |> DataFrame
push!(Dec20_spa, (
        ("G15"),
        ((count(i -> (i > 0), Dec20_G15.S1_seropositive)) / length(Dec20_G15.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G15.RBD_seropositive)) / length(Dec20_G15.RBD_seropositive))))
        # G20
Dec20_G20 = Dec20_data |> @filter(_.PostcodePart == "G20") |> DataFrame
push!(Dec20_spa, (
        ("G20"),
        ((count(i -> (i > 0), Dec20_G20.S1_seropositive)) / length(Dec20_G20.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G20.RBD_seropositive)) / length(Dec20_G20.RBD_seropositive))))
        # G21
Dec20_G21 = Dec20_data |> @filter(_.PostcodePart == "G21") |> DataFrame
push!(Dec20_spa, (
        ("G21"),
        ((count(i -> (i > 0), Dec20_G21.S1_seropositive)) / length(Dec20_G21.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G21.RBD_seropositive)) / length(Dec20_G21.RBD_seropositive))))
        # G22
Dec20_G22 = Dec20_data |> @filter(_.PostcodePart == "G22") |> DataFrame
push!(Dec20_spa, (
        ("G22"),
        ((count(i -> (i > 0), Dec20_G22.S1_seropositive)) / length(Dec20_G22.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G22.RBD_seropositive)) / length(Dec20_G22.RBD_seropositive))))
        # G23
Dec20_G23 = Dec20_data |> @filter(_.PostcodePart == "G23") |> DataFrame
push!(Dec20_spa, (
        ("G23"),
        ((count(i -> (i > 0), Dec20_G23.S1_seropositive)) / length(Dec20_G23.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G23.RBD_seropositive)) / length(Dec20_G23.RBD_seropositive))))
        # G31
Dec20_G31 = Dec20_data |> @filter(_.PostcodePart == "G31") |> DataFrame
push!(Dec20_spa, (
        ("G31"),
        ((count(i -> (i > 0), Dec20_G31.S1_seropositive)) / length(Dec20_G31.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G31.RBD_seropositive)) / length(Dec20_G31.RBD_seropositive))))
        # G32
Dec20_G32 = Dec20_data |> @filter(_.PostcodePart == "G32") |> DataFrame
push!(Dec20_spa, (
        ("G32"),
        ((count(i -> (i > 0), Dec20_G32.S1_seropositive)) / length(Dec20_G32.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G32.RBD_seropositive)) / length(Dec20_G32.RBD_seropositive))))
        # G33
Dec20_G33 = Dec20_data |> @filter(_.PostcodePart == "G33") |> DataFrame
push!(Dec20_spa, (
        ("G33"),
        ((count(i -> (i > 0), Dec20_G33.S1_seropositive)) / length(Dec20_G33.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G33.RBD_seropositive)) / length(Dec20_G33.RBD_seropositive))))
        # G34
Dec20_G34 = Dec20_data |> @filter(_.PostcodePart == "G34") |> DataFrame
push!(Dec20_spa, (
        ("G34"),
        ((count(i -> (i > 0), Dec20_G34.S1_seropositive)) / length(Dec20_G34.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G34.RBD_seropositive)) / length(Dec20_G34.RBD_seropositive))))
        # G40
Dec20_G40 = Dec20_data |> @filter(_.PostcodePart == "G40") |> DataFrame
push!(Dec20_spa, (
        ("G40"),
        ((count(i -> (i > 0), Dec20_G40.S1_seropositive)) / length(Dec20_G40.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G40.RBD_seropositive)) / length(Dec20_G40.RBD_seropositive))))
        # G41
Dec20_G41 = Dec20_data |> @filter(_.PostcodePart == "G41") |> DataFrame
push!(Dec20_spa, (
        ("G41"),
        ((count(i -> (i > 0), Dec20_G41.S1_seropositive)) / length(Dec20_G41.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G41.RBD_seropositive)) / length(Dec20_G41.RBD_seropositive))))
        # G42
Dec20_G42 = Dec20_data |> @filter(_.PostcodePart == "G42") |> DataFrame
push!(Dec20_spa, (
        ("G42"),
        ((count(i -> (i > 0), Dec20_G42.S1_seropositive)) / length(Dec20_G42.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G42.RBD_seropositive)) / length(Dec20_G42.RBD_seropositive))))
        # G43
Dec20_G43 = Dec20_data |> @filter(_.PostcodePart == "G43") |> DataFrame
push!(Dec20_spa, (
        ("G43"),
        ((count(i -> (i > 0), Dec20_G43.S1_seropositive)) / length(Dec20_G43.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G43.RBD_seropositive)) / length(Dec20_G43.RBD_seropositive))))
        # G44
Dec20_G44 = Dec20_data |> @filter(_.PostcodePart == "G44") |> DataFrame
push!(Dec20_spa, (
        ("G44"),
        ((count(i -> (i > 0), Dec20_G44.S1_seropositive)) / length(Dec20_G44.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G44.RBD_seropositive)) / length(Dec20_G44.RBD_seropositive))))
        # G45
Dec20_G45 = Dec20_data |> @filter(_.PostcodePart == "G45") |> DataFrame
push!(Dec20_spa, (
        ("G45"),
        ((count(i -> (i > 0), Dec20_G45.S1_seropositive)) / length(Dec20_G45.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G45.RBD_seropositive)) / length(Dec20_G45.RBD_seropositive))))
        # G46
Dec20_G46 = Dec20_data |> @filter(_.PostcodePart == "G46") |> DataFrame
push!(Dec20_spa, (
        ("G46"),
        ((count(i -> (i > 0), Dec20_G46.S1_seropositive)) / length(Dec20_G46.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G46.RBD_seropositive)) / length(Dec20_G46.RBD_seropositive))))
        # G51
Dec20_G51 = Dec20_data |> @filter(_.PostcodePart == "G51") |> DataFrame
push!(Dec20_spa, (
        ("G51"),
        ((count(i -> (i > 0), Dec20_G51.S1_seropositive)) / length(Dec20_G51.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G51.RBD_seropositive)) / length(Dec20_G51.RBD_seropositive))))
        # G52
Dec20_G52 = Dec20_data |> @filter(_.PostcodePart == "G52") |> DataFrame
push!(Dec20_spa, (
        ("G52"),
        ((count(i -> (i > 0), Dec20_G52.S1_seropositive)) / length(Dec20_G52.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G52.RBD_seropositive)) / length(Dec20_G52.RBD_seropositive))))
        # G53
Dec20_G53 = Dec20_data |> @filter(_.PostcodePart == "G53") |> DataFrame
push!(Dec20_spa, (
        ("G53"),
        ((count(i -> (i > 0), Dec20_G53.S1_seropositive)) / length(Dec20_G53.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G53.RBD_seropositive)) / length(Dec20_G53.RBD_seropositive))))
        # G58
Dec20_G58 = Dec20_data |> @filter(_.PostcodePart == "G58") |> DataFrame
push!(Dec20_spa, (
        ("G58"),
        ((count(i -> (i > 0), Dec20_G58.S1_seropositive)) / length(Dec20_G58.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G58.RBD_seropositive)) / length(Dec20_G58.RBD_seropositive))))
        # G60
Dec20_G60 = Dec20_data |> @filter(_.PostcodePart == "G60") |> DataFrame
push!(Dec20_spa, (
        ("G60"),
        ((count(i -> (i > 0), Dec20_G60.S1_seropositive)) / length(Dec20_G60.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G60.RBD_seropositive)) / length(Dec20_G60.RBD_seropositive))))
        # G61
Dec20_G61 = Dec20_data |> @filter(_.PostcodePart == "G61") |> DataFrame
push!(Dec20_spa, (
        ("G61"),
        ((count(i -> (i > 0), Dec20_G61.S1_seropositive)) / length(Dec20_G61.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G61.RBD_seropositive)) / length(Dec20_G61.RBD_seropositive))))
        # G62
Dec20_G62 = Dec20_data |> @filter(_.PostcodePart == "G62") |> DataFrame
push!(Dec20_spa, (
        ("G62"),
        ((count(i -> (i > 0), Dec20_G62.S1_seropositive)) / length(Dec20_G62.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G62.RBD_seropositive)) / length(Dec20_G62.RBD_seropositive))))
        # G63
Dec20_G63 = Dec20_data |> @filter(_.PostcodePart == "G63") |> DataFrame
push!(Dec20_spa, (
        ("G63"),
        ((count(i -> (i > 0), Dec20_G63.S1_seropositive)) / length(Dec20_G63.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G63.RBD_seropositive)) / length(Dec20_G63.RBD_seropositive))))
        # G64
Dec20_G64 = Dec20_data |> @filter(_.PostcodePart == "G64") |> DataFrame
push!(Dec20_spa, (
        ("G64"),
        ((count(i -> (i > 0), Dec20_G64.S1_seropositive)) / length(Dec20_G64.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G64.RBD_seropositive)) / length(Dec20_G64.RBD_seropositive))))
        # G65
Dec20_G65 = Dec20_data |> @filter(_.PostcodePart == "G65") |> DataFrame
push!(Dec20_spa, (
        ("G65"),
        ((count(i -> (i > 0), Dec20_G65.S1_seropositive)) / length(Dec20_G65.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G65.RBD_seropositive)) / length(Dec20_G65.RBD_seropositive))))
        # G66
Dec20_G66 = Dec20_data |> @filter(_.PostcodePart == "G66") |> DataFrame
push!(Dec20_spa, (
        ("G66"),
        ((count(i -> (i > 0), Dec20_G66.S1_seropositive)) / length(Dec20_G66.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G66.RBD_seropositive)) / length(Dec20_G66.RBD_seropositive))))
        # G67
Dec20_G67 = Dec20_data |> @filter(_.PostcodePart == "G67") |> DataFrame
push!(Dec20_spa, (
        ("G67"),
        ((count(i -> (i > 0), Dec20_G67.S1_seropositive)) / length(Dec20_G67.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G67.RBD_seropositive)) / length(Dec20_G67.RBD_seropositive))))
        # G68
Dec20_G68 = Dec20_data |> @filter(_.PostcodePart == "G68") |> DataFrame
push!(Dec20_spa, (
        ("G68"),
        ((count(i -> (i > 0), Dec20_G68.S1_seropositive)) / length(Dec20_G68.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G68.RBD_seropositive)) / length(Dec20_G68.RBD_seropositive))))
        # G69
Dec20_G69 = Dec20_data |> @filter(_.PostcodePart == "G69") |> DataFrame
push!(Dec20_spa, (
        ("G69"),
        ((count(i -> (i > 0), Dec20_G69.S1_seropositive)) / length(Dec20_G69.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G69.RBD_seropositive)) / length(Dec20_G69.RBD_seropositive))))
        #  G70
Dec20_G70 = Dec20_data |> @filter(_.PostcodePart == "G70") |> DataFrame
push!(Dec20_spa, (
        ("G70"),
        ((count(i -> (i > 0), Dec20_G70.S1_seropositive)) / length(Dec20_G70.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G70.RBD_seropositive)) / length(Dec20_G70.RBD_seropositive))))
        # G71
Dec20_G71 = Dec20_data |> @filter(_.PostcodePart == "G71") |> DataFrame
push!(Dec20_spa, (
        ("G71"),
        ((count(i -> (i > 0), Dec20_G71.S1_seropositive)) / length(Dec20_G71.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G71.RBD_seropositive)) / length(Dec20_G71.RBD_seropositive))))
        # G72
Dec20_G72 = Dec20_data |> @filter(_.PostcodePart == "G72") |> DataFrame
push!(Dec20_spa, (
        ("G72"),
        ((count(i -> (i > 0), Dec20_G72.S1_seropositive)) / length(Dec20_G72.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G72.RBD_seropositive)) / length(Dec20_G72.RBD_seropositive))))
        # G73
Dec20_G73 = Dec20_data |> @filter(_.PostcodePart == "G73") |> DataFrame
push!(Dec20_spa, (
        ("G73"),
        ((count(i -> (i > 0), Dec20_G73.S1_seropositive)) / length(Dec20_G73.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G73.RBD_seropositive)) / length(Dec20_G73.RBD_seropositive))))
        # G74
Dec20_G74 = Dec20_data |> @filter(_.PostcodePart == "G74") |> DataFrame
push!(Dec20_spa, (
        ("G74"),
        ((count(i -> (i > 0), Dec20_G74.S1_seropositive)) / length(Dec20_G74.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G74.RBD_seropositive)) / length(Dec20_G74.RBD_seropositive))))
        # G75
Dec20_G75 = Dec20_data |> @filter(_.PostcodePart == "G75") |> DataFrame
push!(Dec20_spa, (
        ("G75"),
        ((count(i -> (i > 0), Dec20_G75.S1_seropositive)) / length(Dec20_G75.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G75.RBD_seropositive)) / length(Dec20_G75.RBD_seropositive))))
        # G77
Dec20_G77 = Dec20_data |> @filter(_.PostcodePart == "G77") |> DataFrame
push!(Dec20_spa, (
        ("G77"),
        ((count(i -> (i > 0), Dec20_G77.S1_seropositive)) / length(Dec20_G77.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G77.RBD_seropositive)) / length(Dec20_G77.RBD_seropositive))))
        # G78
Dec20_G78 = Dec20_data |> @filter(_.PostcodePart == "G78") |> DataFrame
push!(Dec20_spa, (
        ("G78"),
        ((count(i -> (i > 0), Dec20_G78.S1_seropositive)) / length(Dec20_G78.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G78.RBD_seropositive)) / length(Dec20_G78.RBD_seropositive))))
        # G79
Dec20_G79 = Dec20_data |> @filter(_.PostcodePart == "G79") |> DataFrame
push!(Dec20_spa, (
        ("G79"),
        ((count(i -> (i > 0), Dec20_G79.S1_seropositive)) / length(Dec20_G79.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G79.RBD_seropositive)) / length(Dec20_G79.RBD_seropositive))))
        # G81
Dec20_G81 = Dec20_data |> @filter(_.PostcodePart == "G81") |> DataFrame
push!(Dec20_spa, (
        ("G81"),
        ((count(i -> (i > 0), Dec20_G81.S1_seropositive)) / length(Dec20_G81.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G81.RBD_seropositive)) / length(Dec20_G81.RBD_seropositive))))
        # G82
Dec20_G82 = Dec20_data |> @filter(_.PostcodePart == "G82") |> DataFrame
push!(Dec20_spa, (
        ("G82"),
        ((count(i -> (i > 0), Dec20_G82.S1_seropositive)) / length(Dec20_G82.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G82.RBD_seropositive)) / length(Dec20_G82.RBD_seropositive))))
        # G83
Dec20_G83 = Dec20_data |> @filter(_.PostcodePart == "G83") |> DataFrame
push!(Dec20_spa, (
        ("G83"),
        ((count(i -> (i > 0), Dec20_G83.S1_seropositive)) / length(Dec20_G83.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G83.RBD_seropositive)) / length(Dec20_G83.RBD_seropositive))))
        # G84
Dec20_G84 = Dec20_data |> @filter(_.PostcodePart == "G84") |> DataFrame
push!(Dec20_spa, (
        ("G84"),
        ((count(i -> (i > 0), Dec20_G84.S1_seropositive)) / length(Dec20_G84.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G84.RBD_seropositive)) / length(Dec20_G84.RBD_seropositive))))
        # G90
Dec20_G90 = Dec20_data |> @filter(_.PostcodePart == "G90") |> DataFrame
push!(Dec20_spa, (
        ("G90"),
        ((count(i -> (i > 0), Dec20_G90.S1_seropositive)) / length(Dec20_G90.S1_seropositive)),
        ((count(i -> (i > 0), Dec20_G90.RBD_seropositive)) / length(Dec20_G90.RBD_seropositive))))

Dec20_spa |> CSV.write("./honoursproject/data/by_postcode/December_20_postcode_data.csv")

# June
Jan21_spa = DataFrame(
    Postcode=String[],
    S1=Float64[],
    RBD=Float64[],
)

        # G1
Jan21_G1 = Jan21_data |> @filter(_.PostcodePart == "G1") |> DataFrame
push!(Jan21_spa, (
        ("G1"),
        ((count(i -> (i > 0), Jan21_G1.S1_seropositive)) / length(Jan21_G1.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G1.RBD_seropositive)) / length(Jan21_G1.RBD_seropositive))))
        # G2
Jan21_G2 = Jan21_data |> @filter(_.PostcodePart == "G2") |> DataFrame
push!(Jan21_spa, (
        ("G2"),
        ((count(i -> (i > 0), Jan21_G2.S1_seropositive)) / length(Jan21_G2.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G2.RBD_seropositive)) / length(Jan21_G2.RBD_seropositive))))
        # G3
Jan21_G3 = Jan21_data |> @filter(_.PostcodePart == "G3") |> DataFrame
push!(Jan21_spa, (
        ("G3"),
        ((count(i -> (i > 0), Jan21_G3.S1_seropositive)) / length(Jan21_G3.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G3.RBD_seropositive)) / length(Jan21_G3.RBD_seropositive))))
        # G4
Jan21_G4 = Jan21_data |> @filter(_.PostcodePart == "G4") |> DataFrame
push!(Jan21_spa, (
        ("G4"),
        ((count(i -> (i > 0), Jan21_G4.S1_seropositive)) / length(Jan21_G4.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G4.RBD_seropositive)) / length(Jan21_G4.RBD_seropositive))))
        # G5
Jan21_G5 = Jan21_data |> @filter(_.PostcodePart == "G5") |> DataFrame
push!(Jan21_spa, (
        ("G5"),
        ((count(i -> (i > 0), Jan21_G5.S1_seropositive)) / length(Jan21_G5.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G5.RBD_seropositive)) / length(Jan21_G5.RBD_seropositive))))
        # G9
Jan21_G9 = Jan21_data |> @filter(_.PostcodePart == "G9") |> DataFrame
push!(Jan21_spa, (
        ("G9"),
        ((count(i -> (i > 0), Jan21_G9.S1_seropositive)) / length(Jan21_G9.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G9.RBD_seropositive)) / length(Jan21_G9.RBD_seropositive))))
        # G11
Jan21_G11 = Jan21_data |> @filter(_.PostcodePart == "G11") |> DataFrame
push!(Jan21_spa, (
        ("G11"),
        ((count(i -> (i > 0), Jan21_G11.S1_seropositive)) / length(Jan21_G11.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G11.RBD_seropositive)) / length(Jan21_G11.RBD_seropositive))))
        # G12
Jan21_G12 = Jan21_data |> @filter(_.PostcodePart == "G12") |> DataFrame
push!(Jan21_spa, (
        ("G12"),
        ((count(i -> (i > 0), Jan21_G12.S1_seropositive)) / length(Jan21_G12.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G12.RBD_seropositive)) / length(Jan21_G12.RBD_seropositive))))
        # G13
Jan21_G13 = Jan21_data |> @filter(_.PostcodePart == "G13") |> DataFrame
push!(Jan21_spa, (
        ("G13"),
        ((count(i -> (i > 0), Jan21_G13.S1_seropositive)) / length(Jan21_G13.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G13.RBD_seropositive)) / length(Jan21_G13.RBD_seropositive))))
        # G14
Jan21_G14 = Jan21_data |> @filter(_.PostcodePart == "G14") |> DataFrame
push!(Jan21_spa, (
        ("G14"),
        ((count(i -> (i > 0), Jan21_G14.S1_seropositive)) / length(Jan21_G14.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G14.RBD_seropositive)) / length(Jan21_G14.RBD_seropositive))))
        # G15
Jan21_G15 = Jan21_data |> @filter(_.PostcodePart == "G15") |> DataFrame
push!(Jan21_spa, (
        ("G15"),
        ((count(i -> (i > 0), Jan21_G15.S1_seropositive)) / length(Jan21_G15.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G15.RBD_seropositive)) / length(Jan21_G15.RBD_seropositive))))
        # G20
Jan21_G20 = Jan21_data |> @filter(_.PostcodePart == "G20") |> DataFrame
push!(Jan21_spa, (
        ("G20"),
        ((count(i -> (i > 0), Jan21_G20.S1_seropositive)) / length(Jan21_G20.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G20.RBD_seropositive)) / length(Jan21_G20.RBD_seropositive))))
        # G21
Jan21_G21 = Jan21_data |> @filter(_.PostcodePart == "G21") |> DataFrame
push!(Jan21_spa, (
        ("G21"),
        ((count(i -> (i > 0), Jan21_G21.S1_seropositive)) / length(Jan21_G21.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G21.RBD_seropositive)) / length(Jan21_G21.RBD_seropositive))))
        # G22
Jan21_G22 = Jan21_data |> @filter(_.PostcodePart == "G22") |> DataFrame
push!(Jan21_spa, (
        ("G22"),
        ((count(i -> (i > 0), Jan21_G22.S1_seropositive)) / length(Jan21_G22.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G22.RBD_seropositive)) / length(Jan21_G22.RBD_seropositive))))
        # G23
Jan21_G23 = Jan21_data |> @filter(_.PostcodePart == "G23") |> DataFrame
push!(Jan21_spa, (
        ("G23"),
        ((count(i -> (i > 0), Jan21_G23.S1_seropositive)) / length(Jan21_G23.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G23.RBD_seropositive)) / length(Jan21_G23.RBD_seropositive))))
        # G31
Jan21_G31 = Jan21_data |> @filter(_.PostcodePart == "G31") |> DataFrame
push!(Jan21_spa, (
        ("G31"),
        ((count(i -> (i > 0), Jan21_G31.S1_seropositive)) / length(Jan21_G31.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G31.RBD_seropositive)) / length(Jan21_G31.RBD_seropositive))))
        # G32
Jan21_G32 = Jan21_data |> @filter(_.PostcodePart == "G32") |> DataFrame
push!(Jan21_spa, (
        ("G32"),
        ((count(i -> (i > 0), Jan21_G32.S1_seropositive)) / length(Jan21_G32.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G32.RBD_seropositive)) / length(Jan21_G32.RBD_seropositive))))
        # G33
Jan21_G33 = Jan21_data |> @filter(_.PostcodePart == "G33") |> DataFrame
push!(Jan21_spa, (
        ("G33"),
        ((count(i -> (i > 0), Jan21_G33.S1_seropositive)) / length(Jan21_G33.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G33.RBD_seropositive)) / length(Jan21_G33.RBD_seropositive))))
        # G34
Jan21_G34 = Jan21_data |> @filter(_.PostcodePart == "G34") |> DataFrame
push!(Jan21_spa, (
        ("G34"),
        ((count(i -> (i > 0), Jan21_G34.S1_seropositive)) / length(Jan21_G34.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G34.RBD_seropositive)) / length(Jan21_G34.RBD_seropositive))))
        # G40
Jan21_G40 = Jan21_data |> @filter(_.PostcodePart == "G40") |> DataFrame
push!(Jan21_spa, (
        ("G40"),
        ((count(i -> (i > 0), Jan21_G40.S1_seropositive)) / length(Jan21_G40.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G40.RBD_seropositive)) / length(Jan21_G40.RBD_seropositive))))
        # G41
Jan21_G41 = Jan21_data |> @filter(_.PostcodePart == "G41") |> DataFrame
push!(Jan21_spa, (
        ("G41"),
        ((count(i -> (i > 0), Jan21_G41.S1_seropositive)) / length(Jan21_G41.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G41.RBD_seropositive)) / length(Jan21_G41.RBD_seropositive))))
        # G42
Jan21_G42 = Jan21_data |> @filter(_.PostcodePart == "G42") |> DataFrame
push!(Jan21_spa, (
        ("G42"),
        ((count(i -> (i > 0), Jan21_G42.S1_seropositive)) / length(Jan21_G42.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G42.RBD_seropositive)) / length(Jan21_G42.RBD_seropositive))))
        # G43
Jan21_G43 = Jan21_data |> @filter(_.PostcodePart == "G43") |> DataFrame
push!(Jan21_spa, (
        ("G43"),
        ((count(i -> (i > 0), Jan21_G43.S1_seropositive)) / length(Jan21_G43.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G43.RBD_seropositive)) / length(Jan21_G43.RBD_seropositive))))
        # G44
Jan21_G44 = Jan21_data |> @filter(_.PostcodePart == "G44") |> DataFrame
push!(Jan21_spa, (
        ("G44"),
        ((count(i -> (i > 0), Jan21_G44.S1_seropositive)) / length(Jan21_G44.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G44.RBD_seropositive)) / length(Jan21_G44.RBD_seropositive))))
        # G45
Jan21_G45 = Jan21_data |> @filter(_.PostcodePart == "G45") |> DataFrame
push!(Jan21_spa, (
        ("G45"),
        ((count(i -> (i > 0), Jan21_G45.S1_seropositive)) / length(Jan21_G45.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G45.RBD_seropositive)) / length(Jan21_G45.RBD_seropositive))))
        # G46
Jan21_G46 = Jan21_data |> @filter(_.PostcodePart == "G46") |> DataFrame
push!(Jan21_spa, (
        ("G46"),
        ((count(i -> (i > 0), Jan21_G46.S1_seropositive)) / length(Jan21_G46.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G46.RBD_seropositive)) / length(Jan21_G46.RBD_seropositive))))
        # G51
Jan21_G51 = Jan21_data |> @filter(_.PostcodePart == "G51") |> DataFrame
push!(Jan21_spa, (
        ("G51"),
        ((count(i -> (i > 0), Jan21_G51.S1_seropositive)) / length(Jan21_G51.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G51.RBD_seropositive)) / length(Jan21_G51.RBD_seropositive))))
        # G52
Jan21_G52 = Jan21_data |> @filter(_.PostcodePart == "G52") |> DataFrame
push!(Jan21_spa, (
        ("G52"),
        ((count(i -> (i > 0), Jan21_G52.S1_seropositive)) / length(Jan21_G52.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G52.RBD_seropositive)) / length(Jan21_G52.RBD_seropositive))))
        # G53
Jan21_G53 = Jan21_data |> @filter(_.PostcodePart == "G53") |> DataFrame
push!(Jan21_spa, (
        ("G53"),
        ((count(i -> (i > 0), Jan21_G53.S1_seropositive)) / length(Jan21_G53.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G53.RBD_seropositive)) / length(Jan21_G53.RBD_seropositive))))
        # G58
Jan21_G58 = Jan21_data |> @filter(_.PostcodePart == "G58") |> DataFrame
push!(Jan21_spa, (
        ("G58"),
        ((count(i -> (i > 0), Jan21_G58.S1_seropositive)) / length(Jan21_G58.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G58.RBD_seropositive)) / length(Jan21_G58.RBD_seropositive))))
        # G60
Jan21_G60 = Jan21_data |> @filter(_.PostcodePart == "G60") |> DataFrame
push!(Jan21_spa, (
        ("G60"),
        ((count(i -> (i > 0), Jan21_G60.S1_seropositive)) / length(Jan21_G60.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G60.RBD_seropositive)) / length(Jan21_G60.RBD_seropositive))))
        # G61
Jan21_G61 = Jan21_data |> @filter(_.PostcodePart == "G61") |> DataFrame
push!(Jan21_spa, (
        ("G61"),
        ((count(i -> (i > 0), Jan21_G61.S1_seropositive)) / length(Jan21_G61.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G61.RBD_seropositive)) / length(Jan21_G61.RBD_seropositive))))
        # G62
Jan21_G62 = Jan21_data |> @filter(_.PostcodePart == "G62") |> DataFrame
push!(Jan21_spa, (
        ("G62"),
        ((count(i -> (i > 0), Jan21_G62.S1_seropositive)) / length(Jan21_G62.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G62.RBD_seropositive)) / length(Jan21_G62.RBD_seropositive))))
        # G63
Jan21_G63 = Jan21_data |> @filter(_.PostcodePart == "G63") |> DataFrame
push!(Jan21_spa, (
        ("G63"),
        ((count(i -> (i > 0), Jan21_G63.S1_seropositive)) / length(Jan21_G63.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G63.RBD_seropositive)) / length(Jan21_G63.RBD_seropositive))))
        # G64
Jan21_G64 = Jan21_data |> @filter(_.PostcodePart == "G64") |> DataFrame
push!(Jan21_spa, (
        ("G64"),
        ((count(i -> (i > 0), Jan21_G64.S1_seropositive)) / length(Jan21_G64.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G64.RBD_seropositive)) / length(Jan21_G64.RBD_seropositive))))
        # G65
Jan21_G65 = Jan21_data |> @filter(_.PostcodePart == "G65") |> DataFrame
push!(Jan21_spa, (
        ("G65"),
        ((count(i -> (i > 0), Jan21_G65.S1_seropositive)) / length(Jan21_G65.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G65.RBD_seropositive)) / length(Jan21_G65.RBD_seropositive))))
        # G66
Jan21_G66 = Jan21_data |> @filter(_.PostcodePart == "G66") |> DataFrame
push!(Jan21_spa, (
        ("G66"),
        ((count(i -> (i > 0), Jan21_G66.S1_seropositive)) / length(Jan21_G66.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G66.RBD_seropositive)) / length(Jan21_G66.RBD_seropositive))))
        # G67
Jan21_G67 = Jan21_data |> @filter(_.PostcodePart == "G67") |> DataFrame
push!(Jan21_spa, (
        ("G67"),
        ((count(i -> (i > 0), Jan21_G67.S1_seropositive)) / length(Jan21_G67.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G67.RBD_seropositive)) / length(Jan21_G67.RBD_seropositive))))
        # G68
Jan21_G68 = Jan21_data |> @filter(_.PostcodePart == "G68") |> DataFrame
push!(Jan21_spa, (
        ("G68"),
        ((count(i -> (i > 0), Jan21_G68.S1_seropositive)) / length(Jan21_G68.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G68.RBD_seropositive)) / length(Jan21_G68.RBD_seropositive))))
        # G69
Jan21_G69 = Jan21_data |> @filter(_.PostcodePart == "G69") |> DataFrame
push!(Jan21_spa, (
        ("G69"),
        ((count(i -> (i > 0), Jan21_G69.S1_seropositive)) / length(Jan21_G69.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G69.RBD_seropositive)) / length(Jan21_G69.RBD_seropositive))))
        #  G70
Jan21_G70 = Jan21_data |> @filter(_.PostcodePart == "G70") |> DataFrame
push!(Jan21_spa, (
        ("G70"),
        ((count(i -> (i > 0), Jan21_G70.S1_seropositive)) / length(Jan21_G70.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G70.RBD_seropositive)) / length(Jan21_G70.RBD_seropositive))))
        # G71
Jan21_G71 = Jan21_data |> @filter(_.PostcodePart == "G71") |> DataFrame
push!(Jan21_spa, (
        ("G71"),
        ((count(i -> (i > 0), Jan21_G71.S1_seropositive)) / length(Jan21_G71.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G71.RBD_seropositive)) / length(Jan21_G71.RBD_seropositive))))
        # G72
Jan21_G72 = Jan21_data |> @filter(_.PostcodePart == "G72") |> DataFrame
push!(Jan21_spa, (
        ("G72"),
        ((count(i -> (i > 0), Jan21_G72.S1_seropositive)) / length(Jan21_G72.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G72.RBD_seropositive)) / length(Jan21_G72.RBD_seropositive))))
        # G73
Jan21_G73 = Jan21_data |> @filter(_.PostcodePart == "G73") |> DataFrame
push!(Jan21_spa, (
        ("G73"),
        ((count(i -> (i > 0), Jan21_G73.S1_seropositive)) / length(Jan21_G73.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G73.RBD_seropositive)) / length(Jan21_G73.RBD_seropositive))))
        # G74
Jan21_G74 = Jan21_data |> @filter(_.PostcodePart == "G74") |> DataFrame
push!(Jan21_spa, (
        ("G74"),
        ((count(i -> (i > 0), Jan21_G74.S1_seropositive)) / length(Jan21_G74.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G74.RBD_seropositive)) / length(Jan21_G74.RBD_seropositive))))
        # G75
Jan21_G75 = Jan21_data |> @filter(_.PostcodePart == "G75") |> DataFrame
push!(Jan21_spa, (
        ("G75"),
        ((count(i -> (i > 0), Jan21_G75.S1_seropositive)) / length(Jan21_G75.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G75.RBD_seropositive)) / length(Jan21_G75.RBD_seropositive))))
        # G77
Jan21_G77 = Jan21_data |> @filter(_.PostcodePart == "G77") |> DataFrame
push!(Jan21_spa, (
        ("G77"),
        ((count(i -> (i > 0), Jan21_G77.S1_seropositive)) / length(Jan21_G77.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G77.RBD_seropositive)) / length(Jan21_G77.RBD_seropositive))))
        # G78
Jan21_G78 = Jan21_data |> @filter(_.PostcodePart == "G78") |> DataFrame
push!(Jan21_spa, (
        ("G78"),
        ((count(i -> (i > 0), Jan21_G78.S1_seropositive)) / length(Jan21_G78.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G78.RBD_seropositive)) / length(Jan21_G78.RBD_seropositive))))
        # G79
Jan21_G79 = Jan21_data |> @filter(_.PostcodePart == "G79") |> DataFrame
push!(Jan21_spa, (
        ("G79"),
        ((count(i -> (i > 0), Jan21_G79.S1_seropositive)) / length(Jan21_G79.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G79.RBD_seropositive)) / length(Jan21_G79.RBD_seropositive))))
        # G81
Jan21_G81 = Jan21_data |> @filter(_.PostcodePart == "G81") |> DataFrame
push!(Jan21_spa, (
        ("G81"),
        ((count(i -> (i > 0), Jan21_G81.S1_seropositive)) / length(Jan21_G81.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G81.RBD_seropositive)) / length(Jan21_G81.RBD_seropositive))))
        # G82
Jan21_G82 = Jan21_data |> @filter(_.PostcodePart == "G82") |> DataFrame
push!(Jan21_spa, (
        ("G82"),
        ((count(i -> (i > 0), Jan21_G82.S1_seropositive)) / length(Jan21_G82.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G82.RBD_seropositive)) / length(Jan21_G82.RBD_seropositive))))
        # G83
Jan21_G83 = Jan21_data |> @filter(_.PostcodePart == "G83") |> DataFrame
push!(Jan21_spa, (
        ("G83"),
        ((count(i -> (i > 0), Jan21_G83.S1_seropositive)) / length(Jan21_G83.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G83.RBD_seropositive)) / length(Jan21_G83.RBD_seropositive))))
        # G84
Jan21_G84 = Jan21_data |> @filter(_.PostcodePart == "G84") |> DataFrame
push!(Jan21_spa, (
        ("G84"),
        ((count(i -> (i > 0), Jan21_G84.S1_seropositive)) / length(Jan21_G84.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G84.RBD_seropositive)) / length(Jan21_G84.RBD_seropositive))))
        # G90
Jan21_G90 = Jan21_data |> @filter(_.PostcodePart == "G90") |> DataFrame
push!(Jan21_spa, (
        ("G90"),
        ((count(i -> (i > 0), Jan21_G90.S1_seropositive)) / length(Jan21_G90.S1_seropositive)),
        ((count(i -> (i > 0), Jan21_G90.RBD_seropositive)) / length(Jan21_G90.RBD_seropositive))))

Jan21_spa |> CSV.write("./honoursproject/data/by_postcode/January_21_postcode_data.csv")