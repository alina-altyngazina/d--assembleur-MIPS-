#include "deasm.h"
#include <stdio.h>

/*fct getRegName resoit le num(numero du registre)et name(où stockee le nom du registre).
    On renvoie 1 si num depasse la capacite de 32(de regName), sinon 0
 */
unsigned getRegName(unsigned num,char* name){
    if(num>32){
        return 1;
    }
    char regName[32][4]={"$0\0","$at\0","$v0\0","$v1\0","$a0\0","$a1\0","$a2\0","$a3\0",
                          "$t0\0","$t1\0","$t2\0","$t3\0","$t4\0","$t5\0","$t6\0","$t7\0",
                          "$s0\0","$s1\0","$s2\0","$s3\0","$s4\0","$s5\0","$s6\0","$s7\0",
                          "$t8\0","$t9\0","$k0\0","$k1\0","$gp\0","$sp\0","$fp\0","$ra\0"};
    for(int i=0;i<sizeof(regName[num])/sizeof(char);i++){
        name[i]=regName[num][i];
    }
    for(int i=num+sizeof(regName[num])/sizeof(char);i<sizeof(name)/sizeof(char);i++){
         name[i]='\0';
    }
    return 0;
}

/*
    Fonctions getRs,getRd et getRt:
     -prenent codeInst(le code en hexa des instruction a decodees);
     -recuperent les valeurs rs,rt,rd et les sauvegardes dans numRs, numRt, numRd:
        on applique un decalage a droite(de 21,16 et 11) + un masque ( and 0x000001F)
     -appelent la fonction getRegName qui ecrit le nom du registre dans name
     -et retournent ce que l'appele de getRegName retourne
*/
unsigned getRs(unsigned codeInst,unsigned *numRs, char* name){
    unsigned a=((codeInst>>21)&0x000001F);
    *numRs=a;
    return getRegName(a,name);
}
unsigned getRt(unsigned codeInst,unsigned *numRt, char* name){
    unsigned a=((codeInst>>16)&0x000001F);
    *numRt=a;
    return getRegName(a,name);;
}

unsigned getRd(unsigned codeInst,unsigned *numRd, char* name){
    unsigned a=((codeInst>>11)&0x000001F);
    *numRd=a;
    return getRegName(a,name);;
}
   
/*
Fonction utoha resoit un nombre non signe et ecrit dans chaine la valeur hexa de ce nombre
*/
void utoha(unsigned nbr,char *chaine){
    unsigned a;
    int k=2,n=0;
    chaine[0]='0';
    chaine[1]='x';
    for(int i=0;i<=7; i++){
        a=nbr>>28;
        if(a>9){
            chaine[k++]=(char)(a+'A')-10;            
        }
        else if(a!=0){
                chaine[k++]=(char)(a+'0');
                n=1;
            }else if(a==0 && n==1) chaine[k++]=(char)(a+'0');
        nbr=nbr<<4;
    }
    chaine[k]='\0';
}

/*
Fonction itoa resoit un nombre signe (int) et ecrit dans chaine la valeur decimale de ce nombre
*/
void itoa(int val,char *chaine){
    char tab[16]="0123456789ABCDEF";
    int pos=0;
    int nombre1;
    nombre1=val;
    int a=0,b=0,c=0,d=0;
    do{
        pos=pos+1;     
        val=val/10 ;

    }while(val!=0);
    chaine[pos]='\0';
    
    a=nombre1 % 10;
    if(a<0) {
        chaine[0]='-';
        c=1;
        chaine[pos+1]='\0';
    }
    do{
        pos=pos-1;
        b=a<0 ? 10-(a+10) : a;
        d=tab[b];
        chaine[pos+c]=d;
        nombre1=nombre1 / 10;
        a=nombre1-((int)(nombre1*0.1)*10);
    }while(nombre1!=0);
}

/*
Fonctions getImmS16, getImmS16Hexa:
    -prenent codeInst(le code en hexa des instruction a decodees);
    -recuperent la valeur ImmS16 la sauvegardes dans imms:
        on applique un decalage a droite(de 15) + un masque ( or 0xFFFF0000) si le premier bit de immS16 et 1 sinon si c'est 0 on rajoute un masque ( and 0x0000FFFF)
    -appelent la fonction itoa qui ecrit le contenu dans chaine
*/
void getImmS16(unsigned codeInst,int *imms,char* chaine){
    if(((codeInst&0x00008000)>>15)==1) *imms=(codeInst|0xFFFF0000);
    else if(((codeInst&0x00008000)>>15)==0) *imms=(codeInst|0xFFFF0000)&0x0000FFFF;
    itoa(*imms,chaine);
}

