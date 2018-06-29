object FRMLOCALIZARVENDA: TFRMLOCALIZARVENDA
  Left = 0
  Top = 0
  Caption = 'Localizar NFC-e'
  ClientHeight = 456
  ClientWidth = 798
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 798
    Height = 57
    Align = alTop
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 608
      Height = 55
      Align = alLeft
      Caption = 'Localizar Venda / NFC-e'
      TabOrder = 0
      object Edit1: TFlatEdit
        Left = 8
        Top = 20
        Width = 545
        Height = 20
        ColorFocused = clMoneyGreen
        ColorFlat = clWhite
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyUp = Edit1KeyUp
      end
    end
    object rb: TRadioGroup
      Left = 609
      Top = 1
      Width = 188
      Height = 55
      Align = alClient
      Caption = 'Busca'
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Nome Cliente'
        'N'#186' NFCE-e')
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 400
    Width = 798
    Height = 56
    Align = alBottom
    TabOrder = 1
    object GroupBox4: TGroupBox
      Left = 1
      Top = 1
      Width = 207
      Height = 54
      Align = alLeft
      Caption = 'N'#186' NFC-e'
      TabOrder = 0
      object DBEdit1: TDBEdit
        Left = 8
        Top = 18
        Width = 121
        Height = 19
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'NR_DANOTA'
        DataSource = DMCONSULTA.DSIBVENDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 208
      Top = 1
      Width = 368
      Height = 54
      Align = alLeft
      Caption = 'Chave NFC-e'
      TabOrder = 1
      object DBEdit2: TDBEdit
        Left = 6
        Top = 18
        Width = 356
        Height = 19
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'CHAVENOTA'
        DataSource = DMCONSULTA.DSIBVENDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 576
      Top = 1
      Width = 221
      Height = 54
      Align = alClient
      Caption = 'Protocolo NFC-e'
      TabOrder = 2
      object DBEdit3: TDBEdit
        Left = 6
        Top = 18
        Width = 209
        Height = 19
        CharCase = ecUpperCase
        Color = clWhite
        Ctl3D = False
        DataField = 'PROTOCOLONOTA'
        DataSource = DMCONSULTA.DSIBVENDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 798
    Height = 343
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 794
      Height = 339
      Align = alClient
      DataSource = DMCONSULTA.DSIBVENDA
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Color = clWhite
          Expanded = False
          FieldName = 'NR_DANOTA'
          Title.Caption = 'N'#186' da nota'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 101
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATA'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENDA_NMCLIENTE'
          Title.Caption = 'Cliente'
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALVENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Total '
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHAVENOTA'
          Title.Caption = 'Chave NFC-e'
          Width = 221
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROTOCOLONOTA'
          Title.Caption = 'Protocolo NFC-e'
          Width = 128
          Visible = True
        end>
    end
  end
end
