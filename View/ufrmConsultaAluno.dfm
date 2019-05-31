object frmConsultaAluno: TfrmConsultaAluno
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Student Consultation'
  ClientHeight = 544
  ClientWidth = 737
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
  object Panel1: TPanel
    Left = -7
    Top = 0
    Width = 256
    Height = 545
    TabOrder = 0
    object Matricula: TLabel
      Left = 24
      Top = 188
      Width = 84
      Height = 21
      Caption = 'Registration'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Nome: TLabel
      Left = 24
      Top = 65
      Width = 42
      Height = 21
      Caption = 'Name'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 252
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
    object Label1: TLabel
      Left = 24
      Top = 8
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
    object Label3: TLabel
      Left = 24
      Top = 124
      Width = 27
      Height = 21
      Caption = 'CPF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 24
      Top = 316
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
    object Label5: TLabel
      Left = 24
      Top = 380
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
    object edt_codigo_aluno: TEdit
      Left = 24
      Top = 34
      Width = 216
      Height = 21
      BorderStyle = bsNone
      TabOrder = 0
    end
    object cmb_RegCpf: TComboBox
      Left = 24
      Top = 151
      Width = 216
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      OnChange = cmb_RegCpfChange
    end
    object cmb_RegDisciplina: TComboBox
      Left = 24
      Top = 343
      Width = 216
      Height = 21
      Style = csDropDownList
      TabOrder = 2
      OnChange = cmb_RegDisciplinaChange
    end
    object cmb_RegCurso: TComboBox
      Left = 24
      Top = 407
      Width = 216
      Height = 21
      Style = csDropDownList
      TabOrder = 3
      OnChange = cmb_RegCursoChange
    end
  end
  object cmb_RegNome: TComboBox
    Left = 17
    Top = 91
    Width = 216
    Height = 21
    Style = csDropDownList
    TabOrder = 1
    OnChange = cmb_RegNomeChange
  end
  object cmb_RegMatricula: TComboBox
    Left = 17
    Top = 215
    Width = 216
    Height = 21
    Style = csDropDownList
    TabOrder = 2
    OnChange = cmb_RegMatriculaChange
  end
  object btnCadastrar: TButton
    Left = 17
    Top = 480
    Width = 216
    Height = 41
    Cursor = crHandPoint
    Caption = 'Register'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnCadastrarClick
  end
  object cmb_RegTurma: TComboBox
    Left = 17
    Top = 279
    Width = 216
    Height = 21
    Style = csDropDownList
    TabOrder = 3
    OnChange = cmb_RegTurmaChange
  end
  object btn_refresh: TButton
    Left = 536
    Top = 464
    Width = 137
    Height = 41
    Cursor = crHandPoint
    Caption = 'Refresh'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btn_refreshClick
  end
  object btn_delete: TButton
    Left = 304
    Top = 464
    Width = 137
    Height = 41
    Cursor = crHandPoint
    Caption = 'Delete'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btn_deleteClick
  end
  object DBG_Aluno: TDBGrid
    Left = 248
    Top = 0
    Width = 489
    Height = 428
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
