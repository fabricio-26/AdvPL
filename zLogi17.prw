#Include "Totvs.ch"

User Function zLogi17()
	Local aArea   := GetArea()
	Local aDados := {}
	Private lMsErroAuto := .F.


	//Selecionando os forncedores via query diretamente no banco de dados
	aAdd(aDados, {"A6_COD",        "000",             NIL})
	aAdd(aDados, {"A6_AGENCIA",    "00000",           NIL})
	aAdd(aDados, {"A6_NUMCON",     "0000000000",      NIL})
	aAdd(aDados, {"A6_NOME",       "BANCO DE TSTE",   NIL})

	//Iniciado Transação
	Begin Transaction
		//ExecAuto ele faz a validaçao de acordo com o array com informaçoes contidas nele
		MSExecAuto({|x, y| Mata070(x, y)}, aDados, 3)

		//Se houver erro, mostra mensagem
		If lMsErroAuto
			MostraErro()
			DisarmTransaction()
		Else
			MsgInfo("Banco 000 cadastrado com sucesso!", "Atenção")
		EndIf
	End Transaction


	RestArea(aArea)
Return



