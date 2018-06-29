object FRMLOCALIZARCEST: TFRMLOCALIZARCEST
  Left = 0
  Top = 0
  Caption = 'Localizar CEST'
  ClientHeight = 282
  ClientWidth = 985
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 985
    Height = 48
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -23
    ExplicitWidth = 702
    object FlatGroupBox1: TFlatGroupBox
      Left = 1
      Top = 1
      Width = 821
      Height = 46
      Align = alClient
      Caption = 'Localizar CEST'
      TabOrder = 0
      ColorBorder = 16744448
      ExplicitWidth = 538
      object editcodigo: TFlatEdit
        Left = 10
        Top = 20
        Width = 468
        Height = 19
        ColorFocused = clMoneyGreen
        ColorFlat = clWindow
        TabOrder = 0
        OnChange = editcodigoChange
      end
    end
    object rb: TRadioGroup
      Left = 822
      Top = 1
      Width = 162
      Height = 46
      Align = alRight
      Caption = 'Pesquisar Por'
      Color = clBtnFace
      Columns = 2
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'N.C.M'
        'Descri'#231#227'o')
      ParentBackground = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 1
      ExplicitLeft = 539
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 48
    Width = 985
    Height = 234
    Align = alClient
    DataSource = DMCONSULTA.dsqycest
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NCM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEST'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Visible = True
      end>
  end
end
