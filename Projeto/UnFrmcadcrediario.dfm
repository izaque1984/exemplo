object FRMCADCREDIARIO: TFRMCADCREDIARIO
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Inclus'#227'o de D'#233'ditos'
  ClientHeight = 74
  ClientWidth = 606
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 606
    Height = 74
    Align = alClient
    Caption = 'Cliente'
    TabOrder = 0
    object editcodigo: TFlatEdit
      Left = 8
      Top = 25
      Width = 102
      Height = 19
      ColorFocused = clMoneyGreen
      ColorFlat = clWhite
      CharCase = ecUpperCase
      TabOrder = 0
      OnExit = editcodigoExit
    end
    object editnome: TFlatEdit
      Left = 116
      Top = 25
      Width = 482
      Height = 19
      ColorFocused = clMoneyGreen
      ColorFlat = clWhite
      CharCase = ecUpperCase
      ReadOnly = True
      TabOrder = 1
      OnExit = editnomeExit
    end
    object editnrdebito: TEdit
      Left = 8
      Top = 50
      Width = 102
      Height = 21
      TabOrder = 2
      Visible = False
    end
    object editvalorvenda: TEdit
      Left = 116
      Top = 50
      Width = 85
      Height = 21
      TabOrder = 3
      Visible = False
    end
    object editrefvenda: TEdit
      Left = 207
      Top = 50
      Width = 58
      Height = 21
      TabOrder = 4
      Visible = False
    end
    object editdataemissao: TEdit
      Left = 271
      Top = 50
      Width = 121
      Height = 21
      TabOrder = 5
      Visible = False
    end
    object editvalorparcelar: TEdit
      Left = 398
      Top = 50
      Width = 121
      Height = 21
      TabOrder = 6
      Visible = False
    end
  end
end
