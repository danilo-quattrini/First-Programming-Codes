//CONTARE IL NUMERO DELLE VOCALI E CONSONANTI 

String verso = "Nel mezzo del cammin di nostra vita, mi ritrovai in una selva oscura,...";
//CON toCharArray SI PUO' CONVERTIRE UNA STRINGA IN UNA SEQUENZA DI CHAR CHE CI E' PIU' SEMPLICE DA MANEGGIARE
char[] s = verso.charAt();
// CREAZIONI DI UNA SERIE DI VARIABILI ALLA QUALE ASSEGNO UN'UNICA VARIABILE
int vocali = spazi = consonanti = punteggiatura = 0;
for(int i = 0; i <s.length; i++)
    switch(s[i]){
        case 'a': case 'e': case 'i':case 'o': case 'u': vocali++; break;
        case ',': case ';': case '?': case '"': case ':': punteggiatura++; break;
        case ' ': spazi++; break;
        default: consonanti ++; 
    }
println("V: "+vocali+"P: "+punteggiatura+"S:"+spazi+"C:"+consonanti);