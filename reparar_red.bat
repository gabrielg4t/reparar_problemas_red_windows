@echo off
COLOR 0A
MODE con:cols=120 lines=60


cls
echo ������������������������������������������ͻ
echo   FIX RED
echo ��������������������������������������������
echo �                                          �
echo � [ 10%% ] ���۰��������������������������� �
echo �        Liberando Conexiones              �
echo ��������������������������������������������
echo                 [ github.com/redztonelabs ]
ipconfig /release
timeout -t 2 >> nul

cls
echo ������������������������������������������ͻ
echo   FIX RED
echo ��������������������������������������������
echo �                                          �
echo � [ 20%% ] �������۰����������������������� �
echo �        Listando ARP                      �
echo ��������������������������������������������
echo                 [ github.com/redztonelabs ]
arp -a
timeout -t 2 >> nul

cls
echo ������������������������������������������ͻ
echo   FIX RED
echo ��������������������������������������������
echo �                                          �
echo � [ 30%% ] ��������۰���������������������� �
echo �        Listando DNS                      �
echo ��������������������������������������������
echo                 [ github.com/redztonelabs ]
ipconfig /displaydns
timeout -t 2 >> nul

cls
echo ������������������������������������������ͻ
echo   FIX RED
echo ��������������������������������������������
echo �                                          �
echo � [ 40%% ] ������������۰������������������ �
echo �     Borrando ARP Cache                   �
echo ��������������������������������������������
echo                 [ github.com/redztonelabs ]
netsh interface ip delete arpcache
arp -d *
timeout -t 2 >> nul

cls
echo ������������������������������������������ͻ
echo   FIX RED
echo ��������������������������������������������
echo �                                          �
echo � [ 50%% ] ���������������۰��������������� �
echo �     BOrrando DNS                         �
echo ��������������������������������������������
echo                 [ github.com/redztonelabs ]
ipconfig /flushdns
timeout -t 2 >> nul

cls
echo ������������������������������������������ͻ
echo   FIX RED
echo ��������������������������������������������
echo �                                          �
echo � [ 60%% ] �����������������۰������������� �
echo �     Depurando WINS                       �
echo ��������������������������������������������
echo                 [ github.com/redztonelabs ]
nbtstat -RR && nbtstat -r & nbtstat -c
nbtstat -RR
timeout -t 2 >> nul

cls
echo ������������������������������������������ͻ
echo   FIX RED
echo ��������������������������������������������
echo �                                          �
echo � [ 70%% ] ��������������������۰���������� �
echo �     Depurando Winsock                    �
echo ��������������������������������������������
echo                 [ github.com/redztonelabs ]
netsh winsock reset
timeout -t 2 >> nul

cls
echo ������������������������������������������ͻ
echo   FIX RED
echo ��������������������������������������������
echo �                                          �
echo � [ 95%% ] �����������������������������۰� �
echo �  Renovando conex con adaptadores         �
echo ��������������������������������������������
echo                 [ github.com/redztonelabs ]
ipconfig /renew
timeout -t 2 >> nul
