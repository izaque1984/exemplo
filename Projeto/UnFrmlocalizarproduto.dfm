object FRMLOCALIZARPRODUTO: TFRMLOCALIZARPRODUTO
  Left = 0
  Top = 0
  Caption = 'Localizar Produto'
  ClientHeight = 437
  ClientWidth = 798
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 391
    Width = 798
    Height = 46
    Align = alBottom
    BevelOuter = bvNone
    BevelWidth = 2
    TabOrder = 0
    object GroupBox4: TGroupBox
      Left = 0
      Top = 0
      Width = 169
      Height = 46
      Align = alLeft
      Caption = 'Codigo de Venda'
      TabOrder = 0
      object DBText1: TDBText
        Left = 8
        Top = 19
        Width = 71
        Height = 19
        AutoSize = True
        DataField = 'REFERENCIA'
        DataSource = DMCONSULTA.dsqylocalizarproduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox3: TGroupBox
      Left = 169
      Top = 0
      Width = 396
      Height = 46
      Align = alClient
      Caption = 'Descri'#231#227'o'
      TabOrder = 1
      object DBText2: TDBText
        Left = 9
        Top = 19
        Width = 71
        Height = 19
        AutoSize = True
        DataField = 'DESCRICAO'
        DataSource = DMCONSULTA.dsqylocalizarproduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox2: TGroupBox
      Left = 565
      Top = 0
      Width = 113
      Height = 46
      Align = alRight
      Caption = 'Valor '
      TabOrder = 2
      object DBText3: TDBText
        Left = 6
        Top = 19
        Width = 71
        Height = 19
        AutoSize = True
        DataField = 'VLRVENDA'
        DataSource = DMCONSULTA.dsqylocalizarproduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox5: TGroupBox
      Left = 678
      Top = 0
      Width = 120
      Height = 46
      Align = alRight
      Caption = 'Qtd Estoque'
      TabOrder = 3
      object DBText4: TDBText
        Left = 36
        Top = 19
        Width = 71
        Height = 19
        AutoSize = True
        DataField = 'QTDESTOQUE'
        DataSource = DMCONSULTA.dsqylocalizarproduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 798
    Height = 58
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 1
    object BitBtn4: TBitBtn
      Left = 505
      Top = 8
      Width = 0
      Height = 41
      Cursor = crHandPoint
      Cancel = True
      Caption = 'Adicionar / Enter'
      Default = True
      ModalResult = 1
      TabOrder = 1
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object rb: TRadioGroup
      Left = 511
      Top = 1
      Width = 286
      Height = 56
      Align = alRight
      Caption = 'Pesquisar por'
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 1
      Items.Strings = (
        'C'#243'digo'
        'Descri'#231#227'o'
        'Se'#231#227'o'
        'Reduzido')
      ParentFont = False
      TabOrder = 2
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 510
      Height = 56
      Align = alClient
      Caption = 'Digite os dados da Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Edit1: TFlatEdit
        Left = 4
        Top = 27
        Width = 494
        Height = 24
        ColorFocused = clMoneyGreen
        ColorFlat = clWhite
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = Edit1Change
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 58
    Width = 798
    Height = 333
    ActivePage = Tabvenda
    Align = alClient
    TabOrder = 2
    object Tabvenda: TTabSheet
      Caption = 'Localizar Produto Venda'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGridvenda: TDBGrid
        Left = 0
        Top = 0
        Width = 790
        Height = 305
        Align = alClient
        Color = clWhite
        DataSource = DMCONSULTA.dsqylocalizarproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGridvendaDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'REFERENCIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Title.Caption = 'Refer'#234'ncia'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 145
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Title.Caption = 'Descri'#231#227'o do Produto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 348
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTOINDIVIDUAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Desc (%)'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 73
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VLRVENDA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Valor Unitario'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 91
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDESTOQUE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Qtd  Estoque'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SECAO'
            Title.Caption = 'Grupo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GRUPO'
            Title.Caption = 'Se'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 162
            Visible = True
          end>
      end
    end
    object Tabestoque: TTabSheet
      Caption = 'Localizar Produto Estoque'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 790
        Height = 305
        Align = alClient
        DataSource = DMCONSULTA.dsqylocalizarproduto
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Caption = 'Referencia'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o do Produto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 272
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTOINDIVIDUAL'
            Title.Alignment = taCenter
            Title.Caption = 'Desc (%)'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRVENDA'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Unitario'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDESTOQUE'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Estoque'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SECAO'
            Title.Caption = 'Se'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GRUPO'
            Title.Caption = 'Grupo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end>
      end
    end
  end
end
