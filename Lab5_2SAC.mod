MODULE Lab5_2SAC
    TASK PERS tooldata Ventosa:=[TRUE,[[0,0,100],[1,0,0,0]],[1,[592.894,0,629.5],[1,0,0,0],0,0,0]];
    TASK PERS wobjdata BaseRobot:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata Estanteria:=[FALSE,TRUE,"",[[625,-350,127],[0,0,0,1]],[[0,0,0],[1,0,0,0]]];
    CONST robtarget Home:=[[592.894191624,0,629.5],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Caja_1_Approach:=[[375,100,127],[0.707106781,0,-0.707106781,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Caja_1:=[[327,100,127],[0.707106781,0,-0.707106781,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Caja_1_PickUp:=[[377,100,227],[0.382683432,0,-0.923879533,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Caja_2_Approach1:=[[229.289660912,370.710339031,327],[0.653281483,0.27059805,0.653281483,-0.27059805],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Caja_2_Approach2:=[[229.289660912,370.710339031,127],[0.653281483,0.27059805,0.653281483,-0.27059805],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Caja_2:=[[263.230786436,336.769213561,127],[0.653281483,0.27059805,0.653281483,-0.27059805],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Caja_2_PickUp:=[[229.289660912,370.710339031,227],[0.653281483,0.27059805,0.653281483,-0.27059805],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Caja_3_Approach:=[[500,500,227],[0,-0.258819045,0.965925826,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Caja_3:=[[500,500,179],[0,-0.258819045,0.965925826,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Caja_3_PickUp:=[[500,500,227],[0.066987298,-0.25,0.933012702,-0.25],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Pos1_Approach:=[[60,-150,350],[0.707106781,-0.707106781,0,0],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Pos1:=[[60,0,350],[0.707106781,-0.707106781,0,0],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Pos2_Approach:=[[165,-150,350],[0.707106781,-0.707106781,0,0],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Pos2:=[[165,0,350],[0.707106781,-0.707106781,0,0],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Pos3_Approach:=[[60,-150,200],[0.707106781,-0.707106781,0,0],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Pos3:=[[60,0,200],[0.707106781,-0.707106781,0,0],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Pos4_Approach:=[[165,-150,200],[0.707106781,-0.707106781,0,0],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Pos4:=[[165,0,200],[0.707106781,-0.707106781,0,0],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Pos5_Approach:=[[60,-150,50],[0.707106781,-0.707106781,0,0],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Pos5:=[[60,0,50],[0.707106781,-0.707106781,0,0],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Pos6_Approach:=[[165,-150,50],[0.707106781,-0.707106781,0,0],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Pos6:=[[165,0,50],[0.707106781,-0.707106781,0,0],[-1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!***********************************************************
    !
    ! Módulo:  Lab5_2SAC
    !
    ! Descripción:
    !   Módulo de control de un brazo robot ABB IRB140 que realiza el agarre y ubicación de unas piezas sobre una 
    !   estantería mediante el uso de botones y un selector
    !
    ! Autor: Camilo
    !
    ! Versión: 4.0
    !
    !***********************************************************
    
    PROC main()
        HomingSinDelay;
        WHILE 1=1 DO
            WHILE DI_01 = 0 AND DI_02 = 0 AND DI_03 = 0 DO 
            ENDWHILE
            IF DI_01 = 1 THEN
                PickUpCaja1;
            ELSEIF DI_02 = 1 THEN
                PickUpCaja2;
            ELSEIF DI_03 = 1 THEN
                PickUpCaja3;
            ENDIF
            WaitDI DI_10,1;
            IF DI_04 = 1 THEN
                InsertPos1;
            ELSEIF DI_05 = 1 THEN
                InsertPos2;
            ELSEIF DI_06 = 1 THEN
                InsertPos3;
            ELSEIF DI_07 = 1 THEN
                InsertPos4;
            ELSEIF DI_08 = 1 THEN
                InsertPos5;
            ELSEIF DI_09 = 1 THEN
                InsertPos6;
            ENDIF
            Homing;
        ENDWHILE
    ENDPROC

    
    PROC Homing()
        MoveJ Home,v1000,z10,Ventosa\WObj:=BaseRobot;
        WaitTime 1;
        SetDO DO_01,0;
    ENDPROC
    PROC HomingSinDelay()
        SetDO DO_01,0;
        MoveJ Home,v1000,z10,Ventosa\WObj:=BaseRobot;
    ENDPROC
    PROC PickUpCaja1()
        MoveJ Caja_1_Approach,v1000,z10,Ventosa\WObj:=BaseRobot;
        MoveL Caja_1,v50,z0,Ventosa\WObj:=BaseRobot;
        WaitTime 0.5;
        SetDO DO_01,1;
        WaitTime 0.5;
        MoveJ Caja_1_PickUp,v1000,z10,Ventosa\WObj:=BaseRobot;
    ENDPROC
    PROC PickUpCaja2()
        MoveJ Caja_2_Approach1,v1000,z10,Ventosa\WObj:=BaseRobot;
        MoveJ Caja_2_Approach2,v1000,z10,Ventosa\WObj:=BaseRobot;
        MoveL Caja_2,v50,z0,Ventosa\WObj:=BaseRobot;
        WaitTime 0.5;
        SetDO DO_01,1;
        WaitTime 0.5;
        MoveJ Caja_2_PickUp,v1000,z10,Ventosa\WObj:=BaseRobot;
    ENDPROC
    PROC PickUpCaja3()
        MoveJ Caja_3_Approach,v1000,z10,Ventosa\WObj:=BaseRobot;
        MoveL Caja_3,v50,z0,Ventosa\WObj:=BaseRobot;
        WaitTime 0.5;
        SetDO DO_01,1;
        WaitTime 0.5;
        MoveJ Caja_3_PickUp,v1000,z10,Ventosa\WObj:=BaseRobot;
    ENDPROC
    PROC InsertPos1()
        MoveJ Pos1_Approach,v1000,z10,Ventosa\WObj:=Estanteria;
        MoveL Pos1,v100,z0,Ventosa\WObj:=Estanteria;
        WaitTime 0.5;
        SetDO DO_01,0;
        WaitTime 0.5;
        MoveL Pos1_Approach,v100,z0,Ventosa\WObj:=Estanteria;
    ENDPROC
    PROC InsertPos2()
        MoveJ Pos2_Approach,v1000,z10,Ventosa\WObj:=Estanteria;
        MoveL Pos2,v100,z0,Ventosa\WObj:=Estanteria;
        WaitTime 0.5;
        SetDO DO_01,0;
        WaitTime 0.5;
        MoveL Pos2_Approach,v100,z0,Ventosa\WObj:=Estanteria;
    ENDPROC
    PROC InsertPos3()
        MoveJ Pos3_Approach,v1000,z10,Ventosa\WObj:=Estanteria;
        MoveL Pos3,v100,z0,Ventosa\WObj:=Estanteria;
        WaitTime 0.5;
        SetDO DO_01,0;
        WaitTime 0.5;
        MoveL Pos3_Approach,v100,z0,Ventosa\WObj:=Estanteria;
    ENDPROC
    PROC InsertPos4()
        MoveJ Pos4_Approach,v1000,z10,Ventosa\WObj:=Estanteria;
        MoveL Pos4,v100,z0,Ventosa\WObj:=Estanteria;
        WaitTime 0.5;
        SetDO DO_01,0;
        WaitTime 0.5;
        MoveL Pos4_Approach,v100,z0,Ventosa\WObj:=Estanteria;
    ENDPROC
    PROC InsertPos5()
        MoveJ Pos5_Approach,v1000,z10,Ventosa\WObj:=Estanteria;
        MoveL Pos5,v100,z0,Ventosa\WObj:=Estanteria;
        WaitTime 0.5;
        SetDO DO_01,0;
        WaitTime 0.5;
        MoveL Pos5_Approach,v100,z0,Ventosa\WObj:=Estanteria;
    ENDPROC
    PROC InsertPos6()
        MoveJ Pos6_Approach,v1000,z10,Ventosa\WObj:=Estanteria;
        MoveL Pos6,v100,z0,Ventosa\WObj:=Estanteria;
        WaitTime 0.5;
        SetDO DO_01,0;
        WaitTime 0.5;
        MoveL Pos6_Approach,v100,z0,Ventosa\WObj:=Estanteria;
    ENDPROC
ENDMODULE