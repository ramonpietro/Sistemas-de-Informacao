Module VBModule
    Sub Main()
        Dim nota1, nota2 As Double
        Dim frequencia, media As Double
        Dim nAulas, nFaltas As Integer
        nAulas = 80
        Console.WriteLine("Digite a primeira nota:")
        nota1 = Console.ReadLine()
        Console.WriteLine("Digite a segunda nota:")
        nota2 = Console.ReadLine()
        media = (nota1 + nota2) / 2
        
        Console.WriteLine("A média do aluno é de:")
        Console.WriteLine(media)
        
        Console.WriteLine("Digite o número de faltas do aluno:")
        nFaltas = Console.ReadLine()
        
        frequencia = ((nAulas - nFaltas) / nAulas) * 100
        
        Console.WriteLine("A frequencia do aluno é de:")
        Console.WriteLIne(frequencia)
        
        If frequencia >= 75 And media >= 5 Then
            Console.WriteLine("Aluno aprovado!")
        Else
            Console.WriteLine("Aluno reprovado!")
        End If
    End Sub
End Module