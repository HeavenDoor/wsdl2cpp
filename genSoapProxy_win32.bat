REM First of all please use http://...hellojava.asmx?wsdl to download and update hellojava.wsdl

REM ...generate proxies

path = %path%;.\gsoap_win32_2.7.9l\bin

wsdl2h -N tx hellojava.wsdl

soapcpp2 -I .\gsoap_win32_2.7.9l\import hellojava.h

del *.xml

REM ...generate complete
REM Please resotre the first 20 lines in soapVersionLinkServiceSoapProxy.h
pause