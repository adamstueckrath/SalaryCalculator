
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        hourly_wageTB.Focus()
    End Sub

    Protected Sub Calculatebt_Click(sender As Object, e As EventArgs) Handles Calculatebt.Click
        Dim hours As Integer
        Dim wage As Double
        Dim grosspay As Double
        Dim pretax As Double
        Dim taxablepay As Double
        Dim tax As Double
        Dim posttax As Double
        Dim netpay As Double
        Dim pay As Double

        hours = CDbl(hourly_wageTB.Text)
        wage = CDbl(hours_workedTB.Text)
        pretax = CDbl(pre_taxTB.Text)
        posttax = CDbl(after_taxTB.Text)

        grosspay = hours * wage
        taxablepay = grosspay - pretax

        If grosspay < 500 Then
            tax = taxablepay * 0.18
        Else
            tax = taxablepay * 0.22
        End If

        pay = taxablepay - tax
        netpay = pay - posttax

        netincomeID.Text = String.Format("{0:C}", netpay)

    End Sub

    Protected Sub Resetbt_Click(sender As Object, e As EventArgs) Handles Resetbt.Click
        hourly_wageTB.Text = String.Empty
        hours_workedTB.Text = String.Empty
        pre_taxTB.Text = String.Empty
        after_taxTB.Text = String.Empty
        netincomeID.Text = String.Empty
    End Sub
End Class
