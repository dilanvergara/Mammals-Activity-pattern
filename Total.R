Datos <- read.csv(file.choose()) 
Datos

library(stringr)
library(readr)
library(dplyr)
Mrufina <- data.frame(lapply(Datos, function(x) {
  str_replace_all(x, "Â", "")
}))
head(Mrufina)

library(camtrapR)
png(file = "C:/Users/Dilan Vergara/OneDrive/Tesis Maestría Final/Datos/Análisis/Mazama/M_Americana/Mamericana.png", width = 1200, height = 700, res = 150)
par(mar = c(5, 4, 3, 3) + 0.1)


activityDensity (recordTable = Datos,
                 speciesCol = "species",
                 allSpecies = TRUE,
                 recordDateTimeCol = "ConcaDataTime", 
                 recordDateTimeFormat = "%d-%m-%Y %H:%M:%S", 
                 plotR = TRUE, 
                 writePNG = TRUE, 
                 plotDirectory = "C:/users/Dilan Vergara/OneDrive/Tesis Maestría Final/Datos/SP_Todas/ActivityDensity", 
                 createDir = TRUE, 
                 pngMaxPix = 1000,
)

#Para activity Histogram
library(camtrapR)
library(overlap)
library(raster)
activityHistogram (recordTable = Datos,
                   speciesCol = "species",
                   species     = as.character(sp.names[sp_number=1]),
                   allSpecies = TRUE,
                   recordDateTimeCol = "ConcaDataTime", 
                   recordDateTimeFormat = "%d-%m-%Y %H:%M:%S", 
                   plotR = TRUE, 
                   writePNG = TRUE, 
                   plotDirectory = "C:/users/Dilan Vergara/OneDrive/Tesis Maestría Final/Datos/SP_Todas/ActivityDensity", 
                   createDir = FALSE, 
                   pngMaxPix = 1000,
)
