#Include "Totvs.ch"

/*/{Protheus.doc} User Function nomeFunction
    (long_description)
    @type  Function
    @author user
    @since 01/07/2022
    @version version
    @param param_name, param_type, param_descr
    @return return_var, return_type, return_description
    @example
    (examples)
    @see (links_or_references)
/*/

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
