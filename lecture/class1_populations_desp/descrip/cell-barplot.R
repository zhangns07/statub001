require("RColorBrewer")
palette(brewer.pal(8, "Set1"))

pdf("cell-barplot.pdf", width=5, height=5)

data <- read.csv("class-survey.csv")

tc <- table(data$Cell)
tc <- tc[order(tc, decreasing=TRUE)]

barplot(tc, col=1, main="Cell Phone Type", ylab="Total")

# ax <- axTicks(2)
# axis(4, at = ax, labels = round(100 * ax / sum(tc)))

dev.off()

