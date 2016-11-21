{
PROGRAM calculette

VAR

    nb1:reel
    nb2:reel
    choix:caractere

DEBUT

  
    
    REPETER

          ECRIRE "Programme calculette"
          ECRIRE "1:Addition"
          ECRIRE "2:Soustraction"
          ECRIRE "3:Multiplication"
          ECRIRE "4:Division"
          ECRIRE "0:Quitter"

          ECRIRE "Entrez votre choix"
          LIRE choix

          CAS choix PARMI
            CAS '1' : 
                     
                      ECRIRE"Entrez votre premier nombre :"
                      LIRE nb1
                      ECRIRE "Entrez votre second nombre :"
                      LIRE nb2
                      ECRIRE "Res Addition :"&(nb1+nb2)
                      

            CAS '2': 
                      ECRIRE"Entrez votre premier nombre :"
                      LIRE nb1
                      ECRIRE "Entrez votre second nombre :"
                      LIRE nb2
                      ECRIRE "Res Addition :"&(nb1-nb2)
            CAS '3' : 
                      ECRIRE"Entrez votre premier nombre :"
                      LIRE nb1
                      ECRIRE "Entrez votre second nombre :"
                      LIRE nb2
                      ECRIRE "Res Addition :"&(nb1*nb2)
            CAS '4': 
                      ECRIRE"Entrez votre premier nombre :"
                      LIRE nb1
                      ECRIRE "Entrez votre second nombre :"
                      LIRE nb2
                      
                      SI(nb2=0)ALORS
                        ECRIRE "Impossible nombre 2 doit etre sup a 0"
                      SINON
                        ECRIRE "Res Addition :"&(nb1/nb2)
                      FINSI
                
            CAS '0':  ECRIRE "bye"
            PARDEFAUT :  ECRIRE "choix incorrect"
          FINCASPARMI
          ECRIRE "Appuyez sur  ENTER pour continuer"   
    JUSQU'A (choix='0')
FIN  

}

program calculette;

uses crt;

var

    nb1:real;
    nb2:real;
    choix:char;

BEGIN

    clrscr;
    
    repeat
        begin

          writeln('Programme calculette');
          writeln('1:Addition');
          writeln('2:Soustraction');
          writeln('3:Multiplication');
          writeln('4:Division');
          writeln('0:Quitter');

          writeln('Entrez votre choix');
          readln(choix);

          case choix of
            '1' : 
                begin
                writeln('Entrez votre premier nombre :');
                readln(nb1);
                writeln('Entrez votre second nombre :');
                readln(nb2);
                writeln('Res Addition :',(nb1+nb2):1:2);
                end;

            '2': 
                begin
                writeln('Entrez votre premier nombre :');
                readln(nb1);
                writeln('Entrez votre second nombre :');
                readln(nb2);
                writeln('Res Soustraction :',(nb1-nb2):1:2);
                end;
            '3' : 
                begin
                writeln('Entrez votre premier nombre :');
                readln(nb1);
                writeln('Entrez votre second nombre :');
                readln(nb2);
                writeln('Res Multiplication :',(nb1*nb2):1:2);
                end;
            '4': 
                begin
                writeln('Entrez votre premier nombre :');
                readln(nb1);
                writeln('Entrez votre second nombre :');
                readln(nb2);
                if(nb2=0)then
                  writeln('Impossible nombre 2 doit etre sup a 0')
                else
                  writeln('Res Division :',(nb1/nb2):1:2);
                end;
          '0':  writeln('bye');
          else  writeln('choix incorrect');
          end;
          writeln('Appuyez sur ENTER pour continuer');
          readln;
          clrscr;
        end;

    until choix='0';






END.

