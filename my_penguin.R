#a
penguins[1:6,]
#b
knitr::kable(penguins[1:6,])
#d
boxplot(penguins$body_mass_g ~ penguins$species,
        main = "Boxplots of Penguin Body Mass by Species",
        ylab = "Body mass (g)",
        xlab = "Species")
#e
boxplot(penguins$body_mass_g ~ penguins$species*penguins$sex,
        main = "Boxplots of Penguin Body Mass by Species",
        ylab = "Body mass (g)",
        las=2,
        col=c(2,4),
        axes=F,
        xlab = "Species"
)
box()
axis(2,at=c(3000,3500,4000,4500,5000,5500,6000),label=c("3000","3500","4000","4500","5000","5500","6000"),las=2)
axis(1,at=c(1.5,3.5,5.5),labels=c("Adelie","Chinstrap","Gentoo"))
legend(x=0.29,y=6420,legend=c("FEMALE","MALE"),col=c(2,4),pch = 15,cex=1)