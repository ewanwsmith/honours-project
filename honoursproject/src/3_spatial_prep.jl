using DataFrames, Query
using CategoricalArrays
using CSV
using StatsBase
using Dates
using Gadfly

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

