object FRMIDCLIENTE: TFRMIDCLIENTE
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Identificar Cliente NFC-e'
  ClientHeight = 98
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FlatGroupBox1: TFlatGroupBox
    Left = 0
    Top = 0
    Width = 678
    Height = 98
    Align = alClient
    Caption = 'Digite o CPF / ou CNPJ o Nome e Tecle Enter'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    ColorBorder = 11771961
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 673
    ExplicitHeight = 54
    object Label1: TLabel
      Left = 24
      Top = 35
      Width = 54
      Height = 13
      Caption = 'CPF / CNPJ'
    end
    object Label2: TLabel
      Left = 175
      Top = 35
      Width = 101
      Height = 13
      Caption = 'Nome do Consumidor'
    end
    object editnome: TFlatEdit
      Left = 175
      Top = 54
      Width = 490
      Height = 22
      ColorFocused = clMoneyGreen
      ColorBorder = 16744448
      ColorFlat = clWhite
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = editnomeExit
    end
    object editcpf: TFlatEdit
      Left = 24
      Top = 54
      Width = 145
      Height = 22
      ColorFocused = clMoneyGreen
      ColorBorder = 16744448
      ColorFlat = clWhite
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 14
      ParentFont = False
      TabOrder = 0
    end
  end
end