void getImmS16Hexa(unsigned codeInst,int *imms,char* chaine){
    if(((codeInst&0x00008000)>>15)==1) *imms=(codeInst|0xFFFF0000);
    else if(((codeInst&0x00008000)>>15)==0) *imms=(codeInst|0xFFFF0000)&0x0000FFFF;
    utoha(*imms,chaine);
}

/*
Fonction getImmNs16:
    -prend codeInst(le code en hexa des instruction a decodees);
    -recupere la valeur ImmNs16 la sauvegardes dans immNs:
        on applique un masque ( and 0x0000FFFF) 
    -appele la fonction utoha qui ecrit le contenu dans chaine
*/
void getImmNs16(unsigned codeInst,unsigned *immNs,char* chaine){
    *immNs=(codeInst&0x0000FFFF);
    utoha(*immNs,chaine);
}

/*
Fonction getImmNs26:
    -prend codeInst(le code en hexa des instruction a decodees);
    -recupere la valeur ImmNs26 la sauvegardes dans immNs:
        on applique un masque ( and 0x03FFFFFF)+ decalage << de 2; 
    -appele la fonction utoha qui ecrit le contenu dans chaine
*/
void getImmNs26(unsigned codeInst,unsigned *immNs,char* chaine){
    *immNs=(codeInst&0x03FFFFFF)<<2;
    utoha(*immNs,chaine);
}

/*
Fonction getShamt:
    -prend codeInst(le code en hexa des instruction a decodees);
    -recupere la valeur Shamt la sauvegardes dans shamt:
        on applique un decalage >> de 6 + un masque ( and 0x0000001F); 
    -appele la fonction itoa qui ecrit le contenu dans chaine
*/
void getShamt(unsigned codeInst,unsigned *shamt,char *chaine){
    unsigned a=(codeInst>>6)&0x0000001F;
    *shamt=a;
    itoa(a,chaine);
}

/*
Fonction getInstructionName prend codeInst(le code en hexa des instruction a decodees), Co(les premiers bits de CodeInst), 
Nf(les derniers bits de CodeInst);
    -pour avoir Co:on fait masque (and 0xFC000000) + decalage >> de 26;
    -           Nf:on fait masque (and 0x8000003F)
    -on ecrit le contenu dans chaine( de Co si >0 sinon de Nf si >=0)
*/
unsigned getInstructionName(unsigned codeInst,unsigned *Co,int *Nf,char *name){
    char nomImm[64][8]={"?\0","?\0","j \0","jal \0","beq \0","bne \0","blez \0","bgtz \0",
                            "addi \0","addiu \0","slti \0","sltiu \0","andi \0","ori \0","xori \0","lui \0","mfc0 \0","?\0","?\0",
                            "?\0","?\0","?\0","?\0","?\0","?\0","?\0","?\0","?\0",
                            "?\0","?\0","?\0","?\0","lb \0","?\0","?\0","lw \0","lbu \0",
                            "lhu \0","?\0","?\0","sb \0","sh \0","?\0","sw \0","?\0","?\0","?\0","?\0",
                            "?\0","?\0","?\0","?\0","?\0","?\0","?\0","?\0","?\0","?\0","?\0","?\0","?\0","?\0","?\0",
                            "?\0"};

    char nom3reg[64][8]={"sll \0","?\0","srl \0","sra \0","sllv \0","?\0","srlv \0","srav \0",
                            "jr \0","jalr \0","movz \0","movn \0","syscall\0","?\0","?\0","?\0","mfhi \0","mthi \0",
                            "mflo \0","mtlo \0","?\0","?\0","?\0","?\0","mult \0","multu \0","div \0",
                            "divu \0","?\0","?\0","?\0","?\0","add \0","addu \0","sub \0","subu \0",
                            "and \0","or \0","xor \0","nor \0","?\0","?\0","slt \0","sltu \0","?\0","?\0","?\0",
                            "?\0","?\0","?\0","?\0","?\0","?\0","?\0","?\0","?\0","?\0","?\0","?\0","?\0","?\0","?\0",
                            "?\0","?\0"};

    *Co=(codeInst&0xFC000000)>>26;
    *Nf=codeInst&0x8000003F;
    int i=0;
    do{
        if(*Co>0){
            name[i]=nomImm[*Co][i];
            *Nf=((codeInst|0xFFFFFFC0)&0x0000003F)>>5;
            *Nf=-*Nf;
        }
        else if(*Nf>=0){
            name[i]=nom3reg[*Nf][i];
        }
        i++;
    }while(i<8);    
    return 0;
}

/*
strCpy recopie le contenu de src dans dest;
*/
void strCpy(char *src,char *dest){
    int i=0;
    do{
        dest[i]=src[i];
        if(src[i]=='\0') break;
    }while(++i);
}

