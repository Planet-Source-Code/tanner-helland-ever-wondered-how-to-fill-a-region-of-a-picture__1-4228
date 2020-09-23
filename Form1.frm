VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "Tanner's Fill Demonstration"
   ClientHeight    =   6420
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6630
   DrawWidth       =   3
   FillStyle       =   0  'Solid
   ForeColor       =   &H00000000&
   LinkTopic       =   "Form1"
   ScaleHeight     =   428
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   442
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      DrawWidth       =   3
      FillStyle       =   0  'Solid
      Height          =   6135
      Left            =   120
      ScaleHeight     =   405
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   421
      TabIndex        =   1
      Top             =   120
      Width           =   6375
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Left click to draw a black line, and right click to fill the selected area with a random color."
      Height          =   255
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6615
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Simple Paint and Fill Demo by Tanner Helland

'This cool little program demonstrates a basic painting
'technique, as well as the hard-to-find dll call for filling
'a region of a picture.  It took forever to figure out the
'parameters for the dll, but using it is incredibly easy.  To
'use the program, all you have to do is draw a line with the
'left mouse button, then click with the right mouse button to
'fill the clicked-on area with a random color.  Pretty cool
'stuff, eh?  Anyhow, as far as I know, this may be the only
'VB project on the net that has this dll call, so spread the
'word on it.

'Feel free to use this code however you want, but please give
'me some credit and let me know how you use it.  E-mail me with
'comments or questions at tannerhelland@hotmail.com.

'Also, if you like graphic-based programming, look for some
'of my other projects at www.planet-source-code.com.  Also, feel
'free to e-mail me with any graphic-related (or VB in general)
'questions you may have.

'Read the enclosed game.txt file for info on our current game
'production 'Realms of Time.'


'This is the ever-elusive dll call
Private Declare Function ExtFloodFill Lib "Gdi32" (ByVal hdc As Long, ByVal X As Long, ByVal Y As Long, ByVal crColor As Long, ByVal wFillType As Long) As Long
'variables used for drawing and filling
Dim X1, Y1
Dim draw
Dim temp

Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
'enable drawing
draw = 1
'if left mouse button, set up the line drawing
If Button = 1 Then
X1 = X
Y1 = Y
'if right mouse button, fill
ElseIf Button = 2 Then
    'build a random fill color
    Randomize
    Picture1.FillColor = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
    'call the dll using a temporary variable
    ExtFloodFill Picture1.hdc, X, Y, Picture1.Point(X, Y), 1
End If
End Sub

Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
'if left mouse button, draw a line between the original point
'and the current one, but only if drawing is enabled
If Button = 1 Then
If draw = 1 Then
Picture1.Line (X1, Y1)-(X, Y)
X1 = X
Y1 = Y
End If
End If
End Sub

Private Sub Picture1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
'disable drawing
draw = 0
End Sub
