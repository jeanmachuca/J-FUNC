PRIVATE FORMA := WTOARRAY(EXPANDIR("01234567 ",1,"."),".")


FIGURA(50,100,{0,1,2,3,4,5,6,7})

RETURN

FUNCTION FIGURA
PARAMETERS corY, corX, CAD

IF EMPTY(corX) .OR. EMPTY(corY) .OR. EMPTY(CAD)
? "Error faltan parametros"
ENDIF

PRIVATE i := 1
PRIVATE x1 := corY       // Variables alternadas
PRIVATE y1 := corX
PRIVATE n := LEN(CAD)

SETVIDEO(16)

FOR i = 1 TO (n-2)
          DOT(x1,y1,CAD[n-1])

          pnew := DEV_POS(x1,y1,TYPE_TO(CAD[i],0))

          x1 := pnew[1]
          y1 := pnew[2]

          IF (x1 = corY .AND. y1 = corX)
                EXIT
          ENDIF
NEXT
WAIT""
SETVIDEO(3)
RETURN


FUNCTION DEV_POS
PARAMETERS A,B,C

PRIVATE POS := {A,B}

        DO CASE
                 CASE C = 0
                 POS := {a-1,b}
        
                 CASE C = 1
                 POS := {a-1,b+1}
        
                 CASE C = 2
                 POS := {a,b+1}
        
                 CASE C = 3
                 POS := {a+1,b+1}
        
                 CASE C = 4
                 POS := {a+1,b}
        
                 CASE C = 5
                 POS := {a+1,b-1}
        
                 CASE C = 6
                 POS := {a,b-1}
        
                 CASE C = 7
                 POS := {a-1,b-1}
        
        ENDCASE
RETURN POS
