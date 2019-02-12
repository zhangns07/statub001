require("RColorBrewer")
palette(brewer.pal(8, "Set1"))
set.seed(0)

x <- rgamma(1000, shape=1.5, scale=1.5)

pdf("hist-skew.pdf", width=5, height=5)
hist(x, "Scott", col=1)
dev.off()

pdf("hist-meanmed-skew.pdf", width=5, height=5)
hist(x, "Scott", col=1)
abline(v = median(x), lwd=3, lty=1)
abline(v = mean(x), lwd=3, lty=2)
dev.off()
