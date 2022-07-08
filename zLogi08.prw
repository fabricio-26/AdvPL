#Include "Totvs.ch"


User Function zLogi08()
    
    Local aArea := GetArea()
    Local aNomes := {}
    Local aSobreNome := Array(3)
    Local aPessoa := {}
    Local aAtual

    aAdd(aNomes, "Fabricio")
    aAdd(aNomes, "terminal")

    aSobreNome[1] := "Alves"
    aSobreNome[2] := "de informaçao"

    //Array Multidimensional
    aAdd(aPessoa, {"Fabricio", SToD("19993012"), "Goias"})
    aAdd(aPessoa, {"Joao", SToD("19993012"), "Minas Gerais"})
    aAdd(aPessoa, {"Barbara", SToD("19993012"), "Piratinga"})

    For aAtual := 1 To Len(aPessoa)
        //Alert(aPessoa[nAtual][1] + " nasceu no dia " + DToS(aPessoa[nAtual][2]) + " em " + aPessoa[nAtual][3])
    Next
    
    //Inserindo elementos no Array
    aSize(aPessoa, Len(aPessoa) + 1)
    AINS(aPessoa, 1)
    aPessoa[1] := {"Terminal de informaçao", SToD("20120808", "internet")}
    // Alert("Linha 2, Coluna1: " + aPessoa[2][1])

    //Procurando um elmenro no array
    nPos := AScan(aPessoa, {|x| AllTrim(Upper(x[1])) == "JOAO"})
    If nPos > 0 
        //MsgInfo("Joao encontrado, na linha " + cValToChar(nPos) + ".", "Atençao")
    Else
        //MsgAlert("Joao nao foi encontrado!", "Atenção")
    EndIf
    
    //Excluindo elemento no Array
    aDel(aPessoa, nPos)
    aSize(aPessoa, Len(aPessoa) - 1)
    Alert("Array aPessoa com " + CValToChar(Len(aPessoa)) + " Linhas")


    RestArea(aArea)
Return
