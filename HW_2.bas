Attribute VB_Name = "Module1"
Sub challenge1():

    ' Dimensions
    Dim total As Double

    ' row number of the last row with data
    RowCount = Cells(Rows.Count, "A").End(xlUp).Row

    
    ' title row
    Range("J1").Value = "Total Stock Volume"
    Range("I1").Value = "Ticker"


    For i = 2 To RowCount


        ' If ticker changes then print results
        If Cells(i + 1, 1).Value <> Cells(i, 1).Value Then


            ' variables
            total = total + Cells(i, 7).Value

            ' Printing ticker symbol
            Range("I" & 2 + j).Value = Cells(i, 1).Value

            ' Printing total
            Range("J" & 2 + j).Value = total

            ' Reseting Total
            total = 0

            ' Move to next row
            j = j + 1


        ' Else keep adding to the total volume
        Else
            total = total + Cells(i, 7).Value

        End If

    Next i

End Sub

