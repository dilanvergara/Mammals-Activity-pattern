Datos <- read.csv(file.choose()) 
Datos

library(stringr)
library(readr)
library(dplyr)
Datos <- data.frame(lapply(Datos, function(x) {
  str_replace_all(x, "Â", "")
}))
head(Datos)




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
