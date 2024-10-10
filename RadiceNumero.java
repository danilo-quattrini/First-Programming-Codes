double a = getDouble("Inserisci il valore per la quale ne facciamo la radice");
double valore_compreso = getDouble("Inserisci il valore");
double limite_radice = 0.0000001;
double differenza = a;
double frazionaria;


while(differenza >= limite_radice){   
    frazionaria = (0.5)*((a / valore_compreso)+ valore_compreso);
    if(frazionaria == a){ 
        println("la radice di "+a+" è "+frazionaria);
    }else{
        differenza = differenza - frazionaria;
        valore_compreso = frazionaria;
        println(""+differenza);
        println(""+valore_compreso);
    }
}
//println("la radice di "+a+" è "+ frazionaria);