#rm(list=ls())
library(htmlTable)
library(magrittr)
library(xaringan)
library(aweek)
# Timeplan
## Input
ukenr <- c("34",rep("36",3),rep("39",2),rep("42",2),rep("45",3))
datoer <- get_date(week = ukenr, day=4, year = 2022)
antall <- length(ukenr)
forenr <- seq(1,antall)
antall <- length(ukenr)
timer <- rep("3",antall)
star <- rep("?",antall)
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
"Fre/Tor", 
"Ons/Tor", 
"Ons/Tor", 
"Fre", 
"Ons/Tor", 
"Fre", 
"Tor/Ons", 
"Fre", 
"Tor/Ons",  
"Tor/Ons",  
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
" "
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

oppgaver_oppg <- c(
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
"",  
"",  
""
)
length(oppgaver_oppg)

oppgaver_bok <- c(
"1.1, 1.2, 1.3 1.5, 1.6, 1.9, 1.12, 1.14", 
"3.2, 3.3, 3.5, 3.6, 3.7, 3.8", 
"4.1, 4.2, 4.3, 4.4, 4.5, 4.6, 4.8", 
"5.1, 5.2, 5.3, 5.4, 5.5, 5.6, 5.7, 5.8, 5.9, 5.10",
"6.2, 6.3, 6.4, 6.5, 6.6", 
"7.1, 7.2, 7.3, 7.4, 7.5, 7.6, 7.7, 7.8",
"8.1, 8.2, 8.3, 8.4, 8.5, 8.6, 8.7",
"9.1, 9.2, 9.3, 9.4",
"10.1, 10.2, 10.3, 10.4",
"11.1 (d,feil i fasit på grafisk illustrasjon), 11.2, 11.3, 11.4",
"12.1, (12.2, om du har tid)",
"13.1, 13.2, 13,3, 13.4, og 13.5",
"14.1, 14.2",
"15.1, 15.2")
length(oppgaver_bok)

# Tabeller #
## output
df1 <- data.frame(
		  Forelesning=forenr, 
		  Dag=dag,
#		  Datoer=datoer, 
	          Modul=del,
		  Uke=ukenr,
#		  Literatur=literatur,
		  Temaer=tema,
		  Undervisningsform=undervfor,
		  Start=star,
		  Timer=timer
)
View(df1)
#timenavn <- names(df1)
#df2 <- data.frame(Kapittel=c(1,3:15),
#		 Oppgaver=oppgaver_bok)
#



#torsdag 25. og fredag 26. august. Samlet åtte timer forelesning? Hvordan ønsker du å fordele disse timene? 08:15 – 10:00 + 12:15 – 14:00 begge dager? Litt heftig med fire timer sammenhengende kanskje? Med 2 + 2 hver dag kan de jo få litt tid mellom øktene til å jobbe med oppgaver du gir dem.
#torsdag 22. og fredag 23. september. Samme fordeling som bolken over.
#torsdag 20. og fredag 21. oktober. Samme fordeling som bolken over.

#          juli                     august                  september       
#   ma ti on to fr lø sø      ma ti on to fr lø sø      ma ti on to fr lø sø
#26              1  2  3   31  1  2  3  4  5  6  7   35           1  2  3  4
#27  4  5  6  7  8  9 10   32  8  9 10 11 12 13 14   36  5  6  7  8  9 10 11
#28 11 12 13 14 15 16 17   33 15 16 17 *18 19* 20 21   37 12 13 14 15 16 17 18
#29 18 19 20 21 22 23 24   34 22 23 *24 25 26* 27 28   38 19 20 *21 22 23* 24 25
#30 25 26 27 28 29 30 31   35 29 30 31               39 26 27 28 29 30      
#                                                                           
#        oktober                   november                  desember       
#   ma ti on to fr lø sø      ma ti on to fr lø sø      ma ti on to fr lø sø
#39                 1  2   44     1  2  3  4  5  6   48           1  2  3  4
#40  3  4  5  6  7  8  9   45  7  8  *9 10 11 12* 13   49  5  6  7  8  9 10 11
#41 10 11 12 13 14 15 16   46 14 15 16 17 18 19 20   50 12 13 14 15 16 17 18
#42 17 18 *19 20 21* 22 23   47 21 22 23 24 25 26 27   51 19 20 21 22 23 24 25
#43 24 25 26 27 28 29 30   48 28 29 30               52 26 27 28 29 30 31   
#44 31                                                                      

#Forelesninger: Du tenkte å starte med digital økt? Kan det passe å ta denne fredag den 26.8 klokken 10:15 (og hvor lenge?). Supert om du får kommet litt i gang med pensum på denne så Akbar får startet med noen oppgaver torsdagen etter (den 1.9).
#
# 
#
#Så har du samlinger:
#    								          34
#torsdag  8.9 klokken 12:15 – 16:00 og fredag 9.9 klokken 10:15 – 14:00 - 36
#torsdag  29.9 klokken 12:15 – 16:00 og fredag 30.9 klokken 10:15 – 14:00 - 39
#torsdag  20.10 klokken 12:15 – 16:00 og fredag 21.10 klokken 10:15 – 14:00 - 42
#torsdag  10.11 klokken 12:15 – 16:00 og fredag 11.11 klokken 10:15 – 14:00 - 45
#Akbar har oppgaveseminar de ukene du ikke er tilstede (torsdager fra 10:15).
