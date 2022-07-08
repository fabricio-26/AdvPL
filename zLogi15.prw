#Include "Totvs.ch"

User Function zLogi15()
    Local aArea   := GetArea()
    Local cQrySA2 := ""
    Local nAtual  := 0

    //Selecionando os forncedores via query diretamente no banco de dodos
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

    //Executando a query
    PLSQuery(cQrySA2, "QRY_SA2")

    //Enquanto houver dados da query
    while ! QRY_SA2->(Eof())
        nAtual++

        QRY_SA2->(DbSkip())
    EndDo
    QRY_SA2->(DbCloseArea())

    MsgInfo(CValToChar(nAtual) + " Fornecedor(es) encontrado(s)!", "Atenção")

    RestArea(aArea)
Return




