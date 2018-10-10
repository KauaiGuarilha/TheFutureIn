object frmInfo: TfrmInfo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Information'
  ClientHeight = 230
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Constr: TLabel
    Left = 72
    Top = 117
    Width = 100
    Height = 20
    Caption = 'Contributions : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 72
    Top = 49
    Width = 247
    Height = 20
    Caption = 'Developed by : Kauai Guarilha Freitas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 67
    Top = 75
    Width = 252
    Height = 20
    Caption = '__________________________________________'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Image1: TImage
    Left = 338
    Top = 8
    Width = 31
    Height = 33
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
      00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000001
      384944415478DA63641860C038EA8051078C3A809002A7CC4719BF5958D71E9E
      2CF99A14836D739F8BB2FEF91DBC6FBADC0CB21DE098F5288BE1FFFFA98CFF19
      2EFF66657326D61160CB7FFFDAFB9F914197F13F63D6BE1972D3C9728043C17D
      01869F4CBB808A4C1918FEDF62616672DC3D45EE193E3DAE398FA4FEFCFDB71F
      68B4DA7F0686D30CECFFDC0E4C50FC40761490E208522D27CA01C43A821CCB89
      76002147906B39490EC0E5089038B99693EC004C4730DC033A04648C12399693
      E5009823187F31ED07DA6D00E2032DBF00B4DC9154CBC9760024CEFF1F043255
      A04277589819ED096551AA380039C101BD7E8E81091C0446C496131439005B6A
      074B90585891E5007C598D9C129324071093CFC9750441079052C890E308BC0E
      20A78423D51183BB3A0681016D90D0038C3A60D401A30E0000424C1F309CC742
      320000000049454E44AE426082}
    OnClick = Image1Click
  end
  object CorX: TLabel
    Left = 88
    Top = 192
    Width = 6
    Height = 13
    Caption = 'X'
    Visible = False
  end
  object CorY: TLabel
    Left = 256
    Top = 192
    Width = 6
    Height = 13
    Caption = 'Y'
    Visible = False
  end
end
