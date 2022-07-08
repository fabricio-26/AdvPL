#Include "Totvs.ch"


User Function zLogi14()

    Local aArea  := GetArea()
    Local cMsg  := ""
    Local nAtual := 0

    //Enquanto for verdadeiro
    while .T.

        //Se a pergunta for confirmada, volta o laÃ§o
        If MsgYesNo("Deseja continuar o laço?", "Atenção")
            Loop
        else
            Exit 
        EndIf
    
    EndDo

    //Abrindo a tebela de fornecedores e posicionando no topo
    DbSelectArea('SA2')
    S2->(DbSetOrder(1))

    //Enquanto houver dados nos fornecedores e for menos que 100 registros
    while ! SA2->(EoF())
        nAtual++
        cMsg += "[" + CValToChar(nAtual) + " ] " + AllTrim(SA2->A2_NOME) + ";" + CRLF

        SA2->(DbSkip())   //DbSkip()   -> faz com oqu ele pule de um registro para o outro
    EndDo

    //Mostrando os forncedores
    Aviso("Atenção", cMsg, {"OK"}, 2)

    RestArea(aArea)
Return




