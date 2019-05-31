object frmConsultaTurma: TfrmConsultaTurma
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Class Consultation'
  ClientHeight = 498
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 249
    Height = 497
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 23
      Width = 36
      Height = 21
      Caption = 'Code'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Course: TLabel
      Left = 16
      Top = 95
      Width = 49
      Height = 21
      Caption = 'Course'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 167
      Width = 67
      Height = 21
      Caption = 'Discipline'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 247
      Width = 36
      Height = 21
      Caption = 'Class'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edt_Codigo_Turma: TEdit
      Left = 16
      Top = 50
      Width = 216
      Height = 21
      BorderStyle = bsNone
      TabOrder = 0
    end
    object edt_Curso: TEdit
      Left = 16
      Top = 122
      Width = 216
      Height = 21
      BorderStyle = bsNone
      TabOrder = 1
    end
    object edt_Disciplina: TEdit
      Left = 16
      Top = 194
      Width = 216
      Height = 21
      BorderStyle = bsNone
      TabOrder = 2
    end
    object edt_Turma: TEdit
      Left = 16
      Top = 274
      Width = 216
      Height = 21
      BorderStyle = bsNone
      TabOrder = 3
    end
    object btnCadastrar: TButton
      Left = 16
      Top = 392
      Width = 216
      Height = 41
      Cursor = crHandPoint
      Caption = 'Register'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnCadastrarClick
    end
  end
  object DBG_Turma: TDBGrid
    Left = 248
    Top = 0
    Width = 489
    Height = 409
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnDeletar: TButton
    Left = 328
    Top = 432
    Width = 137
    Height = 41
    Cursor = crHandPoint
    Caption = 'Delete'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnDeletarClick
  end
  object btnRefresh: TButton
    Left = 528
    Top = 432
    Width = 137
    Height = 41
    Cursor = crHandPoint
    Caption = 'Refresh'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnRefreshClick
  end
end
