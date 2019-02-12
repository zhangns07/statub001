require("RColorBrewer")
palette(brewer.pal(8, "Set1"))

data <- read.csv("class-survey.csv")

pdf("mail-hist.pdf", width=5, height=5)
with(data, hist(Mail, breaks="Scott", col=1))
dev.off()

pdf("mail-hist2.pdf", width=5, height=5)
with(data, hist(Mail, breaks=2, col=1))
dev.off()
