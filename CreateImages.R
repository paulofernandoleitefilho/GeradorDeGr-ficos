#install.packages("magick")
#install.packages("tiff")
#install.packages("plotly")
#install.packages("grid")
#install.packages("gridExtra")
#install.packages("magick")
#install.packages("magrittr")
#install.packages("png")

# Carregue a biblioteca magick
rm(list=ls())

library(magick)
library(grid)
library(gridExtra)
library(tiff)
library(plotly)
library(magrittr)
library(png)

# Transform TIFF in JPEG
# Traçados
DatasetCorrenteVet1<-c(1)#1,3,4,5,13,14,17,19,20,21,24);
szDvet1<-length(DatasetCorrenteVet1)
algorithmVet1<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,23,24,25,26,27,28,29,30,31,32,33,34,35)
szAlg1<-length(algorithmVet1)

# Scatter plot
DatasetCorrenteVetSP<-c(20)#1,3,4,5,13,14,16,19,20);
SZsp<-length(DatasetCorrenteVetSP)
ALGsp<-c(1,2,3,4,5,6,7,8,9,10,11,12,13);
SZAlgSP<-length(ALGsp);

# Bar plot
DatasetCorrenteVetBar<-c(9)#1,2,3,4,5,6,7,8,9);
SZBar<-length(DatasetCorrenteVetBar)
ALGBar<-c(0,1,2,3,4,5,6,7,8,9,10,11,12);
SZAlgBar<-length(ALGBar);
VetImagens<-c()
##########################################
 
 MergeBoxPlot<-function(){
contPass<-0
for(indexDataset in 1:szDvet1){
  for(indexAlg in 1:szAlg1){

DatasetName<-DatasetCorrenteVetBar[indexDataset]
AlgName<-algorithmVet1[indexAlg]

PathnameTIFF<-paste0("E:/Graficos/Boxplots - MSE/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.tiff")
print(PathnameTIFF)
contPass<-contPass+1

# Especificando o caminho da imagem
caminho_da_imagem1 <- PathnameTIFF

# Caminho do arquivo JPG de saída
PathnameJPEG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
caminho_jpg <- PathnameJPEG

# Ler a imagem TIFF
imagem_tiff <- image_read(caminho_da_imagem1)
#VetImagens<-c(VetImagens,imagem_tiff)

# Escrever a imagem como JPG
image_write(imagem_tiff, caminho_jpg,quality = 300)

# Dataset 1
if(DatasetName==1&&AlgName==1){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG11 <- image_read(PathnamePNG)}

if(DatasetName==1&&AlgName==2){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG12 <- image_read(PathnamePNG)}

if(DatasetName==1&&AlgName==3){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG13 <- image_read(PathnamePNG)}

if(DatasetName==1&&AlgName==4){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG14 <- image_read(PathnamePNG)}

if(DatasetName==1&&AlgName==5){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG15 <- image_read(PathnamePNG)}

if(DatasetName==1&&AlgName==6){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG16 <- image_read(PathnamePNG)}

if(DatasetName==1&&AlgName==7){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG17 <- image_read(PathnamePNG)}

if(DatasetName==1&&AlgName==8){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG18 <- image_read(PathnamePNG)}

if(DatasetName==1&&AlgName==9){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG19 <- image_read(PathnamePNG)}

if(DatasetName==1&&AlgName==10){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG110 <- image_read(PathnamePNG)}

if(DatasetName==1&&AlgName==11){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG111 <- image_read(PathnamePNG)}

if(DatasetName==1&&AlgName==12){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG112 <- image_read(PathnamePNG)}

if(DatasetName==1&&AlgName==13){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG113 <- image_read(PathnamePNG)}


# Dataset 3
if(DatasetName==3&&AlgName==1){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG11 <- image_read(PathnamePNG)}

if(DatasetName==3&&AlgName==2){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG12 <- image_read(PathnamePNG)}

if(DatasetName==3&&AlgName==3){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG13 <- image_read(PathnamePNG)}

if(DatasetName==3&&AlgName==4){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG14 <- image_read(PathnamePNG)}

if(DatasetName==3&&AlgName==5){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG15 <- image_read(PathnamePNG)}

if(DatasetName==3&&AlgName==6){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG16 <- image_read(PathnamePNG)}

if(DatasetName==3&&AlgName==7){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG17 <- image_read(PathnamePNG)}

if(DatasetName==3&&AlgName==8){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG18 <- image_read(PathnamePNG)}

if(DatasetName==3&&AlgName==9){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG19 <- image_read(PathnamePNG)}

if(DatasetName==3&&AlgName==10){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG110 <- image_read(PathnamePNG)}

if(DatasetName==3&&AlgName==11){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG111 <- image_read(PathnamePNG)}

if(DatasetName==3&&AlgName==12){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG112 <- image_read(PathnamePNG)}

if(DatasetName==3&&AlgName==13){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG113 <- image_read(PathnamePNG)}

# Dataset 4
if(DatasetName==4&&AlgName==1){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG11 <- image_read(PathnamePNG)}

if(DatasetName==4&&AlgName==2){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG12 <- image_read(PathnamePNG)}

if(DatasetName==4&&AlgName==3){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG13 <- image_read(PathnamePNG)}

if(DatasetName==4&&AlgName==4){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG14 <- image_read(PathnamePNG)}

if(DatasetName==4&&AlgName==5){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG15 <- image_read(PathnamePNG)}

if(DatasetName==4&&AlgName==6){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG16 <- image_read(PathnamePNG)}

if(DatasetName==4&&AlgName==7){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG17 <- image_read(PathnamePNG)}

if(DatasetName==4&&AlgName==8){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG18 <- image_read(PathnamePNG)}

if(DatasetName==4&&AlgName==9){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG19 <- image_read(PathnamePNG)}

if(DatasetName==4&&AlgName==10){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG110 <- image_read(PathnamePNG)}

if(DatasetName==4&&AlgName==11){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG111 <- image_read(PathnamePNG)}

if(DatasetName==4&&AlgName==12){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG112 <- image_read(PathnamePNG)}

if(DatasetName==4&&AlgName==13){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG113 <- image_read(PathnamePNG)}

# Dataset 5
if(DatasetName==5&&AlgName==1){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG11 <- image_read(PathnamePNG)}

if(DatasetName==5&&AlgName==2){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG12 <- image_read(PathnamePNG)}

if(DatasetName==5&&AlgName==3){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG13 <- image_read(PathnamePNG)}

if(DatasetName==5&&AlgName==4){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG14 <- image_read(PathnamePNG)}

if(DatasetName==5&&AlgName==5){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG15 <- image_read(PathnamePNG)}

if(DatasetName==5&&AlgName==6){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG16 <- image_read(PathnamePNG)}

if(DatasetName==5&&AlgName==7){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG17 <- image_read(PathnamePNG)}

if(DatasetName==5&&AlgName==8){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG18 <- image_read(PathnamePNG)}

if(DatasetName==5&&AlgName==9){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG19 <- image_read(PathnamePNG)}

if(DatasetName==5&&AlgName==10){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG110 <- image_read(PathnamePNG)}

if(DatasetName==5&&AlgName==11){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG111 <- image_read(PathnamePNG)}

if(DatasetName==5&&AlgName==12){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG112 <- image_read(PathnamePNG)}

if(DatasetName==5&&AlgName==13){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG113 <- image_read(PathnamePNG)}


# Dataset 19
if(DatasetName==19&&AlgName==1){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG11 <- image_read(PathnamePNG)}

if(DatasetName==19&&AlgName==2){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG12 <- image_read(PathnamePNG)}

if(DatasetName==19&&AlgName==3){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG13 <- image_read(PathnamePNG)}

if(DatasetName==19&&AlgName==4){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG14 <- image_read(PathnamePNG)}

if(DatasetName==19&&AlgName==5){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG15 <- image_read(PathnamePNG)}

if(DatasetName==19&&AlgName==6){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG16 <- image_read(PathnamePNG)}

if(DatasetName==19&&AlgName==7){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG17 <- image_read(PathnamePNG)}

if(DatasetName==19&&AlgName==8){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG18 <- image_read(PathnamePNG)}

if(DatasetName==19&&AlgName==9){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG19 <- image_read(PathnamePNG)}

if(DatasetName==19&&AlgName==10){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG110 <- image_read(PathnamePNG)}

if(DatasetName==19&&AlgName==11){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG111 <- image_read(PathnamePNG)}

if(DatasetName==19&&AlgName==12){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG112 <- image_read(PathnamePNG)}

if(DatasetName==19&&AlgName==13){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG113 <- image_read(PathnamePNG)}


# Dataset 20
if(DatasetName==20&&AlgName==1){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG11 <- image_read(PathnamePNG)}

if(DatasetName==20&&AlgName==2){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG12 <- image_read(PathnamePNG)}

if(DatasetName==20&&AlgName==3){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG13 <- image_read(PathnamePNG)}

if(DatasetName==20&&AlgName==4){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG14 <- image_read(PathnamePNG)}

if(DatasetName==20&&AlgName==5){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG15 <- image_read(PathnamePNG)}

if(DatasetName==20&&AlgName==6){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG16 <- image_read(PathnamePNG)}

if(DatasetName==20&&AlgName==7){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG17 <- image_read(PathnamePNG)}

if(DatasetName==20&&AlgName==8){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG18 <- image_read(PathnamePNG)}

if(DatasetName==20&&AlgName==9){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG19 <- image_read(PathnamePNG)}

if(DatasetName==20&&AlgName==10){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG110 <- image_read(PathnamePNG)}

if(DatasetName==20&&AlgName==11){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG111 <- image_read(PathnamePNG)}

if(DatasetName==20&&AlgName==12){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG112 <- image_read(PathnamePNG)}

if(DatasetName==20&&AlgName==13){
  PathnamePNG<-paste0("e:/Graficos/Boxplots - MSE/JPG/BoxPlot-Dataset",DatasetName,"Alg",AlgName,"_SMOTE.png")
  imagem_PNG113 <- image_read(PathnamePNG)}

#vetTempIMg<-c()
#vetTempIMg<-imagem_PNG
#VetImagens<-cbind(VetImagens,vetTempIMg)

  }
}
contPass

#################################################

Img1 <- imagem_PNG11
Img2 <- imagem_PNG12
Img3 <- imagem_PNG13
Img4 <- imagem_PNG14
Img5 <- imagem_PNG15
Img6 <- imagem_PNG16
Img7 <- imagem_PNG17
Img8 <- imagem_PNG18
Img9 <- imagem_PNG19
Img10 <- imagem_PNG110
Img11 <- imagem_PNG111
Img12 <- imagem_PNG112
Img13 <- imagem_PNG113

input <- c(Img1, Img2,Img3, Img4,Img5, Img6,Img7, Img8,Img9, Img10,Img11, Img12,Img13)
image_montage(input, tile = "4x4", bg = 'White', gravity = 'Center',geometry =300)

}

 MergeGraphicsTRIACC<-function(setDataSet){
   
   DatasetCorrenteVet1<-c(setDataSet)#1,3,4,5,13,14,17,19,20,21,24);
   szDvet1<-length(DatasetCorrenteVet1)
   contPass<-0
   for(indexDataset in 1:szDvet1){
     for(indexAlg in 1:szAlg1){
       
       DatasetName<-DatasetCorrenteVet1[indexDataset]
       AlgName<-algorithmVet1[indexAlg]
       
       PathnameTIFF<-paste0("E:/Graficos/ACC/Graficos/","Dataset",DatasetName,"Alg",AlgName,".tiff")
       print(PathnameTIFF)
       contPass<-contPass+1
       
       # Especificando o caminho da imagem
       caminho_da_imagem1 <- PathnameTIFF
       
       # Caminho do arquivo JPG de saída
       PathnameJPEG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
       caminho_jpg <- PathnameJPEG
       
       # Ler a imagem TIFF
       imagem_tiff <- image_read(caminho_da_imagem1)
       #VetImagens<-c(VetImagens,imagem_tiff)
       
       # Escrever a imagem como JPG
       image_write(imagem_tiff, caminho_jpg,quality = 600)
       
       
       # Dataset 1
       if(DatasetName==1&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
         
       if(DatasetName==1&&AlgName==17){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==18){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG118 <- image_read(PathnamePNG)}
         
       if(DatasetName==1&&AlgName==19){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==20){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==21){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG121 <- image_read(PathnamePNG)}
         
      # if(DatasetName==1&&AlgName==22){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG122 <- image_read(PathnamePNG)#}
         
       if(DatasetName==1&&AlgName==23){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG123 <- image_read(PathnamePNG)}
         
       if(DatasetName==1&&AlgName==24){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG124 <- image_read(PathnamePNG)}
         
       if(DatasetName==1&&AlgName==25){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==26){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG126 <- image_read(PathnamePNG)}
         
       if(DatasetName==1&&AlgName==27){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG127 <- image_read(PathnamePNG)}
         
       if(DatasetName==1&&AlgName==28){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG128 <- image_read(PathnamePNG)}
        
       if(DatasetName==1&&AlgName==29){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG129 <- image_read(PathnamePNG)}
         
       if(DatasetName==1&&AlgName==30){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG130 <- image_read(PathnamePNG)}
         
       if(DatasetName==1&&AlgName==31){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG131 <- image_read(PathnamePNG)}
         
       if(DatasetName==1&&AlgName==32){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG132 <- image_read(PathnamePNG)}
        
       if(DatasetName==1&&AlgName==33){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG133 <- image_read(PathnamePNG)}
         
       if(DatasetName==1&&AlgName==34){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
           
           # Dataset 3
           if(DatasetName==3&&AlgName==1){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG11 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==2){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG12 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==3){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG13 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==4){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG14 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==5){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG15 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==6){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG16 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==7){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG17 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==8){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG18<- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==9){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG19 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==10){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG110 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==11){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG111 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==12){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG112 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==13){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG113 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==14){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG114 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==15){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG115 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==16){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG116 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==17){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG117 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==18){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG118 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==19){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG119 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==20){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG120 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==21){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG121 <- image_read(PathnamePNG)}
          
         #if(DatasetName==3&&AlgName==22){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG122 <- image_read(PathnamePNG)#}
           
           if(DatasetName==3&&AlgName==23){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG123 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==24){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG124 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==25){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG125 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==26){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG126 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==27){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG127 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==28){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG128 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==29){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG129 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==30){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG130 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==31){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG131 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==32){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG132 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==33){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG133 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==34){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG134 <- image_read(PathnamePNG)}
           
           if(DatasetName==3&&AlgName==35){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG135 <- image_read(PathnamePNG)}
           
           
           # Dataset 4
           if(DatasetName==4&&AlgName==1){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG11 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==2){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG12 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==3){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG13 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==4){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG14 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==5){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG15 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==6){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG16 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==7){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG17 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==8){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG18<- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==9){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG19 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==10){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG110 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==11){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG111 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==12){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG112 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==13){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG113 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==14){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG114 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==15){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG115 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==16){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG116 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==17){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG117 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==18){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG118 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==19){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG119 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==20){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG120 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==21){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG121 <- image_read(PathnamePNG)}
           
           #if(DatasetName==4&&AlgName==22){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG122 <- image_read(PathnamePNG)#}
           
           if(DatasetName==4&&AlgName==23){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG123 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==24){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG124 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==25){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG125 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==26){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG126 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==27){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG127 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==28){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG128 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==29){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG129 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==30){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG130 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==31){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG131 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==32){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG132 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==33){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG133 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==34){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG134 <- image_read(PathnamePNG)}
           
           if(DatasetName==4&&AlgName==35){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG135 <- image_read(PathnamePNG)}
           
           
           # Dataset 5
           if(DatasetName==5&&AlgName==1){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG11 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==2){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG12 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==3){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG13 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==4){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG14 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==5){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG15 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==6){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG16 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==7){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG17 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==8){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG18<- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==9){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG19 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==10){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG110 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==11){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG111 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==12){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG112 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==13){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG113 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==14){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG114 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==15){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG115 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==16){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG116 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==17){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG117 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==18){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG118 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==19){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG119 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==20){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG120 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==21){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG121 <- image_read(PathnamePNG)}
           
           #if(DatasetName==5&&AlgName==22){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG122 <- image_read(PathnamePNG)#}
           
           if(DatasetName==5&&AlgName==23){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG123 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==24){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG124 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==25){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG125 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==26){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG126 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==27){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG127 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==28){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG128 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==29){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG129 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==30){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG130 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==31){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG131 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==32){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG132 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==33){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG133 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==34){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG134 <- image_read(PathnamePNG)}
           
           if(DatasetName==5&&AlgName==35){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG135 <- image_read(PathnamePNG)}
           
           # Dataset 13
           if(DatasetName==13&&AlgName==1){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG11 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==2){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG12 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==3){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG13 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==4){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG14 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==5){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG15 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==6){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG16 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==7){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG17 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==8){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG18<- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==9){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG19 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==10){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG110 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==11){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG111 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==12){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG112 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==13){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG113 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==14){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG114 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==15){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG115 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==16){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG116 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==17){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG117 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==18){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG118 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==19){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG119 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==20){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG120 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==21){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG121 <- image_read(PathnamePNG)}
           
           #if(DatasetName==13&&AlgName==22){
           PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
           imagem_PNG122 <- image_read(PathnamePNG)#}
           
           if(DatasetName==13&&AlgName==23){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG123 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==24){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG124 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==25){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG125 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==26){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG126 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==27){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG127 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==28){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG128 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==29){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG129 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==30){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG130 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==31){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG131 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==32){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG132 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==33){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG133 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==34){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG134 <- image_read(PathnamePNG)}
           
           if(DatasetName==13&&AlgName==35){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG135 <- image_read(PathnamePNG)}
           
             
           # Dataset 14
           if(DatasetName==14&&AlgName==1){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG11 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==2){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG12 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==3){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG13 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==4){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG14 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==5){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG15 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==6){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG16 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==7){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG17 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==8){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG18<- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==9){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG19 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==10){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG110 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==11){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG111 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==12){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG112 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==13){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG113 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==14){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG114 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==15){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG115 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==16){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG116 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==17){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG117 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==18){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG118 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==19){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG119 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==20){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG120 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==21){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG121 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==23){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG123 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==24){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG124 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==25){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG125 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==26){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG126 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==27){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG127 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==28){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG128 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==29){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG129 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==30){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG130 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==31){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG131 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==32){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG132 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==33){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG133 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==34){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG134 <- image_read(PathnamePNG)}
           
           if(DatasetName==14&&AlgName==35){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG135 <- image_read(PathnamePNG)}
           
           
           # Dataset 17
           if(DatasetName==17&&AlgName==1){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG11 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==2){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG12 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==3){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG13 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==4){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG14 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==5){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG15 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==6){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG16 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==7){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG17 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==8){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG18<- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==9){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG19 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==10){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG110 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==11){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG111 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==12){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG112 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==13){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG113 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==14){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG114 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==15){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG115 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==16){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG116 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==17){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG117 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==18){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG118 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==19){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG119 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==20){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG120 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==21){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG121 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==23){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG123 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==24){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG124 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==25){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG125 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==26){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG126 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==27){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG127 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==28){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG128 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==29){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG129 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==30){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG130 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==31){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG131 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==32){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG132 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==33){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG133 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==34){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG134 <- image_read(PathnamePNG)}
           
           if(DatasetName==17&&AlgName==35){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG135 <- image_read(PathnamePNG)}
           
           
           # Dataset 19
           if(DatasetName==19&&AlgName==1){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG11 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==2){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG12 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==3){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG13 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==4){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG14 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==5){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG15 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==6){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG16 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==7){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG17 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==8){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG18<- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==9){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG19 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==10){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG110 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==11){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG111 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==12){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG112 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==13){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG113 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==14){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG114 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==15){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG115 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==16){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG116 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==17){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG117 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==18){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG118 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==19){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG119 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==20){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG120 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==21){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG121 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==23){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG123 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==24){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG124 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==25){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG125 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==26){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG126 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==27){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG127 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==28){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG128 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==29){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG129 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==30){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG130 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==31){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG131 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==32){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG132 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==33){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG133 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==34){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG134 <- image_read(PathnamePNG)}
           
           if(DatasetName==19&&AlgName==35){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG135 <- image_read(PathnamePNG)}
           
           
           # Dataset 20
           if(DatasetName==20&&AlgName==1){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG11 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==2){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG12 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==3){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG13 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==4){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG14 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==5){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG15 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==6){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG16 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==7){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG17 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==8){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG18<- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==9){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG19 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==10){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG110 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==11){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG111 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==12){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG112 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==13){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG113 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==14){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG114 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==15){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG115 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==16){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG116 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==17){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG117 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==18){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG118 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==19){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG119 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==20){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG120 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==21){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG121 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==23){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG123 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==24){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG124 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==25){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG125 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==26){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG126 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==27){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG127 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==28){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG128 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==29){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG129 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==30){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG130 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==31){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG131 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==32){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG132 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==33){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG133 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==34){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG134 <- image_read(PathnamePNG)}
           
           if(DatasetName==20&&AlgName==35){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG135 <- image_read(PathnamePNG)}
           
           
           # Dataset 21
           if(DatasetName==21&&AlgName==1){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG11 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==2){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG12 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==3){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG13 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==4){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG14 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==5){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG15 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==6){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG16 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==7){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG17 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==8){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG18<- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==9){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG19 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==10){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG110 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==11){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG111 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==12){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG112 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==13){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG113 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==14){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG114 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==15){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG115 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==16){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG116 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==17){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG117 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==18){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG118 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==19){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG119 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==20){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG120 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==21){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG121 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==23){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG123 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==24){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG124 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==25){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG125 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==26){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG126 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==27){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG127 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==28){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG128 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==29){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG129 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==30){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG130 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==31){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG131 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==32){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG132 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==33){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG133 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==34){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG134 <- image_read(PathnamePNG)}
           
           if(DatasetName==21&&AlgName==35){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG135 <- image_read(PathnamePNG)}
           
           
           # Dataset 24
           if(DatasetName==24&&AlgName==1){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG11 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==2){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG12 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==3){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG13 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==4){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG14 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==5){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG15 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==6){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG16 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==7){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG17 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==8){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG18<- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==9){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG19 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==10){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG110 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==11){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG111 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==12){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG112 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==13){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG113 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==14){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG114 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==15){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG115 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==16){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG116 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==17){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG117 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==18){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG118 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==19){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG119 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==20){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG120 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==21){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG121 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==23){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG123 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==24){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG124 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==25){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG125 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==26){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG126 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==27){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG127 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==28){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG128 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==29){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG129 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==30){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG130 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==31){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG131 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==32){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG132 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==33){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG133 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==34){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG134 <- image_read(PathnamePNG)}
           
           if(DatasetName==24&&AlgName==35){
             PathnamePNG<-paste0("E:/Graficos/ACC/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
             imagem_PNG135 <- image_read(PathnamePNG)}
           
           
       
     }
   }
   contPass
   
   #################################################
   
   Img1 <- imagem_PNG11
   Img2 <- imagem_PNG12
   Img3 <- imagem_PNG13
   Img4 <- imagem_PNG14
   Img5 <- imagem_PNG15
   Img6 <- imagem_PNG16
   Img7 <- imagem_PNG17
   Img8 <- imagem_PNG18
   Img9 <- imagem_PNG19
   Img10 <- imagem_PNG110
   Img11 <- imagem_PNG111
   Img12 <- imagem_PNG112
   Img13 <- imagem_PNG113
   Img14 <- imagem_PNG114
   Img15 <- imagem_PNG115
   Img16 <- imagem_PNG116
   Img17 <- imagem_PNG117
   Img18 <- imagem_PNG118
   Img19 <- imagem_PNG119
   Img20 <- imagem_PNG120
   Img21 <- imagem_PNG121
   Img22 <- imagem_PNG122
   Img23 <- imagem_PNG123
   Img24 <- imagem_PNG124
   Img25 <- imagem_PNG125
   Img26 <- imagem_PNG126
   Img26 <- imagem_PNG126
   Img27 <- imagem_PNG127
   Img28 <- imagem_PNG128
   Img29 <- imagem_PNG129
   Img30 <- imagem_PNG130
   Img31 <- imagem_PNG131
   Img32 <- imagem_PNG132
   Img33 <- imagem_PNG133
   Img34 <- imagem_PNG134
   Img35 <- imagem_PNG135
   
   
  # input <- c(Img1, Img2,Img3, Img4,Img5, Img6,Img7, Img8,Img9, Img10,Img11, Img12,Img13,
   #           Img14, Img15,Img16, Img17,Img18, Img19,Img20, Img21,Img22, Img23,Img24, Img25,Img26,
    #          Img27, Img28,Img29, Img30,Img31,Img32, Img33,Img34, Img35
     #         )
   
   # Image 1
   input <- c(Img1, Img2,Img3, Img4,Img5, Img6,Img7, Img8,Img9, Img10,Img11, Img12)
   imgAll1<-image_montage(input, tile = "3x4", bg = 'White', gravity = 'Center',geometry =800)
   imgAll1
   
   # Image 2
   input <- c(Img13, Img14, Img15,Img16, Img17,Img18, Img19,Img20, Img21,Img22, Img23,Img24)
   imgAll2<-image_montage(input, tile = "3x4", bg = 'White', gravity = 'Center',geometry =800)
   imgAll2
   
   # Image 3
   input <- c(Img25,Img26,Img27, Img28,Img29, Img30,Img31,Img32, Img33,Img34, Img35)
   imgAll3<-image_montage(input, tile = "3x4", bg = 'White', gravity = 'Center',geometry =800)
   imgAll3
   
   
   return (c(imgAll1,imgAll2,imgAll3))
   
 }

 MergeGraphicsTRIMSE<-function(setDataSet){
   
   
   DatasetCorrenteVet1<-c(setDataSet)#1,3,4,5,13,14,17,19,20,21,24);
   szDvet1<-length(DatasetCorrenteVet1)
   contPass<-0
   for(indexDataset in 1:szDvet1){
     for(indexAlg in 1:szAlg1){
       
       DatasetName<-DatasetCorrenteVet1[indexDataset]
       AlgName<-algorithmVet1[indexAlg]
       
       PathnameTIFF<-paste0("E:/Graficos/MSE/Graficos/","Dataset",DatasetName,"Alg",AlgName,".tiff")
       print(PathnameTIFF)
       contPass<-contPass+1
       
       # Especificando o caminho da imagem
       caminho_da_imagem1 <- PathnameTIFF
       
       # Caminho do arquivo JPG de saída
       PathnameJPEG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
       caminho_jpg <- PathnameJPEG
       
       # Ler a imagem TIFF
       imagem_tiff <- image_read(caminho_da_imagem1)
       #VetImagens<-c(VetImagens,imagem_tiff)
       
       # Escrever a imagem como JPG
       image_write(imagem_tiff, caminho_jpg,quality = 600)
       
       
       # Dataset 1
       if(DatasetName==1&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 3
       if(DatasetName==3&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       #if(DatasetName==3&&AlgName==22){
       PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
       imagem_PNG122 <- image_read(PathnamePNG)#}
       
       if(DatasetName==3&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 4
       if(DatasetName==4&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       #if(DatasetName==4&&AlgName==22){
       PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
       imagem_PNG122 <- image_read(PathnamePNG)#}
       
       if(DatasetName==4&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 5
       if(DatasetName==5&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       #if(DatasetName==5&&AlgName==22){
       PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
       imagem_PNG122 <- image_read(PathnamePNG)#}
       
       if(DatasetName==5&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       # Dataset 13
       if(DatasetName==13&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       #if(DatasetName==13&&AlgName==22){
       PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
       imagem_PNG122 <- image_read(PathnamePNG)#}
       
       if(DatasetName==13&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 14
       if(DatasetName==14&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 17
       if(DatasetName==17&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 19
       if(DatasetName==19&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 20
       if(DatasetName==20&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 21
       if(DatasetName==21&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 24
       if(DatasetName==24&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       
     }
   }
   contPass
   
   #################################################
   
   #################################################
   
   Img1 <- imagem_PNG11
   Img2 <- imagem_PNG12
   Img3 <- imagem_PNG13
   Img4 <- imagem_PNG14
   Img5 <- imagem_PNG15
   Img6 <- imagem_PNG16
   Img7 <- imagem_PNG17
   Img8 <- imagem_PNG18
   Img9 <- imagem_PNG19
   Img10 <- imagem_PNG110
   Img11 <- imagem_PNG111
   Img12 <- imagem_PNG112
   Img13 <- imagem_PNG113
   Img14 <- imagem_PNG114
   Img15 <- imagem_PNG115
   Img16 <- imagem_PNG116
   Img17 <- imagem_PNG117
   Img18 <- imagem_PNG118
   Img19 <- imagem_PNG119
   Img20 <- imagem_PNG120
   Img21 <- imagem_PNG121
   Img22 <- imagem_PNG122
   Img23 <- imagem_PNG123
   Img24 <- imagem_PNG124
   Img25 <- imagem_PNG125
   Img26 <- imagem_PNG126
   Img26 <- imagem_PNG126
   Img27 <- imagem_PNG127
   Img28 <- imagem_PNG128
   Img29 <- imagem_PNG129
   Img30 <- imagem_PNG130
   Img31 <- imagem_PNG131
   Img32 <- imagem_PNG132
   Img33 <- imagem_PNG133
   Img34 <- imagem_PNG134
   Img35 <- imagem_PNG135
   
   
   # input <- c(Img1, Img2,Img3, Img4,Img5, Img6,Img7, Img8,Img9, Img10,Img11, Img12,Img13,
   #           Img14, Img15,Img16, Img17,Img18, Img19,Img20, Img21,Img22, Img23,Img24, Img25,Img26,
   #          Img27, Img28,Img29, Img30,Img31,Img32, Img33,Img34, Img35
   #         )
   
   
   # Image 1
   input <- c(Img1, Img2,Img3, Img4,Img5, Img6,Img7, Img8,Img9, Img10,Img11, Img12)
   imgAll1<-image_montage(input, tile = "3x4", bg = 'White', gravity = 'Center',geometry =800)
   imgAll1
   
   # Image 2
   input <- c(Img13, Img14, Img15,Img16, Img17,Img18, Img19,Img20, Img21,Img22, Img23,Img24)
   imgAll2<-image_montage(input, tile = "3x4", bg = 'White', gravity = 'Center',geometry =800)
   imgAll2
   
   # Image 3
   input <- c(Img25,Img26,Img27, Img28,Img29, Img30,Img31,Img32, Img33,Img34, Img35)
   imgAll3<-image_montage(input, tile = "3x4", bg = 'White', gravity = 'Center',geometry =800)
   imgAll3
   
   
   return (c(imgAll1,imgAll2,imgAll3))
   
   
   
 }
 
 MergeGraphicsTRISEN<-function(setDataSet){
   
   
   DatasetCorrenteVet1<-c(setDataSet)#1,3,4,5,13,14,17,19,20,21,24);
   szDvet1<-length(DatasetCorrenteVet1)
   contPass<-0
   for(indexDataset in 1:szDvet1){
     for(indexAlg in 1:szAlg1){
       
       DatasetName<-DatasetCorrenteVet1[indexDataset]
       AlgName<-algorithmVet1[indexAlg]
       
       PathnameTIFF<-paste0("E:/Graficos/SEN/Graficos/","Dataset",DatasetName,"Alg",AlgName,".tiff")
       print(PathnameTIFF)
       contPass<-contPass+1
       
       # Especificando o caminho da imagem
       caminho_da_imagem1 <- PathnameTIFF
       
       # Caminho do arquivo JPG de saída
       PathnameJPEG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
       caminho_jpg <- PathnameJPEG
       
       # Ler a imagem TIFF
       imagem_tiff <- image_read(caminho_da_imagem1)
       #VetImagens<-c(VetImagens,imagem_tiff)
       
       # Escrever a imagem como JPG
       image_write(imagem_tiff, caminho_jpg,quality = 600)
       
       
       # Dataset 1
       if(DatasetName==1&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       # if(DatasetName==1&&AlgName==22){
       PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
       imagem_PNG122 <- image_read(PathnamePNG)#}
       
       if(DatasetName==1&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 3
       if(DatasetName==3&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       #if(DatasetName==3&&AlgName==22){
       PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
       imagem_PNG122 <- image_read(PathnamePNG)#}
       
       if(DatasetName==3&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 4
       if(DatasetName==4&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       #if(DatasetName==4&&AlgName==22){
       PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
       imagem_PNG122 <- image_read(PathnamePNG)#}
       
       if(DatasetName==4&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 5
       if(DatasetName==5&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       #if(DatasetName==5&&AlgName==22){
       PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
       imagem_PNG122 <- image_read(PathnamePNG)#}
       
       if(DatasetName==5&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       # Dataset 13
       if(DatasetName==13&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       #if(DatasetName==13&&AlgName==22){
       PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
       imagem_PNG122 <- image_read(PathnamePNG)#}
       
       if(DatasetName==13&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 14
       if(DatasetName==14&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 17
       if(DatasetName==17&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 19
       if(DatasetName==19&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 20
       if(DatasetName==20&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 21
       if(DatasetName==21&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 24
       if(DatasetName==24&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SEN/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       
     }
   }
   contPass
   
   #################################################
   
   Img1 <- imagem_PNG11
   Img2 <- imagem_PNG12
   Img3 <- imagem_PNG13
   Img4 <- imagem_PNG14
   Img5 <- imagem_PNG15
   Img6 <- imagem_PNG16
   Img7 <- imagem_PNG17
   Img8 <- imagem_PNG18
   Img9 <- imagem_PNG19
   Img10 <- imagem_PNG110
   Img11 <- imagem_PNG111
   Img12 <- imagem_PNG112
   Img13 <- imagem_PNG113
   Img14 <- imagem_PNG114
   Img15 <- imagem_PNG115
   Img16 <- imagem_PNG116
   Img17 <- imagem_PNG117
   Img18 <- imagem_PNG118
   Img19 <- imagem_PNG119
   Img20 <- imagem_PNG120
   Img21 <- imagem_PNG121
   Img22 <- imagem_PNG122
   Img23 <- imagem_PNG123
   Img24 <- imagem_PNG124
   Img25 <- imagem_PNG125
   Img26 <- imagem_PNG126
   Img26 <- imagem_PNG126
   Img27 <- imagem_PNG127
   Img28 <- imagem_PNG128
   Img29 <- imagem_PNG129
   Img30 <- imagem_PNG130
   Img31 <- imagem_PNG131
   Img32 <- imagem_PNG132
   Img33 <- imagem_PNG133
   Img34 <- imagem_PNG134
   Img35 <- imagem_PNG135
   
   
   
   # Image 1
   input <- c(Img1, Img2,Img3, Img4,Img5, Img6,Img7, Img8,Img9, Img10,Img11, Img12)
   imgAll1<-image_montage(input, tile = "3x4", bg = 'White', gravity = 'Center',geometry =800)
   imgAll1
   
   # Image 2
   input <- c(Img13, Img14, Img15,Img16, Img17,Img18, Img19,Img20, Img21,Img22, Img23,Img24)
   imgAll2<-image_montage(input, tile = "3x4", bg = 'White', gravity = 'Center',geometry =800)
   imgAll2
   
   # Image 3
   input <- c(Img25,Img26,Img27, Img28,Img29, Img30,Img31,Img32, Img33,Img34, Img35)
   imgAll3<-image_montage(input, tile = "3x4", bg = 'White', gravity = 'Center',geometry =800)
   imgAll3
   
   
   return (c(imgAll1,imgAll2,imgAll3))
   
   
   
 }
 
 MergeGraphicsTRISPE<-function(setDataSet){
   
   
   DatasetCorrenteVet1<-c(setDataSet)#1,3,4,5,13,14,17,19,20,21,24);
   szDvet1<-length(DatasetCorrenteVet1)
   contPass<-0
   for(indexDataset in 1:szDvet1){
     for(indexAlg in 1:szAlg1){
       
       DatasetName<-DatasetCorrenteVet1[indexDataset]
       AlgName<-algorithmVet1[indexAlg]
       
       PathnameTIFF<-paste0("E:/Graficos/SPE/Graficos/","Dataset",DatasetName,"Alg",AlgName,".tiff")
       print(PathnameTIFF)
       contPass<-contPass+1
       
       # Especificando o caminho da imagem
       caminho_da_imagem1 <- PathnameTIFF
       
       # Caminho do arquivo JPG de saída
       PathnameJPEG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
       caminho_jpg <- PathnameJPEG
       
       # Ler a imagem TIFF
       imagem_tiff <- image_read(caminho_da_imagem1)
       #VetImagens<-c(VetImagens,imagem_tiff)
       
       # Escrever a imagem como JPG
       image_write(imagem_tiff, caminho_jpg,quality = 600)
       
       
       # Dataset 1
       if(DatasetName==1&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       # if(DatasetName==1&&AlgName==22){
       PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
       imagem_PNG122 <- image_read(PathnamePNG)#}
       
       if(DatasetName==1&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 3
       if(DatasetName==3&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       #if(DatasetName==3&&AlgName==22){
       PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
       imagem_PNG122 <- image_read(PathnamePNG)#}
       
       if(DatasetName==3&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==3&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 4
       if(DatasetName==4&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       #if(DatasetName==4&&AlgName==22){
       PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
       imagem_PNG122 <- image_read(PathnamePNG)#}
       
       if(DatasetName==4&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==4&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 5
       if(DatasetName==5&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       #if(DatasetName==5&&AlgName==22){
       PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
       imagem_PNG122 <- image_read(PathnamePNG)#}
       
       if(DatasetName==5&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==5&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       # Dataset 13
       if(DatasetName==13&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       #if(DatasetName==13&&AlgName==22){
       PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
       imagem_PNG122 <- image_read(PathnamePNG)#}
       
       if(DatasetName==13&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==13&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 14
       if(DatasetName==14&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==14&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 17
       if(DatasetName==17&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==17&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 19
       if(DatasetName==19&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==19&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 20
       if(DatasetName==20&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==20&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 21
       if(DatasetName==21&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==21&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       # Dataset 24
       if(DatasetName==24&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==14){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG114 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==15){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG115 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==16){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG116 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==17){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG117 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==18){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG118 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==19){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG119 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==20){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG120 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==21){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG121 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==23){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG123 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==24){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG124 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==25){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG125 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==26){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG126 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==27){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG127 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==28){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG128 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==29){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG129 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==30){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG130 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==31){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG131 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==32){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG132 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==33){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG133 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==34){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG134 <- image_read(PathnamePNG)}
       
       if(DatasetName==24&&AlgName==35){
         PathnamePNG<-paste0("E:/Graficos/SPE/Graficos/JPG/",DatasetName,"Alg",AlgName,".png")
         imagem_PNG135 <- image_read(PathnamePNG)}
       
       
       
     }
   }
   contPass
   
   #################################################
   
   Img1 <- imagem_PNG11
   Img2 <- imagem_PNG12
   Img3 <- imagem_PNG13
   Img4 <- imagem_PNG14
   Img5 <- imagem_PNG15
   Img6 <- imagem_PNG16
   Img7 <- imagem_PNG17
   Img8 <- imagem_PNG18
   Img9 <- imagem_PNG19
   Img10 <- imagem_PNG110
   Img11 <- imagem_PNG111
   Img12 <- imagem_PNG112
   Img13 <- imagem_PNG113
   Img14 <- imagem_PNG114
   Img15 <- imagem_PNG115
   Img16 <- imagem_PNG116
   Img17 <- imagem_PNG117
   Img18 <- imagem_PNG118
   Img19 <- imagem_PNG119
   Img20 <- imagem_PNG120
   Img21 <- imagem_PNG121
   Img22 <- imagem_PNG122
   Img23 <- imagem_PNG123
   Img24 <- imagem_PNG124
   Img25 <- imagem_PNG125
   Img26 <- imagem_PNG126
   Img26 <- imagem_PNG126
   Img27 <- imagem_PNG127
   Img28 <- imagem_PNG128
   Img29 <- imagem_PNG129
   Img30 <- imagem_PNG130
   Img31 <- imagem_PNG131
   Img32 <- imagem_PNG132
   Img33 <- imagem_PNG133
   Img34 <- imagem_PNG134
   Img35 <- imagem_PNG135
   
   
   
   
   # Image 1
   input <- c(Img1, Img2,Img3, Img4,Img5, Img6,Img7, Img8,Img9, Img10,Img11, Img12)
   imgAll1<-image_montage(input, tile = "3x4", bg = 'White', gravity = 'Center',geometry =800)
   imgAll1
   
   # Image 2
   input <- c(Img13, Img14, Img15,Img16, Img17,Img18, Img19,Img20, Img21,Img22, Img23,Img24)
   imgAll2<-image_montage(input, tile = "3x4", bg = 'White', gravity = 'Center',geometry =800)
   imgAll2
   
   # Image 3
   input <- c(Img25,Img26,Img27, Img28,Img29, Img30,Img31,Img32, Img33,Img34, Img35)
   imgAll3<-image_montage(input, tile = "3x4", bg = 'White', gravity = 'Center',geometry =800)
   imgAll3
   
   
   return (c(imgAll1,imgAll2,imgAll3))
   
   
 }
 
 MergeGraphicsScatter<-function(){
   contPass<-0
   for(indexDataset in 1:SZsp){
     for(indexAlg in 1:SZAlgSP){
       
       DatasetName<-DatasetCorrenteVetSP[indexDataset]
       AlgName<-ALGsp[indexAlg]
       
       # Caminho do arquivo JPG de saída
       if(DatasetName==1){
        PathnameJPEG<-paste0("E:/Graficos/graficosScatterplot/D1/","G",AlgName,".JPG")
        caminho_jpg <- PathnameJPEG
       }
       
       if(DatasetName==3){
         PathnameJPEG<-paste0("E:/Graficos/graficosScatterplot/D3/","G",AlgName,".JPG")
         caminho_jpg <- PathnameJPEG
       }
       
       if(DatasetName==4){
         PathnameJPEG<-paste0("E:/Graficos/graficosScatterplot/D4/","G",AlgName,".JPG")
         caminho_jpg <- PathnameJPEG
       }
       
       if(DatasetName==5){
         PathnameJPEG<-paste0("E:/Graficos/graficosScatterplot/D5/","G",AlgName,".JPG")
         caminho_jpg <- PathnameJPEG
       }
       
       if(DatasetName==13){
         PathnameJPEG<-paste0("E:/Graficos/graficosScatterplot/D13/","G",AlgName,".JPG")
         caminho_jpg <- PathnameJPEG
       }
       
       if(DatasetName==14){
         PathnameJPEG<-paste0("E:/Graficos/graficosScatterplot/D14/","G",AlgName,".JPG")
         caminho_jpg <- PathnameJPEG
       }
       
       if(DatasetName==16){
         PathnameJPEG<-paste0("E:/Graficos/graficosScatterplot/D16/","G",AlgName,".JPG")
         caminho_jpg <- PathnameJPEG
       }
       
       if(DatasetName==19){
         PathnameJPEG<-paste0("E:/Graficos/graficosScatterplot/D19/","G",AlgName,".JPG")
         caminho_jpg <- PathnameJPEG
       }
       
       if(DatasetName==20){
         PathnameJPEG<-paste0("E:/Graficos/graficosScatterplot/D20/","G",AlgName,".JPG")
         caminho_jpg <- PathnameJPEG
       }
       
       
       
       # Dataset 1
       if(DatasetName==1&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D1/","G",AlgName,".JPEG")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D1/","G",AlgName,".JPEG")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D1/","G",AlgName,".JPEG")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D1/","G",AlgName,".JPEG")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D1/","G",AlgName,".JPEG")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D1/","G",AlgName,".JPEG")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D1/","G",AlgName,".JPEG")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D1/","G",AlgName,".JPEG")
         imagem_PNG18 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D1/","G",AlgName,".JPEG")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D1/","G",AlgName,".JPEG")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D1/","G",AlgName,".JPEG")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D1/","G",AlgName,".JPEG")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D1/","G",AlgName,".JPEG")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       
       # Dataset 2
       if(DatasetName==2 &&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D3/","G",AlgName,".JPEG")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D3/","G",AlgName,".JPEG")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D3/","G",AlgName,".JPEG")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D3/","G",AlgName,".JPEG")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D3/","G",AlgName,".JPEG")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D3/","G",AlgName,".JPEG")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D3/","G",AlgName,".JPEG")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D3/","G",AlgName,".JPEG")
         imagem_PNG18 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D3/","G",AlgName,".JPEG")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D3/","G",AlgName,".JPEG")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D3/","G",AlgName,".JPEG")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D3/","G",AlgName,".JPEG")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D3/","G",AlgName,".JPEG")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       # Dataset 3
       if(DatasetName==3  &&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D4/","G",AlgName,".JPEG")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==3  &&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D4/","G",AlgName,".JPEG")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==3  &&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D4/","G",AlgName,".JPEG")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==3  &&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D4/","G",AlgName,".JPEG")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==3  &&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D4/","G",AlgName,".JPEG")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==3  &&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D4/","G",AlgName,".JPEG")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==3  &&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D4/","G",AlgName,".JPEG")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==3  &&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D4/","G",AlgName,".JPEG")
         imagem_PNG18 <- image_read(PathnamePNG)}
       
       if(DatasetName==3  &&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D4/","G",AlgName,".JPEG")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==3  &&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D4/","G",AlgName,".JPEG")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==3  &&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D4/","G",AlgName,".JPEG")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==3  &&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D4/","G",AlgName,".JPEG")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==3  &&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D4/","G",AlgName,".JPEG")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       
       # Dataset 4
       if(DatasetName==4  &&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D5/","G",AlgName,".JPEG")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==4  &&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D5/","G",AlgName,".JPEG")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==4  &&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D5/","G",AlgName,".JPEG")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==4  &&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D5/","G",AlgName,".JPEG")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==4  &&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D5/","G",AlgName,".JPEG")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==4  &&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D5/","G",AlgName,".JPEG")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==4  &&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D5/","G",AlgName,".JPEG")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==4  &&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D5/","G",AlgName,".JPEG")
         imagem_PNG18 <- image_read(PathnamePNG)}
       
       if(DatasetName==4  &&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D5/","G",AlgName,".JPEG")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==4  &&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D5/","G",AlgName,".JPEG")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==4  &&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D5/","G",AlgName,".JPEG")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==4  &&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D5/","G",AlgName,".JPEG")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==4  &&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D5/","G",AlgName,".JPEG")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       
       # Dataset 13
       if(DatasetName==13  &&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D13/","G",AlgName,".JPEG")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==13  &&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D13/","G",AlgName,".JPEG")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==13  &&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D13/","G",AlgName,".JPEG")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==13  &&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D13/","G",AlgName,".JPEG")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==13  &&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D13/","G",AlgName,".JPEG")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==13  &&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D13/","G",AlgName,".JPEG")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==13  &&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D13/","G",AlgName,".JPEG")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==13  &&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D13/","G",AlgName,".JPEG")
         imagem_PNG18 <- image_read(PathnamePNG)}
       
       if(DatasetName==13  &&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D13/","G",AlgName,".JPEG")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==13  &&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D13/","G",AlgName,".JPEG")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==13  &&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D13/","G",AlgName,".JPEG")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==13  &&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D13/","G",AlgName,".JPEG")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==13  &&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D13/","G",AlgName,".JPEG")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       # Dataset 14
       if(DatasetName==14  &&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D14/","G",AlgName,".JPEG")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==14  &&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D14/","G",AlgName,".JPEG")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==14  &&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D14/","G",AlgName,".JPEG")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==14  &&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D14/","G",AlgName,".JPEG")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==14  &&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D14/","G",AlgName,".JPEG")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==14  &&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D14/","G",AlgName,".JPEG")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==14  &&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D14/","G",AlgName,".JPEG")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==14  &&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D14/","G",AlgName,".JPEG")
         imagem_PNG18 <- image_read(PathnamePNG)}
       
       if(DatasetName==14  &&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D14/","G",AlgName,".JPEG")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==14  &&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D14/","G",AlgName,".JPEG")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==14  &&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D14/","G",AlgName,".JPEG")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==14  &&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D14/","G",AlgName,".JPEG")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==14  &&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D14/","G",AlgName,".JPEG")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       
       # Dataset 16
       if(DatasetName==16  &&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D16/","G",AlgName,".JPEG")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==16  &&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D16/","G",AlgName,".JPEG")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==16  &&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D16/","G",AlgName,".JPEG")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==16  &&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D16/","G",AlgName,".JPEG")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==16  &&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D16/","G",AlgName,".JPEG")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==16  &&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D16/","G",AlgName,".JPEG")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==16  &&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D16/","G",AlgName,".JPEG")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==16  &&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D16/","G",AlgName,".JPEG")
         imagem_PNG18 <- image_read(PathnamePNG)}
       
       if(DatasetName==16  &&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D16/","G",AlgName,".JPEG")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==16  &&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D16/","G",AlgName,".JPEG")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==16  &&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D16/","G",AlgName,".JPEG")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==16  &&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D16/","G",AlgName,".JPEG")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==16 &&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D16/","G",AlgName,".JPEG")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       
       # Dataset 19
       if(DatasetName==19  && AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D19/","G",AlgName,".JPEG")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==19  && AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D19/","G",AlgName,".JPEG")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==19  && AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D19/","G",AlgName,".JPEG")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==19  && AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D19/","G",AlgName,".JPEG")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==19 && AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D19/","G",AlgName,".JPEG")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==19 && AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D19/","G",AlgName,".JPEG")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==19 && AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D19/","G",AlgName,".JPEG")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==19 && AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D19/","G",AlgName,".JPEG")
         imagem_PNG18 <- image_read(PathnamePNG)}
       
       if(DatasetName==19  && AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D19/","G",AlgName,".JPEG")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==19 && AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D19/","G",AlgName,".JPEG")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==19  && AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D19/","G",AlgName,".JPEG")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==19 && AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D19/","G",AlgName,".JPEG")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==19 && AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D19/","G",AlgName,".JPEG")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       
       # Dataset 20
       if(DatasetName==20  &&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D20/","G",AlgName,".JPEG")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==20  &&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D20/","G",AlgName,".JPEG")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==20  &&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D20/","G",AlgName,".JPEG")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==20  &&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D20/","G",AlgName,".JPEG")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==20  &&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D20/","G",AlgName,".JPEG")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==20 &&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D20/","G",AlgName,".JPEG")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==20 &&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D20/","G",AlgName,".JPEG")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==20 &&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D20/","G",AlgName,".JPEG")
         imagem_PNG18 <- image_read(PathnamePNG)}
       
       if(DatasetName==20  &&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D20/","G",AlgName,".JPEG")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==20  &&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D20/","G",AlgName,".JPEG")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==20 &&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D20/","G",AlgName,".JPEG")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==20  &&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D20/","G",AlgName,".JPEG")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       if(DatasetName==20  &&AlgName==13){
         PathnamePNG<-paste0("E:/Graficos/graficosScatterplot/D20/","G",AlgName,".JPEG")
         imagem_PNG113 <- image_read(PathnamePNG)}
       
       
       
       
        
     }
   }
   contPass
   
   #################################################
   
   Img1 <- imagem_PNG11
   Img2 <- imagem_PNG12
   Img3 <- imagem_PNG13
   Img4 <- imagem_PNG14
   Img5 <- imagem_PNG15
   Img6 <- imagem_PNG16
   Img7 <- imagem_PNG17
   Img8 <- imagem_PNG18
   Img9 <- imagem_PNG19
   Img10 <- imagem_PNG110
   Img11 <- imagem_PNG111
   Img12 <- imagem_PNG112
   Img13 <- imagem_PNG113
  
   
   
   input <- c(Img1, Img2,Img3, Img4,Img5, Img6,Img7, Img8,Img9, Img10,Img11, Img12,Img13)
   
   
   imgAll<-image_montage(input, tile = "4x4", bg = 'White', gravity = 'Center',geometry =800)
   
   
   #png("E:/Graficos/graficosScatterplot/D1/Figura3.png", width = 800, height = 600)
   #PathnameJPEG<-paste0("E:/Graficos/graficosScatterplot/D1/GS",DatasetName,".png")
   #image_write(imgAll, PathnameJPEG,quality = 800)
   imgAll
   
   return (imgAll)
   
 }
 
 MergeBars<-function(){
   contPass<-0
   for(indexDataset in 1:SZBar){
     for(indexAlg in 1:SZAlgBar){
       
       DatasetName<-DatasetCorrenteVetBar[indexDataset]
       AlgName<-ALGBar[indexAlg]
       
       PathnameTIFF<-paste0("E:/Graficos/Bars/BarDataset",DatasetName,"Alg",AlgName,".tiff")
       print(PathnameTIFF)
       contPass<-contPass+1
       
       # Especificando o caminho da imagem
       caminho_da_imagem1 <- PathnameTIFF
       
       # Caminho do arquivo JPG de saída
       PathnameJPEG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
       caminho_jpg <- PathnameJPEG
       
       # Ler a imagem TIFF
       imagem_tiff <- image_read(caminho_da_imagem1)
       #VetImagens<-c(VetImagens,imagem_tiff)
       
       # Escrever a imagem como JPG
       image_write(imagem_tiff, caminho_jpg,quality = 600)
       
       
       # Dataset 2
       if(DatasetName==1&&AlgName==0){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG10 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==1&&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       # Dataset 2
       if(DatasetName==2 &&AlgName==0){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG10 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==2 &&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       
       # Dataset 3
       if(DatasetName==3   &&AlgName==0){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG10 <- image_read(PathnamePNG)}
       
       if(DatasetName==3   &&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==3   &&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==3   &&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==3   &&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==3   &&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==3   &&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==3   &&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==3   &&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==3   &&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==3   &&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==3   &&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==3   &&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       
       
       # Dataset 4
       if(DatasetName==4      &&AlgName==0){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG10 <- image_read(PathnamePNG)}
       
       if(DatasetName==4      &&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==4      &&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==4      &&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==4      &&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==4      &&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==4      &&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==4      &&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==4      &&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==4      &&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==4      &&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==4      &&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==4      &&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       
       
       # Dataset 5
       if(DatasetName==5          &&AlgName==0){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG10 <- image_read(PathnamePNG)}
       
       if(DatasetName==5          &&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==5          &&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==5          &&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==5          &&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==5          &&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==5          &&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==5          &&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==5          &&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==5          &&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==5          &&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==5          &&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==5          &&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       
       # Dataset 6
       if(DatasetName==6               &&AlgName==0){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG10 <- image_read(PathnamePNG)}
       
       if(DatasetName==6               &&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==6               &&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==6               &&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==6               &&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==6               &&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==6               &&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==6               &&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==6               &&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==6               &&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==6               &&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==6               &&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==6               &&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       
       
       # Dataset 7
       if(DatasetName==7                     &&AlgName==0){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG10 <- image_read(PathnamePNG)}
       
       if(DatasetName==7                     &&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==7                     &&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==7                     &&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==7                     &&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==7                     &&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==7                     &&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==7                     &&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==7                     &&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==7                     &&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==7                     &&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==7                     &&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==7                     &&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       
       
       # Dataset 8
       if(DatasetName==8                            &&AlgName==0){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG10 <- image_read(PathnamePNG)}
       
       if(DatasetName==8                            &&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==8                            &&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==8                            &&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==8                            &&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==8                            &&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==8                            &&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==8                            &&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==8                            &&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==8                            &&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==8                            &&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==8                            &&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==8                            &&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       
       
       # Dataset 9
       if(DatasetName==9                                    &&AlgName==0){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG10 <- image_read(PathnamePNG)}
       
       if(DatasetName==9                                    &&AlgName==1){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG11 <- image_read(PathnamePNG)}
       
       if(DatasetName==9                                    &&AlgName==2){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG12 <- image_read(PathnamePNG)}
       
       if(DatasetName==9                                    &&AlgName==3){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG13 <- image_read(PathnamePNG)}
       
       if(DatasetName==9                                    &&AlgName==4){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG14 <- image_read(PathnamePNG)}
       
       if(DatasetName==9                                    &&AlgName==5){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG15 <- image_read(PathnamePNG)}
       
       if(DatasetName==9                                    &&AlgName==6){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG16 <- image_read(PathnamePNG)}
       
       if(DatasetName==9                                    &&AlgName==7){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG17 <- image_read(PathnamePNG)}
       
       if(DatasetName==9                                    &&AlgName==8){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG18<- image_read(PathnamePNG)}
       
       if(DatasetName==9                                    &&AlgName==9){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG19 <- image_read(PathnamePNG)}
       
       if(DatasetName==9                                    &&AlgName==10){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG110 <- image_read(PathnamePNG)}
       
       if(DatasetName==9                                    &&AlgName==11){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG111 <- image_read(PathnamePNG)}
       
       if(DatasetName==9                                    &&AlgName==12){
         PathnamePNG<-paste0("E:/Graficos/Bars/PNG/BarDataset",DatasetName,"Alg",AlgName,".png")
         imagem_PNG112 <- image_read(PathnamePNG)}
       
       
     }
   }
   contPass
   
   #################################################
   
   Img0 <- imagem_PNG10
   Img1 <- imagem_PNG11
   Img2 <- imagem_PNG12
   Img3 <- imagem_PNG13
   Img4 <- imagem_PNG14
   Img5 <- imagem_PNG15
   Img6 <- imagem_PNG16
   Img7 <- imagem_PNG17
   Img8 <- imagem_PNG18
   Img9 <- imagem_PNG19
   Img10 <- imagem_PNG110
   Img11 <- imagem_PNG111
   Img12 <- imagem_PNG112
   #Img13 <- imagem_PNG113
   
   
   input <- c(Img0, Img1, Img2,Img3, Img4,Img5, Img6,Img7, Img8,Img9, Img10,Img11, Img12)
   
   
   imgAll<-image_montage(input, tile = "4x4", bg = 'White', gravity = 'Center',geometry =800)
   
   return (imgAll)
   
 }
 
 # Join JPEG images
 #MergeBoxPlot()
 
 #1,3,4,5,13,14,17,19,20,21,24);
 # Model: ImageD(dataset)Alg(alg)
 
 #OutPutSet<-MergeGraphicsTRIACC(24)
 #OutPutSet<-MergeGraphicsTRIMSE(24)
 #OutPutSet<-MergeGraphicsTRISEN(24)
 OutPutSet<-MergeGraphicsTRISPE(24)
 
 OutPutSet[1]
 OutPutSet[2]
 OutPutSet[3]
 
 #MergeGraphicsScatter()
 #MergeBars()
 