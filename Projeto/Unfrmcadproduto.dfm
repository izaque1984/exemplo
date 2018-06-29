object FRMCADPRODUTO: TFRMCADPRODUTO
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produtos'
  ClientHeight = 507
  ClientWidth = 871
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
  object Panel3: TPanel
    Left = 0
    Top = 23
    Width = 871
    Height = 130
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object FlatGroupBox1: TFlatGroupBox
      Left = 13
      Top = 6
      Width = 247
      Height = 56
      Caption = 'C'#243'digo de Venda - EAN'
      TabOrder = 0
      ColorBorder = 16744448
      object Editean: TFlatEdit
        Left = 13
        Top = 22
        Width = 204
        Height = 22
        ColorFocused = clMoneyGreen
        ColorFlat = clWhite
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        OnExit = EditeanExit
      end
    end
    object FlatGroupBox2: TFlatGroupBox
      Left = 266
      Top = 6
      Width = 585
      Height = 56
      Caption = 'Descri'#231#227'o do Produto'
      TabOrder = 1
      ColorBorder = 16744448
      object editdescricao: TFlatEdit
        Left = 21
        Top = 22
        Width = 548
        Height = 22
        ColorFocused = clMoneyGreen
        ColorFlat = clWhite
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object FlatGroupBox3: TFlatGroupBox
      Left = 13
      Top = 68
      Width = 170
      Height = 47
      Caption = 'N.C.M.'
      TabOrder = 2
      ColorBorder = 16744448
      object SpeedButton11: TSpeedButton
        Left = 143
        Top = 18
        Width = 23
        Height = 22
        Cursor = crHandPoint
        Hint = 'Localizar N.C.M.'
        Caption = '....'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton11Click
      end
      object editncm: TFlatEdit
        Left = 13
        Top = 18
        Width = 124
        Height = 22
        ColorFocused = clMoneyGreen
        ColorFlat = clWhite
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 0
        OnExit = editncmExit
      end
    end
    object FlatGroupBox5: TFlatGroupBox
      Left = 189
      Top = 68
      Width = 662
      Height = 47
      Caption = 'CFOP - Grupo Fiscal'
      TabOrder = 3
      ColorBorder = 16744448
      object Label1: TLabel
        Left = 458
        Top = 18
        Width = 30
        Height = 13
        Cursor = crHandPoint
        Hint = 'CEST (C'#243'digo Especificador da Substitui'#231#227'o Tribut'#225'ria)'
        Caption = 'CEST:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        ParentShowHint = False
        ShowAccelChar = False
        ShowHint = True
      end
      object SpeedButton12: TSpeedButton
        Left = 623
        Top = 18
        Width = 23
        Height = 22
        Cursor = crHandPoint
        Hint = 'Localizar CEST (C'#243'digo Especificador da Substitui'#231#227'o Tribut'#225'ria)'
        Caption = '....'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton12Click
      end
      object FlatComboBox1: TFlatComboBox
        Left = 111
        Top = 18
        Width = 338
        Height = 24
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 16
        Items.Strings = (
          '102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito.'
          
            '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
            'bstitu'#237'do) ou por antecipa'#231#227'o. ( para vendas no CFOP 5405)'
          '900 - Outros. ( para remessa, doa'#231#227'o, brindes..)')
        ParentFont = False
        TabOrder = 0
        ItemIndex = -1
      end
      object cbcfop: TFlatComboBox
        Left = 4
        Top = 18
        Width = 101
        Height = 24
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 16
        Items.Strings = (
          '5102'
          '5405')
        ParentFont = False
        TabOrder = 1
        ItemIndex = -1
        OnExit = cbcfopExit
      end
      object editcest: TFlatEdit
        Left = 496
        Top = 18
        Width = 121
        Height = 22
        ColorFocused = clMoneyGreen
        ColorFlat = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 153
    Width = 871
    Height = 321
    ActivePage = pgcadprincipal
    Align = alClient
    TabOrder = 1
    object pgcadprincipal: TTabSheet
      Caption = 'Informa'#231#245'es do Produto'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 863
        Height = 117
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 9
          Top = 12
          Width = 59
          Height = 13
          Caption = 'Fornecedor:'
        end
        object Label4: TLabel
          Left = 449
          Top = 12
          Width = 33
          Height = 13
          Caption = 'Grupo:'
        end
        object Label5: TLabel
          Left = 722
          Top = 12
          Width = 38
          Height = 13
          Caption = 'Medida:'
        end
        object Label33: TLabel
          Left = 9
          Top = 58
          Width = 38
          Height = 13
          Caption = 'Cole'#231#227'o'
        end
        object Label34: TLabel
          Left = 163
          Top = 58
          Width = 29
          Height = 13
          Caption = 'Se'#231#227'o'
        end
        object Label35: TLabel
          Left = 389
          Top = 58
          Width = 50
          Height = 13
          Caption = 'Sub Grupo'
        end
        object Label37: TLabel
          Left = 607
          Top = 58
          Width = 29
          Height = 13
          Caption = 'Marca'
        end
        object SpeedButton4: TSpeedButton
          Left = 361
          Top = 77
          Width = 22
          Height = 21
          Cursor = crHandPoint
          Hint = 'Localizar Se'#231#227'o'
          Caption = '...'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object SpeedButton5: TSpeedButton
          Left = 578
          Top = 77
          Width = 23
          Height = 21
          Cursor = crHandPoint
          Hint = 'Localizar SubGrupo'
          Caption = '...'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object SpeedButton6: TSpeedButton
          Left = 829
          Top = 77
          Width = 23
          Height = 21
          Cursor = crHandPoint
          Hint = 'Localizar Marca'
          Caption = '...'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object SpeedButton7: TSpeedButton
          Left = 693
          Top = 31
          Width = 23
          Height = 21
          Cursor = crHandPoint
          Hint = 'Localizar Grupo'
          Caption = '...'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object SpeedButton9: TSpeedButton
          Left = 421
          Top = 31
          Width = 23
          Height = 21
          Cursor = crHandPoint
          Hint = 'Localizar Fornecedor'
          Caption = '...'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object dbmedida: TFlatComboBox
          Left = 722
          Top = 31
          Width = 105
          Height = 23
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 15
          Items.Strings = (
            'UN'
            'KG')
          ParentFont = False
          TabOrder = 2
          Text = 'UN'
          ItemIndex = -1
        end
        object dbcolecao: TFlatComboBox
          Left = 9
          Top = 77
          Width = 144
          Height = 23
          Color = clWhite
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 15
          Items.Strings = (
            'INVERNO'
            'VERAO'
            'OUTONO'
            'MEIA ESTACAO')
          ParentFont = False
          TabOrder = 3
          ItemIndex = -1
        end
        object editfornecedor: TFlatEdit
          Left = 9
          Top = 31
          Width = 411
          Height = 21
          ColorFocused = clMoneyGreen
          ColorFlat = clWhite
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object editgrupo: TFlatEdit
          Left = 449
          Top = 31
          Width = 242
          Height = 21
          ColorFocused = clMoneyGreen
          ColorFlat = clWhite
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object editsecao: TFlatEdit
          Left = 163
          Top = 77
          Width = 195
          Height = 21
          ColorFocused = clMoneyGreen
          ColorFlat = clWhite
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object editsubgrupo: TFlatEdit
          Left = 389
          Top = 77
          Width = 187
          Height = 21
          ColorFocused = clMoneyGreen
          ColorFlat = clWhite
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object editmarca: TFlatEdit
          Left = 607
          Top = 77
          Width = 220
          Height = 21
          ColorFocused = clMoneyGreen
          ColorFlat = clWhite
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 117
        Width = 600
        Height = 176
        Align = alClient
        Caption = 'Pre'#231'os e Custos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label6: TLabel
          Left = 12
          Top = 26
          Width = 88
          Height = 13
          Caption = 'Custo Unit'#225'rio R$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 44
          Top = 53
          Width = 56
          Height = 13
          Caption = 'Margem %:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 5
          Top = 80
          Width = 95
          Height = 13
          Caption = 'Pre'#231'o de Venda R$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 16
          Top = 107
          Width = 84
          Height = 13
          Caption = 'Desconto Indi %:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 283
          Top = 53
          Width = 51
          Height = 13
          Caption = 'Dta Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 288
          Top = 80
          Width = 46
          Height = 13
          Caption = 'Dta Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 24
          Top = 134
          Width = 76
          Height = 13
          Caption = 'Lucro Estimado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 254
          Top = 26
          Width = 80
          Height = 13
          Caption = 'Pre'#231'o Promo R$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 236
          Top = 80
          Width = 7
          Height = 13
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label32: TLabel
          Left = 3
          Top = 190
          Width = 78
          Height = 13
          Caption = '* Valor Sugerido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object editprecocusto: TFlatEdit
          Left = 106
          Top = 26
          Width = 128
          Height = 21
          ColorFocused = clMoneyGreen
          ColorFlat = clWhite
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object editmargemlucro: TFlatEdit
          Left = 106
          Top = 53
          Width = 128
          Height = 21
          ColorFocused = clMoneyGreen
          ColorFlat = clWhite
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object editprecovenda: TFlatEdit
          Left = 106
          Top = 80
          Width = 128
          Height = 21
          ColorFocused = clMoneyGreen
          ColorFlat = clWhite
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object editdesconto: TFlatEdit
          Left = 106
          Top = 107
          Width = 128
          Height = 21
          ColorFocused = clMoneyGreen
          ColorFlat = clWhite
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object editlucro: TFlatEdit
          Left = 106
          Top = 134
          Width = 128
          Height = 21
          ColorFocused = clMoneyGreen
          ColorFlat = clWhite
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object editprecopromocao: TFlatEdit
          Left = 341
          Top = 26
          Width = 128
          Height = 21
          ColorFocused = clMoneyGreen
          ColorFlat = clWhite
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object editdatai: TFlatEdit
          Left = 341
          Top = 53
          Width = 128
          Height = 21
          ColorFocused = clMoneyGreen
          ColorFlat = clWhite
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object editdataf: TFlatEdit
          Left = 341
          Top = 80
          Width = 128
          Height = 21
          ColorFocused = clMoneyGreen
          ColorFlat = clWhite
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object editeditar: TEdit
          Left = 552
          Top = 30
          Width = 31
          Height = 21
          TabOrder = 8
          Visible = False
        end
      end
      object GroupBox3: TGroupBox
        Left = 600
        Top = 117
        Width = 263
        Height = 176
        Align = alRight
        Caption = 'Controle do Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label10: TLabel
          Left = 38
          Top = 26
          Width = 46
          Height = 13
          Caption = 'Compras:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 50
          Top = 80
          Width = 34
          Height = 13
          Caption = 'Critico:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 16
          Top = 107
          Width = 68
          Height = 13
          Caption = 'Qtd. Estoque:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 45
          Top = 53
          Width = 39
          Height = 13
          Caption = 'Vendas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 6
          Top = 190
          Width = 196
          Height = 13
          Caption = '* Crtico: Quantidade minima do estoque!'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object editqtdcompra: TFlatEdit
          Left = 90
          Top = 26
          Width = 128
          Height = 21
          ColorFocused = clMoneyGreen
          ColorFlat = clWhite
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object editqtdvendas: TFlatEdit
          Left = 90
          Top = 53
          Width = 128
          Height = 21
          ColorFocused = clMoneyGreen
          ColorFlat = clWhite
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object editcritico: TFlatEdit
          Left = 90
          Top = 80
          Width = 128
          Height = 21
          ColorFocused = clMoneyGreen
          ColorFlat = clWhite
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object editqtdestoque: TFlatEdit
          Left = 90
          Top = 107
          Width = 128
          Height = 21
          ColorFocused = clMoneyGreen
          ColorFlat = clWhite
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Text = '1'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Informa'#231#245'es Fiscais'
      ImageIndex = 1
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 863
        Height = 293
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 0
        object TabSheet4: TTabSheet
          Caption = 'Substitui'#231#227'o Tribut'#225'ria Help'
          object ListBox1: TListBox
            Left = 0
            Top = 0
            Width = 855
            Height = 265
            Align = alClient
            ItemHeight = 13
            Items.Strings = (
              'Substitui'#231#227'o Tribut'#225'ria  CFOP - 5405'
              
                '----------------------------------------------------------------' +
                '--'
              ' '#193'gua Mineral, Gelo, Refrigerante, Cerveja e Chope '
              ' Aparelhos Celulares e Cart'#245'es inteligentes '
              ' Artefatos de Uso Dom'#233'stico '
              ' Artigos de Papelaria'
              ' Bebidas Quentes'
              ' Bicicletas'
              ' Brinquedos '
              ' Colch'#245'es, Box, Travesseiros'
              ' Cigarro e Produtos derivados do Fumo'
              ' Cimento '
              
                ' Cosm'#233'ticos, Perfumaria, Artigos de Higiene Pessoal e de Toucado' +
                'r'
              ' Combust'#237'veis, Lubrificantes, Aditivos e Outros '
              ' Disco Fonogr'#225'fico, Fita Virgem ou Gravada'
              ' Energia El'#233'trica '
              ' Ferramentas '
              ' Filme Fotogr'#225'fico e Cinematogr'#225'fico e '#8220'Slide'#8221' '
              ' Instrumentos Musicais '
              ' L'#226'mina de Barbear aparelho de Barbear Descart'#225'vel e Isqueiro '
              ' L'#226'mpada El'#233'trica e Reator '
              
                ' Maquinas e Aparelhos Mec'#226'nicos, El'#233'tricos, Eletromec'#226'nicos e Au' +
                'tom'#225'ticos'
              ' Materiais de Constru'#231#227'o, Acabamento, Bricolagem e adorno'
              ' Materiais de Limpeza'
              ' Materiais El'#233'tricos'
              ' Medicamentos e outros Produtos Farmac'#234'uticos '
              ' Pe'#231'as, Componentes e Acess'#243'rios Automotivos '
              ' Produtos Aliment'#237'cios'
              ' Pilhas e Baterias El'#233'tricas'
              ' Pneum'#225'ticos, C'#226'maras e Protetores'
              ' Porta a Porta - Marketing Direto'
              ' Produtos Eletr'#244'nicos, Eletroeletr'#244'nicos e Eletrodom'#233'sticos '
              ' Ra'#231#245'es para animais dom'#233'sticos '
              ' Sorvetes '
              ' Tintas, Vernizes e Outras Mercadorias da Ind'#250'stria Qu'#237'mica '
              ' Transportes '
              ' Ve'#237'culos '
              ' Ve'#237'culos - Faturamento Direto ao Consumidor'
              '')
            TabOrder = 0
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Diferen'#231'as entre CFOP  5102 e 5405'
          ImageIndex = 1
          object ListBox2: TListBox
            Left = 0
            Top = 0
            Width = 855
            Height = 265
            Align = alClient
            ItemHeight = 13
            Items.Strings = (
              'Diferen'#231'as entre CFOP  5102 e 5405'
              
                '----------------------------------------------------------------' +
                '----------------------'
              
                'CFOP 5102 - Venda de mercadoria adquirida ou recebida de terceir' +
                'os'
              
                'Classificam-se neste c'#243'digo as vendas de mercadorias adquiridas ' +
                'ou recebidas de terceiros para'
              
                'industrializa'#231#227'o ou comercializa'#231#227'o, que n'#227'o tenham sido objeto ' +
                'de qualquer processo industrial '
              
                'no estabelecimento. Tamb'#233'm ser'#227'o classificadas neste c'#243'digo as v' +
                'endas de mercadorias por estabelecimento'
              
                ' comercial de cooperativa destinadas a seus cooperados ou estabe' +
                'lecimento de outra cooperativa.'
              ''
              
                'CFOP 5405 - Venda de mercadoria adquirida/recebida de terceiros ' +
                'em opera'#231#227'o'
              
                'com mercadoria sujeita ao regime de substitui'#231#227'o tribut'#225'ria, na ' +
                'condi'#231#227'o de'
              'contrib substitu'#237'do'
              
                'portanto o que vai diferenciar se ser'#225' um codigo ou outro ser'#225' a' +
                ' mercadoria em'
              
                'si...se ela '#233' substitui'#231'ao tributaria ou nao...se for varias mer' +
                'cadorias vc tem que'
              'verificar uma por uma pra saber.'
              
                '----------------------------------------------------------------' +
                '-----------------------')
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Agregados'
      ImageIndex = 2
      object GroupBox6: TGroupBox
        Left = 0
        Top = 148
        Width = 863
        Height = 145
        Align = alBottom
        Caption = 'Agregados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Panel4: TPanel
          Left = 706
          Top = 20
          Width = 155
          Height = 123
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object SpeedButton2: TSpeedButton
            Left = 0
            Top = 0
            Width = 155
            Height = 33
            Cursor = crHandPoint
            Align = alTop
            Caption = 'Confirmar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0DED3A2BCA6789678688A69688A
              69789678A2BDA7D0DED3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0C5B3305F322B592C2B5629
              3B7043447D50447D503B70432B56292B592C305F32AFC5B3FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDE8E0688F6C2C5D2E3F
              784A6BB68B86DBB187DEB384D8AE84D8AE87DEB386DBB16BB68B3F784A2C5D2E
              688E6CDDE8E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E0D42F64
              372C613370B78E8EDFB77ED1A469BD855AB47459B27159B2715AB47469BD857E
              D1A48EDFB770B78E2C61332F6337D0E0D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              DDE9E12F683A38734488D3AC8AD7AE61B87C50AE6654B16C56B26E56B26E56B2
              6E56B26E54B16C50AE6661B87C8AD7AE88D2AC3874442F683ADDE9E1FFFFFFFF
              FFFFFFFFFFFFFFFF6896722B67388DD4AF8AD6AD55B16C56B06E59B27259B272
              59B27259B27259B27259B27259B27259B27256B06E55B16C8AD6AD8DD4AF2B67
              37699673FFFFFFFFFFFFFFFFFFB1CBB82A6A397BBD9796DCB65AB1705BB4715D
              B5745DB5745DB57455B16D4FAE675DB5735DB5745DB5745DB5745DB5745BB471
              5AB17096DCB67BBD972A6938B1CCB9FFFFFFFFFFFF2F7544428659A6E5C76CBD
              845BB3715EB6755EB6755EB5754EAE6780C693CAE9D241A95D5DB5745EB6755E
              B6755EB6755EB6755BB3716ABD84A6E5C74286592E7443FFFFFFD2E4D828713E
              84C4A097D8B358B16E61B67961B67961B67851AF698BCB9BFFFFFFFFFFFFD1EB
              D94DAD665FB57761B67961B67961B67961B67958B16E97D8B384C4A028713ED3
              E4D9A6C9B124743EB0E6CB7DC69662B67766B97C65B87B4EAE68A0D6AFFFFFFF
              FFFFFFFFFFFFFFFFFFDFF1E349AC6463B77966B97C66B97C66B97C62B6777DC6
              96B0E6CB24743EA7CAB376AD8A408D5CB5E7D16DBC8367B97B68B97D5FB576B5
              DFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9F5ED58B37065B87A69BA7D
              69BA7D67B97B6DBC83B5E7D1408D5C76AC8A67A37E4D996EB3E5CD6DBB826ABA
              7F68B97D7CC490FFFFFFFFFFFFFFFFFFFFFFFFFCFDFCFFFFFFFFFFFFFFFFFFF2
              F9F456B06E67B87D6CBB816ABA7F6DBB82B3E5CD4D996E67A37E66A77F509C6F
              B9E6D071BD866DBB826FBB8465B77C76C289FFFFFFFFFFFF99D2A851AF6AFFFF
              FFFFFFFFFFFFFFFFFFFFFAFDFA68B87D69B87F6DBB8271BD86B9E6D0509C6F66
              A77F75B18E409564C3EBDA76BF8B70BD8572BE8772BE8768B87E85C9969FD3AD
              61B6796BBA8171C087FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF76C18A6DBB8276BF
              8BC3EBDA40956474B18EA6D0B820854AC4EADB8ECEA270BD8474C08974C08974
              C08970BD856DBC8274C08974C0896CBB8176C289FFFFFFFFFFFFFFFFFFFFFFFF
              8BCB9C6CBB808ECEA2C4EADB1F8449A8D2BAD3E9DC218B4F99CFB4B2E0C76EBB
              7F79C18A79C18A79C18A79C18A79C18A79C18A79C18A79C18A6EBB818FCD9FFF
              FFFFDDEFE16CBD8072BD856EBB7FB2E0C799CFB4208A4ED4E9DEFFFFFF299459
              45A26FCFEDE588CB9C77BF897CC28E7CC28E7CC28E7CC28E7CC28E7CC28E7CC2
              8E7CC28E72BD8586CA986AB97E7AC08C77BF8988CB9CCFEDE545A26F279358FF
              FFFFFFFFFFB1D9C32091549ED2B8C6E8DC7AC28B7BC18D7DC2907DC2907DC290
              7DC2907DC2907DC2907DC2907DC2907AC18D7DC2907BC18D7AC28BC6E8DA9ED2
              B81F9154B2DAC4FFFFFFFFFFFFFFFFFF65B78C209558C7E7D9C4E6D87DC38C7C
              C28D80C49180C49180C49180C49180C49180C49180C49180C4917CC28D7DC38C
              C4E6D8C7E7D920955864B68CFFFFFFFFFFFFFFFFFFFFFFFFDFF0E7259D6036A4
              6CCCE8DFCFEBE193CEA379C38880C69083C79283C79383C79383C79280C69079
              C38893CEA3CFEBE1CCE8DF36A46C249D5FDFF1E8FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFD3ECDF24A0631F9D5EA9D9C4E4F3F3C9E6DBA4D5B48CCB9B89C99A89C9
              9A8CCB9BA4D5B4C9E6DBE4F3F3A9D9C41F9D5E24A062D3ECDFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF1E862BE931B9F5F48B17FACDCC8E7F2F4
              EBF5F6E3F0F0E3F0F0EBF5F6E7F2F4ACDCC848B17F1B9F5F63BE93DFF1E9FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2DFCA26
              A86D1BA26318A26141B27F57BA8D57BA8D41B27F18A1611BA26325A76CB2DFCA
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFD5EEE3AADDC672C9A162C39762C39772C9A1ABDDC6D6
              EFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentFont = False
          end
          object SpeedButton3: TSpeedButton
            Left = 0
            Top = 33
            Width = 155
            Height = 32
            Cursor = crHandPoint
            Align = alTop
            Caption = 'Deletar Item'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E23A44E2FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E23B46E2FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E2616BF9616BF93842E0FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3842E0616BF9
              616BF93B46E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E15660F1737C
              FE7E87FE626CF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38
              42E0626CF97E87FE737CFE5660F13A44E1FFFFFFFFFFFFFFFFFFFFFFFF3842E0
              4C54EA6169F66972FC757FFE848DFE636DFA3842E0FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF3842E0636DFA848DFE757FFE6972FC6169F64C54EA3842E0FFFFFFFF
              FFFFFFFFFF3741DF464FE75961F1626BF86B74FE7882FE828CFE616BF93943E1
              FFFFFFFFFFFFFFFFFF3943E1616BF9828CFE7882FE6B74FE626BF85961F1464F
              E73741DFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851E85C64F3646CF96A73FD74
              7DFE7B85FE5D67F73B46E2FFFFFF3B46E25D67F77B85FE747DFE6A73FD646CF9
              5C64F34851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851
              E85A62F2616AF7666FFA6D76FE717BFE6B74FE3B46E26B74FE717BFE6D76FE66
              6FFA616AF75A62F24851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF3741DF4750E75860F15D65F4616AF7646DF96770FB6770FB6770
              FB646DF9616AF75D65F45860F14750E73741DFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE424AE34E55E9575FF05A62F2
              5C64F35C64F35C64F35A62F2575FF04E55E9424AE33640DEFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE4E
              55E9575FF05A62F25C64F35C64F35C64F35A62F2575FF04E55E93640DEFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF3640DE575FF05A62F25C64F35C64F35C64F35A62F2575FF036
              40DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF3640DE4E55E9575FF05A62F25C64F35C64F35C64
              F35A62F2575FF04E55E93640DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE424AE34E55E9575FF05A62F2
              5C64F35C64F35C64F35A62F2575FF04E55E9424AE33640DEFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4750E75860F15D
              65F4616AF7646DF96770FB6770FB6770FB646DF9616AF75D65F45860F14750E7
              3741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851
              E85A62F2616AF7666FFA6D76FE717BFE6B74FE3B46E26B74FE717BFE6D76FE66
              6FFA616AF75A62F24851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              3741DF4851E85C64F3646CF96A73FD747DFE7B85FE5D67F73B46E2FFFFFF3B46
              E25D67F77B85FE747DFE6A73FD646CF95C64F34851E83741DFFFFFFFFFFFFFFF
              FFFFFFFFFF3741DF464FE75961F1626BF86B74FE7882FE828CFE616BF93943E1
              FFFFFFFFFFFFFFFFFF3943E1616BF9828CFE7882FE6B74FE626BF85961F1464F
              E73741DFFFFFFFFFFFFFFFFFFF3842E04C54EA6169F66972FC757FFE848DFE63
              6DFA3842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3842E0636DFA848DFE757FFE
              6972FC6169F64C54EA3842E0FFFFFFFFFFFFFFFFFFFFFFFF3A44E15660F1737C
              FE7E87FE626CF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38
              42E0626CF97E87FE737CFE5660F13A44E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF3B46E2616BF9616BF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF3842E0616BF9616BF93B46E2FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E23A44E2FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E23B46E2FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentFont = False
          end
          object DBNavigator1: TDBNavigator
            Left = 0
            Top = 98
            Width = 155
            Height = 25
            DataSource = DMLOJA.DSTBESTOQUE
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alBottom
            TabOrder = 0
          end
        end
        object DBGrid2: TDBGrid
          Left = 2
          Top = 20
          Width = 704
          Height = 123
          Align = alClient
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -15
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'REFERENCIA'
              Title.Caption = 'Referencia'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 399
              Visible = True
            end>
        end
      end
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 863
        Height = 47
        Align = alTop
        Caption = 'Localizar Produtos para agregar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object editcodigo: TFlatEdit
          Left = 9
          Top = 18
          Width = 715
          Height = 24
          ColorFlat = clWhite
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 47
        Width = 863
        Height = 72
        Align = alClient
        Caption = 'Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 859
          Height = 55
          Align = alClient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'REFERENCIA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Caption = 'Referencia'
              Width = 176
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Caption = 'Descri'#231#227'o'
              Width = 518
              Visible = True
            end>
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 119
        Width = 863
        Height = 29
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
        object SpeedButton1: TSpeedButton
          Left = 706
          Top = 0
          Width = 157
          Height = 29
          Cursor = crHandPoint
          Align = alRight
          Caption = 'Adicionar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A47158A47158A47158A47158A4
            7158A47158A47158A471FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A37085BD9D
            85BD9D85BD9D85BD9D85BD9D85BD9D56A26EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF56A26C84D5B15ED09D5ED09D5ED09D5ED09D70C79C53A06AFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF53A0698CD8B662D19F62D19F62D19F62D19F73C89E50
            9E67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF509D6592DBBA67D2A267D2A267D2
            A267D2A275C9A04D9B63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D9A6097DDBE
            6CD3A56CD3A56CD3A56CD3A57ACBA24A985EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF49975C99DEC072D5A872D5A872D5A872D5A87FCBA546955AFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF4593579ADFC078D6AC78D6AC78D6AC78D6AC84CDA942
            9155FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58A47158A370
            56A26C53A069509D654D9A6049975C4593573E8E5098DEBF7ED8B07ED8B07ED8
            B07ED8B08ACFAB3E8E5042915546955A4A985E4D9B63509E6753A06A56A26E58
            A47158A471A7E6CA74CAA072C89D74C99F78CBA17ECBA482CCA888CFAA8ED0AD
            85DAB485DAB485DAB485DAB477C9A072C89D74C99F78CBA17ECBA482CCA888CF
            AA8ED0AD85BD9D58A47158A471A7E6CA8CDCB88CDCB88CDCB88CDCB88CDCB88C
            DCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB88CDCB8
            8CDCB88CDCB88CDCB88CDCB885BD9D58A47158A471A7E6CA93DDBC93DDBC93DD
            BC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93
            DDBC93DDBC93DDBC93DDBC93DDBC93DDBC93DDBC85BD9D58A47158A471A7E6CA
            99DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DF
            C099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC099DFC085BD9D58
            A47158A471A7E6CAA0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4
            A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1C4A0E1
            C4A0E1C485BD9D58A47158A471A7E6CA94DDBD98DEBF9ADFC099DEC097DDBE92
            DBBA8CD8B684D5B1A7E3C8A7E3C8A7E3C8A7E3C87AD0A69ADFC09ADFC099DEC0
            97DDBE92DBBA8CD8B684D5B185BD9D58A47158A47156A26E53A06A509E674D9B
            634A985E46955A4291553E8E508CD8B6ADE5CCADE5CCADE5CCADE5CC80D1A93E
            8E5045935749975C4D9A60509D6553A06956A26C58A37058A471FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF45935792DBBAB3E6D0B3E6D0B3E6
            D0B3E6D087D1AC429155FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49975C97DDBE
            B9E8D3B9E8D3B9E8D3B9E8D38CD2AE46955AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF4D9A6099DEC0BEE9D6BEE9D6BEE9D6BEE9D691D3B14A985EFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF509D659ADFC0C3EAD9C3EAD9C3EAD9C3EAD996D3B24D
            9B63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF53A06998DEBFC7EBDBC7EBDBC7EB
            DBC7EBDB9BD4B5509E67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF56A26C94DDBD
            CAECDDCAECDDCAECDDCAECDD9ED5B753A06AFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF58A370A7E6CAA7E6CAA7E6CAA7E6CAA7E6CAA7E6CA56A26EFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF58A47158A47158A47158A47158A47158A47158A47158
            A471FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          ExplicitLeft = 583
        end
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 474
    Width = 871
    Height = 33
    Align = alBottom
    TabOrder = 2
    object SpeedButton10: TSpeedButton
      Left = 736
      Top = 1
      Width = 134
      Height = 31
      Align = alRight
      Caption = '&Fechar'
      Flat = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00044534386B5457837679
        9C9799B4B9BBCCD8D9E3F5F6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C317C0C317C0C317C000A4D
        3B68AC33599D3152962B488C21397D15286C0A185C020C4F010D510312570416
        5D061C6507236B092872FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A317D0C
        0D0F0C0D0F0011564477BB4F82C75A8DD26295DA6699DE6598DD679ADF6497DC
        6295DA5787CC426EB32E55991D3F84001257FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0C35820E10120E0F120018613467AB3164A8396CB03F72B6487BBE51
        84C85A8DD25A8DD25E91D65E91D65689CE4679BD3D70B4001962FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0E3986101214111114001F6A3366AA295CA0295C
        A0285B9F275A9E376AAC6295DB315FAB25589C275A9E2A5DA13063A6396CB000
        206BFFFFFFFFFFFFFFFFFFF9FCFAFFFFFFFFFFFF113F8B13141713131700226D
        3467AB2A5DA12B5EA22B5EA22B5EA23363A95F92D7305EA82B5EA22B5EA22B5E
        A22B5CA03A6CB100236EFFFFFFFFFFFFFFFFFF002FE6FFFFFFFFFFFF13429015
        161A14161A0024703467AB2A5DA12B5EA22B5EA22A5DA12E5CA25A8DD22E5CA5
        2B5EA22B5EA22B5EA22655993B6DB2002571FFFFFFFFFFFFFFFFFF002FE60018
        DAFFFFFF16469417181D16191E0026723467AB295CA02B5EA22B5EA2295B9F28
        569B5588CD2C59A22B5EA22B5EA22B5EA22350943D6FB4012773FFFFFFFFFFFF
        FFFFFF002FE61569FF0109CB184A9A191B21191B200028753568AC295CA02B5E
        A22B5EA2245297204A905083C82B579F2B5EA22B5EA22B5DA11E488C3E70B501
        29760033EE0033EE0033EE002FE61669FF095EFE0400B41B1E231B1E23002A78
        3669AD295CA0295B9F245296194085163C844B7EC328549D2B5EA22A5CA02350
        9413387B4072B7012B790033EE5DA2FF3F87FF2876FF1569FF095EFE0055FE08
        009D1E2026002C7A2B599F1D478A1B4488153B7F0E2C700E2E75487BC026529A
        1D498D1A438713367A0B286C4274B9012D7B0033EE599FFF4089FF2874FF1568
        FF095EFE0055FE0052FD070081002E7D142669142669477ABF477ABF477ABF47
        7ABF477ABF477ABF477ABF477ABF477ABF477ABF4376BB012F7E0033EE5DA2FF
        3F87FF2876FF1568FF095DFE0055FE0052FD070081002F7F3166B45287D1315E
        AA315FAA305EA93361AC477ABF315FAA305DA8305DA9305EA8305DA94578BD01
        30800033EE5DA2FF4089FF2876FF1669FF095DFE0055FE08009D25282F003182
        6EA1E880B3F8285B9F285B9F2A5DA03366A84C7FC426529A285B9F285B9F285B
        9F2B5EA2477ABF0132830033EE0033EE0033EE002CE61569FF095DFE0400B428
        2A32272A32003384386BAF24579B275A9E275A9E275A9E2F60A45487CC2B57A0
        275A9E275A9E275A9E245599497CC1013485FFFFFFFFFFFFFFFFFF002CE61668
        FF0109CB2560B12A2D35292C35003586386BAF24579B26599D26599D25589C2C
        5BA05E91D62D5BA426599D25589C24579B204F924A7DC2013687FFFFFFFFFFFF
        FFFFFF002CE60018DAFFFFFF2560B12B2F372B2F37003689386BAF2255992558
        9C25589C24569A28569C699CE1325FAA24579B24579B24579B1B478A4C7FC401
        378AFFFFFFFFFFFFFFFFFF002CE6FFFFFFFFFFFF2560B12D313A2D313A00388B
        386BAF21549824579B24579B20509325509773A6EB3563AF23569A23569A2153
        97163D804D80C501398CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2560B130
        323C2F323D00398C386BAF205397235699205194163F811C448B7CAFF43868B4
        2255992152961842850C2B6C4E81C7013A8DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF2560B131353E30353E003B8E3668AC194A8E18458811367708225E10
        307882B5FA3C6DBA143D7E153C7F1335791131785386CC013C8FFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF2560B132373F32373F003C903564AB255197315F
        A73D6DB7487AC8578AD974A7EC7CAFF484B7FC83B6FB7AADF26A9DE25E91D601
        3D91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2560B1343841343841003D91
        6497DC70A3E87BAEF383B6FB88BBFF85B8FD83B6FB83B6FB78ACF26398E0497F
        CA3069B51C57A6013E92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2560B125
        60B12560B1003E935388D0437BC53C75C1316BB9215DAD124EA1054297034195
        0845990D4A9D134FA21854A71E5AAB235EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF0443963D6DAE5F87BC83A2CBA9BFDBCBD8EAED
        F2F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton10Click
      ExplicitLeft = 615
    end
    object SpeedButton8: TSpeedButton
      Left = 602
      Top = 1
      Width = 134
      Height = 31
      Align = alRight
      Caption = '&Salvar'
      Flat = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0DED3A2BCA6789678688A69688A
        69789678A2BDA7D0DED3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0C5B3305F322B592C2B5629
        3B7043447D50447D503B70432B56292B592C305F32AFC5B3FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDE8E0688F6C2C5D2E3F
        784A6BB68B86DBB187DEB384D8AE84D8AE87DEB386DBB16BB68B3F784A2C5D2E
        688E6CDDE8E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E0D42F64
        372C613370B78E8EDFB77ED1A469BD855AB47459B27159B2715AB47469BD857E
        D1A48EDFB770B78E2C61332F6337D0E0D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        DDE9E12F683A38734488D3AC8AD7AE61B87C50AE6654B16C56B26E56B26E56B2
        6E56B26E54B16C50AE6661B87C8AD7AE88D2AC3874442F683ADDE9E1FFFFFFFF
        FFFFFFFFFFFFFFFF6896722B67388DD4AF8AD6AD55B16C56B06E59B27259B272
        59B27259B27259B27259B27259B27259B27256B06E55B16C8AD6AD8DD4AF2B67
        37699673FFFFFFFFFFFFFFFFFFB1CBB82A6A397BBD9796DCB65AB1705BB4715D
        B5745DB5745DB57455B16D4FAE675DB5735DB5745DB5745DB5745DB5745BB471
        5AB17096DCB67BBD972A6938B1CCB9FFFFFFFFFFFF2F7544428659A6E5C76CBD
        845BB3715EB6755EB6755EB5754EAE6780C693CAE9D241A95D5DB5745EB6755E
        B6755EB6755EB6755BB3716ABD84A6E5C74286592E7443FFFFFFD2E4D828713E
        84C4A097D8B358B16E61B67961B67961B67851AF698BCB9BFFFFFFFFFFFFD1EB
        D94DAD665FB57761B67961B67961B67961B67958B16E97D8B384C4A028713ED3
        E4D9A6C9B124743EB0E6CB7DC69662B67766B97C65B87B4EAE68A0D6AFFFFFFF
        FFFFFFFFFFFFFFFFFFDFF1E349AC6463B77966B97C66B97C66B97C62B6777DC6
        96B0E6CB24743EA7CAB376AD8A408D5CB5E7D16DBC8367B97B68B97D5FB576B5
        DFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9F5ED58B37065B87A69BA7D
        69BA7D67B97B6DBC83B5E7D1408D5C76AC8A67A37E4D996EB3E5CD6DBB826ABA
        7F68B97D7CC490FFFFFFFFFFFFFFFFFFFFFFFFFCFDFCFFFFFFFFFFFFFFFFFFF2
        F9F456B06E67B87D6CBB816ABA7F6DBB82B3E5CD4D996E67A37E66A77F509C6F
        B9E6D071BD866DBB826FBB8465B77C76C289FFFFFFFFFFFF99D2A851AF6AFFFF
        FFFFFFFFFFFFFFFFFFFFFAFDFA68B87D69B87F6DBB8271BD86B9E6D0509C6F66
        A77F75B18E409564C3EBDA76BF8B70BD8572BE8772BE8768B87E85C9969FD3AD
        61B6796BBA8171C087FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF76C18A6DBB8276BF
        8BC3EBDA40956474B18EA6D0B820854AC4EADB8ECEA270BD8474C08974C08974
        C08970BD856DBC8274C08974C0896CBB8176C289FFFFFFFFFFFFFFFFFFFFFFFF
        8BCB9C6CBB808ECEA2C4EADB1F8449A8D2BAD3E9DC218B4F99CFB4B2E0C76EBB
        7F79C18A79C18A79C18A79C18A79C18A79C18A79C18A79C18A6EBB818FCD9FFF
        FFFFDDEFE16CBD8072BD856EBB7FB2E0C799CFB4208A4ED4E9DEFFFFFF299459
        45A26FCFEDE588CB9C77BF897CC28E7CC28E7CC28E7CC28E7CC28E7CC28E7CC2
        8E7CC28E72BD8586CA986AB97E7AC08C77BF8988CB9CCFEDE545A26F279358FF
        FFFFFFFFFFB1D9C32091549ED2B8C6E8DC7AC28B7BC18D7DC2907DC2907DC290
        7DC2907DC2907DC2907DC2907DC2907AC18D7DC2907BC18D7AC28BC6E8DA9ED2
        B81F9154B2DAC4FFFFFFFFFFFFFFFFFF65B78C209558C7E7D9C4E6D87DC38C7C
        C28D80C49180C49180C49180C49180C49180C49180C49180C4917CC28D7DC38C
        C4E6D8C7E7D920955864B68CFFFFFFFFFFFFFFFFFFFFFFFFDFF0E7259D6036A4
        6CCCE8DFCFEBE193CEA379C38880C69083C79283C79383C79383C79280C69079
        C38893CEA3CFEBE1CCE8DF36A46C249D5FDFF1E8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD3ECDF24A0631F9D5EA9D9C4E4F3F3C9E6DBA4D5B48CCB9B89C99A89C9
        9A8CCB9BA4D5B4C9E6DBE4F3F3A9D9C41F9D5E24A062D3ECDFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF1E862BE931B9F5F48B17FACDCC8E7F2F4
        EBF5F6E3F0F0E3F0F0EBF5F6E7F2F4ACDCC848B17F1B9F5F63BE93DFF1E9FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2DFCA26
        A86D1BA26318A26141B27F57BA8D57BA8D41B27F18A1611BA26325A76CB2DFCA
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD5EEE3AADDC672C9A162C39762C39772C9A1ABDDC6D6
        EFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton8Click
      ExplicitLeft = 619
      ExplicitTop = -1
    end
  end
  object panelmostra: TPanel
    Left = 0
    Top = 0
    Width = 871
    Height = 23
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvLowered
    Color = 14453804
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
  end
end
