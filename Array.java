//CREAZIONE DI UN'ARRAY CON 6 ELEMENTI
int[] a = {1,3,5,7,9};
int[] b = {0,2,4,6,8,10};
println("media = "+media(a));
println("Il nostro array e' ordianto? "+controllo_ordine(a));
println("Ci sono elementi ripetuti? "+elementi_ripetuti(a));
println("Il numero piu' piccolo "+min_array(a)+" Il numero piu' grande e' "+max_array(a));
//METODO PER LA RICERCA DI UN VALORE NEL VETTORE
println("Il numero si trova nella posizione "+ ricerca_ingenua(a));
println("");
//RICHIAMO IL METODO DELLA CONCATENAZIONE
concatenazione(a,b);

//METODO PER IL CALCOLO DELLA MEDIA DI UN VETTORE
double media(int[] a){
    double s = 0.0;
    for(int i = 0; i < a.length; i++)
        s = s + a[i];
    return s/a.length;
}
//METODO PER IL CONTROLLO DEGL'ARRAY SE SONO ORDINATI O NO
boolean controllo_ordine(int[] a){
    for(int i = 0; i < a.length - 1; i++)
        if(a[i] <= a[i+1]) return false;
       return true;
}

//METODO PER IL CONTROLLO ELEMENTI DELL'ARRY SE SONO RIPETUTI
boolean elementi_ripetuti(int[] a){
    for(int i = 0; i < a.length; i++)
        for(int j = i+1; j < a.length ; j++)
            if(a[i] == a[j]) return true;
            return false;
        
}

//ESERCIZIO N°2 TROVARE MINIMO E MASSIMO VALORE IN UN'ARRAY

//CREAZIONE DEI METODI DEL MINIMO E DEL MASSIMO

int min_array(int[] a){
    int m = a[0];
    for(int i = 0 ; i < a.length; i++)
        if(a[i] < m) m = a[i];
    return m;
}
int max_array(int[] a){
    int M = a[0];
    for(int i = 0 ; i < a.length; i++)
        if(a[i] > M) M = a[i];
    return M;
}

//ESERCIZIO N°3 CONCATENAZIONE DI DUE ARRAY

//CREAZIONE DEL METODO PER LA CONCATENAZIONE

void concatenazione (int[] a, int[] b){
    //CREAZIONE DI UN NUOVO ARRAY DOVE INSERISCO LA DIMENSIONE DEL PRIMO E DEL SECONDO ARRAY
    int dimesione_array_appoggio = a.length+b.length;
    int[] c = new int[dimesione_array_appoggio];
    for(int i = 0; i < a.length; i++)c[i] = a[i];
    for(int i = 0; i < b.length; i++)c[i+a.length] = b[i];
    //STAMPO DEL VETTORE CONCATENATO
    print("VETTORE CONCATENATO");
    for(int i = 0; i < c.length; i++) print(" "+c[i]);

}

//METODI PER L'ORDINAMENTO DI UN VETTORE
// SONO 3 I PRINCIPALI METODI PER L'ORDINAMENTO DI UN VETTORE
// 1) BUBBLE SORT
// 2) INSERTION SORT

//RICERCA DI UN VALORE EVOLUZIONE
int ricerca_evoluzione(int[] a){
    //ASSEGNAZZIONE DI UNA VARIABILE CHE UTILIZZIAMO PER LA RICERCA DEL VALORE
    int valore_da_cercare = getInt("Inserisci il valore che vuoi ricercare");
    
    int i = 0;
    //FACCIO UN CICLO WHILE
    while(i < a.length && a[i] < x) i++;

}
//RICERCA DI UN VALORE NEL VETTORE INGENUO
int ricerca_ingenua(int[] a){
int valore_da_cercare = getInt("Inserisci il valore che vuoi ricercare");
for(int i = 0; i < a.length; i++){
    if(a[i]==valore_da_cercare){
        return i;
    }
    
}
return -1;
}
/*
boolean lessicograficamente(int[] a, int[] b){
    int m = a.length;
    int n = b.length;
    boolean risultato = false;
    if(m <= n){
        int[] c = new int[m];
        c[n] = b[n];
        for(int i; i < n; i++){
            if(a[i] <= b[i]);
        }
    }
    return risultato;
}*/