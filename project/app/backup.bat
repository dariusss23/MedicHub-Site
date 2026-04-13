@ECHO OFF
SETLOCAL

SET DB_NAME=medichub
SET DB_USER=medichubadmin
SET DB_PASS=medichubadminpass
SET DB_HOST=localhost
SET DB_PORT=5432
SET OUTPUT_FILE=medichub_data_backup.sql

IF EXIST %OUTPUT_FILE% DEL %OUTPUT_FILE%

SET PGPASSWORD=%DB_PASS%

ECHO [MedicHub] Incepem exportul datelor...

SET TABLES="app_customuser" "app_course" "app_event" "app_magazine" "app_usercourse" "app_userevent" "app_usermagazine" "app_transaction" "app_certificate"

(FOR %%t IN (%TABLES%) DO (
    ECHO Exportand tabelul: %%t...
    pg_dump -h %DB_HOST% -p %DB_PORT% -U %DB_USER% -d %DB_NAME% -t %%t --column-inserts --data-only --inserts >> %OUTPUT_FILE%
))

SET PGPASSWORD=
ECHO [SUCCESS] Toate datele au fost salvate in %OUTPUT_FILE%
PAUSE