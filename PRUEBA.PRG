#define MAX_X MAXCOL()
#define MAX_Y MAXROW()

EXTERNAL COS
EXTERNAL TAN
EXTERNAL COT
EXTERNAL SIN
CLEAR

PRIVATE oldvideo := SCREEN()
PRIVATE color

//SETMODE( 16 )                       // Conmuta a EGA de 16 colores
                                           // 640 x 350
PRIVATE COLOR2 := 1
PRIVATE iniX := 5
PRIVATE iniY := 10
PRIVATE finX := 20
PRIVATE finY := 70
PRIVATE b := (finY-iniY)
PRIVATE a := (finX-iniX)
PRIVATE pendiente := b/a

PRIVATE X := iniX
PRIVATE Y := pendiente*X+iniY
WHILE X <= X+ABS(B)
        @X,Y SAY CHR(219)
        //DOT( Y, X, COLOR2++ )               // activa pixel de color azul
        color = DOT(Y,X)             // consigue el color
        Y := pendiente*X
        X++
END
wait ""
SCREEN( oldvideo )
RETURN


