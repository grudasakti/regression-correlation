#membuat variabel untuk import data dari file .csv
data <- read.csv(file.choose(), header = T, sep = ";")

#melihat data
View(data)

#melihat nama kolom
names(data)

#inisialisasi
x <- data$produksi
y <- data$ekspor

#memanggil library ggplot2
library(ggplot2)

#membuat plot
plot(x,y)

#pemberian label x dan y
plot(x, y, xlab = "Produksi", ylab = "Ekspor")

#membuat garis kuadrat
abline(lm(y~x))

#membuat fungsi korelasi
cor(y,x)

#menjalankan fungsi cor.test
cor.test(y,x)

#menetapkan model linier
mod <- lm(y~x)

#memanggil variabel mod
mod

#melihat hasil perhitungan
summary(mod)
