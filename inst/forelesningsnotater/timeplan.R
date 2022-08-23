library(htmlTable)
library(magrittr)
library(xaringan)
library(aweek)
# Timeplan
## Input
ukenr <- c("34",rep("36",2),rep("39",1),rep("42",1),rep("45",2))
datoer <- c(get_date(week = ukenr, day=4, year = 2022),
	    get_date(week = ukenr, day=5, year = 2022))[c(8,2,3,9,4,11,5,12,6,7,13)]
#get_date(week = ukenr, day=4, year = 2022)
#get_date(week = ukenr, day=5, year = 2022)
##[1] (1)"2022-08-25" (2)"2022-09-08" (3)"2022-09-08"  (6)"2022-09-29"  "2022-10-20" "2022-11-10" (4)"2022-09-09" (5)"2022-09-09" (7)"2022-09-30" 
##
#datoer


# [1] "2022-08-25"
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
"Introduksjon til mikroøkonomi. Overbikk over fulllkomen konkurranse", 
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
literatur <- c( "Hele kapittel 1. Kapittel 3.1-3.7, 3.9", 
"Kapittel 4.1-4.7, 4.9", 
"Kapittel 5.1-5.5, appendiks 5.1, 5.2", 
"Kapittel 6.1-6.3, 6.5-6.6", 
"Kapittel 7 (hele, inkulsiv appendiks)", 
"Kapittel 8.1-8.3, 8.7. Appendiks 8.1, 8.2", 
"Kapittel 3 og 9", 
"Kapittel 10 (hele)", 
"Kapittel 11.3-11.4",  
"Kap. 12.1-12.3",  
"Kap. 13.2 (frem til s. 385 'kollektive goder')")
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
#                                    2022                                   
#          juli                     august                  september       
#   ma ti on to fr lø sø      ma ti on to fr lø sø      ma ti on to fr lø sø
#26              1  2  3   31  1  2  3  4  5  6  7   35           1  2  3  4
#27  4  5  6  7  8  9 10   32  8  9 10 11 12 13 14   36  5  6  7  8  9 10 11
#28 11 12 13 14 15 16 17   33 15 16 17 18 19 20 21   37 12 13 14 15 16 17 18
#29 18 19 20 21 22 23 24   34 22 23 24 25 26 27 28   38 19 20 21 22 23 24 25
#30 25 26 27 28 29 30 31   35 29 30 31               39 26 27 28 29 30      
#                                                                           
#        oktober                   november                  desember       
#   ma ti on to fr lø sø      ma ti on to fr lø sø      ma ti on to fr lø sø
#39                 1  2   44     1  2  3  4  5  6   48           1  2  3  4
#40  3  4  5  6  7  8  9   45  7  8  9 10 11 12 13   49  5  6  7  8  9 10 11
#41 10 11 12 13 14 15 16   46 14 15 16 17 18 19 20   50 12 13 14 15 16 17 18
#42 17 18 19 20 21 22 23   47 21 22 23 24 25 26 27   51 19 20 21 22 23 24 25
#43 24 25 26 27 28 29 30   48 28 29 30               52 26 27 28 29 30 31   
#44 31                                                                      

#ukenr <- c("34",rep("36",2),rep("39",1),rep("42",1),rep("45",2))
View(df1)
