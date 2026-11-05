cols <- c("age","sex","cp","trestbps","chol","fbs","restecg",
          "thalach","exang","oldpeak","slope","ca","thal","num")
dat <- read.csv("data/processed.cleveland.data", header = FALSE,
                col.names = cols, na.strings = "?")
dat$disease <- ifelse(dat$num > 0, "Disease", "No disease")
tab <- aggregate(cbind(age, chol, trestbps, thalach) ~ disease, data = dat,
                 FUN = function(x) round(mean(x, na.rm = TRUE), 1))
saveRDS(tab, "output/table1.rds")
saveRDS(dat, "output/clean_data.rds")