/*
strAdd rajoute le contenu de src a la fin de dest;
*/
void strAdd(char *src,char *dest){
    int i=0,k=0;
    do{
        if(dest[i]=='\0' && k==0){
            k=i;
        }
        if(k>0) dest[i]=src[i-k];
        if(dest[i]=='\0' && k!=0) break;
    }while(++i);
}
/*
Fonction decodeInstruction codeInst(le code en hexa des instruction a decodees)
    Decode le contenu et ecrit dans inst:
        -on fait l'appel aux fonctions precedents pour obtenir le nom d'instruction, rs,rt etc.
        -on compare chaques instructions d'apres Co et Nf.
*/
unsigned decodeInstruction(unsigned codeInst,char *inst){
    unsigned Co;
    int Nf;
    char tmp[]="#Instruction inconnue";
    char rs[16],rt[16],rd[16],s16[16],s16h[16],Ns16[16],Ns26[16],shm[16];
    unsigned imms,immNs,shamt,numRs,numRt,numRd;
    getInstructionName(codeInst,&Co,&Nf,inst);
    getRs(codeInst,&numRs,rs);
    getRt(codeInst,&numRt,rt);
    getRd(codeInst,&numRd,rd);
    getImmS16(codeInst,&imms,s16);
    getImmS16Hexa(codeInst,&imms,s16h);
    getImmNs16(codeInst,&immNs,Ns16);
    getImmNs26(codeInst,&imms,Ns26);
    getShamt(codeInst,&shamt,shm);
    
    if(Co==3){
        strAdd(Ns26,inst);
    }
    else if(Nf==8 || Nf==11 || Nf==13){
        strAdd(rs,inst);
    }
    else if(Co==4 || Co==5){
        strAdd(rs,inst);
        strAdd(",\0",inst);
        strAdd(rt,inst);
        strAdd(",\0",inst);
        strAdd(s16,inst);
    }
    else if(Co==7 || Co==6 || Co==1){
        strAdd(rs,inst);
        strAdd(",\0",inst);
        strAdd(s16,inst);
    }
    else if(Co==8 
             || Co==0xA){
        strAdd(rt,inst);
        strAdd(",\0",inst);
        strAdd(rs,inst);
        strAdd(",\0",inst);
        strAdd(s16,inst);
    }
    else if(Co==9
            || Co==0xB){
        strAdd(rt,inst);
        strAdd(",\0",inst);
        strAdd(rs,inst);
        strAdd(",\0",inst);
        strAdd(s16h,inst);
    }
    else if(Co==0xD || Co==0xE || Co==0xc){
        strAdd(rt,inst);
        strAdd(",\0",inst);
        strAdd(rs,inst);
        strAdd(",\0",inst);
        strAdd(Ns16,inst);
    }
    else if(Co==0xF){
        strAdd(rt,inst);
        strAdd(",\0",inst);
        strAdd(s16h,inst);
    }
    else if(Co==0x23 || Co==0x20 || Co==0x24 || Co==0x2B || Co==0x28){
        strAdd(rt,inst);
        strAdd(",\0",inst);
        strAdd(s16,inst);
        strAdd("(\0",inst);
        strAdd(rs,inst);
        strAdd(")\0",inst);
    }
    else if((Co==0 && Nf==0) || Nf==2 || Nf==3){
        strAdd(rd,inst);
        strAdd(",\0",inst);
        strAdd(rt,inst);
        strAdd(",\0",inst);
        strAdd(shm,inst);
    }
    else if(Nf==0x10 || Nf==0x12){
        strAdd(rd,inst);
    }
    else if(Nf==0x18 || Nf==0x1A || Nf==0x1B || Nf==0x19){
        strAdd(rs,inst);
        strAdd(",\0",inst);
        strAdd(rt,inst);
    }
    else if((Nf>=0x20 && Nf<=0x27) || Nf==0x2A || Nf==0x2B || Nf==0xA || Nf==0xB){
        strAdd(rd,inst);
        strAdd(",\0",inst);
        strAdd(rs,inst);
        strAdd(",\0",inst);
        strAdd(rt,inst);
    }
    else if(Nf!=0xC){
            strCpy(tmp,inst);
            return 1;
    }

    return 0;
}

/*
Fonction decodePgm decode les instructions dans Pgm( avec la fct decodeInstruction )
    et stock dans un tableau tmp1
    Apres on copie/rajoute le contenu de tmp1 dans decode qui va contenir les instruction decodees;
*/
void decodePgm(unsigned *pgm,unsigned taille,char *decode){
    char tmp1[100];
    decodeInstruction(pgm[0],tmp1);
    strCpy(tmp1,decode);
    strAdd("\n",decode);
    for(int i=1;i<taille;i++){
        decodeInstruction(pgm[i],tmp1);
        strAdd(tmp1,decode);
        strAdd("\n",decode);
    }
}
