library(vroom)

#FUENTE:https://repositoriodeis.minsal.cl/DatosAbiertos/Vitales/DEF_2010-2017.rar
def<-vroom("C:/Users/Rodrigo/Documents/GitHub/chikle/DEF_2010-2017.csv", delim = ";")
def$GLOSA_CAPITULO_DIAG1<-as.factor(def$GLOSA_CAPITULO_DIAG1)
resp<-"Enfermedades del sistema respiratorio"

#2014 fallecidosMarzo y Abril 1342
nrow(def[def$GLOSA_CAPITULO_DIAG1== "Enfermedades del sistema respiratorio " & def$ANO_DEF=="2014" & def$MES_DEF=="3",])+nrow(def[def$GLOSA_CAPITULO_DIAG1== "Enfermedades del sistema respiratorio " & def$ANO_DEF=="2014" & def$MES_DEF=="4",])
#[1] 1342

#2015 fallecidosMarzo y Abril 1272
nrow(def[def$GLOSA_CAPITULO_DIAG1== "Enfermedades del sistema respiratorio " & def$ANO_DEF=="2015" & def$MES_DEF=="3",])+nrow(def[def$GLOSA_CAPITULO_DIAG1== "Enfermedades del sistema respiratorio " & def$ANO_DEF=="2015" & def$MES_DEF=="4",])

#2016 fallecidosMarzo y Abril 1293
nrow(def[def$GLOSA_CAPITULO_DIAG1== "Enfermedades del sistema respiratorio " & def$ANO_DEF=="2016" & def$MES_DEF=="3",])+nrow(def[def$GLOSA_CAPITULO_DIAG1== "Enfermedades del sistema respiratorio " & def$ANO_DEF=="2016" & def$MES_DEF=="4",])

#2017 fallecidosMarzo y Abril 1348
nrow(def[def$GLOSA_CAPITULO_DIAG1== "Enfermedades del sistema respiratorio " & def$ANO_DEF=="2017" & def$MES_DEF=="3",])+nrow(def[def$GLOSA_CAPITULO_DIAG1== "Enfermedades del sistema respiratorio " & def$ANO_DEF=="2017" & def$MES_DEF=="4",])
