//Calcolare i giorni che mancano alla fine dell'anno da un giorno impostato da noi

// INSERISCO IL MESE IN CUI MI TROVO

String[] Mesi = {"Gennaio","Febbraio","Marzo","Aprile","Maggio","Giugno","Luglio","Agosto","Settembre","Ottobre","Novembre","Dicembre"};
int numero_mesi = 12;
int[] GiorniMesi = GiorniDeiMesi(numero_mesi);


//INSERIMENTO DELL'UTENTE DEL MESE IN CUI SI TROVAd
String MeseScelto = getString("Inserisci il mese in cui ti trovi");
int Giorno = getInt("Inserisci il giorno in cui ti trovi");
int GiorniMancanti = calcoloGiorniMancantiAllaFine(GiorniMesi,MeseScelto,Mesi,Giorno);


//stampa(GiorniMesi,Mesi);


int[] GiorniDeiMesi(int n){

    int[] GiorniMesi = new int[n];

    for(int i = 0 ; i < GiorniMesi.length ;i++){
    if((i%2)==0 || i == 7){
            GiorniMesi[i] = 31;
        }else{
            GiorniMesi[i] = 30;
        }
        if(i == 1) GiorniMesi[i] = 29;
    
    }

    return GiorniMesi;
}
void calcoloGiorniMancantiAllaFine(int[] GiorniDeiMesi,  String[] MeseScelto,String[] MesiGenerali, int GiornoScelto){
    int SommaMesiMancanti = 0;
    for(int i = 0; i < MesiGenerali.length;i++){
        if(MesiGenerali[i] == MeseScelto){
            GiorniDeiMesi[i] = GiorniDeiMesi[i] - GiornoScelto;
        }
        SommaMesiMancanti+=
    }
    for(int i = 0; i < GiorniDeiMesi.length;)
}
/*boolean controllomese(String MeseScelto, String[] Mesi){
    for(int i = 0 ; i < Mesi.length; i++)
        if(Mesi[i] == MeseScelto) return true;
    
    return false;
}*/
/*void stampa(int[] x,String[] M){
    for(int i = 0; i < x.length; i++){

        println(M[i]+" "+x[i]);
    }
}*/