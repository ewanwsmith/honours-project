# read in study datasets
assoc_dat <- read.csv(
    file =
        "./honoursproject/data/data.csv",
    header = TRUE
)

assoc <- c("S1_seropositive", "RBD_seropositive")
assoc_dat = assoc_dat[assoc]

assoc_table = table(assoc_dat)

sink(("./honoursproject/src/output/assoc_chi.txt"))
assoc_test = chisq.test(assoc_table)
print(assoc_test)
sink()