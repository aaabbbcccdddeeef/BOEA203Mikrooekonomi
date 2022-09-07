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
tid <-c('09:15','12:15','12:15','09:15','12:15','09:15','12:15','09:15','12:15','12:15','09:15')
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
oppgaver <- c(
"1.4-1.8, 1.10,1.11, 3 (alle oppgavene)", 
"4.2, 4.4-4.8", 
"5 (alle oppgavene)", 
"6 (alle oppgavene)", 
"7 (alle oppgavene)", 
"8 (alle oppgavene)", 
"3 (alle oppgavene), 9.1-9.4", 
"10.1-10.4", 
"11.3-11.4", 
"12 (alle oppgavene)", 
"13.2,13.4-13.5")

undervfor <- c(
"Zoom", 
"HGSD2008", 
"HGSD2008", 
"HGSD Auditorium D", 
"", 
"", 
"", 
"",
"",  
"",  
""
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
		  Oppgaver=oppgaver,
		  Temaer=tema, 
		  Undervisningsform=undervfor, 
		  Start=tid,
         	  Timer=ant
)
df1
ukesem <- setdiff(seq(34,46),ukenr)
oppgaver

gang1 <- paste(oppgaver[1])
gang2 <- paste(oppgaver[2],oppgaver[3])
gang3 <- paste(oppgaver[4])
gang4 <- paste(oppgaver[5])
gang5 <- paste(oppgaver[6])
gang6 <- paste(oppgaver[7])
gang7 <- paste(oppgaver[8])
gang8 <- paste(oppgaver[9],oppgaver[10])
rom <- c(2008,"","","","","","","")
gang <- c(gang1,gang2,gang3,gang4,gang5,gang6,gang7,gang8)
delv <- del[c(-2,-3,-4)]
df2 <- data.frame(Uke_nr=ukesem,Dag='Torsdag',Tidspunkt='12:15-14:00',Del=delv,Oppgaver_bok=gang)


