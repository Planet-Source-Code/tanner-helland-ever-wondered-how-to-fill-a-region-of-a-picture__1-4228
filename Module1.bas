Attribute VB_Name = "Module1"
' Declaration of a Windows routine. This statement is
' for the module.
Declare Function ExtFloodFill Lib "Gdi32" (ByVal hdc As Long, ByVal X As Long, ByVal Y As Long, ByVal crColor As Long, ByVal wFillType As Long) As Long

