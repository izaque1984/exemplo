object FRMCONFIG: TFRMCONFIG
  Left = 0
  Top = 0
  Caption = 'Administrador'
  ClientHeight = 289
  ClientWidth = 593
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 256
    Width = 593
    Height = 33
    DataSource = DMLOJA.DSTBCONFIG
    Align = alBottom
    TabOrder = 0
  end
  object FlatGroupBox1: TFlatGroupBox
    Left = 0
    Top = 0
    Width = 593
    Height = 256
    Align = alClient
    Caption = 'Configura'#231#245'es do Sistema'
    TabOrder = 1
    ColorBorder = 16744448
    object Label1: TLabel
      Left = 16
      Top = 37
      Width = 107
      Height = 13
      Caption = 'Usar Padr'#227'o de N.C.M'
    end
    object Label2: TLabel
      Left = 16
      Top = 83
      Width = 108
      Height = 13
      Caption = 'Padrao Imprimir NFC-e'
    end
    object Label3: TLabel
      Left = 16
      Top = 129
      Width = 115
      Height = 13
      Caption = 'Usa Impressora Daruma'
    end
    object DBComboBox1: TDBComboBox
      Left = 16
      Top = 56
      Width = 145
      Height = 21
      DataField = 'CTRNCM'
      DataSource = DMLOJA.DSTBCONFIG
      ItemHeight = 13
      Items.Strings = (
        'SIM'
        'NAO')
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 102
      Width = 65
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CRT'
      DataSource = DMLOJA.DSTBCONFIG
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 148
      Width = 65
      Height = 21
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = DMLOJA.DSTBCONFIG
      TabOrder = 2
    end
  end
end
