MODULE Lab5_1SAC
    TASK PERS wobjdata Cuadrante_1:=[FALSE,TRUE,"",[[450,550,77],[0.707106781,0,0,-0.707106781]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata Cuadrante_2_Inclinado:=[FALSE,TRUE,"",[[450,-200,177],[0.482962913,-0.129409523,0.224143868,-0.836516304]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata BaseRobot:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    
    TASK PERS tooldata Soporte_Pen:=[TRUE,[[42.5,0,68.4],[0.707106781,0,0.707106781,0]],[0.1,[565.528,0,645.3],[1,0,0,0],0,0,0]];
    
    CONST robtarget Target_10:=[[100,100,200],[0,1,0,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10_2:=[[100,100,50],[0,1,0,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_11:=[[100,100,0],[0,1,0,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_12:=[[25,100,0],[0,1,0,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_13:=[[0,75,0],[0,1,0,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_14:=[[25,50,0],[0,1,0,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_15:=[[75,50,0],[0,1,0,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_16:=[[100,25,0],[0,1,0,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_17:=[[75,0,0],[0,1,0,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_18:=[[0,0,0],[0,1,0,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_18_2:=[[0,0,300],[0,1,0,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[110,0,200],[0,-0.382683434,0.923879532,0],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_2:=[[110,0,50],[0,-0.382683434,0.923879532,0],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_21:=[[110,0,0],[0,-0.382683434,0.923879532,0],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_22:=[[160,100,0],[0,-0.707106781,0.707106782,0],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_23:=[[210,0,0],[0,0.923879533,-0.382683431,0],[0,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_23_2:=[[210,0,200],[0,-0.382683433,0.923879532,0],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_24:=[[130,40,50],[0,1,0,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_24_2:=[[130,40,0],[0,1,0,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_25:=[[190,40,0],[0,1,0,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_25_2:=[[190,40,300],[0,1,0,0],[0,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[310,80,200],[0,-0.707106781,0.707106781,0],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30_2:=[[310,80,50],[0,-0.707106781,0.707106781,0],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_31:=[[310,80,0],[0,0.000000001,1,0],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_31_2:=[[270,100,0],[0,-0.382683432,0.923879533,0],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_32:=[[220,50,0],[0,0.707106782,-0.707106781,0],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_32_2:=[[270,0,0],[0,0.923879532,-0.382683433,0],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_33:=[[310,20,0],[0,1,-0.000000001,0],[0,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_33_2:=[[310,20,150],[0,-0.707106781,0.707106781,0],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Home:=[[544.277788865,0,608.493920339],[0.258819045,0,-0.965925826,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!***********************************************************
    !
    ! Módulo:  Lab5SAC
    !
    ! Descripción:
    !   Módulo de control de un brazo robot ABB IRB140 que realiza el dibujo de las 3 iniciales de los miembros del equipo
    !   en el cuadrantes 1 o  un plano inclinado sobre el cuadrante 2 según la entrada que se de mediante botones
    !
    ! Autor: Camilo
    !
    ! Versión: 1.0
    !
    !***********************************************************
    
    PROC main()
        IF DI_01 = 1 THEN
        S1;
        A1;
        C1;
        Homing;
        ENDIF 
        IF DI_02 = 1 THEN
        S2;
        A2;
        C2;
        Homing;            
        ENDIF
    ENDPROC
    PROC S1()
        MoveJ Target_10,v1000,z10,Soporte_Pen\WObj:=Cuadrante_1;
        MoveJ Target_10_2,v800,z10,Soporte_Pen\WObj:=Cuadrante_1;
        MoveL Target_11,v50,z0,Soporte_Pen\WObj:=Cuadrante_1;
        MoveL Target_12,v500,z5,Soporte_Pen\WObj:=Cuadrante_1;
        MoveC Target_13,Target_14,v500,z5,Soporte_Pen\WObj:=Cuadrante_1;
        MoveL Target_15,v500,z5,Soporte_Pen\WObj:=Cuadrante_1;
        MoveC Target_16,Target_17,v500,z5,Soporte_Pen\WObj:=Cuadrante_1;
        MoveL Target_18,v500,z5,Soporte_Pen\WObj:=Cuadrante_1;
        MoveJ Target_18_2,v1000,z10,Soporte_Pen\WObj:=Cuadrante_1;
    ENDPROC
    PROC S2()
        MoveJ Target_10,v1000,z10,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveJ Target_10_2,v800,z10,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveL Target_11,v50,z0,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveL Target_12,v500,z5,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveC Target_13,Target_14,v500,z5,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveL Target_15,v500,z5,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveC Target_16,Target_17,v500,z5,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveL Target_18,v500,z5,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveJ Target_18_2,v1000,z10,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
    ENDPROC
    PROC A1()
        MoveJ Target_20,v1000,z10,Soporte_Pen\WObj:=Cuadrante_1;
        MoveJ Target_20_2,v800,z10,Soporte_Pen\WObj:=Cuadrante_1;
        MoveL Target_21,v50,z0,Soporte_Pen\WObj:=Cuadrante_1;
        MoveL Target_22,v500,z5,Soporte_Pen\WObj:=Cuadrante_1;
        MoveL Target_23,v500,z5,Soporte_Pen\WObj:=Cuadrante_1;
        MoveJ Target_23_2,v1000,z10,Soporte_Pen\WObj:=Cuadrante_1;
        MoveJ Target_24,v800,z10,Soporte_Pen\WObj:=Cuadrante_1;
        MoveL Target_24_2,v50,z0,Soporte_Pen\WObj:=Cuadrante_1;
        MoveL Target_25,v500,z5,Soporte_Pen\WObj:=Cuadrante_1;
        MoveJ Target_25_2,v1000,z10,Soporte_Pen\WObj:=Cuadrante_1;
    ENDPROC
    PROC A2()
        MoveJ Target_20,v1000,z10,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveJ Target_20_2,v800,z10,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveL Target_21,v50,z0,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveL Target_22,v500,z5,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveL Target_23,v500,z5,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveJ Target_23_2,v1000,z10,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveJ Target_24,v800,z10,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveL Target_24_2,v50,z0,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveL Target_25,v500,z5,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveJ Target_25_2,v1000,z10,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
    ENDPROC
    PROC C1()
        MoveJ Target_30,v1000,z10,Soporte_Pen\WObj:=Cuadrante_1;
        MoveJ Target_30_2,v800,z10,Soporte_Pen\WObj:=Cuadrante_1;
        MoveL Target_31,v50,z0,Soporte_Pen\WObj:=Cuadrante_1;
        MoveC Target_31_2,Target_32,v500,z5,Soporte_Pen\WObj:=Cuadrante_1;
        MoveC Target_32_2,Target_33,v500,z5,Soporte_Pen\WObj:=Cuadrante_1;
        MoveJ Target_33_2,v1000,z10,Soporte_Pen\WObj:=Cuadrante_1;
    ENDPROC
    PROC C2()
        MoveJ Target_30,v1000,z10,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveJ Target_30_2,v800,z10,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveL Target_31,v50,z0,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveC Target_31_2,Target_32,v500,z5,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveC Target_32_2,Target_33,v500,z5,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
        MoveJ Target_33_2,v1000,z10,Soporte_Pen\WObj:=Cuadrante_2_Inclinado;
    ENDPROC
    PROC Homing()
        MoveJ Home,v1000,z10,Soporte_Pen\WObj:=BaseRobot;
    ENDPROC
ENDMODULE