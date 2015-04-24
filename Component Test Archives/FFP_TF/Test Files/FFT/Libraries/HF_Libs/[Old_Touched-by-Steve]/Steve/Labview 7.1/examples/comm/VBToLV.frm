VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "LabVIEW Server Example"
   ClientHeight    =   4515
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7380
   LinkTopic       =   "Form1"
   ScaleHeight     =   4515
   ScaleWidth      =   7380
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Result 
      Height          =   285
      Left            =   3480
      TabIndex        =   6
      Top             =   1800
      Width           =   3375
   End
   Begin VB.TextBox ArithmeticExpression 
      Height          =   285
      Left            =   3480
      TabIndex        =   5
      Top             =   960
      Width           =   3615
   End
   Begin VB.CommandButton Quit 
      Caption         =   "Quit"
      Height          =   615
      Left            =   120
      TabIndex        =   4
      Top             =   3360
      Width           =   1575
   End
   Begin VB.CommandButton Ex 
      Caption         =   "Exit LabVIEW"
      Enabled         =   0   'False
      Height          =   615
      Left            =   120
      TabIndex        =   3
      Top             =   2400
      Width           =   1575
   End
   Begin VB.CommandButton Run 
      Caption         =   "Run VI"
      Enabled         =   0   'False
      Height          =   615
      Left            =   120
      TabIndex        =   1
      Top             =   1440
      Width           =   975
   End
   Begin VB.CommandButton Launch 
      Caption         =   "Launch LabVIEW"
      Height          =   615
      Left            =   120
      TabIndex        =   0
      Top             =   480
      Width           =   1815
   End
   Begin VB.CheckBox ShowPanel 
      Caption         =   "Display VI Front Panel"
      Height          =   255
      Left            =   1200
      TabIndex        =   2
      Top             =   1560
      Width           =   1935
   End
   Begin VB.Label Label2 
      Caption         =   "Result"
      Height          =   255
      Left            =   3480
      TabIndex        =   8
      Top             =   1560
      Width           =   495
   End
   Begin VB.Label Label1 
      Caption         =   "Enter an arithmetic expression.  Recognized operators are +,-,*,/,%,(,)"
      Height          =   495
      Left            =   3480
      TabIndex        =   7
      Top             =   480
      Width           =   3015
      WordWrap        =   -1  'True
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'This example program demonstrates how to call a LabVIEW VI and pass parameters
'to and from it from Visual Basic
'This example was built with Visual Basic 5.0.

'Dimension the array that contains the parameter names and values.
'These arrays contain the same number of elements are there are
'connections on the VIs connector pane
Dim ParamNames(0 To 1) As String
Dim ParamVals(0 To 1) As Variant

'Declare the object type of a lvApp and VI
Dim lvApp As LabVIEW.Application
Dim VI As LabVIEW.VirtualInstrument
Dim VIPath As String
Private Sub Form_Load()
    'Clear the form indicators
    ArithmeticExpression.Text = ""
    Result.Text = ""
    
    'Initialize the variables & define the strings corresponding to
    'the VI connector labels. Note that the strings are case sensitive
    ParamNames(0) = "Arithmetic Expression"
    ParamNames(1) = "Result"
End Sub
Private Sub Launch_Click()
    'Create a reference to LabVIEW
    Set lvApp = CreateObject("LabVIEW.Application")
    
    'Determine the path to the VI
    VIPath = lvApp.ApplicationDirectory + "\Examples\General\Strings.llb\Parse Arithmetic Expression.vi"
    
    'Assign an object reference to VI
    Set VI = lvApp.GetVIReference(VIPath)
                 
    Launch.Enabled = False
    Run.Enabled = True
    Run.SetFocus
    Ex.Enabled = True
End Sub
Private Sub Run_Click()
    'Get values from front panel objects
    ParamVals(0) = ArithmeticExpression.Text
    
    'Check if front panel of VI should be displayed
    If ShowPanel.Value = 1 Then
        VI.ShowFPOnCall = True
    Else
        VI.ShowFPOnCall = False
    End If
    
    'Call the VI
    Call VI.Call(ParamNames, ParamVals)
    
    'Display the result
    Result.Text = ParamVals(1)
End Sub
Private Sub Ex_Click()
'Close LabVIEW
If Not IsNull(lvApp) Then
    lvApp.Quit
    Run.Enabled = False
    Ex.Enabled = False
    Launch.Enabled = True
    Launch.SetFocus
End If
End Sub
Private Sub Quit_Click()
    'Quit the application
    End
End Sub

