object frmConsultaProfessor: TfrmConsultaProfessor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Teacher Consultation'
  ClientHeight = 497
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panelCad: TPanel
    Left = 0
    Top = 0
    Width = 249
    Height = 497
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 88
      Width = 44
      Height = 20
      Caption = 'Name '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 176
      Width = 80
      Height = 20
      Caption = 'Registration'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 262
      Width = 33
      Height = 20
      Caption = 'Class'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 24
      Top = 16
      Width = 35
      Height = 20
      Caption = 'Code'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object EdtNome_Prof: TEdit
      Left = 24
      Top = 128
      Width = 201
      Height = 21
      BorderStyle = bsNone
      TabOrder = 1
    end
    object edtMatricula_Prof: TEdit
      Left = 24
      Top = 215
      Width = 201
      Height = 21
      BorderStyle = bsNone
      TabOrder = 2
    end
    object btnIncluir_Professor: TButton
      Left = 24
      Top = 408
      Width = 201
      Height = 41
      Caption = 'Include'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnIncluir_ProfessorClick
    end
    object edtCodigo_prof: TEdit
      Left = 24
      Top = 48
      Width = 201
      Height = 21
      BorderStyle = bsNone
      TabOrder = 0
    end
    object cmb_turmaProf: TComboBox
      Left = 24
      Top = 298
      Width = 201
      Height = 21
      Style = csDropDownList
      TabOrder = 3
      OnChange = cmb_turmaProfChange
    end
  end
  object DBG_Professor: TDBGrid
    Left = 248
    Top = 0
    Width = 481
    Height = 409
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn_Delete: TButton
    Left = 320
    Top = 432
    Width = 145
    Height = 41
    Caption = 'Delete'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btn_DeleteClick
  end
  object btn_Refresh: TButton
    Left = 520
    Top = 432
    Width = 145
    Height = 41
    Caption = 'Refresh'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btn_RefreshClick
  end
end
