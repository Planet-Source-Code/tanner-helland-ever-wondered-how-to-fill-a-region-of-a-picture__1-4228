<div align="center">

## Ever wondered how to fill a region of a picture?


</div>

### Description

This cool little program demonstrates a basic painting program as well as the hard-to-find dll call for filling a region of a picture. To use the program, all you have to do is draw a line with the left mouse button, then click with the right mouse button to fill the clicked-on area with a random color. Also, as far as I know, this may be the only VB project on the net that has the 'ExtFloodFill' dll call, so make sure to grab it!
 
### More Info
 


<span>             |<span>
---                |---
**Submitted On**   |1999-11-04 18:41:16
**By**             |[Tanner Helland](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByAuthor/tanner-helland.md)
**Level**          |Beginner
**User Rating**    |5.0 (25 globes from 5 users)
**Compatibility**  |VB 5\.0, VB 6\.0
**Category**       |[Custom Controls/ Forms/  Menus](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByCategory/custom-controls-forms-menus__1-4.md)
**World**          |[Visual Basic](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByWorld/visual-basic.md)
**Archive File**   |[CODE\_UPLOAD1676\.zip](https://github.com/Planet-Source-Code/tanner-helland-ever-wondered-how-to-fill-a-region-of-a-picture__1-4228/archive/master.zip)

### API Declarations

```
Private Declare Function ExtFloodFill Lib "Gdi32" (ByVal hdc As Long, ByVal X As Long, ByVal Y As Long, ByVal crColor As Long, ByVal wFillType As Long) As Long
```





