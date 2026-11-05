dat <- readRDS("output/clean_data.rds")
png("output/figure1.png", width = 700, height = 500)
boxplot(thalach ~ disease, data = dat, col = c("tomato", "steelblue"),
        xlab = "Heart disease status", ylab = "Maximum heart rate")
dev.off()
