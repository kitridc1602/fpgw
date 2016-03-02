create or replace PROCEDURE         "PROC_USER_INSERT" 
(
  VAR_WORK_ID   IN  VARCHAR2,
  VAR_WORK_USER IN  VARCHAR2,
  VAR_USER_CODE OUT VARCHAR2
)
AS
BEGIN

        VAR_USER_CODE := '';
        
        SELECT  SUBSTR('00000' || TO_CHAR(NVL(MAX(UM_CODE), 0) + 1), -5)
        INTO    VAR_USER_CODE
        FROM    USER_MAIN 
        WHERE   (UM_CODE < '90000')
        ;       

        
        INSERT INTO USER_MAIN
          (
              UM_CODE,
              UM_NAME,          UM_ID,                UM_PWD,
              UM_DEPART_CD,     UM_POSITION_BCODE,    UM_POSITION,      UM_LEVEL,
              UM_TEL1,          UM_TEL2,              UM_TEL3,          UM_INLINE,
              UM_HIRE_Y,        UM_HIRE_M,            UM_HIRE_D,
              UM_VACATION_CNT,  UM_USE_FLAG,
              UM_GET_USER,      UM_GET_DATE,          UM_EDIT_USER,     UM_EDIT_DATE
          )
        SELECT  VAR_USER_CODE,
                TU_NAME,          TU_ID,              TU_PWD,
                TU_DEPART_CD,     TU_POSITION_BCODE,  TU_POSITION,    TU_LEVEL,
                TU_CO_TEL1,       TU_CO_TEL2,         TU_CO_TEL3,     TU_INLINE,
                TU_HIRE_Y,        TU_HIRE_M,          TU_HIRE_D,
                TU_VACATION_CNT,  TU_USE_FLAG,
                VAR_WORK_USER,    SYSDATE,            VAR_WORK_USER,  SYSDATE
        FROM    TEMP_USER
        WHERE   (TU_WORK_ID = VAR_WORK_ID)
        AND     (TU_WORK_USER = VAR_WORK_USER)
        ;

        
        INSERT INTO USER_DETAIL
          (
            UD_UM_CODE,
            UD_GENDER,
            UD_BIRTH_Y,       UD_BIRTH_M,       UD_BIRTH_D,       UD_CALENDER_KIND,
            UD_TEL1,          UD_TEL2,          UD_TEL3,
            UD_MOBILE1,       UD_MOBILE2,       UD_MOBILE3,
            UD_ZIP1,          UD_ZIP2,          UD_ADDR1,         UD_ADDR2,
            UD_HOMEPAGE,
            UD_WEDDING_FLAG,  UD_WEDDING_Y,     UD_WEDDING_M,     UD_WEDDING_D,
            UD_HOBBY,         UD_RESUME,        UD_INTRODUCTION,  UD_MEMO,
            UD_GET_USER,      UD_GET_DATE,      UD_EDIT_USER,     UD_EDIT_DATE
          )
        SELECT  VAR_USER_CODE,  
                TU_GENDER,
                TU_BIRTH_Y,       TU_BIRTH_M,     TU_BIRTH_D,       TU_CALENDER_KIND,
                TU_TEL1,          TU_TEL2,        TU_TEL3,
                TU_MOBILE1,       TU_MOBILE2,     TU_MOBILE3,
                TU_ZIP1,          TU_ZIP2,        TU_ADDR1,         TU_ADDR2,
                TU_HOMEPAGE,
                TU_WEDDING_FLAG,  TU_WEDDING_Y,   TU_WEDDING_M,     TU_WEDDING_D,
                TU_HOBBY,         TU_RESUME,      TU_INTRODUCTION,  TU_MEMO,        
                VAR_WORK_USER,    SYSDATE,        VAR_WORK_USER,    SYSDATE        
        FROM    TEMP_USER
        WHERE   (TU_WORK_ID = VAR_WORK_ID)
        AND     (TU_WORK_USER = VAR_WORK_USER)  
        ;
        
        
        INSERT INTO USER_IMAGE
          (
            UI_UM_CODE,
            UI_FACE_NAME,     UI_FACE_PATH,
            UI_SIGN_NAME,     UI_SIGN_PATH,
            UI_GET_USER,      UI_GET_DATE
          )
        SELECT  VAR_USER_CODE,
                TU_FACE_NAME,     TU_FACE_PATH,
                TU_SIGN_NAME,     TU_SIGN_PATH,
                VAR_WORK_USER,    SYSDATE
        FROM    TEMP_USER
        WHERE   (TU_WORK_ID = VAR_WORK_ID)
        AND     (TU_WORK_USER = VAR_WORK_USER)
        ;
        
        DELETE FROM TEMP_USER
        WHERE (TU_WORK_ID = VAR_WORK_ID)
        AND   (TU_WORK_USER = VAR_WORK_USER)
        ;


COMMIT;

  EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RETURN;
  
END PROC_USER_INSERT
;