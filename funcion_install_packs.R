##### AUTOMATIC INSTALLATION AND LIBRARIES UPLOAD WITH R #####
##### INSTALACIÓN Y CARGA AUTOMÁTICA DE PAQUETES EN R #####
paquetes <- function(p){
  new <- p[!(p %in% installed.packages()[,"Package"])]
  if (length(new) != 0){install.packages(new)}
  
  lapply(as.list(p), library, character.only = TRUE)
}

# NOT RUN
# p <- c("raster","dplyr", "sf","ggmap")
# paquetes(p)
