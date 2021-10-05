using DataFrames, Query
using CategoricalArrays
using CSV
using StatsBase
using Distributions
using MLJ

# import ELISA data
raw_ELISA_data = DataFrame(CSV.File("./honoursproject/data/S1_RBD_ELISAs.csv"; missingstring="NA", pool=true))

# import metadata
raw_metadata = DataFrame(CSV.File("./honoursproject/data/metadata.csv"; missingstring="NA", pool=true))

# join datasets
joined_data = innerjoin(raw_ELISA_data, raw_metadata, on=:SampleID)

