require("RColorBrewer")
palette(brewer.pal(8, "Set1"))

pdf("social-hist.pdf", width=5, height=5)

data <- read.csv("class-survey.csv")

with(data, hist(Social, "FD", col=1))

dev.off()


