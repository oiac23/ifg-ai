##############################
#### Dados da atividade 3 ####
##############################


### Questao 01
tempos = c(89,93,96,98,98,101,102,102,104,105,106,108,109,109,110,110,110,111,111,
          112,112,113,113,114,114,114,114,114,114,114,115,115,115,116,116,116,116,116,
          116,116,117,117,117,118,118,118,119,119,119,119,119,119,119,120,120,120,121,
          121,121,122,122,123,123,124,125,125,126,127,127,127,128,128,129,131,133)


### Questao 02
magnitude = vec=c(0.70,2.20,1.64,1.01,1.62,1.28,0.92,1.00,1.49,1.42,0.74,1.98,
                  1.32,1.26,1.83,0.83,1.00,2.24,0.84,1.35,0.64,0.64,2.95,0.00,
                  0.99,1.34,0.79,2.50,1.42,0.93,0.39,1.22,0.90,0.65,1.56,0.54,
                  0.79,1.79,1.00,0.40,0.70,0.20,1.76,1.46,0.40,1.25,1.44,1.25,
                  1.25,1.39)

### Questao 03
x=152  # numero de sucessos
n=152+428  # tamanho da amostra


### Questao 04
trad = c(4.2, 4.7, 6.6, 7.0, 6.7, 4.5, 5.7, 6.0, 7.4, 4.9, 6.1, 5.2)
novo = c(4.1, 4.9, 6.2, 6.9, 6.8, 4.4, 5.7, 5.8, 6.9, 4.7, 6.0, 5.9)


### Questao 05
naofumantes = c(0.97, 0.72, 1.00, 0.81, 0.62,  1.32, 1.24, 0.99, 
                0.90, 0.74, 0.88, 1.16, 0.86, 0.85, 0.58, 0.57, 
                0.64, 0.98, 1.09, 0.92, 0.78, 1.24)
fumantes = c(0.48, 0.71, 0.98, 0.68, 1.18, 1.36, 0.78, 1.64)


### Questao 06
quimica = c(67.1, 56.4, 63.5, 60.0, 62.5, 59.6, 70.0, 67.9, 69.9, 74.1, 65.9, 58.0)
organica = c(82.7, 71.8, 70.0, 71.8, 78.0, 69.6, 75.8, 62.8, 72.4, 74.9)	


### Questao 07
x= c(89,60,43,40,25,22,21)
p=c(pexp(1:6, rate=1/3)-pexp(0:5, rate=1/3),1-pexp(6, rate=1/3));p
# Obs: No R, a media da distribuicao exponencial eh inversa ao parametro "rate"


### Questao 08
#Vetores das colunas, usado no R
a=c(15,25,8)
b=c(27,37,13)
c=c(50,12,9)
d=c(43,8,10)

data=data.frame(a,b,c,d, row.names=c("menos de 2000", "2000 a 5000", "5000 ou mais"))


### Questao 09
#Vetores das colunas, usado no R
pouca=c(51,58,48,26)
media=c(33,29,42,38)
alta=c(16,13,30,16)

data=data.frame(pouca,media,alta,row.names=c("I","II","III","IV"))


### Questao 10
cigarros = read.table("questao10.csv", head=TRUE, sep=";")
tab=data.frame(Tipo=c(rep("King",25),rep("Menth",25),rep("NonMenth",25)),
               Nico=c(cigarros$KING, cigarros$MENTH, cigarros$NonMENTH))


#### Questao 11
tab = read.table("questao11.csv", head=TRUE, sep=";")

red=tab$RED
orange=tab$ORANGE
yellow=tab$YELLOW
brown=tab$BROWN
blue=tab$BLUE
green=tab$GREEN

red=red[!is.na(red)]
orange=orange[!is.na(orange)]
yellow=yellow[!is.na(yellow)]
brown=brown[!is.na(brown)]
blue=blue[!is.na(blue)]
green=green[!is.na(green)]

data=data.frame(Cor=c(rep("red",length(red)),rep("orange",length(orange)),rep("yellow",length(yellow)),
                      rep("brown",length(brown)),rep("blue",length(blue)),rep("green",length(green))),
                Pesos=c(red,orange,yellow,brown,blue,green))
data


### Questao 12
tab = read.table("questao12.csv", head=TRUE, sep=";")
tab
