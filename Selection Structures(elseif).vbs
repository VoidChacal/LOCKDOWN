Wscript.Echo "Controle de notas"

nota1 = cint(inputBox ("Digite a primeira nota."))
nota2 = cint(inputBox ("Digite a segunda nota."))

resultado = (nota1+nota2)/2

Wscript.Echo "Nota final: " & resultado

if resultado >= 7 then
	Wscript.Echo "Você foi aprovado."
elseif resultado >= 5 then
	Wscript.Echo "Você deve fazer prova final."
else
	Wscript.Echo "Você foi reprovado."
end if