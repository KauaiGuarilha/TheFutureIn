object frmCadastroFormulario: TfrmCadastroFormulario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Include Person'
  ClientHeight = 546
  ClientWidth = 334
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
    Left = 0
    Top = -4
    Width = 335
    Height = 551
    TabOrder = 0
    object Label1: TLabel
      Left = 108
      Top = 16
      Width = 124
      Height = 25
      Caption = 'Include Person'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 96
      Top = 25
      Width = 144
      Height = 25
      Caption = '__________________'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 65
      Top = 135
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
    object Label4: TLabel
      Left = 65
      Top = 209
      Width = 31
      Height = 21
      Caption = 'Age '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 65
      Top = 363
      Width = 50
      Height = 21
      Caption = 'Regist. '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 65
      Top = 56
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
    object Label7: TLabel
      Left = 65
      Top = 288
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
    object edtNome: TEdit
      Left = 65
      Top = 171
      Width = 201
      Height = 21
      BorderStyle = bsNone
      TabOrder = 1
      TextHint = 'Enter your Name'
    end
    object edtIdade: TEdit
      Left = 65
      Top = 249
      Width = 201
      Height = 21
      BorderStyle = bsNone
      TabOrder = 2
      TextHint = 'Enter your Age'
    end
    object edtMatricula: TEdit
      Left = 65
      Top = 401
      Width = 201
      Height = 21
      BorderStyle = bsNone
      TabOrder = 4
      TextHint = 'Enter your enrollment'
    end
    object btnIncluir: TButton
      Left = 47
      Top = 468
      Width = 234
      Height = 41
      Caption = 'Include'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnIncluirClick
    end
    object edtCodigo: TEdit
      Left = 65
      Top = 95
      Width = 201
      Height = 21
      BorderStyle = bsNone
      TabOrder = 0
      TextHint = 'Enter the Code'
    end
    object edt_CPF: TEdit
      Left = 65
      Top = 324
      Width = 201
      Height = 21
      BorderStyle = bsNone
      TabOrder = 3
      TextHint = 'Enter your CPF'
    end
  end
end
