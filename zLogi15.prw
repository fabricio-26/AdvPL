#Include "Totvs.ch"

User Function zLogi15()
    Local aArea   := GetArea()
    Local cQrySA2 := ""
    Local nAtual  := 0

    //Selecting providers via query directly in the database
    //Selecionando os forncedores via query diretamente no banco de dados
    cQrySA2 := " SELECT TOP 100 " + CRLF
    cQrySA2 += "    A2_COD, " + CRLF
    cQrySA2 += "    A2_NOME " + CRLF
    cQrySA2 += " FROM " + CRLF
    cQrySA2 += "    " + RetSQLName('SA2') + " SA2 " + CRLF
    cQrySA2 += " WHERE " + CRLF
    cQrySA2 += "    A2_FILIAL = '" + FWxFilial('SA2') + "' " + CRLF
    cQrySA2 += "    AND A2_MSBLQL != '1' " + CRLF
    cQrySA2 += "    AND SA2.D_E_L_E_T_ = ' ' " + CRLF
    cQrySA2 += " ORDER BY " + CRLF
    cQrySA2 += "    A2_COD " + CRLF

    //Executing the query
    //Executando a query
    PLSQuery(cQrySA2, "QRY_SA2")

    //As long as there is query data
    //Enquanto houver dados da query
    while ! QRY_SA2->(Eof())
        nAtual++

        QRY_SA2->(DbSkip())
    EndDo
    QRY_SA2->(DbCloseArea())

    MsgInfo(CValToChar(nAtual) + " Fornecedor(es) encontrado(s)!", "Atenção")

    RestArea(aArea)
Return

//Source example of how to execute a SQL Query(PLSQuery)
//Fonte exemplo de como executar uma Query SQL(PLSQuery)




