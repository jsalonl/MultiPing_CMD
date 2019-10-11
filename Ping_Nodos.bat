@echo off
echo Ejecutando pruebas
for /f UseBackQ %%a in (hosts.txt) do ping -n 2 %%a|Find "TTL=">Nul && Echo Host [%%a] Online ||Echo Host [%%a] offline
echo Pruebas terminadas
pause