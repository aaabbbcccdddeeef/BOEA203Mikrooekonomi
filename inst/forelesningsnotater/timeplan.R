library(htmlTable)
library(magrittr)
library(xaringan)
library(aweek)
# Timeplan
## Input
ukenr <- c("34",rep("36",2),rep("39",1),rep("42",1),rep("45",1))
datoer <- c(get_date(week = ukenr, day=4, year = 2022),get_date(week = ukenr, day=5, year = 2022)[-1])
ukenr2 <- c("34",rep("36",3),rep("39",2),rep("42",2),rep("45",3))
forenr <-c(1,2,2,3,4,5,6,7,8,8,9)
dag <-c('Fre','Tor','Tor','Fre','Tor','Fre','Tor','Fre','Tor','Tor','Fre')
tid <-c('09:00','13:00','13:00','09:00','13:00','09:00','13:00','09:00','13:00','13:00','09:00')
ant <-c('3/4','3/4','3/4','3/4','3/4','3/4','3/4','3/4','3/4','3/4','3/4')
del <-c('1','2','2','2','3','3','4','4','5','5','5')


del <- c(
"1. Introduksjon",
"2. Produsentteori: ",
"",
"",
"3. Konsumentteori: ", 
"",
"4. Markedsteori:",
"",
"5. Markedsteori og andre emner:",
"",
""
)
length(del)

tema <- c(
"Introduksjon til mikroøkonomi. Overbikk over fulllkomen konkurranse, Matterepetisjon", 
"Produksjon", 
"Inntekts- og kostnadsteori", 
"Produsentens økonomiske adferd i gode- og arbeidsmarkedet", 
"Konsumentens valg", 
"Konsumentens økonomiske adferd i gode- og arbeidsmarkedet", 
"Fullkommen konkurranse", 
"Ufulkommen konkurranse: monopol", 
"Ufulkommen konkurranse: kartel, duopol, oligopol og monopolistisk konkurranse", 
"Ufulkommen konkurranse: prisdiskriminering",  
"Effektivitet, velferd og markedsvikt"  
)
length(tema)

rom <- c(
"", 
"", 
"", 
"", 
"", 
"", 
"", 
"",  
"",  
"",  
""
)
length(rom)
dag <- c(
"Fre", 
"Tor", 
"Tor", 
"Fre", 
"Tor", 
"Fre", 
"Tor", 
"Fre", 
"Tor",  
"Tor",  
"Fre"
)
length(dag)

literatur <- c(
"Kap. 1-3", 
"Kap. 4", 
"Kap. 5", 
"Kap. 6", 
"Kap. 7", 
"Kap. 8", 
"Kap. 9", 
"Kap. 10", 
"Kap. 11",  
"Kap. 12, 15.2, 18",  
"Kap. 13"
)
length(literatur)

undervfor <- c(
"Zoom", 
"Auditorium ?", 
"Auditorium ?", 
"Auditorium ?", 
"Auditorium ?", 
"Auditorium ?", 
"Auditorium ?", 
"Auditorium ?",
"Auditorium ?",  
"Auditorium ?",  
"Auditorium ?"
)
length(undervfor)

# Tabeller #
## output
df1 <- data.frame(
		  Forelesning=forenr, 
		  Dag=dag,
		  Datoer=datoer, 
	          Modul=del,
		  Uke=ukenr2,
		  Literatur=literatur,
		  Temaer=tema, 
		  Undervisningsform=undervfor, 
		  Start=tid,
         	  Timer=ant
)
df1
View(df1)
