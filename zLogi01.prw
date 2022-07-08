#Include "Totvs.ch"



User Function zLogi01()
    Local aArea     := GetArea()
    Local dDataAtu  := Date()
    Local cHoraAtu  := Time()
    Local cNome     := "Curso de logica em AdvPL"
    fFormatAnt()

    MsgInfo("Estamos no [" + cNome + "], hoje é " + dToC(dDataAtu) + "as " + cHoraAtu, "Atenção")
    MsgInfo("Ontem seria " + dToC(DaySub(dDataAtu, 1)), "Atenção")
    MsgInfo("Mes passado seria " + dToC(MonthSub(dDataAtu, 1)), "Atenção")

    RestArea(aArea)
Return





// Static Function fFormatAnt()
    
//     Local cNome     := "Fabricio" + CRLT + "Henrique"

//     MsgInfo(cNome)

// Return







Static Function fFormatAnt()
    
    bAoQuadrado := { | nValor | nQuadrado := nValor * nValor, Alert("Valor ao quadrado: " + cValToChar(nQuadrado)) }

    EVal(bAoQuadrado, 5)
    EVal(bAoQuadrado, 7)

Return
