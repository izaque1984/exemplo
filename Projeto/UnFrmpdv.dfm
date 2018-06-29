object FRMPDV: TFRMPDV
  Left = 0
  Top = 0
  Caption = 'PDV [S'#233'rie 01] Basic_NFCE'
  ClientHeight = 721
  ClientWidth = 1035
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridvenda: TDBGrid
    Left = 164
    Top = 148
    Width = 455
    Height = 155
    Color = clWhite
    Ctl3D = False
    DataSource = DMCONSULTA.dsqylocalizarproduto
    FixedColor = clMoneyGreen
    Options = [dgTitles, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 8
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
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descric'#227'o'
        Width = 362
        Visible = True
      end>
  end
  object Panel5: TPanel
    Left = 8
    Top = 161
    Width = 447
    Height = 226
    TabOrder = 4
    object Editstatus: TEdit
      Left = 7
      Top = 18
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object EDT_Nome: TEdit
      Left = 321
      Top = 16
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object EDT_CPF: TEdit
      Left = 321
      Top = 43
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object EDT_Email: TEdit
      Left = 321
      Top = 70
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object editnumeronota: TEdit
      Left = 321
      Top = 97
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object editserie: TEdit
      Left = 321
      Top = 124
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 5
    end
    object editprotocolo: TEdit
      Left = 321
      Top = 151
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object editchave: TEdit
      Left = 321
      Top = 178
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 7
    end
    object EDT_codigo: TEdit
      Left = 194
      Top = 16
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 8
    end
    object EDTcodvendedor: TEdit
      Left = 194
      Top = 43
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 9
    end
    object Edtnomevendedor: TEdit
      Left = 194
      Top = 70
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 10
    end
    object Edtvalorcomicao: TEdit
      Left = 194
      Top = 97
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 11
    end
    object Editvenda_qtditem: TEdit
      Left = 194
      Top = 124
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 12
    end
    object Edittotallucro: TEdit
      Left = 194
      Top = 151
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 13
    end
    object Editretornastatus: TEdit
      Left = 7
      Top = 46
      Width = 121
      Height = 21
      TabOrder = 14
    end
    object editretornoerro: TEdit
      Left = 9
      Top = 73
      Width = 119
      Height = 21
      TabOrder = 15
    end
    object editcest: TEdit
      Left = 67
      Top = 19
      Width = 121
      Height = 21
      TabOrder = 16
    end
  end
  object paneldescricao: TPanel
    Left = 0
    Top = 0
    Width = 1035
    Height = 46
    Align = alTop
    Caption = 'F1- Emitir NFC-e'
    Color = 10319144
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel8: TPanel
    Left = 298
    Top = 436
    Width = 160
    Height = 78
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object Label6: TLabel
      Left = 36
      Top = 7
      Width = 80
      Height = 19
      Caption = 'Valor Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object z: TEdit
      Left = 10
      Top = 32
      Width = 139
      Height = 28
      CharCase = ecUpperCase
      Color = clWhite
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 639
    Width = 1035
    Height = 63
    Align = alBottom
    Color = 10319144
    ParentBackground = False
    TabOrder = 3
    object Label3: TLabel
      Left = 692
      Top = 1
      Width = 229
      Height = 61
      Align = alRight
      Caption = 'Total R$:  '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -48
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 56
    end
    object lbltotalvenda: TLabel
      AlignWithMargins = True
      Left = 924
      Top = 4
      Width = 107
      Height = 55
      Align = alRight
      Alignment = taRightJustify
      BiDiMode = bdRightToLeft
      Caption = ' 0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -48
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ExplicitHeight = 56
    end
    object Label9: TLabel
      Left = 10
      Top = 6
      Width = 35
      Height = 14
      Caption = 'Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblcliente: TLabel
      Left = 74
      Top = 6
      Width = 57
      Height = 14
      Caption = 'Consumidor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 10
      Top = 26
      Width = 22
      Height = 14
      Caption = 'CPF:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblcpf: TLabel
      Left = 74
      Top = 26
      Width = 84
      Height = 14
      Caption = '00000000000000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 202
      Top = 6
      Width = 50
      Height = 14
      Caption = 'Vendedor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblvendedor: TLabel
      Left = 258
      Top = 6
      Width = 34
      Height = 14
      Caption = 'Padr'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblqtditens: TLabel
      Left = 92
      Top = 46
      Width = 6
      Height = 14
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 10
      Top = 46
      Width = 76
      Height = 14
      Caption = 'Itens Na Venda:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object btnadiciona: TBitBtn
      Left = 528
      Top = 32
      Width = 75
      Height = 25
      Caption = 'btnadiciona'
      TabOrder = 0
      Visible = False
      OnClick = btnadicionaClick
    end
  end
  object Panel6: TPanel
    Left = -7
    Top = 160
    Width = 454
    Height = 277
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Labelnumeronfce: TLabel
      Left = 5
      Top = 255
      Width = 36
      Height = 13
      Caption = '000000'
    end
    object Image1: TImage
      Left = 19
      Top = 5
      Width = 46
      Height = 196
      Stretch = True
    end
    object Editunidade: TEdit
      Left = 376
      Top = 5
      Width = 70
      Height = 21
      TabOrder = 0
      Text = 'Editunidade'
      Visible = False
    end
    object Editcfop: TEdit
      Left = 376
      Top = 32
      Width = 70
      Height = 21
      TabOrder = 1
      Text = 'Editcfop'
      Visible = False
    end
    object Editncm: TEdit
      Left = 376
      Top = 59
      Width = 70
      Height = 21
      TabOrder = 2
      Text = 'Editncm'
      Visible = False
    end
    object editdescricao: TEdit
      Left = 376
      Top = 86
      Width = 70
      Height = 21
      TabOrder = 3
      Text = 'editdescricao'
      Visible = False
    end
    object editdesc: TEdit
      Left = 376
      Top = 113
      Width = 69
      Height = 21
      TabOrder = 4
      Text = 'editdesc'
      Visible = False
    end
    object Editdetvendavalortotal: TEdit
      Left = 376
      Top = 140
      Width = 70
      Height = 21
      TabOrder = 5
      Text = 'Editdetvendavalortotal'
      Visible = False
    end
    object Editsubtotavenda: TEdit
      Left = 376
      Top = 167
      Width = 70
      Height = 21
      TabOrder = 6
      Text = 'Editsubtotavenda'
      Visible = False
    end
    object Editvendaqtditem: TEdit
      Left = 376
      Top = 194
      Width = 70
      Height = 21
      Color = 65408
      TabOrder = 7
      Visible = False
    end
    object Edittotalvenda: TEdit
      Left = 376
      Top = 221
      Width = 69
      Height = 21
      TabOrder = 8
      Text = 'Edittotalvenda'
      Visible = False
    end
    object Editcodigoreduzido: TEdit
      Left = 307
      Top = 221
      Width = 63
      Height = 21
      Color = clWhite
      TabOrder = 9
      Visible = False
    end
    object Editkg: TEdit
      Left = 171
      Top = 216
      Width = 121
      Height = 26
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      Visible = False
    end
    object editcodigoretorno: TFlatEdit
      Left = 133
      Top = 191
      Width = 158
      Height = 19
      ColorFocused = clMoneyGreen
      ColorFlat = 16234596
      CharCase = ecUpperCase
      TabOrder = 11
      Visible = False
      OnExit = editcodigoretornoExit
    end
    object DBEdit1: TDBEdit
      Left = 170
      Top = 248
      Width = 121
      Height = 21
      Color = 8454143
      DataField = 'DETALHEVENDA_QTDITEN'
      DataSource = DMLOJA.DSTBDETVENDA
      TabOrder = 12
      Visible = False
    end
    object DBEdit2: TDBEdit
      Left = 307
      Top = 248
      Width = 121
      Height = 21
      Color = 8454143
      DataField = 'DETALHEVENDA_VLTOTAL'
      DataSource = DMLOJA.DSTBDETVENDA
      TabOrder = 13
      Visible = False
    end
  end
  object gbvenda: TGroupBox
    Left = 158
    Top = 46
    Width = 877
    Height = 593
    Align = alClient
    Caption = 'Emissor da Nota Fiscal do Consumidor Eletronica  NFC-e'
    Color = clBtnFace
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    object Panel1: TPanel
      Left = 2
      Top = 24
      Width = 873
      Height = 567
      Align = alClient
      BevelInner = bvLowered
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label29: TLabel
        Left = 60
        Top = 145
        Width = 46
        Height = 13
        Caption = 'Label29'
        Visible = False
      end
      object Panel4: TPanel
        Left = 2
        Top = 2
        Width = 869
        Height = 54
        Align = alTop
        TabOrder = 0
        object GroupBox2: TGroupBox
          Left = 398
          Top = 1
          Width = 125
          Height = 52
          Align = alRight
          Caption = 'Quantidade'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object editqtd: TEdit
            Left = 2
            Top = 17
            Width = 121
            Height = 33
            Align = alClient
            CharCase = ecUpperCase
            Color = clWhite
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnEnter = editqtdEnter
            OnExit = editqtdExit
            ExplicitHeight = 30
          end
        end
        object GroupBox7: TGroupBox
          Left = 618
          Top = 1
          Width = 120
          Height = 52
          Align = alRight
          Caption = 'Valor Unitario'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object editvalorunitario: TEdit
            Left = 2
            Top = 17
            Width = 116
            Height = 33
            Align = alClient
            CharCase = ecUpperCase
            Color = clWhite
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnEnter = editvalorunitarioEnter
            OnExit = editvalorunitarioExit
            ExplicitHeight = 30
          end
        end
        object GroupBox8: TGroupBox
          Left = 523
          Top = 1
          Width = 95
          Height = 52
          Align = alRight
          Caption = 'Desconto (%)'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object edit_desc: TEdit
            Left = 2
            Top = 17
            Width = 91
            Height = 33
            Align = alClient
            CharCase = ecUpperCase
            Color = clWhite
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            ExplicitHeight = 30
          end
        end
        object GroupBox4: TGroupBox
          Left = 738
          Top = 1
          Width = 130
          Height = 52
          Align = alRight
          Caption = 'Valor Total'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          object edittotal: TEdit
            Left = 2
            Top = 17
            Width = 126
            Height = 33
            Align = alClient
            CharCase = ecUpperCase
            Color = clWhite
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            ExplicitHeight = 30
          end
        end
        object GroupBox1: TGroupBox
          Left = 1
          Top = 1
          Width = 397
          Height = 52
          Align = alClient
          Caption = 'Digite a Descri'#231#227'o do Produto ou Digite o Codigo / F2 - Localiza'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object editcodigo: TEdit
            Left = 2
            Top = 17
            Width = 393
            Height = 33
            Align = alClient
            CharCase = ecUpperCase
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnChange = editcodigoChange
            OnEnter = editcodigoEnter
            OnExit = editcodigoExit
            OnKeyPress = editcodigoKeyPress
            ExplicitHeight = 30
          end
        end
      end
      object GroupBox11: TGroupBox
        Left = 2
        Top = 56
        Width = 869
        Height = 509
        Align = alClient
        Caption = 'Descri'#231#227'o do Produto / Servi'#231'o'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object Label25: TLabel
          Left = 449
          Top = 106
          Width = 29
          Height = 14
          Caption = 'CFOP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label26: TLabel
          Left = 463
          Top = 91
          Width = 24
          Height = 14
          Caption = 'NCM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object SpeedButton1: TSpeedButton
          Left = 539
          Top = 126
          Width = 23
          Height = 22
        end
        object Label32: TLabel
          Left = 2
          Top = 493
          Width = 865
          Height = 14
          Align = alBottom
          Caption = 
            '* Para exluir item da venda, clique com o bot'#227'o direito do mouse' +
            ' em cima do item!'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 387
        end
        object Editaliquota: TEdit
          Left = 458
          Top = 98
          Width = 69
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Visible = False
        end
        object Edit3: TEdit
          Left = 496
          Top = 98
          Width = 69
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Visible = False
        end
        object Edit5: TEdit
          Left = 460
          Top = 112
          Width = 109
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          Visible = False
        end
        object Edit4: TEdit
          Left = 449
          Top = 127
          Width = 100
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          Visible = False
        end
        object DBGriditens: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 80
          Width = 859
          Height = 410
          Hint = 
            'Para Excluir Item da Venda Clique com o Bot'#227'o direito do Mouse e' +
            'm cima do Produto'
          Align = alClient
          Color = clWhite
          Ctl3D = False
          DataSource = DMLOJA.DSTBDETVENDA
          FixedColor = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          PopupMenu = PopupMenu1
          ShowHint = False
          TabOrder = 5
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGriditensDrawColumnCell
          Columns = <
            item
              Expanded = False
              Title.Caption = ' Item'
              Title.Color = 8454143
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -12
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MINUTA'
              Title.Caption = 'Controle'
              Title.Color = 8454143
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -12
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REFERENCIA'
              Title.Caption = 'Ref'#234'rencia'
              Title.Color = 8454143
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -12
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALHEVENDA_DESCRICAO'
              Title.Caption = 'Descric'#227'o do Produto'
              Title.Color = 8454143
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -12
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 335
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALHEVENDA_VLUNITARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Val. Unit'
              Title.Color = 8454143
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -12
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALHEVENDA_UNIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'Und'
              Title.Color = 8454143
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -12
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALHEVENDA_QTDITEN'
              Title.Alignment = taCenter
              Title.Caption = 'Quant'
              Title.Color = 8454143
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -12
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALHEVENDA_DESCONTO'
              Title.Alignment = taCenter
              Title.Caption = '% Desc'
              Title.Color = 8454143
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -12
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALHEVENDA_VLTOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Total'
              Title.Color = 8454143
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -12
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALHEVENDA_CFOP'
              Title.Alignment = taCenter
              Title.Caption = 'CFOP'
              Title.Color = 8454143
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -12
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCM'
              Title.Color = 8454143
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -12
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 78
              Visible = True
            end>
        end
        object panelitens: TPanel
          Left = 2
          Top = 77
          Width = 865
          Height = 416
          Align = alClient
          Caption = '<Sem dados para Exibir>'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 4
        end
        object pndescricao: TPanel
          Left = 2
          Top = 18
          Width = 865
          Height = 59
          Align = alTop
          BevelOuter = bvNone
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -48
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 702
    Width = 1035
    Height = 19
    Panels = <
      item
        Text = 'Basic_NFCE'
        Width = 100
      end
      item
        Text = 'Sistema Desenvolvido Por Izaque Castro'
        Width = 50
      end>
  end
  object Panel7: TPanel
    Left = 0
    Top = 46
    Width = 158
    Height = 593
    Align = alLeft
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 6
    object Image2: TImage
      Left = 0
      Top = 122
      Width = 158
      Height = 122
      Align = alTop
      Picture.Data = {
        0A544A504547496D61676581750000FFD8FFE000104A46494600010101006000
        600000FFE1005C4578696600004D4D002A000000080004030200020000001600
        00003E511000010000000101000000511100040000000100000B135112000400
        00000100000B130000000050686F746F73686F70204943432070726F66696C65
        00FFE20C584943435F50524F46494C4500010100000C484C696E6F021000006D
        6E74725247422058595A2007CE00020009000600310000616373704D53465400
        00000049454320735247420000000000000000000000010000F6D60001000000
        00D32D4850202000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000011637072740000015000
        00003364657363000001840000006C77747074000001F000000014626B707400
        000204000000147258595A00000218000000146758595A0000022C0000001462
        58595A0000024000000014646D6E640000025400000070646D6464000002C400
        000088767565640000034C0000008676696577000003D4000000246C756D6900
        0003F8000000146D6561730000040C0000002474656368000004300000000C72
        5452430000043C0000080C675452430000043C0000080C625452430000043C00
        00080C7465787400000000436F70797269676874202863292031393938204865
        776C6574742D5061636B61726420436F6D70616E790000646573630000000000
        000012735247422049454336313936362D322E31000000000000000000000012
        735247422049454336313936362D322E31000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000058595A20000000000000F35100010000000116CC58595A200000000000
        000000000000000000000058595A200000000000006FA2000038F50000039058
        595A2000000000000062990000B785000018DA58595A2000000000000024A000
        000F840000B6CF64657363000000000000001649454320687474703A2F2F7777
        772E6965632E636800000000000000000000001649454320687474703A2F2F77
        77772E6965632E63680000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000646573630000000000
        00002E4945432036313936362D322E312044656661756C742052474220636F6C
        6F7572207370616365202D207352474200000000000000000000002E49454320
        36313936362D322E312044656661756C742052474220636F6C6F757220737061
        6365202D20735247420000000000000000000000000000000000000000000064
        657363000000000000002C5265666572656E63652056696577696E6720436F6E
        646974696F6E20696E2049454336313936362D322E3100000000000000000000
        002C5265666572656E63652056696577696E6720436F6E646974696F6E20696E
        2049454336313936362D322E3100000000000000000000000000000000000000
        0000000000000076696577000000000013A4FE00145F2E0010CF140003EDCC00
        04130B00035C9E0000000158595A2000000000004C09560050000000571FE76D
        6561730000000000000001000000000000000000000000000000000000028F00
        0000027369672000000000435254206375727600000000000004000000000500
        0A000F00140019001E00230028002D00320037003B00400045004A004F005400
        59005E00630068006D00720077007C00810086008B00900095009A009F00A400
        A900AE00B200B700BC00C100C600CB00D000D500DB00E000E500EB00F000F600
        FB01010107010D01130119011F0125012B01320138013E0145014C0152015901
        600167016E0175017C0183018B0192019A01A101A901B101B901C101C901D101
        D901E101E901F201FA0203020C0214021D0226022F02380241024B0254025D02
        670271027A0284028E029802A202AC02B602C102CB02D502E002EB02F5030003
        0B03160321032D03380343034F035A03660372037E038A039603A203AE03BA03
        C703D303E003EC03F9040604130420042D043B0448045504630471047E048C04
        9A04A804B604C404D304E104F004FE050D051C052B053A054905580567057705
        86059605A605B505C505D505E505F6060606160627063706480659066A067B06
        8C069D06AF06C006D106E306F507070719072B073D074F076107740786079907
        AC07BF07D207E507F8080B081F08320846085A086E0882089608AA08BE08D208
        E708FB09100925093A094F09640979098F09A409BA09CF09E509FB0A110A270A
        3D0A540A6A0A810A980AAE0AC50ADC0AF30B0B0B220B390B510B690B800B980B
        B00BC80BE10BF90C120C2A0C430C5C0C750C8E0CA70CC00CD90CF30D0D0D260D
        400D5A0D740D8E0DA90DC30DDE0DF80E130E2E0E490E640E7F0E9B0EB60ED20E
        EE0F090F250F410F5E0F7A0F960FB30FCF0FEC1009102610431061107E109B10
        B910D710F511131131114F116D118C11AA11C911E81207122612451264128412
        A312C312E31303132313431363138313A413C513E5140614271449146A148B14
        AD14CE14F01512153415561578159B15BD15E0160316261649166C168F16B216
        D616FA171D17411765178917AE17D217F7181B18401865188A18AF18D518FA19
        201945196B199119B719DD1A041A2A1A511A771A9E1AC51AEC1B141B3B1B631B
        8A1BB21BDA1C021C2A1C521C7B1CA31CCC1CF51D1E1D471D701D991DC31DEC1E
        161E401E6A1E941EBE1EE91F131F3E1F691F941FBF1FEA20152041206C209820
        C420F0211C2148217521A121CE21FB22272255228222AF22DD230A2338236623
        9423C223F0241F244D247C24AB24DA250925382568259725C725F72627265726
        8726B726E827182749277A27AB27DC280D283F287128A228D429062938296B29
        9D29D02A022A352A682A9B2ACF2B022B362B692B9D2BD12C052C392C6E2CA22C
        D72D0C2D412D762DAB2DE12E162E4C2E822EB72EEE2F242F5A2F912FC72FFE30
        35306C30A430DB3112314A318231BA31F2322A3263329B32D4330D3346337F33
        B833F1342B3465349E34D83513354D358735C235FD3637367236AE36E9372437
        60379C37D738143850388C38C839053942397F39BC39F93A363A743AB23AEF3B
        2D3B6B3BAA3BE83C273C653CA43CE33D223D613DA13DE03E203E603EA03EE03F
        213F613FA23FE24023406440A640E74129416A41AC41EE4230427242B542F743
        3A437D43C044034447448A44CE45124555459A45DE4622466746AB46F0473547
        7B47C04805484B489148D7491D496349A949F04A374A7D4AC44B0C4B534B9A4B
        E24C2A4C724CBA4D024D4A4D934DDC4E254E6E4EB74F004F494F934FDD502750
        7150BB51065150519B51E65231527C52C75313535F53AA53F65442548F54DB55
        28557555C2560F565C56A956F75744579257E0582F587D58CB591A596959B85A
        075A565AA65AF55B455B955BE55C355C865CD65D275D785DC95E1A5E6C5EBD5F
        0F5F615FB36005605760AA60FC614F61A261F56249629C62F06343639763EB64
        40649464E9653D659265E7663D669266E8673D679367E9683F689668EC694369
        9A69F16A486A9F6AF76B4F6BA76BFF6C576CAF6D086D606DB96E126E6B6EC46F
        1E6F786FD1702B708670E0713A719571F0724B72A67301735D73B87414747074
        CC7528758575E1763E769B76F8775677B37811786E78CC792A798979E77A467A
        A57B047B637BC27C217C817CE17D417DA17E017E627EC27F237F847FE5804780
        A8810A816B81CD8230829282F4835783BA841D848084E3854785AB860E867286
        D7873B879F8804886988CE8933899989FE8A648ACA8B308B968BFC8C638CCA8D
        318D988DFF8E668ECE8F368F9E9006906E90D6913F91A89211927A92E3934D93
        B69420948A94F4955F95C99634969F970A977597E0984C98B89924999099FC9A
        689AD59B429BAF9C1C9C899CF79D649DD29E409EAE9F1D9F8B9FFAA069A0D8A1
        47A1B6A226A296A306A376A3E6A456A4C7A538A5A9A61AA68BA6FDA76EA7E0A8
        52A8C4A937A9A9AA1CAA8FAB02AB75ABE9AC5CACD0AD44ADB8AE2DAEA1AF16AF
        8BB000B075B0EAB160B1D6B24BB2C2B338B3AEB425B49CB513B58AB601B679B6
        F0B768B7E0B859B8D1B94AB9C2BA3BBAB5BB2EBBA7BC21BC9BBD15BD8FBE0ABE
        84BEFFBF7ABFF5C070C0ECC167C1E3C25FC2DBC358C3D4C451C4CEC54BC5C8C6
        46C6C3C741C7BFC83DC8BCC93AC9B9CA38CAB7CB36CBB6CC35CCB5CD35CDB5CE
        36CEB6CF37CFB8D039D0BAD13CD1BED23FD2C1D344D3C6D449D4CBD54ED5D1D6
        55D6D8D75CD7E0D864D8E8D96CD9F1DA76DAFBDB80DC05DC8ADD10DD96DE1CDE
        A2DF29DFAFE036E0BDE144E1CCE253E2DBE363E3EBE473E4FCE584E60DE696E7
        1FE7A9E832E8BCE946E9D0EA5BEAE5EB70EBFBEC86ED11ED9CEE28EEB4EF40EF
        CCF058F0E5F172F1FFF28CF319F3A7F434F4C2F550F5DEF66DF6FBF78AF819F8
        A8F938F9C7FA57FAE7FB77FC07FC98FD29FDBAFE4BFEDCFF6DFFFFFFDB004300
        0201010201010202020202020202030503030303030604040305070607070706
        070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0C
        FFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0CFFC0001108011D015003012200021101031101FFC4001F00000105
        01010101010100000000000000000102030405060708090A0BFFC400B5100002
        010303020403050504040000017D010203000411051221314106135161072271
        14328191A1082342B1C11552D1F02433627282090A161718191A25262728292A
        3435363738393A434445464748494A535455565758595A636465666768696A73
        7475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9
        AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4
        E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F010003010101010101010101
        0000000000000102030405060708090A0BFFC400B51100020102040403040705
        040400010277000102031104052131061241510761711322328108144291A1B1
        C109233352F0156272D10A162434E125F11718191A262728292A35363738393A
        434445464748494A535455565758595A636465666768696A737475767778797A
        82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6
        B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2
        F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFCA28A2800A28A2800
        A28A2800A28A2800A28A2800A28A2800A28A2802BEA9AADAE87A7CB777B736F6
        76B6EBBA59A790471C63D4B1C003EB49A46B367E20D3A2BCB0BAB6BEB4986639
        EDE5592390671C32920F208E2AC328752AC032B0C10475AF83FE387C76D6BC11
        F1C7C4D6DE11BEBCF0DE9B6D7CD0B5A5B38585E58F0924BE5FDD05D949E9CF19
        E6BD2CBB2E9631B841D9AD75DBFCCF0F3CCEA19646356AABC64ED65BDF7BF6B7
        DC7DDB757715940D2CD2470C4832CEEC1557EA4D79DFC5BFDAABC1DF082D97ED
        9A82EA37D20CC76760566948F5639DAA3FDE209EC0D7C67F1BBF69CF117C7BD3
        F4DB5D623D3EDE1D34B3AA59A3C62666006E70CCD9231C6318C9AF3BAF7B07C2
        EACA58997C97F9FF00C03E3B32E3E7770C0C34E927F8FBBFF04F65F1B7ED410F
        C4FF00DA0F43F126B16F7F6FE1DD06E15EDAD2D587DA1554EFC93900B3385279
        1C0C03C64FDBBE04F1BE9DF11FC2563AD693379F617E9BE36230C30482A47660
        41047A8AFCBD0326BF4BBE0A7C3EB7F85FF0B745D16DE3119B5B64339E7F7933
        0DD2373CF2C49C76E9DAA78930B468D2A6A1A35A25D2DD7E7766BC0F9862B138
        8AEEAD9A76937D799E8BE564F4E9D0EAA8A28AF913F480A28A2800A28A280027
        1457C6FF00B747ED2171E21F1449E10D16EA48B4DD2641F6E9226DA6E6E01CEC
        C8FE18CF6FEF03FDD06BEA0F823ADCDE24F839E15BEB89DAEAE2EB4AB679A566
        DCD249E52EF24FAEECE7DEBD0C465B52861E15E7F6BA76EDF79E2E073CA38AC6
        55C2525FC3EBD1BBD9A5E9DFAFE7D4514515E79ED05145140051451400514514
        005145140051451400514514005145140051457857ECADF18FC49A97C65F8B1F
        0DFC6DAA7F6A6BDE0DD61750D26E9ADE2B76BCD12F10496A76C6AAAC6261244C
        E072546793C807BAD14514005155B59D5EDFC3FA3DD5FDDC9E4DAD8C2F713391
        F71114B31FC0035F157FC117BF6AFF0089DFB6368BF12BC51E3AF1036ADA2DA6
        AD0D8E856A2C2D6D858FCB24B2A930C6ACF8492DC02ECDD0F724D0173EDEA28A
        2800A28A2800A28AF853F6E0FDB1FE24683FF052FF0083FF0006FE1DF899745D
        3F5B16B73E228D34FB5BA696292E1CC8BBA68DD90ADB42EC3615FF00580E7A10
        01F75D7CF1F197F625F0AF88BC49AAEB4FAF5FD8EA9ACC935D456B24F02A4D39
        CB154DC01C648EE719EB5E8BF12BF68AD2BC05E2DB2F0DD9DADE7883C4DA8305
        8F4EB2DBBA30467748C4E10639E7240E48039A8741FD9EAC358F18CBE2CF1743
        6BAD788AE0831C2C3CCB2D350636C71237DE2B8E5D8649C901738AF4F093AB85
        FDF39385D69A6AFE5DBCFEE3C1CCA9E1F1FF00ECCA0AA38BD6EDA51F9AEBE5F7
        D8F88F4BFD9DBC73AD6A773696BE16D62496CE668256F20AC4AEA7057CC38438
        F63D39E9CD7412FEC4FF0013A18999BC30D85049DBA85AB1FC009727E82BF412
        8AF4E5C5388BFBB18FE3FE68F029F87F824BDFA936FCACBF467E63F8B3E1A788
        FE1B5C44DAD689A9699961B1EE2DD96390F070AD8DA7F03C57E8FF00C3CF1945
        F10BC0BA4EB90C6D0C7AA5AC772236393196192B9EF83919F6AD2D4B4CB6D66C
        65B5BCB782EAD665DB243346248E41E854F047D6BE7FF899AC49FB0A6A56DE20
        B38DE5F861ABDFC36BABC124A7CBF0DC92B845B9563F7606660AD9E158AE70A7
        7273E3B328E6108C66B9671DBB3BF4F27EBF79DB94E473C9EACA74A4E74E76BE
        9EF46DB3D375ABBDACFC99F43D15F3E7C76FDBD34FF86FAF5E68BA1E96DAB6A5
        66C639679DCC76D138EC00F9A4C7B151E84D7CD1E3AFDA77C73E3FD5FED775E2
        2D46D300AA4163335AC318F40A8467EAD93EF4B07C3F89AEB9E5EEAF3FF2FF00
        32B33E32C0E124E9C2F39276696CBE6FF4B9F7E7C4FF0088965F0A3C0B7DE20D
        422BA9ACF4F08654B750D210D22A0C0620756079238CD7927C32FDBBF49F899F
        13E2D061D0EF2CEC6E239A48AF66983487CB8DA420C2AA7AAA1E8CC7381835F1
        F6ABF153C51AEE91269F7DE24D7AF2C26C7996D3EA12C90BE08232858838201E
        9D40ACCD0B5DBCF0CEAF6FA869F75359DEDABEF86685CABC67D4115EDE1F8669
        46949557796B67AA4B4D3F13E5719C795E78884B0EB969AB7326936F5D75F35E
        87E82DEFED79F0DEC34C86F24F1558B4531C2AC714B24A3FDE8D54BAFF00C080
        AC3F8B9FB657843C35F0E2F6F343D72CF54D5EE21296304196659186159C11F2
        85CE486C6718EB5F2AF87FC75E19F8A3A92DAF8E2C8585EDD3855D7F4B8D2078
        D89EB3C2A04722E4E4BA857F73DB8FF887E07BCF86DE35D4B43BE1FE91A74C62
        2C061655EAAE3FD9652187B1A8A1C3F86551466E575AD9DACD793B7DFB3F2469
        8BE34C73A2E74941C5E9749A716D754DBB3EAB75A6EECCC79A67B999A4919A49
        2462CCCC72589EA49AFB53FE09D5E305D63E105F69325C192E349D418AC4CD93
        14322AB2E07605C49F8E6BE29ABDE1EF8AD7DF077535D634FD61F45B95528255
        703783D54A9C861D0E083D057AF9C61A15B0B28CE4A296B77A256EEFA1F2B90E
        70B2DC5AC4CD5E3669FA3FEAE7EA5515F0AEBFFF000596B4D13C13A7DBE97E1C
        9B5CF112DBAADE5DDCB8B5B3F371CB2AA82EF9EE3E419271C62BC0FE22FF00C1
        4EFE307C4092458BC410787ED5F3FB8D26D561C7D246DD27FE3F5F87E3B8AF2F
        C3C9C232E76BF9755F7BB26BD2E7DF63BC4AC9B0EBDC94AA3ED15B7AB765F736
        7EB3515F87BE23F8D1E30F1848CDAB78AFC49A9B375375A94D367FEFA6358A9A
        D6A16B20916EAF236EA1C4ACA7F3CD78B2E3B85FDDA2EDFE2FF80CF9D9F8B94E
        FEE615B5E73B7FEDAFF33F7728AFC55F047ED51F123E1CCE9268FE37F12DAAC6
        72216BE79A03F589CB21FC457D33F017FE0B17AF68B750D97C42D22DF5AB2242
        B6A3A720B7BB8FD59A2FF56FF45F2FF1E95DD83E33C1D5972D64E1E6F55F7AD7
        F03D8CB7C50CB311250C4C6549BEAF58FDEB5FC2C7E88D15CD7C29F8BFE1BF8D
        DE10875CF0BEAB6DAB69D3705E338785BBA48870C8C3FBAC01EFD08AE96BEBA9
        D48CE2A70774F668FD1A8D685582A949A945EA9AD535E4C28A28AA340A28A280
        0A28A2800A28A2800AF993F6C027E00FED45F09FE3243FBAD2EEAE4F807C56E3
        EE8B1BD7DD69339C70B0DE2AE4FF00D36C7726A5F05FEDA0DACFFC1517C69F06
        667DD63A77852C6F2D029C88AF10B4D383E8D243770F5E00B71DCF3EB9FB4D7C
        0FB1FDA4FE0078B3C0BA832C70F8934E92D5253FF2EF37DE865FAA4AA8E3DD68
        16E7754578F7EC1DF1BEF7E3D7ECC3E1DD535AF323F1569224D0BC470C9FEB20
        D4ECD8C1701C762CE9BF1E920AF61A06783FFC14F3E297FC29FF00D81BE296AE
        2658669B44974C81B710C24BB22D54AE39DC0CD91E98CF415E79FF000438F85E
        7E1B7FC13B7C2B71247E4DD78AAEEF35B9976804EF98C519F7CC30C473E840ED
        5E6FFF0007147C4B93C3FF00B27785FC276C5FED5E2EF11233229C9961B789DD
        976F53FBD780F1E9EE2BED3FD9EBE1A47F067E037833C251A4718F0DE8967A6B
        04E85E285118FE2C0927B934FA13D4EC2BE49FF82DF7C50FF856BFF04EDF1743
        1BAC775E28B8B4D12127BF99309241F8C314A2BEB6AF88FF00E0B47FB29FC50F
        DB1BC31F0E3C27E01D05B54D1EDF579AFF005CBA3A85ADBA586112289CA4D223
        498596E0FC8091B71D58524396C7E73FC2DFD817C31E2BF873A26A9AA6A1E228
        750D4ACE3BA9A3827856342EA18001A22470475279ADEFF87737823FE829E2AF
        FC09B7FF00E335F7A7C52FD857C59A6F8F35083C23E1B8DBC37132AD86CBF814
        2C61178C4920618391C8FA718AE7FF00E188FE287FD0B3FF00951B4FFE3B5F7D
        429652E9C5BE4BD96ED5FE7AEE7E3D8BC471146BCD4554B5DED176DFA69B763E
        2BFF0087737823FE829E2AFF00C09B7FFE335D5FC14FD92740F807F11AC7C55A
        0EABE244D634D5905B4925DC6BE517468D8831C6AC0ED661C1E84D7D3BE22FD9
        0FE22784F41BCD5350F0F8B7B1D3E16B89E53A85AB6C45192702424F03A0049A
        E53E167831BE227C47D13435F946A5791C2E738DA84FCE7F05C9FC2BB29E172E
        B3AB4D45A8EB75ADAC79B5F30CEB9961EBCA7173D1269ABDF4EA91F5F7EC33F0
        54F863C1CDE30D5964B8D7BC48BE64724F96921B63F7793CE64C6E27B8D9EF9F
        4DF8EBF1C3C37FB38FC28D67C69E2CBE5D3F43D0E0F3A7931B9E4248548D17F8
        A4762AAABDCB0E9D6BAAB4B58EC2D63821458E18504688A385503000FA0AFC93
        FF0083887F693BDF16FC54F097C1DD1E69DADB4B85356D4E0889C5D5DCE4A5BC
        647729182C3B7FA40EE38FCFF15889E26B3AB2EBF82E88FD932FC153C0E16342
        1B456AFBBEADFAB3C97E38FF00C140BE3EFF00C14B3C71AB69BE0D9B54F09F82
        74B513CBA7E9774F6F0D9DBB3AC6B25EDCA00D2966651B7EEE7EEA641359BF0F
        7F605B5F0B5E47A9DE78C3C491EB6B97175A4CA2CDE3739DD872198F5233904F
        E38AFA6BFE09F3F0EF49F81BE05D6BC17BAC62D4BC59A249606F2E46219EF9CA
        B02EDFC238DA84F0A42E7B9AF42D1FC21A7FC1CF85F27883C41E1D5D5B5CBCD5
        26D261D3F512F1DBD9AC48A6491954866724ED1C803AF5AFA8C0E55428AB6263
        CD376B2F55F769ADDFF4FF003FCD7887158A6A781A9C94D5EEEDD9DAEF46F5BA
        B24BAEBE5EB5FF0004E0F8D7AE6B3A3DD7827C4FE21D4FC5179A5C22E34ED4B5
        32B25F4D00215E39A5503CD652548723710C77162335F467C47F00E9BF157E1F
        EB5E19D66DD6EB49D7EC66D3EEE2600EE8E5428DD7BE0F07B1C57C1B37C56F0F
        F823C39AAFFC20EBE20D1F58D72684BCD23AA36976EB9678219D1CBB86936E58
        842550039E73F25FC47FD93754F8A7E29D72F356F889E26974BD6AE5AE4E9C64
        778E3667DF83BE465601B91F28C1C7A573E3B21A9527ED30B1B27D1E96D37FBF
        FAB1DD94F1851A34951C7D4E6925F124DA7AE8B45BDB5BD9767A9A1FB2EF8CF5
        3C789BC0DAFDD35E6B9F0F752934779A4C879A289DA24C83CFCA6365EF80173C
        F5F58AE57E05FEC61E18F82DE0D93C45E1CD53C45A86B91A35A6BD6F76F09B74
        89A45305C448918755FF00966DB9980623A6F503AAAFA6CAD558E1E30ADF1474
        FBB6FC2C7C1F104A84F1B2AB85F827692F9EFF008DFE7A0514515E81E2857A27
        C4B964F1B7C10D0FC613DC472378717FB0B5696493F7880333DB48DFEC947F2C
        31EF181CF6F1EF19F8FECBC196FF00BD6F3AE98663814FCC7DCFA0F7FE75E49E
        26F1B6A5E30B82B71349E4B38296E8488D4F207CBDCF2793CF35F9E71871D60F
        296A952FDE575F656CAFFCCFA7A2D76D96A615336A7868CE935CCE4AD6BECF74
        FE5F936B4BDCEC3C5DF1C705A1D1E3F637122FFE82BFD4FE55C9F877C35E22F8
        BBE298EC74BB1D4F5FD5AE7EE436F134D211EB81D1467AF007B57BC7ECE9FF00
        04EFD7BE24E99A7EB5AF2FD9B4FD4AE6282C2CADEE6369AF0B02F234ACA5BECF
        1C71A966DCBBC92AA1416047DE507C2AF0AFECDFA643A7F85FC37E1CD1EC3ECB
        717CD76F7656F3CEB781F6B00CACD310AC4925FE5058E3D7F32AB81CF7882A2A
        B9AD47083D5476DBB46FA7ACAF2F53D2CA38371D99C7EB38D97B3A5A747777DA
        CB65EAFA34ED6699F14FC19FF8253F8A7C41E20D3EDFC777173E158B50790470
        DA5B0BF976C681CB4922318A153B82A966625811B7BD7D77F0CFFE099DF087E1
        BC51B37875BC437498CDC6B139B8DDF58C6D8BFF001CAF91346F8AFE29F0FC12
        43A7F8935EB28E66DCE96F7F2C61D8F7215873EF5DD785BE34F8D2C7C3774DA9
        78A75E6B597036CF792338519EE4EE19CE300F38AF4F8A723CA78532F58C9C55
        5A8DC63086F3A9393B2514F4BEB7765B27D6C8FADE13C3E4AAA7B38616ED5DB9
        CED2E54975BE8BD525BFCCFB29D7C01F0620091DBF85FC3A107CB15B5B4303E3
        D91003F90AE63C49FB607836D91A18A2D435656E3E4B60B1B7D7CC20FE95F1B7
        FC2CBB79E6669A3B9DCC492DC313EE79AF50F835F0A23F8D45574FF116870CED
        1995AD1E563748A0E0931EDE80FBF71EB5F9A6759C7889097B3C2E55EC62FADB
        9EDEB24D417CD1FA360738CBABBF65859C7D169F83B1A5F14BC59F0A7E2B4324
        7AA7C28D26E9E4E0DCC722D95CFF00DFD8903FE1BB15F257C6AFD96ADECEE26D
        43C191DF1B2FBC74EBBB859E78FD764811038F452A0F1D58D7DED69FB0B0DBFB
        FF00131DDE91D874FC4C9FD29B7BFB0BB08F36DE240CDD964B1C03F887FE95F1
        F88CABC44C44955C4508CADD3F709BF9C5A97E271E71C2596E6506ABD24A5FCD
        149497CD6FE8EE8FCDAFD9E7F68BF137ECC1F10E3D6B41B868F0C23BEB0949F2
        2FA30798E45F5EB86EAA791DF3FAE9F00BE3AE87FB45FC32B0F13E8336EB7BA1
        B278188F36CA6006F85C7665CFD08208E08AF84FF6D8FF00827B7893C2BE1DBD
        F18E9D6F697E9A74666D47EC6FCB423ACA51803951CB633F2E49E95E23FB207C
        79D5BE0AFC4B856C352B8B1B7D599619363FC824FE02CA78233C10463073DABE
        BB29E24C764F41CB1B879A56BB83D1AB6EE2DE92F2B3B3EE99F9BE438CC5F0C6
        6DFD918D95E8547EEBE8AFB4976D7492E9BF9BFD8EA2BCA7E04FED336BF129E3
        D2F5458AC75AC61307115DFF00BB9E8DFEC9FC3D07AB57EA791E7B82CDF0AB19
        809F341FDE9F54D6E9AEDF35A6A7EDC1451457AE01451450014515C6FED13F13
        17E0CFC02F1AF8B5DD63FF00846F43BCD490B7778A17751F52C0003B922803F3
        F7FE095EDFF0D09FF0558FDA1BE2832B5C59E96F3E9B6529CB0559AEBCB8181F
        5F22CC8C7A31AFD34AFCFF00FF008376BE1BC9E1FF00D91FC4BE29B90C6EBC5B
        E23936C8D92D2C36F122024F7FDEB4F5FA014D931D8F997E1BFF00C6387FC145
        7C59E146DD0786FE36E9FF00F096E90BCF971EB168AB0EA11AFF00B52C3E4CE7
        AFDC3D3815F4D57947ED41FB3F5C7C67D43E1E6B3A4DC258F883C03E2DB0D6AD
        EE0F57B4F30457D067D24B67938EE51457ABD228FCC9FF00829C9FF868AFF82B
        A7ECFDF0C636FB459E846DF52BD8D4E0A092E0CF70B9F5FB3D9A1CFF00B42BF4
        DABF333F6426FF00868EFF0082F27C5CF19332DC58F80AD6EAC6D64FBCB1CB10
        874E50A7B6E5170D91D7E6F5CD7E99D364C7B8579EF8C7F6B7F853F0EBC4B75A
        2F883E277C3DD0B58B1216E6C750F1159DADCDB92A18078DE40CB95208C81C10
        7BD7A157E46FFC13F3F65FF03FFC14C3F6CFFDA03C73F10B436F11F86E0D558E
        9B1ADFDC5B47BA7B898C443C322336C820518CEDC3838FBB840D9FA3BFF0DD9F
        043FE8B27C2AFF00C2B2C3FF008ED1FF000DD9F043FE8B27C2AFFC2B2C3FF8ED
        7E627C4EFD86FE11E9BF11F5EB6D2FC24D6DA6DBEA13C56B11D4EF18C71AC8C1
        465A624F007524D61FFC3147C31FFA167FF2A377FF00C76BE8E3C338A9454B9A
        3AF9BFF23E26A71E6021370709E8EDB2FF00E48FB03FE0AE3FB7EF8161FD877C
        49A77C3FF89DE11D63C4DAF5C5AE9F0A681AFDBDD5E4319996495C08642CABE5
        C6CA5BA0DE07522B85FF00824A685792F8ABC0B26AF7775A86A116952DFCB35D
        4AD34AEF244C70CCC493B44B8F6DA31D057CF3FF000C51F0C7FE859FFCA8DDFF
        00F1DAFACFF6069A1D1BF688D1AD515638E5B4B8B7894745C42CC00FC12BBE86
        535B0786AD2A8D3BC5ECDFCFA23C7C5F11E1B32C76161462D5A716DB4BBE9B37
        DCFBE6BF08FE345ECDF1CFFE0B0DF102FEF0999342F115E46770CED5B0FF0045
        8B1C7668A3FCBF1AFDDCAFC42D4FC1771F0F7FE0AD3F1B6C6F976CD757BA96A5
        16E5C164BABB86E931FF006CE51CFA57CEE55052C5D34FBA3EDB88AA4A9E5D5A
        51DF95FE3A1ECB5B9E26F893AF78CB48B1B0D5B56BED42D34C045AC73C85FC90
        7038279E800E7B0C561D15FA74A316D36B63F048D49C538C5B49EFE7EA145773
        A27ECD5E3AF127866C758D3FC377D79A7EA4A5ADE589918B8048C95DDB9471C1
        603239191589E26F857E26F065A35C6ADE1DD6F4DB657F2CCF736524516EEC03
        91B4E7B60F359C7114A4F963257F546F3C0E2211E79D3925BDDA76B77B94FC25
        E2FBFF00046B2B7DA74A91CE11E261244B2C72A302AC8E8C0AB2907043022BAC
        B0F8ABA4F8990E9FE26F0F68F169F70C18DEE8DA7C3677D6ADC7CCBB40575EC6
        36001CF041E6B81A9B4FB09B55BF86D6DE369AE2E6458A28D465A47638007B92
        71454A3097BD2DFBF5FBC28E2AAC17245DD767AA7F2F33D0BC65F073C3BA17C2
        B9BC49A5F8B1F560DA8FD86D636D39AD85C80A19F1BDB765430C9C6DE40C9EDE
        09F11BE2A47E1B0F6762566BEE8CDD560FAFAB7B76EFE95D67ED73F1857C2B7F
        6BE01D0EEA39E1F09C6D6B3DCC472BF6B7C35D329EE4C83603D9635EFD3C3BC2
        1E0EBCF1AEA7E5C3F2C6A7334CC32A83FA93E95F9071371C626553FB1F256EA5
        693B392B5D7946C92BDB594B68EBD55D7999E63A1EDFEAD848A4D593B5DAE6EB
        6BB7D74BDF6572BE9BA5EA1E33D64A44B25D5D4C773BB1E9EEC7B0AF5AF037C3
        1B3F08A2CD26DBABEC732B0E23F651DBEBD7E9D2B53C31E16B3F09E9CB6F6B1E
        DEEEE7EF487D49FF0038AD2AF7783FC3EA196DB198EB54C43D6EF5517E57DDF7
        93F95B77CD83CBE34FDF9EB2FC8F429BF6A1F192F812D7C3767A845A4E976D02
        C056C205824995542E59C7CD920724119EF58BA07C51BED3BC28741B99A69B49
        F3249922520346D22857C1EB8600646719C9EE6B97A2BEBF36C87079860E782A
        F16A13B37CADC2574EE9A945A77BF9EBB3BAD0FA3A59B62E15555E76DA5657D5
        5BB59E963B4D0755F0E5BEA107984D9C337324DE4995A1C7FB39CE7E9C7BD66F
        C44F13D9EBBAB797A5FDAC69B0F11B5CE16598F77655242FB2E4E07735CED15F
        2B90F863936598EFED46EA57C42DAA569BA928ADB4BE8ACBDD4ED7B2DF7BF663
        38871388A1F564A308755156BFF4F5F50AEF3E1BB9F0EFC2CF1AEB1F34535C41
        068D6B2EEDB969A40F2A8F53E544D9F40DEF5C2C68D2BAAAAB3331C00064935D
        DFC5F27C29E18F0CF8459638EF745865BAD5110FDDBB9DF76C6F574856153E84
        30EC6BEEF11EF38D3EEFF05AFF0092F99C183F714EBBFB29A5EB2D17CD26E5F2
        2CFC38FDAABC6DF0DAEF4F106B57779A75890BF61BA7F3229231D539C9518E01
        078ED5F777C23F89767F17FE1EE9BE20B28E4861BF43BA2739685D58ABA93DF0
        C0E0F7183DEBF32EBE8CF137EDAB6FE01F01E9BE19F873611E9F6B6F6481EFA7
        8F32C531E64DA8D952D9CE59B2096381C027C3CEB2955F955087BCDEAF656F3F
        D3AEE7D5F0AF113C22A8F1955BA692B4776DF4E5F2B277D52D8FB22E6DA3BDB6
        9219A34961994A3A3AEE575230411DC11DABF19FF6BBF82CDFB3CFED15E22F0E
        42AF1D8DBDCFDA74E6CFFCBB480491E0F72A0EC27D50D7D110FED65F1122F11C
        7AA378A7529268F03CA62BF66703B184009CFAEDCFBD79BFFC141BC71AC7C61D
        57C2BE2DD63C3EBA3CD359C9A70B88C32C77C227DE0AAB73C1958641239C678A
        FCBBC42E17AB4B2EFADCACF91ADBB3766B5DF56BEE3CEE38CE7059BE039E9C65
        1A94A49ABADE2F47AABDB5B3D7B1E8DF0F35ABAD67C09E1FD69BCC8E4D42D52E
        23997E5DCEAC51D94FB488E38E854D7D9DFB36FC66FF0085A5E156B7BD75FED9
        D3404B8EDE7A7F0C807BF43EFE9915F04FECD3F1FF004D8FF663FF00844752D2
        EE2E2FF47D4E69F4FBD8E5502049023346548CED2DBCF07A907B57A1FC0DFDA0
        6DFE1F7C49D3F50904B6F6BBFCAB93F795A16E1B38E78E187BA8AFC6385783B8
        9321CCA39965D425570359273E5B3B26ECFDDBF3374DDDAB2778FABB7DEE47C5
        B80AF83A2EB554AA38ABDEEBDEB6BADADBF99F7DD150E9DA8DBEAF630DD5ACF0
        DD5B5C2878A589C3A48A7A1047041F515357EF87D9A69ABA0A28A2800AF917FE
        0B8BF147FE15AFFC13BBC556F1C9E5DCF8AAEECF4484EEC7DF944B20F7CC30CA
        31EF9ED5F5D57E6AFF00C1C13ACDC7C45D7BE087C27D3E47FB578AF5C7B8745F
        9B6BB3456B6EDB7B926E26C7D0FAD0B7265B1F597FC130FE18FF00C2A2FD813E
        16E8ED0F91349A247A94C8461964BB2D74C1BBE419B07D318ED5EF155B46D22D
        FC3FA3DAD85A47E4DAD8C296F0A0FE04450AA3F000559A0A0AC9F1EF8C2DBE1E
        F81B5AD7EF3FE3CF43B09F509F071FBB8A3691B9FA29AD6AF99FFE0B01F1457E
        14FF00C13BBE235C2C9E5DCEB3671E8902E7990DD4A90C8BFF007E9A53F45340
        1F3CFF00C1BB1E0FBAD67E1E7C56F891A8AAC9A878B7C42966F31182ED0A19E4
        207605EEFB752B8ED5FA3D5F317FC11CFE17FF00C2ACFF008276FC3D864465BA
        D72DE5D6E627F8BED333C919FF00BF2621F857D3A0E69B263B1E73FB5F7C51FF
        00852BFB2CFC42F152C8D1CFA1F87EF2E6DD95B69F3C42C2200F6CC85067DEBE
        28FF00820E789FC27F057F61FF00116B3A9EAFA75BEAFABEB575A83DB49288EE
        248218A38A34456FBF974948DB9E5F1D457A4FFC17C7E287FC203FF04FDD434B
        493CB9BC63ACD9692005C96456374DF418B6009F7C77AF933E00F863FE10EF82
        BE18D3CAED921D3E2790673891C6F7FF00C798D7B193E5B1C64E519BB24BA7AF
        FC39F33C4F9ECF2DA509D349CA4EDAF6B6FF007D8ECEEEEA4BDBA9269199E499
        CBBB31C9624E49351D1457E8E7E1FB856FFC2CF1B3FC38F88DA2EB8A0B7F66DD
        C733A8EAE80E1D7F15247E3581454CE2A517196CCD29549539AA90DD3BAF547E
        A8695AA5BEB7A65BDE5A4C9716B7712CD0CA872B2230CAB0F620835F26FEDEBF
        F04EFBAF8D3F17342F8ADE07FB3C7E34D221FECFD534F95D628F5DB220818738
        0B3C7BB2A5885600292BB41AC7FD92BF6C85F863671786FC50D349A1AB7FA2DD
        A82EF6193CAB2F568FA9E3257B020F1F5CF81FE22683F12F48FB7F87F58D3759
        B35631BC9693ACA2271D51F072AE3A156C303C100D7E6B8BC1D7C0574FB3BA7D
        1FF5D51FBB65B9961738C1B8F756947AABEFF2ECFF0053F3CA6FD9DFC796F7FF
        00676F07F890C990B95D3E568F9C63E7036F7E4E78EF5EB1F02FF604D6FC45AA
        DBDF78C53FB27498D83B5989035D5D0EBB4ED388D4F724EEED80791F67573FF1
        27E2BF863E0E786E4D63C59E20D1BC37A5C59DD75A95E25B464FA02E4658F603
        249E00AEFAFC4D899C3960947CD6FF0023C6C2702606955F69524E697476B7CE
        DBFE06D69F610E95610DADB451C16F6D1AC5146836AC68A30140EC000057E53F
        FC16C3FE0A55AB1F8AFA7FC26F869AA0126833E75EB88208EE3CFBE3F2A5A2EF
        56198F27763F8DC2F0508AD1FF0082837FC17A6DEFF4CBCF06FC093753DD5E06
        B6B8F1549034662C903165130DC58F23CD7036FF000A93871F307EC8BFB285F7
        87F585F1978C2393FB558996CECE73BA485D8F334B9FF9687B03C8CE4FCD8C79
        D96E0EB622B254AEBBBEDE77EE7B79E66785C1E15BAF669AB28FF3795BB77EC7
        BF780ADF56B5F05E971EBB70975ACADB27DB25445456948CB602E07078E00CE3
        B56778BFE364FF000DAF9974597CBD695088EE57AD89618DEA7B48013B4F5524
        30C10297E2578F17C1DA5EC88AB5FDC02225FEE0FEF9FA76F53F8D794F87740B
        CF1AEBA208CB3C92B179656E760EEC4FF9C9AE4E3EE2CAB49AC8B2BBCABCEC9B
        5AB49F45FDE7D5F45AEEEEBF9CB30CC26AA72D0D26DF4D2DE9DBCBB137833C1B
        75E36D5BCB8F72C2A774F3119083FA93D857B5687A1DB78734D8ED6D2311C51F
        E6C7B927B934DF0E7876DBC2FA547696ABB5139663F7A46EEC7DCD5EAF7F82B8
        328E4B43DA54B4ABC97BD2EDFDD8F9777D5F9592BC160D518DDFC4F70A28A2BE
        E8EE0A28A2800A28AF64FD9B3C11E17FF84575AF16EBB7D677179A312969A7C9
        134E96EFB46DBAB8897E77843B28F9411C1CD6188C42A30E76AFE9DD9D781C1C
        B1355528B4B76DB76492D5B39FF877A137C31D05FC6DAB5BF97345FBBF0FDB4E
        983797447171B4F58A11F367A17D833D6BCFEEEEE5BFBB9679E49269A6732492
        3B6E676272493DC93CE6BB0F8C5A078886A31EB9AC6AB1788ED75262906AD6F7
        26E2DE6239318270632B9FF56CAA40E8315C5D2C3FBDFBD6EEDF6E96E9F2FCFE
        E2F18DC1AA0934A3DF76DF57D3556B5AEAD6D5EECA28A2BA0E13B0F835A5C32E
        B7A96B13471CF1F85F4F7D596071959E4478E3895BFD912488C4770A477AF25F
        DA77C43A8F8C74E8352D56FAEB51BD7BA0AD35C4A64720AB1C64F6E3A7415EC1
        F06E67B4B2F184B232C760DE1FB886E6461C02ED1F92BF56984607E27A035E27
        F1E1F1E12B65EED76BFF00A03D7C5F1B454B26C639748AB7E0FF003FD0ACD1DB
        2F515B3BB7E6EF6BFDDA2F3BF990FECFD6AF2787F559947EEE1B8891CE7A1657
        2BC7BEC6FCABBCAE6FF671D299FE1178A2FB6FCB1EB1A7C19F7686F1BFF65AE9
        2B2F0DE4DF0F61EFD39BFF004B91C981872E1A9BEE9BFC5AFD0EFF00E0BFED25
        E27F8257F0AE9D7D24DA4894493E9D29DD0CC33F305C83B18FF7971CE339E95F
        757C1BF8DDA17C70F0D7F6868F71FBC8F0B73692604D6AC7B30F43D987071EA0
        81F9AD5EB9E07F1D49FB3078674FD4EC6DEDA6F196BE9F6822E0334761607EE2
        940C017948DFCF2102F4DD5ECE7194D2C425282B547B5BAFAFF9FF00C31F77C3
        1C455F07270AAEF452D6FD3B72F9B7D36EBA6ACFBF28AF94B49FF8299325846B
        7DE11125D2AE2478350D91B9F50AD192A3DB27EB5EA7FB3BFED6DA4FED01AB5D
        E9B169F75A56A76B09B9F2A4904A92C6195495700720B0E081D78CF38F91C464
        F8BA3073A90D175BA7F933F49C1F12E5B8AA8A951A9794B6566BF356394FDB8F
        FE09B3E09FDBFAFF00C39378CB5CF1969CBE178EE12CE1D1AEEDE18C998C65D9
        C4B0484B1F2906411C0AF30F81BFF0422F83FF0000FE2FF877C69A5EBBF10B50
        D4BC317D1EA36906A17F6725B3CB19DC85D52D51880D83C30E40AFB528AF34F7
        2CB70A28A2819E3DFB697EC43E0DFDBB7E1B58F867C6526B1696FA6DFAEA16B7
        9A54D1C3770481190A86923917632B9CA9539C29EA01AF987FE21C6F821FF435
        7C55FF00C19587FF002157DFF4502E54CC1F0CE85A3FC18F865A6E950CB1D8E8
        3E17D361B285E770AB0DBC11AC6BB8F038551D00FA57E4CFED2BF05F4EFDA775
        559BC41AAEB4C61BB9AEBCDB79238DAE5E4232EFB91B9E380318DC7DB1FA01FB
        73F8CF4216FA5F863C490EB96963A829BCB7D4EC4ABA453212BB5E2623CC5018
        120302370C735F3843FB3ADD789D77F84F5EF0FF008A4372B6F0DD7D96F71EF0
        4DB5BFEF92D5F6191E1A8C30F29E2369F75A5979FAF7B6C7E69C5B8EC4D4C642
        9E0B7A57D9FBD7697D9DF6D9A4F7DCF8FA3FF827478223915BFB4FC50DB4E706
        E60C1FFC835EF6882340AA02AA8C00070056CF8AFE1E6BDE059BCBD6746D4F4B
        6CE01B9B678D5BE848C1FC2B1EBE9B0B86C3D24DD04927D8F83CC31D8CAED471
        726DC764FA5FFE1828A28AEA3CF0A28A2800AE67C61F0A34BF17DFFDBF7EA1A4
        EB0231126A9A55DBD95EA282081E6211B8020101B20119C66BA6A2B3A94A1523
        C95126BCCDB0F88AB426AA51938C9754EC79BEBDF0F7E2EDECACB63FB477C60B
        7B76DC1A3BAD7AF6E0907A0CADC20E9C1E39F6AF3B7FF827E2F88F54FB5789BC
        75AE6BD361504862DB28419F97748F21EFC761CF06BE8CA2BCEFEC3C0DF9BD9F
        E2FF00CCF73FD6BCD5C797DB3FBA37FBED7385F85DFB36F83FE10BACDA4E951B
        5F28C7DB6E5BCEB8FC18F0BFF0102BACF1278820F0C68F35E5C1F9631C2F776E
        CA3EB57B35E33F153C6DFF000956B5E4C2D9B1B32563C7491BBB7F41EDF5AF0B
        8BF88A8E439739D2495496905E7DDAECB77DDD9753E6334CCAA59D5AD27293DA
        EEFF00D24636A3A85EF8D7C426460D35D5DB85445EDE8A3D857B1F80FC190F83
        34658576BDCC9869E4FEF37A0F61DBFF00AF5D1FEC3DF07B4ED56CFC4975AE43
        089B54D2BEC3A54B329C5B5E4D3442D8EEFE02ECA727B461BB13497F6336977D
        35B5C46D0DC5BC8D1488DD5194E083F422BE5FC37E1B952E6CDB30BBAF53557D
        D296B7FF0014BAF65A7568E7C165B3A74638CA9AB9DEDE5AFEA43456B781FC0D
        AAFC47F135B691A359C9797D7470A8BD1477663D1547727815F697C08FD883C3
        BF0CEDA1BDD72383C43AE60313326EB5B73E8887EF63FBCD93C6405AFD2330CD
        28E117EF357D12DFFE01F539370FE2B3297EE55A2B793DBFE0BF2FBEC7C89E04
        F813E30F8968B268BE1FD46F207FBB394F2A03FF006D1F0BFAD7A3693FF04F5F
        881A8C6AD33685604FF0CF78CC47FDFB4615F722208D02A80AAA30001C014B5F
        2D5B8A31327FBB8A4BEF7FD7C8FD0B0DC038182FDF4E527F24BEEB37F89F11DD
        FF00C139FC776D1164BEF0CDC37F763BA9413FF7D4407EB5C0F8FBF65FF1D7C3
        6B792E352F0FDDB5A4632D716A45CC6A3D58A13B47FBC057E8D51534B89B1517
        EFA4D7DC562380B2F9C6D4A528BF5BAFB9AFD51F94F5E89E1DF0FDD7C31F869A
        C6B5AA036571E26B0FECED26D64E25BA8DE446967DBD446A8840240DC5C63383
        5F59FC62FD93F41F147882D3C51A5E970C7ACE9B72979359C4163875708DB8C6
        C0E143B63EF1C024E1880772FC25AEF8DAFF00C7BAE5E5F6A9797977A9C73BDB
        5D8BBDC27B796362AF0BAB728C8415D840DB8C62BE93079953C77BB0D2D66D3D
        F7D979777FE7A7C3E6591D6CA2F52AFBD7BA8B5B6DBBF3D745DD5EED2D7B4B4B
        993FE197AFE176DD0FFC2536CD12FF0075BEC93EF3F88D9F957035E91A4DBC7E
        39F804BA2E8B1CAFAD68BA84BAAEA1681373DEC2C8B1ACB16396F280C32E3203
        96E80E3CE6489A26C32B29EB82315DF876AF35D6EFFAF9EE78D8E4F969BDD72A
        D7EFBAF95EC36AC69BA55D6B376B6F676D717770DF7638633239FA01CD6D68FF
        000EE6BCF0EA6B17F7D65A3E97348D14135D172F76CBF78451A2B336DE016C05
        0480581AB97FF1093C37A4AE97E1592FAC2DDBE6BCBE27C9BBD45FD1B693B225
        ED186393F331271B74955BBE5A7ABFC17CFF004328E1D25CD59D97E2FB597EAF
        4B77D9EA784F4FBFD17E1778EB4AD4B4FBDD3E3921B4BDF3A789A2C4D14DB522
        21873BD67738EBF203D01AF9EFE3FDD6DB0D361FEFC8EFF9003FF66AF50D4BC4
        BA96B36F1C379A85F5D4309CA24D3B48A87D813C578BFC75D47ED3E2986DD4F1
        6D00CFB33127F962BE07C47AFF0057C82BF33D6A38AFC55FF08B3CFCEB111786
        508DEC9595FF00C4DFEACF5DFD8E7C3F71E31F81DE3AD1ECADE4BAD44DDDA6AD
        6F046A5A4996DC3C72050396216E4B60738534C3C56E7EC15A55BE9FE28D06EA
        E66BA85EC62B9D5A25B703CCB89228DE548C02467704008C8DC32B919C87EB96
        5A0CEE9259EB5AA5CCD3BB34DF6BD316DC21E083959A4CE7273C0C63BE78ECE1
        59472DC968AAAA56E4849F2C652779794536FE4BB9E86170AEA602838D93575A
        B4BB4BAB5AFBD6F92377F67CF05E9DE2AF17DDDE6B2D6CBA3F87ECA4D4AE16E6
        5F2A1B8652AB1C2CFF00C21E4741DC9190066BA8F05F80345F8C7F12665D6359
        BAD7353D423B8D42F1F47CC51D9471A16F2E3592226673855544015401CB7410
        FC23F867A96B7F06FC76A91D8CCB762D63B48FED91C734D7114CAD950C402823
        77273D490064838CDF06FC275F0978AF4C8FC41ADDCE8BAA5F4E9059DAE8F247
        717EAD21081D995C244BF3776DE79C2E39AF7238CA3898CABD0AB74D7BAE3AE9
        6BDD5B5DDEBE9AED63DCA386A9461461528DD37795F4D799AB5DE9B2D2F7F89D
        B577307C3BF082F3563AAB6A77967E178749F29646D5D658499250C628C2AA33
        659519BA630B9AF49FD8EBC30BE13F8F9A3DE49E20F0DB418960648F5102498B
        C6CA8AAA402C4B95E3FAD79E7892CBC4BE37D5EEB48D3EEBC45E2ED2F44BA961
        B3758E5B850BBC80E146E0A580CE29DA4FC3EB0F0BDCC12789F5EB8F0F5EF9A0
        C56F676A2F2EEDF1CF992A8913CAC1E8325F8CED0304F56222EA5294273F895A
        C95ED75DB7F3F239F0728D0C442B53A77E477BB764DA7DEFCBE5E7BF5B2FD22A
        28A2BF313F7A0A28A2800A28A2803CF3F699F81D1FC78F86D2E9B1BC706A96AF
        F69B099C7CAB20041563D76B0241F4383838C57E7AEBBA1DE78635ABAD3EFA19
        2D6F6C65686689BEF46EA70457EA6D7CD7FB52FEC5967E20D3F58F14F87E4D4A
        4D7A491EF27B3C79EB7859B2CA800DCAC33C019040C63BD7D370FE6AA8BF6159
        FBAF6F27FE47C1F1970ECB14962F0D1BCE2BDEF34BF36BF2F91F31F87FE3678B
        BC2F6FE4D8F8935886DF1B7C8372D2438FF71895FD2B407C54B3F185B1B5F16E
        976F779398F52D3ADE2B4BEB6FA8550932FF00B2E33E8EB527823F666F1B78E7
        C4B1E9B1787B54B06661E6CF7D6B25BC36EBEACCC07E4324F606A0F8FDF0A23F
        82BF11E6F0FC77ADA81B5B786492628132EE818E064E073C64E715F59CD85955
        F671B73DAFA6FF007AFE99F9D726614F0FEDAA27ECD3E5F7B6BBE967E9D36F26
        55D5FE155C1D3A6D4B41BB87C47A542BBE592D54ADC5AAFF00D3680FCF1FFBC3
        727A31AE52AC693AC5DE83A8C5796375716775036E8E682431C919F50C3915D4
        378F34AF197CBE26D376DD37FCC574C4486E33EB2C3C4737D46C72792E6B7BD4
        86FEF2FC7EEEBF2FB8E3E5A353E1F75F67AAF93DD7CEFE6CE3E8AF53F863FB2F
        5E7C5AD65BFB1359D3750D1ED70F77730EE5B8B7420900C0D86DE769000CA93F
        C58E6BD474FF00D8D63BB16F711F80B598D62FF961A8789E08FED23B19047131
        5FA2B0AE4AD9A61E93E593D7B68ADF7B5FD6E7A185E1FC6D78F3C23A74766D3E
        F6E54F4F3FBAECF98AC34CBAD524296B6F3DC38E4AC519723F2AF4DD4B5D87F6
        7BF0E268F63676B378C2FD21B8D4EEEEA382F134CC1908B68E36460AFB4A1724
        9209DB818E23F883F1CB5BF0B5E1F0DF86E0B8F01D86873CD0CD67A6EA32B3CB
        701B6C8D24D90CFCAE003C0038AF35D4752B8D62FE6BABBB89AEAEAE1CC92CD3
        39792563C96663C927D4D6CA33AE93A8AD1DED7BDFB5FA79DB530954A7846D51
        9373DAF6B25DED7D6FD2ED276BE9AE9E852F8F6DFE38D95B697E223A6E9BAD5B
        865D3F578E18ED619493910DCAA2850A4F0B2003693F30209221BDFD96FC6963
        61F6B7B1D34DA6FF0028CE358B3F295F19D85BCDC6EC738F4AF3DAF41B4D67EC
        1FB256BCB31F2ED61F125AC9BC938FF8F69CB7E4101FC7E959D6E6C3C79A9B4A
        37D535A2BEED6AADF97A1546AD2C4F33C526E4A2DDD349BB2EB74EFEBBF7B9E4
        BFB485AEA5F09F4B834EBBFB1C77DAB231416F7D05C948870CC7CA76DB9E8338
        CFCD8E95C77ECE9FB3EEB7F1DBC473FF0066D9C37167A50592E8CD770DB29CE7
        6A032BA839C1C819E07B8AE37C4BADCFE32F12C971B599AE1C2431F70BD157FC
        F7AF66F0478613C25E1E86D576F9B8DF330FE273D7F2E9F415F89E5F46AF1771
        04B1753FDDE86D74ECD27EEAB5FED3BC9EBB69D8F91A5ECB178CF6928BF671E9
        757FBED6D5EBB6DA1ED9E35F085C7C1AF80B1E8FAA35847AD6BDACC77AB05B5D
        4770F6F05BC4E80BB464A8CB4BF2804F19EF90383D6B4FBEF12EBF14D0C535E4
        FAB3A6C29F3B4F338008F762E4F5E49AC5AFA7BFE09C1E10BDD4357D7B5695BF
        E24F02C70885D15965B9077AB8C83831AF7183FBC15FAB66386AB86A90CC6335
        7873A9269DA519F2E8ACF469C2366EEADCCACAF75F799742398D75808A718BB5
        B54DAE54DDDE8AF7BBBEDBADED67EDBFB307ECF367F01FC128B224736BFA8287
        D42E47383D444A7FB8BFA9C9F403D368A8EEAEA3B2B69269A48E186152EEEEDB
        55140C9249E0003BD7C5D7AF3AD51D4A8EED9FB66130B4B0D463428AB463A2FE
        BBF7307E2AFC5BF0CFC0EF035EF897C5DAD58787F43D3D774F777726C45F4503
        AB31E81541663C004D7C0BF14BFE0E38F02E89E226B1F04FC3FF001278C2257F
        2D6E6EAED34C5B83EB1A6C95C83DB72A9F615F1BFEDB5FB53788BFE0A97FB60C
        7A1693A84B63E01D26EDEDF468DD5CC16D6CA76C9A84A839691C7CD8EA01441C
        E49FA43E117EC89F0A7E0B68B1C3A1F8CE17BE64C4F7F7BA14EB7139EF965DFB
        57FD95E07B9C9AEECBF2C9E25DDDD47BD9BFC8F1F39CFA9E0572C6D29F6728C7
        E6EEF6F44CF70F80BFF05C2F0E7C42D5EDED7C6FF0D7C79F0F61BA60ABA93DAC
        9A869D167BC922C68EA3FDA11903A920735F6E693AB5AEBDA5DBDF58DCDBDE59
        5E44B3C171048248A78D802AEAC3865208208E0835F9DB67F09FC377C3E4F88D
        E1C46F496CEF63FD4C38AFAABF625B95D0BC1F79E1CFF84AB40F12476327DA2D
        0584CED25BC4E7E75657552177F2319E5DBA715D598E514E853F694E4DDB74E2
        D1E7E49C495B175FD8D7A7157D9A9C5FC9A4CF70AFCEAFF82B97C3D5FD9D3E2F
        786FE2F69F1F93E1DF185C2681E2D8947EED2E42136B7DECDE5A346E7A158907
        248AFD15AF9E7FE0AB5F0CA1F8ADFF0004F7F8A163246AF269BA3BEB30B11CC6
        D66C2E723FE03130FA311DEBC7C3E22746A2AB4F747D363B074F1542542B2BC6
        4BFAF9AE87C77E179EF975FB16D26E27B7D4249952DA582431BABB1C2ED61C8E
        BD457A77ED15E28BAF115DE83E0C9750BCF127883C3773736979A8CCBCDCDC4B
        220F26324962A8CA572D824E780315F30FEC7FF116E7C57F047C37A9ADC48BA8
        69ABF666955BE749206DA8D9FEF6D08D9F535F4C78A750847893C0BF112C614F
        B66B17DF68D46DD4FEE96FEDE743263FBBE602926DEDE61C71C0FD2253551D3A
        E96E9B5EAD5ECFE57FEAC7E1F1A32A11AF846F69252FF0A924DA5B5EFCBE76DB
        4B9CFF00C73D4A38FC41A7E836F2472C1E13B08F4A2F19FDDCB3A9679D97D8CC
        EE01EE141AE26BA0F8AFA4A681F14BC49631EEF2ECF55BA8173D70B2B28FE554
        FC11E1EFF84BBC69A4693B9906A77B0DA1651965F31D57207AF35D547961453E
        96BFEAD9E6E2B9EA62651B6B7B5BF04BE5B1975E13E239E6F1978EAE3ECB1BDC
        4D7D7221B7441B9A4C908800F53C715F517ED27E26F09FC3FB5F156931F84DB4
        FBED266B8D3ACEF2D7559599E452634791240EAC723736CD99E718AF9D7E01C9
        73A7FC50D3752B5DAB3E8EFF006D8DCAEEF2A44FB8C3B655CAB0F715F8EF8918
        A9E658CC1E4B4534E6D49EDD7DD8BD1BD97337E47899CD151C44308E49EBADAF
        A6B6EA9799F5E27C1EB8FD977C0367ACC92477BE29B74169F67B69E378FC3C1E
        228AF70012C656048418080824962003E5763A5C97B1BC9B921863FBF23FDD1E
        DEA4FB0AE8BE19FC43B3F0ADCEB30EB5A7CFACE97AFDA1B6BB892E3CA9830912
        45955CAB7CC193B83F78D67F8F3C6D278DB5C92E16D60D3ACC048EDECADF3E55
        BC688111467962140CB1E49C9EF5FA656C3E3E3054308D45DD2736BE182E918E
        B79748DFDD5F13E6B72CBE9EAD4C1B84651BA8A5A43CFBB95968D257B6BD1592
        56B32FC29D59FC1DFDBD66B6DAA69B1E7ED0D67309A4B2C12019A31F3C60E320
        B003A73CD6668EDA9786E6B1D72DEDE78D2D6E95EDEE5A23E519A321C0DDD091
        C1C52F847C63A978135C8F51D2AEA4B4BA8C15DCB82AEA7AA329E1948E0A9041
        AF6AF887E25BEF10EB3A4DF68FE22D3ED5752D32DA58741BC8917499B746A648
        A1041B73B660EA56508C1D4E093835D9CF5A8A8D2A8F9B4F89E97B6F7495B5DE
        EACB7D10A861E8568BAB4EF1946DA2B3DFAA6DA7E56D5DED66CF2EF16FC44D57
        E275CD9E9767636FA7D96F096BA3E9513A5BB4ACDF7847962D23138C924E3006
        0002BB2F805FB34EB9E2CF8AFA4C5796B6BFD9B6574971A86CBE82568A343B8A
        B22B961BB01791D5AB9B97C77AD786BC45259DA78774CD0F5DDED00FB3E9ECB7
        713382A550396DAC43606D19E4631C57D6DFB1BFECE0FF00053C2B26A5AA03FF
        000906B51AF9D1F6B38C72B17FBDDD8F4C80074C9E3CCB1BF55C33E4B46FA25B
        B77DDEFD3BEBA9ECE4395FF686357B4BC945DE4F6492D959AEAF4B2B596DE5ED
        1451457E7A7ED014514500145145001451450015F197ED67FB3878D3C61F1E75
        AD5B49D0EF352D3EFC40F14D13291F2C11A30393918653F862BECDA2BBB2FCC2
        784A8EA5349B6ADAFF005E47939D64F4B32A0A8566D24EFA7A35D6FDCFCDFD73
        F66CF1E786F4F6BABCF0AEB09021C33243E6EDFA85C903DFA57A8FC15FF827FE
        ABE35D2B4FD5BC457FFD8B6770C253622126EDA3CF46CE0465874E1880464678
        AFB3E8AF52B71362670E58A517DD7FC13E7B0BC0780A5579EA3735D9E9AFAAB7
        DC60FC3DF863A0FC2BD1069FA0E9B6FA7DBF05F60CC931F57739663EE49ADEA2
        8AF9F94E527CD27767D9D3A70A7150A6924B64B447E607C467BA93E216BCD7B2
        2CD78DA8DC19E45185793CC6DC40EC09CD6357B7FED91FB376A1F0CBC677FE22
        B385AE3C3BAC5CB4FE620CFD8E590E4C6E3B02C4ED3D3181D7AF8857EA983C44
        2B518CE9BD2DFD23F9EB33C1D5C362A746B269DDFCD77F3B8566FC6CF8B50E97
        F007FE10D450D79A96B49A997CF30431C2508FF81B32FE11B56913B464D783F8
        D75D6F15F8AAE6E1773ABBF97081FDD1C2E3EBD7EA6BF3FF0014339FA9E55F56
        83F7EB3E55DECBE27F947FEDE3C3C7632542938C37926BE4F73BFF00D9AFE037
        883E237DBBC41A6E8D79A9D868ADE5B1B74F319652339D83E62154E490300B2F
        35DC91835A1FB37EA07E0EEB5A2C82EAFAD56DD83DD1B49DA169DBEF6C66523E
        42E141FF0064543AEBCD26B576D70DE65C3CCED237F7989249FC6BD0E09CBE19
        4E1E195D4B7B5947DA4B4776DBB35D9F2E89DB6D2EB53BB0B81852C0C2A46FCD
        76A5B6F64D7A69A75D9EA55AFD08FD8E7C18BE0BFD9E7C3EBB76CDA94675198E
        3EF994EE53FF007EF60FC2BF3DEBF50BC09A7AE93E07D1AD54616D6C60880F40
        B1A8FE95E8F15546A8C29F777FBBFE1CFD03C3DA0A589AB59FD98A5F7BFF0080
        6B578FFEDF3E1DF1B78CFF0063FF001E687F0EF4C9357F176BDA71D32CEDD2EA
        1B52527758A76F32574452B0B4AC32C0E40C735EC1457C41FAB9F91BFB157FC1
        28BE307C1CF0EEA979AFF82D6CF5CD4A61104FED6B194C7020047CC9311F3316
        2403FC2B5EE1FF000C47F143FE859FFCA8DA7FF1DAFD02A2BDCC2F106230F495
        2A718D9793FF0033E4B30E0DC1E32BCB115A73E69766ADF2F74FCFDFF8623F8A
        1FF42CFF00E546D3FF008ED7B1FEC4DFB3D78D3E10FC4FD4AFFC43A47F67D85C
        696F6EAFF6B826DD2996260311BB1FBAAFC918AFA7E8A789E20C457A4E94E31B
        3EC9FF0098B03C1782C2622388A729DE2EEAED5BFF0049415C07ED5F04775FB2
        D7C4A8A4C797278575457CF4C1B4941AEFEBC8BF6FCF15C7E0AFD887E2D6A0ED
        B0C7E13D4A18CE7A4925BBC51FFE3EEB5E11F5C7E417FC1396FDA6F83FABDBB7
        220D5DD97D8343171F983F9D7DA9FB386A327855EF3C41AA5F496DE11D1E7864
        BBB736D1DC8D42E324C50C69202A243B58EF1828A0F2322BE29FF8271DA347F0
        8F5A9FF865D5D907BED862FF00E2ABECFF0084AD6FE2AF845E36D0F52F2E1B2D
        2AD3FE120B6B804ABADDA1585233CED2AE252B823393915FA1E175CB60A5B3B2
        7E8DDB43F15CC1DB3CAB286E9B6BA2BA8DF5F2EFDF62FEBFE26F097ED09AADE5
        D6A0DA7F80F5E9AF259D6E4452CD697F1B9DD898824A4AAD9F9C00ADB8F0302A
        7D0FC73E00F8190C975E1D5D4BC55E31B5256D752BCB75874DB76230658E3DDB
        D997B6F1C9E78C62BC7AABEA9A8C7A469D35D4CDB62B742EC7D8576D4C2D3853
        7CF36A9A576AFA596F77BDBCAF6F91E2FF006B4D4BDB72479FF9ADAFADAFCA9F
        9A57EBB9E7BFB4278BA6D675A8ED6499E69B71BAB9766DCCF23E7927D7927FE0
        55A5F03740FB0787E6BE75C497CF85CFF7178FD4E7F215E75FE93E38F15FADC6
        A13FE0B93FC80FD057BBE9D611E97A7C36D0AED8EDD046A3D80C57E4BC131967
        5C4188CFAA2F721EEC3E6ACBEE86FE72B9F2583BD7C44B112F97F5E9F9935145
        15FB51EC857A07C70D3A2F0943E1EF09477097D7DE1EB7905E4D146CB1996694
        CA11370058052BF363073C579FD7D5DFB146836BF195E2D5BC45E1D86EEEFC20
        2282C359691D4CDB73B2374FB92344B8C31E40D83B035E7E6188F61155E5AA8D
        F4D377A2DFD5FDF7E87B592E0DE32A3C1C1DA53B6AEED593BBDBAE89A6F4D2D7
        573D23F64EF82D75E12F875A45F78A2DEDEEB5E8559AC4DC40AD71A55BB0F961
        0E46EF53827E5DC546306BD8A8A2BF36C462255AA3A93EA7EE781C1D3C2D18D0
        A7B2495FABF36145145607585145140051451400514514005145140051451400
        514514015F53D2ED75BD3E6B4BCB782EED6E1764B0CD18923907A153C11F5AE1
        7C4BFB2A7C3DF15476CB71E15D2E05B56DCBF638FEC85FD98C5B4B0FAE6BD0A8
        AD69D7A94F5A726BD1D8E7AF84A15D5AB414BD527F99F9CFFB747ECD5A87ECDD
        E0FD4B5882F6CE6D0F50BA165619948B9532063B0A91C95457F98139DB9E338A
        F95FE11E81FDB9E3185D9730D90F3DBEA3EEFEB83F857D67FF0005A0F8A2DA8F
        8EFC27E0F864FDD69768FAA5CA83C19266D880FBAAC6C7E925775FF04B2F829A
        1F877F666D6BC6DE22D2B4FBDFED8BA9658DEEAD926D96B6C0AFCBB81C664F3B
        38EB815F198ECD9E63C474A58CD69E1D5DF45EEFBCDBF9D93F247E0D8EC82966
        1C4D2CBB05EEC29ABB6F54AC937F2E66A2782695A636A12B331F2E0886E964C7
        DC1FE27B0A66A577F6FD4269B6EDF35CB01E9935DBFC5131DF5ADDDD5BDB5BD8
        C735D19CDBDB4623890313F285500003200FA57035FA2787BC514B8AA9D4CFE9
        AE58C652A508F58C572CA4E4FACA7EEBB6D18A8A5AF337BE7997BCBA4B04DDDE
        926FBEE95BC96BEADBF20AFD44F045FAEABE0BD22E94EE5B9B286553EA1914FF
        005AFCBBAFD07FD8DFC709E38FD9F3436DFBAE34A43A6CC339D862E147FDFB28
        7F1AFA1E29A4DD18545D1DBEFF00F863E8FC3EC428E26AD17BCA29FDCFFE09EA
        35F9EFFF0005B0FDB67E2E7EC93E3BF86D67F0E7C471F87ECFC516F78B71BF4D
        B5BA13CD1C9001CCD1395DA251F771F7BBF15FA115F1DFFC16A7F63DD53F6A3F
        D97ADF55F0CDAC979E2DF87B76DABD95BC4BBA5BCB72B8B8850752E42A4800E5
        8C3B4025857C546D7D4FD5677E5D373E46FF0086A7FDB4BFE8AB784BFF000516
        5FFC8347FC353FEDA5FF00455BC25FF828B2FF00E41AD0F0378B2DFC75E0ED37
        58B520C3A95BA4E00FE02472A7DD4E411D8835AB5F7F1E1EC149292BDBD4FC6A
        7C699AC24E126935A3D0E6BFE1A9FF006D2FFA2ADE12FF00C14597FF0020D696
        85FB407EDB1AFD8EA9731FC5CF05430E936BF6A94CDA4D9AEF06448C22E2C0E5
        CB38C0E3804E78AEB7E1FF0080354F89DE2CB4D1747B76B8BCBC6C0FEEC6BDDD
        8F6503926BED88FF0061DF08AFC33FF847D5F50B592E1A19AF2F6DE5FDE5DCB1
        23004870C0265D8EC1819C7A66BCCCC30396E15C633BDDF9ECBABFF23DDC9736
        CF73052A94B97963DD5AEEDA25F85FC8F88FC1BE29FDB8BC7DA4B5F697F1BBE1
        8DC5BDADB3DDDFE6C6D524D362552CCD2C6DA707206DC663571923D735CF78B3
        E13FEDA3FB6BFC09F1268775F133C07E2AF0DDCC91DB6A3A6DBDB45657138464
        9970C2C626DBB917A382704608C83F57F89FFE09B3A859B492681E29B793702A
        23BC81A1383C105D0B6723FD915E13F163E11EBDF033C411E97AC3DB47717118
        9D05B5C890326480C40C11C838C81D0D450CAF01886E342AEBD135F7DD697F95
        8DB19C419C60A2A58CA168EA9B4D5AEF6B3D52F477BF96C717FB2C7EC1DF10BE
        0FFC1A8EC754D156D1ADEE679AF6EEE275B4B58D8BEDFBF3F97C055504E3AE71
        9AF79F86BE07D1F42F861F1074B93C59A56A9A95EE86D76F61A7C724B1C46DE4
        59518CE542121B8DAA4FDEEA715E45E21F1E6B5E2DB2B3B6D5355D4350834F52
        96E9713B4821071C0C9F61F95765FB3BC0BAC2F8C34789E15D5359D026834F57
        C069E5578E43121FEF3A238C77E95EF54C3D4A78750949251B6CBA26B76EFEAE
        D63E3E8E368D7C6BA9183729F35DC9F569DD24ADBDECAEDFA1E6F5E73F1CBC59
        B228F4885BE66C4B718EC3F857FAFE02BB8F12EBD0F86745B8BC9BEEC2BC2F77
        6ECA3EA6BC7FC27E12D6FE3478FE2D3B4BB4B8D4B56D524671142859B0AA5988
        1E8AAA4FD057C1789DC412A1858E5185D6AD6D1DB751BDBFF267A7A5CF89CC2A
        C9A587A5ACA5A596FF00D33A4F817E16CBCDAB4CBC0CC3067D7F89BFA7E75E95
        55F48D2A2D134C82D205DB15BA045F7F73EE7AD58AFB4E17C8E19465B4F071F8
        92BC9F793DDFE8BC923AB0B4151A6A1F7FA8514515F40741F4AFECE1FB1C787F
        E33FC134D62FAEB55B3D52EAE2448A58D97CA4546DBC211F36707273D7E95F57
        7827C17A6FC3CF0BD9E8FA4DBADAD8D8A6C8D0753EAC4F7627249EE4D731FB30
        DF5BEA1FB3EF8464B58D628D74E8E36555DA0BA7CAE7F170C73DF39AEF2BF33C
        D31B5AB569426DD949D976E87EF590E5786C361A9D5A515CD28C6F25D74BFF00
        5FF0028A28AF2CF7828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
        028A28A0028A2AAEBBABC5E1FD12F2FE6FF536303DC49FEEA2963FA0A1BB2BB1
        4A492BB3F1F7F6EFF1F37C49FDAE3C717C1BCC8ADF516D3A1C1C8DB6E041C7B1
        3193FF0002AFD04F1E6983E037EC75E13F0747FB9BA6B2B6B2980E09654124ED
        F8C9D7FDFAFCDDF811A2C9F173F697F0ADA5DFEF9B5CF105BB5D13CEE579C34A
        7FEF9DC6BF427F6D3F131D4FE2359E9AAD98F4BB4048F49243B8FF00E3A12BF0
        2E20CD5E1722C7E3B69D66A9AFFB7DB72FFC96E7E45E1A45E27118CCCE7BCE56
        5F36E4FF0043CCF48F0EC97FE0AF156A7FD9D73A85BE97A648ADE4E3F70F2828
        B230247CAA3731C648C6718048F14AFBBFF668F86E9A8FECFDAA4336236F152D
        C44CE57388CA98471DC03B8FE35E63FF000ECDBEFF00A1BAD3FF0005EDFF00C5
        D7EC9E06D1C364FC2F4E15DF2CAABF68F7D7992B7FE4AA27B5C61916371B5E9D
        5C2C7992567AA56D7CDADEE7CBD5EDFF00B107C798BE1478FA4D27549843A2F8
        80AC6D239C2DB4E38473E8A72549F752785ACAFDA2BF6597FD9E744D3AEAEBC4
        16BA95C6A53B4515BA5BB46DB5572CF92C7804A0C7FB62BC96BF6B92A18EC3B4
        9DE32EBFF0FD99F034E58BCA71B194972CE1676BA7A3E8EDDD1FAB19A2BE3DFD
        987F6E3FF84374EB7F0FF8C9A79F4E8008ED7515532496CA380B228E59476232
        C07183C63EB2F0BF8B34BF1BE8B0EA5A3EA167AA69F3E7CBB8B599658D88E08C
        A9C641E08EA0F06BF3BC765F570B5392A2D3A3E8CFDB329CE30F98D1F6B41EBD
        5755EBFA3D99E3FF0012FF00603F03F8E357BED4B4D8E6F0CEA1A8CCD7373F61
        0BF669A66E5E4311E0331E58A15DCD96396249E474AFF8267E9B0DDAB5F78B2F
        AE2DF3CA4162B0B91FEF1771FA57D3D455D1CDB174A1ECE9CDDBE5FAA32C570E
        65B88AAEB56A49C9EEEED5FD52693393F851F047C37F05B4A6B6D074F581E603
        CFB990F9971718FEF39EDEC3007A575945782FED89FF000520F85BFB1568D37F
        C24DAE457DE2209BADFC3FA73ACFA84EC47CBB9738854F5DF21504038DC783C5
        52A4EA49CE6EECF568D1A7460A9D24A315B25A23BDFDA5FF0068EF0CFECA3F06
        B58F1B78B2F05B699A5C7F244A479D7D31CF97044BFC52391803A0196385048F
        C32F0578E3C65FB767ED8DAD7C44D72F2F2CE092E96F2F05B4EE91DBC2BC5BD9
        21041DA1542FA955627E63CDAFDA0FF689F8A5FF000564F8D11DCDEA7F65F867
        4972B65611331D3F4489BAB3371E6CEC00CB7DE6C60044185FA13E147C2DD2FE
        0F7832DB45D2632B0C3F3CB2B7FACB990FDE91CFA9C7E00003815EF64795CEB5
        455A7A457E2FB7F9FDC7C7F16710D3C2D1786A4EF524ADE89F57E7D97CCEA6C6
        D8DEDEC3083B4CCEA809ED938AF77F0DDB7C3DF81DF17747D0F568F509354F0D
        EA26E6FBC40AED0C6AE9F3A442DFF79BE3E00DC36B1278AF3EF845E09D2F55F0
        BF8B3C47AD41757B63E17B681C5A5BDC7D9DEE259A611A65F6B6147CC4E067A7
        4AF2EFDACFE3ECBE38F196A97D1C696BA86B4C1A48E37DDF668C204037719621
        47381DCF1915ECF10E6D430586A988C436A104D3B3B3726972C5756DA7E9D5ED
        A7E610C5432EC32C5CD2736D38A6AFEEA6EFE4AF2495FE2B5ED6395FDAAFE216
        8BE32F88D750F86E7BABAD22DE6791AE66411FDAE666259913F8635CED504927
        058E37055DBFD99A2BFF00857AB5978AED1FECFAB46EB2DA9233B107A8EE1FB8
        EEBF535E79F0BFC107C5BACF9932FF00A0DA90D2E7A487B27E3DFDBEA2BDA00D
        A303803A0AFCEB80725AF9A6327C4799ABDEEA09FDD7F48AF7579DDF43E63052
        A95B10F1F2D1DEEADD1F97A74FF33D0A3F8DFA7EABAEEED5BC15E169349B827E
        D16D656C6DA6C9392E93EE322B679C162BDB18AE54E8767AC6A6B1E9B76A82E6
        5D90C37476B2E4E1559F1B7B8E781F4AC7A2BF54C565B526E32C357952B748F2
        B52FF129C65B778B8BEECFA3FAF39E95E2A7F835E8D5BEE774BA22E6BFA05E78
        5B5BBAD3750B792D6FACA430CD138F99187047FF005C706A9D7A0FFC34B788A5
        B3B5B7B8B6F0EDF436D6F1DA9175A3DBCCD3222841BDD94B92401939FCA93E33
        78734FB3F0E785F5A834B8F41D47C4104B7371A6C52B34291065114E8AC4B22C
        B97214B118404706BB235A6A4A1556AFB3BF4BF97EA3A985A5284AA61E4DA8EA
        D356766D25AA6D3DFCBC91F697EC95762F3F672F09B8FE1B429FF7CC8EBFD2BD
        1ABCBFF635D1EEB44FD9BFC351DD16F3268E4B8404E76C724AEE98FAA907F1AF
        50AFCCF1D6FACD4B7F33FCCFDE329BBC0D1E6DF923F920A28A2B94F4028A28A0
        028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002B83FDA9B576D07
        F668F88176ADB6487C3B7E50FA31B770BFA915DE5797FEDAFB8FEC95F10B6F5F
        EC3B8FCB6F35CB8E93587A8D7F2BFC8E0CD64E382AD25D212FC99F9B7FF04D6D
        1D75AFDB57C128C32904975707D8A5A4CC3FF1E02BE9AF8E1ADFFC243F173C41
        759DC3EDAF0A9F558FF763F4515F3BFF00C12D675B7FDB3FC3ACE703ECB7DFA5
        AC87F9035EE5A3447C51E35B58E41B9B51BE4561EBBE419FE75FCBDC7D5A52CA
        B0B8286F52ACDFCE318457FE96CFCFFC2B8A594CDAEB51FF00E9313ED6F871A1
        7FC231E00D174FDBB5AD6CE2471FED6D1BBF36CD6D51457F526170F1A1461429
        ED1492F44AC8FD3CF25FDADBF673B9FDA07C31A72E9D796F6BAA68F23BC02E01
        F2A6570A194B004A9F9548383D31DF23E43B7FD9ABC4969E31934DD6615D0EC6
        D55A5BAD5AE3E6B18625EAE241F2BE780141C962070738FD16AFCEBFDA7B5EB5
        B8F8D5E29B4D1E7BC8F47FED1766B6691845F681C4CC1738C197CC20FA1AFB4E
        1DC5579A7868BD12BAD36BBFE9EA7E71C6D97E0E938E3A716E52766AF6BD97A7
        959B4D12DBF86FE163DE2E9EDE26F15F98D94FED43A5C6B66A7B318B79976FAF
        7F6ACC7FD9AFC5DA26B326ADE0DF1A5AF87EE1F0CBAD687E28B6B34BB03EE89A
        291C0940E3E59A338E8315C4D15F4B5706E71E594B993DD4926BF0B58F84C3E6
        6A94D54843964B6706E2FD1DF9AEBF1EECF48D17E32FED7FE15D2F507D37C65F
        083C78FA4DB4B76D6BAAC11ADFCD0C4BB9DFFD05C44368C0CBBA6E246013C571
        1E32FF0082927ED99A368DA6DC37C3BF8576F6FAC42D3DA5D5A65FCC55728DC3
        DF9C10CA461941F6AD8F867F17354F856BAB2E9F0E9F3C5AD5A9B2BB8EEA1F31
        6488E72BC10467241C1FE42BD6C78163FDA7BE01695378734FB3D2B5EF0A5C4B
        6434C8EE5522BE590AC8ED1891B2A72D900B609DC33D2BE771391D0A7539AA5D
        41B5AA7B68FBDFADBB9F6D81E2CC657A2E142D2AAA2DD9A77766B6B593F76EF6
        5AD924FAFC4BF11FE3EFED8BFB40C3259EB1E385F0AE9D37CAD0699710E9EA01
        EA0BDAA99581F42E45711E00FF00827B69B6DA87DBFC5DAD5D6BD73239924821
        CC51C8C793BE424BBE7AE46D35F4CEBFE1FBEF0AEAF3E9FA95A5C58DEDB36C96
        1990A3A1F707F9F7A6E8DA35DF88754B7B1B1B79AEEF2E9C4714312967918F60
        057A987C8B054FDFB737ABD3F447CFE338BB35AFFBABF23DAD1567F8DDA7E863
        F877C37A7F84748874FD2ECEDEC2CADC6238608C222FE03B9EE7A9ABD5DD1FD9
        E75DB1311D52F3C37A2C723005AF75BB55641DD8A2BB39C7A052DED5CCF8F0F8
        47C09E1BB8BC93C56D79731A910DB45A648BF697ECAACCC383EA40C0EDDABB6B
        E6385C3D1956A934A11576FA25F23E76B616BC13A95FDDEAF99A4FF169B2D597
        C52D3FE0D7C28F156A936A025D4B59B63A2D9E8C8E01B932A9637120FF009E71
        6D046392E40C804E7E65D334EBEF1D788FCB5669AE6E9CBC9237451DD8FB0FF0
        146AFAADF78E7C41E632B4D7170DB238D7A28ECA3D87FF005EBD73E1EF81A2F0
        5E95B5B6C97930066907FE823D87EB5F8846389E34CDDB578E129BF4BFFF006D
        2FFC957E3F3B52BCF309C61B5387EAEEFE6FEE4BCEF7D2F0EE816FE18D221B3B
        75FDDC63963D5DBBB1F7357A8A2BF78C3E1E9D0A71A34572C6292496C92D91EB
        462A2ACB60A28A2B628EBFE02691A66BFF0018740B3D616DDF4FB8B9D9224EDB
        6394ED3B118F60CFB47E3599E3DD4F52D73C737D2EB50BDADFF9DE54D06C2BF6
        60B8511AA9E42A280A07A015D8683A9E9DF0F7E08586AD0E87A3EB7A9EB7A9DC
        5B4F3EA56C665B0585222B1A29C025FCC2C5BD063A8E3D6BF6469B42FDA03E2E
        DE788B5CD2913C4DA3DBC52A884FFA14F8C46B2F94412B2200A3EF153D7008CD
        79388C5BA2E789716E295BE69FE4DEFE89EC7D1E0F2F58954F0319A539352D9D
        ACD5F57D5A5AA5E6D5EE7D45E14D22D740F0BE9B6362ACB65676B1416E186184
        6A81573D39C015A14515F9B4A4DBBB3F738C54528AE814514522828A28A0028A
        28A0028A28A0028A28A0028A28A0028A28A0028A28A002B88FDA5F426F137ECE
        9E3CD3D1774977E1FBE8E318FE336EFB7F5C576F51DD5B477B6D2432AAC914CA
        51D4F4604608ACEB53E78383EA9AFBCC7114555A52A4FED26BEF563F1D7F617F
        13AF847F6ABF095D336D124B3DA75EA67B696151FF007D38AFAABE13AEFF008A
        7E1953D0EAB6A0FF00DFE5AF89FC4FA45E7C07F8E17B66037DBBC23AD32216E3
        735BCDF29FA1DA0E7D0D7D89F0BBC4704DE22F0EEAD0B06B76B9B6BB46FF0067
        72B0FD2BF9378CA72A789C12A9B42A4AFE5AC2FF00FA49F94F85789E5A388C0C
        F494257B7AAB3FB9C4FBE28A28AFEB63F5C31BE21F8D21F875E07D535CB8866B
        8874BB76B868A21977C761E9F5EC39AFCD0F16F88A4F17F8AB53D5A68E3866D5
        2EE5BB78E31F22348E5881EC09AFD12FDA3ACF50BFF813E2A8B4B91A3BC6D3A5
        20A8F99900CC8A3DD9032FE35F9BB5F69C2B4E3ECE753ADEDF23F2CF10AB54F6
        D4A97D9B37F3BDBF20A28A2BEB0FCE829558A30652430390476A4A2803D1F44F
        DA36F2E7468F4BF16693A778D34E857644D7F95BDB65F48EE57E751F5DD5D178
        C7C3169F0CBC076771E13D3757B8BEF1C588B933CA9E7369366DF2B5BA3A8019
        DC860CF807600B8F9893E75F0EBC170F896E2EEFB52926B6F0FE8C8B3EA37112
        E5F693B5224CF1E648DF2AE781CB1E14D55F8D1FB606A9A4C96B169BA86A1A35
        9E991AC5A4E93657B228B48D4614B3820B3772E79249C60703C0CCF1186C141D
        7A9250A71D657768F92B756DEB64AEFE767ED473054F0CEAE365D2D1764E4BA3
        777ADAD74AEDEBF0ABA6D735E38D57FE15F69BF68D4A0B8B766CAC51BC651A66
        F419FD4F6AF0FF0010F88AFBC71AD89240D24921D90C29C8407A281FE735A1E3
        AF88DE27F8DFE2A8EF35CD5352D7B52702187ED13BCCD1A649089B89DAA324E3
        EA4F735EC3FB3EDBFF00C28BB9FED486C347D475A9A2D865BFB35BA5B4CF5112
        B6541C6016C67A81804E7F1EC563734E35C57D5B0B1F678583D5F47E6FBCBB47
        A6EFB9F1B26B1D5FD9C1B8D25D5AD7EEBEFE57F99CEFC34F8729E12B5FB4DCAA
        BEA132F27A8847F747BFA9FF0027ACAF506F8C57DF16FC29E22D3FC512E9F37D
        9AC7ED9A5CA9650C125B4E924636218D549578CB82A723807B5797D7ECD91E07
        0D80C3FD430D151F676BA4EEF5FB4DD93BBD775D34D0F7AA60E961E11541B716
        BAAB3BA7677577F9F5F90514515ED18851457A17C0CF87B0EBB61E24F126A9A6
        8D4345F0BE9CF70D149234715C5C361628D99486C7258ED23EE81DF9CEB5554E
        1CF2FEBA23A30B87957A8A9C3FE192576DF925A8CF1A6A57363F007C1BA4DC49
        28F3AF2FB528E261B76C2C628E36C7705D2720FB9AF73FF8270FC3ED4B4B3AE7
        882EECA6B7B1BF82282CE691768B9C33172BDC80428CF4C9F635E0BE1CF0F6B7
        FB4B7C55B6B1B3B78619AE55225485585B69B6D1A8518049211140EA4927D4B7
        3FA1BE0BF0A5AF817C25A6E8D6408B5D32DD2DA3CF560A00C9F73D4FB9AF98CF
        316A8E1FEACBE29DDBF24DDFFE01F79C23973C5637EBCEFC94D28C5F76A3CBF9
        6BE5748D3A28A2BE28FD5028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A00FCCBFF0082BAFC0E93C0BF1DEDBC5F6B09
        1A6F8C20065603E54BB854238F6DC9E5B7B9DFE86B91FD94BE242EADA03F87EE
        24FF004AD3F325B64F32444E481EEA4FE447A57E8EFED51FB3DD87ED35F06353
        F0BDE3470DCC805C69F74CB9FB25D26763FD0E4AB6392ACDDEBF1FB5ED0BC41F
        037E245CE9F7D0CDA4EBFA0DC98E58DBAA30FD19581C83C8656CF20D7E1DE23F
        0B7B7E6B68A6F9A2FB4BAAF9EBF27E47E239F46B70DF102CD6946F46B5F992F3
        F897ADFDE5DF6E8CFDACF875E265F19781349D515B71BCB5477F67C61C7E0C08
        FC2B6ABE4DFF00826AFED77A4FC51D066F095E5C4563AE5B93736D6B23E3CE53
        CC822CFDE00FCD8EA373678193F5957EA5C2F994B1D9651AF5749D929AED25A4
        BEF7AAEE9A7D4FD872FCC30F8DA11C4E164A517D57E4FB3EE9EA55D76D7EDDA2
        5E43D3CE81D33F5522BF2D27B792D6529246F1BAF5565DA47E15FAAB4D68D5CF
        CCAA7EA2BEDF29CDBEA5CCB979B9ADD6DB5FC99E2F1170DFF6ABA6FDA7272DFA
        5EF7B79AEC7E54D15FA75E3DF867A1FC4BD0EE34FD634EB5BC8E78CC61DE2532
        439180C8D8CAB0EA08AFCCBD62CFFB1750BAB799954DAC8F1BB1E00DA483FCAB
        EC72BCDA38C527CBCAE3E77FC743F32E21E1D9E56E179F3295F5B5B6B74BBEFD
        C8682768E6B93F137C60D2F420D1DBB7F685C0FE188FC80FBB74FCB35E6FE29F
        881A978B9CACF37976E4F1045F2A7E3EBF8D7CAF11788D95E5A9D3A32F6D57B4
        5E89F9CB65E8AEFC91F1788CCA952D16AFCBFCCF63F8BBFB4BD8E93F0AB4BF07
        F85E46B89C5CCBA8EAF7A40F29A7202471C7FDF11A293B8F1BA46C64727C5346
        D0B51F1BEAECB0892E2690EE9657270BEECD5DAFC1DF81B67E2DD4D64F156A57
        DE1ED2B6E55EDEC85D5C4A7B0D85D36AFB924FB1CE6BDF7C21FB335BCFA57FC5
        3FE26F067F672B1086E7511653B7BBC7280E1BF31E848E6BE0B07C3F9AF11D75
        8CCF64E950BDD46CD5EFFCA9ED7FE695DDAD6BADAA181C6E692556A7C2924A29
        ABD92B6D7BAF56B56795F823E1FDA782ED7E4FDF5E38C493B0E4FB0F415BD5AB
        E2EF094DE0FD55AD64BAB1BE0BC09ECA713C0E7B8571C1C7B56557ED593D1C0D
        2C2469E5BCBEC95D2E577574ECF5EAEE9A77D6F7BEA77CB0AF0EFD938F2DBA16
        34CD41B4BBC599555B19055BA303C106B7BE21782A2F0969DE1FB95957CDD7B4
        F1A89B753B85BA348EA833DC9084E3B57335E9D7FA6E9BF167E1FF00845E3D63
        49D2F58D1A27D26FD2FAE9605F216432433286396E247076E4E53B719CEBE5F4
        218E8E60AEA76E5934DD9C55DC79A29D9D9B766D5D3764F567A38594AAD09E1F
        47D629DB7BA4ECFD375B595FA1E634AAA5D82A82CC780077AF45D4C7C3BF873A
        FC896ABA9F8F1ADE4DA1A63FD9F6271C1FBA5A49390704141C8EBDFD52FF0044
        F1978EFC13A0EB7F0C342BBF0B5A5F473F9D656220B7FF0057B079BF68F95DF7
        B33055639C4648AE8AB8E50B36AC9F593E55DFD7EF46F87CA1D4E64A5CD28EF1
        82727BDAFA5A2F7E927E8780E83F0CFC41E25BD5B7B3D1F509188C9630B2471A
        F76776C2AA8EECC401EB5D8F89FC7CDF093FB0F43F0CEAD6B7DFD93048FAA4B1
        AACF637D7531FDE2ED605258D6358D0311C95247635D7BFECB5F167E217822EA
        FB52BCD5AE2FBED823FECBD42F8969D368265DCEFB7827183CF06BA6FD98FF00
        624D5B48F883FDA5E38D26DD74FB08F7DBDB3CD15C25CCA781BC2B1F95464E0F
        538ED907931198E1B95CEACE2F96FEEA77BBF9EFBF6B1E960F25C773C6961E94
        E2E76F7DA6ACAF7E9B6DADDDFA2DF5F42FD837528FC49F0DF52D4E4D0F4BD2AF
        24BF6884D65A78B54B9842215E40F9B0E64EFC57BA532DADA3B3B748618D228A
        350A888BB5500E8001D053EBE0B175D56AD2AA95AFD373F60CBB08F0B868506F
        99C56F6B5FE4145145739DA14514500145145001451450014514500145145001
        451450014514500145145001451450015E07FB6C7EC29A37ED5DA1ADF5AC90E8
        FE31B18B65A6A057F7772A3910CE072533D1865973C64654FBE515CF8AC2D2C4
        D2746B2BC5FF005F79C59865D87C750961B151E684BA7EABB35D19F877E3DF87
        7E24F81FE36974DD62CEF347D5F4D9F0AC09521D4F0F1BAF07B10CA7D2BDD3E0
        E7FC155BE287C31B58ACF549EC7C5F6310DA3FB510FDA947B4C84331F770E6BE
        F8FDA6BF660D37E3B68AD30B5B36D5624C059D034776A3A2B7A30ECDDBA74C11
        F087C41FD8C348D3B58B8B5921D4F40BE89B0F0EEDC8BEF86C923D086C7A57E0
        F9DE658CE18C5B86239A34E4FDDA91D6325DA4BA49754D3EEB43F24C4700E6F9
        65675B23C468FA37CAFD1FD997CEDE87B2E83FF05AFD266817FB53C03A95BC98
        E7ECBA9A4CA7FEFA8D2A4D57FE0B5DA0C309363E03D5AE24ECB3EA31C2BF9847
        FE55F35DBFEC5D0CB79B65F13490C07F8974DF3187E1E68FE75DF783FF00E09C
        BE0DD6CAB5EFC5F86D7FBD11D01E36FF00BEDA5DBF966BD0CB7C42AB8DF76862
        A17FEF3841FDD3E5BFC9151ADC7BF072AF5FDD7F9D8B9E3EFF0082C9F8F35E89
        E2F0FE81E1FF000FA3E7124BBEF674FA12553F3435F31F8D3E21F893E3278B6E
        2FB55BCBAD5B54D527F31D63882F9D237A47180B927D179AFBBBC0DFF04E9F80
        7E1A649B58F185D7889D7968E5D4E3B785BFE03100E3FEFBAF68F046BDF04FE0
        0DB6CF0C59687A74A176992C2C5A4B8907A34C54B37FC09EBD6AD887562DE639
        8D3841EEBDA475F92693265C15C459AB5FDAF894A3DAF7FF00C955A3F89F98B7
        1FB32F8BB4196CFF00B7B4ABAF0EADF43F68896FA331CCF1E4AEEF2CFCC3907E
        F05E95D7F853E1A699E14DB2247F68BA5FF96D2F241FF64741FCFDEBE80FDB47
        E2BD87C5BF89D6379A6C7751DADA69C96FFBF50ACCDE6C8C4E013C61875E6BC8
        2BF71E06E15C929E0A9665864AACA6AEA6F5F9C56CBC9DAFE67C9E3B24C3E031
        93A14FDEE576BBDFFC828A28AFD24CCE9BC27E12BAF17F8375D6B392DDA4D151
        75092DD9F134B10CABB20C73B010CDE839AE66B7FE1A78CA1F0278B23BEBAB26
        D4ACDEDEE2D2E6D44E6133C5342F13A8700953872738EA2BBFB5F86FE1AF8E3E
        1C8BFE10CB5B2F0E78862BC684697A86B9E6CBA8C7E586062DE8BF36EC8C703A
        F35E451A14F0352AC927CB525CEDE964DA49F9DBDD4F6DDBD4F5A347EB74A0A9
        B5CF14D72EB792BDD35A5AFAB56BDF4D11E435ED3F09BF618F187C465B7BAD41
        23F0EE9770BBC4D7437CE548C82B0820F3C7DE2BC735EEFF00B36FEC53A57C32
        82DB58F11470EADE202AB22C52286834F6EB851921DC1FE33D08E31D4FBC578F
        9971259FB3C27DEFF4FF00827DA647C0CA5155B31BF9453FFD29FE8BEF3C2FE0
        D7EC1FE19F8717535D6B7243E2CBA623C9FB4DA797042BDFF745DC313EAD9F60
        3AD7B6697A55AE87A7C569656D6F676B02ED8E182311C718F40A3803E95628AF
        96C4632B5797356937FD76D8FD030396E1B070F6786828AFC7E6DEAFE6C28A28
        AE73B828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
        A28A0028A28A0028A28A0028A28A0028A28A002B07C77F0CF44F893602DF58B1
        8EE768C4728F9658BFDD71C8FA743DC1ADEA2B9F1584A189A4E86260A7096E9A
        4D3F54C0F9DFC61FB10DC472349A0EAF1491F510DEA9561FF035041FFBE4570B
        A9FECB7E38D31CFF00C49FED0A3F8E1B98981FC3703FA57D85457E5F997833C3
        B89939D253A5E50969F7494BF0B13CA7C5E9FB3C78D5DF68F0F5F7E2540FE75A
        DA4FEC97E36D498799A7DB58AB7F14F749C7E0A58FE95F5D515E7D1F037238CA
        F52AD59795E2BFF6DBFE28394F917E247EC1BAC45E07BAD42DEF74EBAD5EDB12
        0B688796B2AF1BB32B951C0E791DBA8AF159FF00675F1D410B48BE16D66E235F
        E3B6B7370A7E85320FE15F65FC79F8E9E057F0BF88BC277DE29B1B2D4AF2CA6B
        36022967581DD0A8DC6356E84F23A8AF943C37F052DF51B8DDE1FF00895E12FB
        6C6728B2DCDC69D23376D8648D727F1AFE88E0BCBA393E5AB03479A34E3F0F3F
        3CB47FDE6F45D92D1743F2DE2AC1E12AE314A8252935EF72CE09DD3FE569B6CF
        319A092DE668E4468E453B59186181F422BD05FF0067E9FC24CCDE35D5AC7C23
        1B0C409262FAE677C671E542599001D4BED1920739E37FC5DA8FC5BF02C2B71A
        BC336A76B69F7350B8B0B6D5A1503BF9EC9201EBCB035E4BABEAD73AF6AB717D
        793497177792B4D34AE72D23B1C927EA4D7DA42752AABC6492EE9DDFCAEACBEE
        67C7D4A5430CDAA9093974525CABE766DBF2B38FCF63B293E14E87796CB75A7F
        8DF4592CA3764BA6BC8DED67870010521F99E50DC81B01C11838EB5ED1FB0DFC
        08D1753F18CDE2A8F57B3D720D1C797043E4C90CB6F70D9C3BA30C602E4A904F
        273C15AF976BEB4FF8265C99D2FC62BFDD96D0FE626FF0AF3F3AF6B4F053929B
        E8BA6CDDBA2F33D8E17F615F34A509525D5EEF749B56BB7DBADCFA928A28AFCE
        CFDB028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
        28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
        2A8F897C4B63E0FD0AEB53D4EEA2B3B1B34324D34870A83FA93D001C92401CD3
        8A6DD9132928A72968909E27F13D8783340BAD5354BA8ACEC2CD0C934D21C2A8
        FEA4F400724900735F137C7EFDB6BC41F136EEE34FD0E69B42D077155F25B6DD
        5D2FAC8E0E541FEEAE073825AB17F69FFDA76FBE3CF883ECF6FE759F86EC9C9B
        5B5270D31E9E6C9EAC7B0E8A0E3AE49F29AFBAC9F238D18AAB8857976EDFF07F
        23F23E26E2DA9899BC3E0A4D535BB5A397FC0FCFAF6027268A28AFA53E14D7F0
        878F75AF006A22EB45D4EF34D9B20930C8555FD997A30F66041AE9352D0B4EF8
        A9A7FF006A691269BA5EBDBF6DFE9524F1DAC33B1E935B1721707F8A2CE54F2A
        0A9C2F0945632A29BE78E8FBF7F5EE74D3C4B51F673F7A3DAFB3EEBB3FCFA9B3
        E2DF87FABF81D2D5B53B4FB3C77C18C122CA92A4BB4E1B0C848C82464672335F
        5B7FC138FC1B368DF0C758D626568FFB66F424408C6F8E25C061EC59DC7FC06A
        2F805F02F43F8C9A1F857C4D7CB3CDE1FD16C16D34FD1AE2D5638C5C21C4F339
        0C44AAF2866E42E4F046060FD1904096D0AC71A2C71C602AAA8C2A81D0015F1F
        9D671ED293C2A5ADF5F93DBD76BF4ED73F4DE16E1AF638859837EEDBDD5BB775
        ABBAB69ABB697B6F61D451457CA9FA1051451400514514005145140051451400
        5145140051451400514514005145140051451400514514005145140051451400
        514514005145140051451400570BF157E03D97C67D52D86BDA8EA12E8B66B94D
        2E07F262925FF9E9230F99881C01C01F89CF7545694AB4E9CB9E0ECFB98E230F
        4EBC3D9D5578F6E8FD7BFA3D0F80FF006A4FD976F3E02EB0B796AEF79E1BBF94
        A5B4E7EFDBB7244527BE01C37F1007A1C8AF23AFD4CD73C39A7F89ED638752B1
        B3D4218A459923B985655575E8C03023233C1AF1DF8FBFB12E87F17B54BBD674
        FB99345D72E2319DAA0DACEE3F89D719C91C12A7D0E09CE7EBB2FE248D953C56
        FF00CDFE6BF33F35CEB81A7CD2AD806ADFCBF9D9BFC17E27C2B456E7C42F877A
        B7C2FF00155D68FAC5B35BDDDA3ED24731CA3A8646EEA41041F7EC78AC3AFAC8
        C94A2A51774CFCEAA539539384D59AD1A669F82FC2F3F8DBC5DA668F6CACD3EA
        5751DB26D5DDB773019FA0CE4FB0AF79F8A1FB0D59782AEACEC6C3C41717DAC6
        BD7E96DA559B4037794306696423F8517249000C63B9C56AFECCFE0FF0FF00C0
        8D2F4AF136B4752BBF1B6B30B0D3342B42B2CF24520F91FCB032A5972773B050
        09EF5EF5F0AFE175DE97E21D43C59E22916E3C51AC0D9B03EF8B4AB6CE56DA23
        EDC6E618DCDCFB9F97CCB389D3AB7A6ED15FF933FF0025D5FC8FBFC8B866956A
        1CB5E3CD3934DEAFDC8DBADBED3BE89EDA37A23A9F05F84ED3C09E12D3B46B15
        DB69A6DBA5BC79EA428C64FB9EA7DC9AD4A28AF8B949C9F33DCFD52108C22A31
        564B441451454941451450014514500145145001451450014514500145145001
        4514500145145001451450014514500145145001451450014514500145145001
        4514500145145001451450072FF17FE13E97F19FC0F75A26A8A55261BE19D47C
        F6D28FBAEBF4EE3B8C8EF5F07EBBF006FBC3BFB40C1E0392EA3BAB89AF60B7FB
        442A71E5C815B7E0F4211B24738C1E4F5AFD18AF21FD9BBF67DD3FC1F3378CAE
        AF2EF59F116BD1199EE6E71FB8590EE2A83939C601627240E300915EEE539A4B
        0B4AA5DE9D179BEBE56B6A7C8F116430CC31147963ADFDE95FECAE96EADB7A76
        3D2B44F05693E1D96396CF4FB486E63812DBED2225F3DE3450AAACF8DCD8000E
        4F6AD4A28AF12526DDD9F5918462AD1560A28A2A4A0A28A2800A28A2800A28A2
        800A28A2800A28A2800A28A2803FFFD9}
      Stretch = True
      ExplicitTop = 424
    end
    object Image3: TImage
      Left = 0
      Top = 0
      Width = 158
      Height = 122
      Align = alTop
      Picture.Data = {
        0A544A504547496D6167655A1A0000FFD8FFE000104A46494600010100000100
        010000FFDB00840006040506050406060506070706080A100A0A09090A140E0F
        0C1017141818171416161A1D251F1A1B231C1616202C20232627292A29191F2D
        302D283025282928010707070A080A130A0A13281A161A282828282828282828
        2828282828282828282828282828282828282828282828282828282828282828
        282828282828282828FFC0001108007A009E03011100021101031101FFC401A2
        0000010501010101010100000000000000000102030405060708090A0B100002
        010303020403050504040000017D010203000411051221314106135161072271
        14328191A1082342B1C11552D1F02433627282090A161718191A25262728292A
        3435363738393A434445464748494A535455565758595A636465666768696A73
        7475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9
        AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4
        E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FA01000301010101010101010100000000
        00000102030405060708090A0B11000201020404030407050404000102770001
        02031104052131061241510761711322328108144291A1B1C109233352F01562
        72D10A162434E125F11718191A262728292A35363738393A434445464748494A
        535455565758595A636465666768696A737475767778797A8283848586878889
        8A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5
        C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FA
        FFDA000C03010002110311003F00FAA6800A002800A002800A002800A002800C
        D0019A002800A002800A002800A002800A00F2AFDA8FFE484F89BFEDD7FF004A
        A2A00F55A002800A002800A002800A0028010B01401C0F8E7C7B0E97E658E925
        66BF1F2BBF5488FF0056F6E83BFA57B197E532C45AA55D23F99F319C710C30B7
        A587D67DFA2FF37E5F79BDA86A77163E138F528F6C9308A273BFA364AE7F99AF
        9FCC6B3C2D39D482DBFCEC7D5E5547EB52A74E6F74B5F95C9BC3BE21B3D662CC
        2DB2703E785BEF0FA7A8F7AC7078FA58A8FBAF5EA8E8C6606AE165EFABAE8CDB
        0735DD738C2800A002800A002800A00F2AFDA8FF00E484F89BFEDD7FF4AA2A00
        F55A002800A002800A002800A008E799208DA495D123452CCCC70001D493E94D
        272765B932946117293B2479278E3E20C9785ECB42768EDF187B91C33FB2FA0F
        7EBF4EFF004D80C9D42D5310AEFB76F53E1737E23756F470AED1EAFABF4F2FC7
        D0F391D6BDF3E4773DDB5DE7E1BAFF00D7B41FCD2BF2CCF57EE6AAF3FD4FDCF8
        79DEA517E5FF00B69E6104D25BCC934123472A1CABA9C106BE2A339465CD1767
        DCFBA9D38CE3CB2575D99E8FE16F1A4773B2DB562B14FD166E8AFF005F43FA7D
        2BE97019BC6A5A9D7D25DFA33E631F93CA95EA50D63DBAA3B556CD7B89DCF087
        531850014005001401E55FB51FFC909F137FDBAFFE9545401EAB400500140050
        0140050050D6B56B4D1ECDEEAFE61144BF9B1F403B9AD68D0A9889F253576736
        2B174B094DD5AB2B25F8FA1E25E33F18DE788A631296B7D3D4FCB083CBE3BBFA
        9F6E83F5AFAEC065B0C22E77ACBBFF0091F9CE6D9DD5C7BE55A43A2FF3FEBFCC
        E56BD3D8F177D4E8BC23E15BDF115C7EEFF736687125C30E07B2FA9FF27B579F
        8ECC29E12367ACBB7F99EBE5993D5C7CF4D21D5FF9799EBDE2CB75B4F04DC5B2
        31290C51A296EB80CA066BF3ACE25CF87A92975D7F147EBD92D3F655E9423D34
        FC0F24AF893EEBA851EA1E8753E18F17DC695B60BCDF7166381CE5E31EDEA3DA
        BD6C0E6B530FEE55D63F8A3C7C76530C43E7A5A4BF067A7D85EC1A85BA5C5A4A
        B2C4DDD7F97B57D552AD0AD153A6EE99F295694E8C9C2A2B3459AD480A002800
        A00F2AFDA8FF00E484F89BFEDD7FF4AA2A00F55A002800A002800C8F51401CDF
        8B7C5565E1E80F9EDE6DD30CC5021F99BDCFA0F7FE75DB83C0D4C5CAD0D17567
        959966D472F8DE7ACBA25D7FC8F11F106B77BAF5EB5CDF49B8F211070B18F402
        BEBF0B84A5868F2C17AF99F9C63B1F5B1B539EB3F45D11995D4716E779E08F01
        CDAA7977BAB8786C7AAC7D1A51FD17DFA9EDEB5E1E619BC695E9D0D65DFB7FC1
        3EA727E1E9626D5B11A43B757FE48F52BDBCD3BC3DA6A9709040836C714600CF
        B28AF8EC5E321453AB5A57FCD9FA1E0B032A8D50A11B5BEE479E5EDE6A9E30BF
        3142A22B38FE62A4E238C7F79CF73FE40EB5F3156AE2332A9CB1D23F825E6FA9
        F574A8E1F2CA7CD2D65F8BF24BA230B50B7860BE682CAE0DDA021448A9B431F4
        03273FD6BCEAF4E30A9ECE9CB9BCCF4685494E9FB4AB1E5FF222B9B79AD66315
        CC4F148392AEA41FC8D454A73A72E59AB32E9D58558F341DD11547A1A7434345
        D5EEF47B9F3ACE4C03F7E33CAB8F71FD7AD74E1717570D2E6A6F7E872E2B074F
        151E5A8B6EA7A9F86FC4769AD46150F957407CF0B1E7EA0F715F5B82C7D3C547
        DDD1F63E471B80A98497BDAC5ECFFAD8DEC8AEFDCE10A002803CABF6A3FF0092
        13E26FFB75FF00D2A8A803D56800A0028010B01D680382F1C78EE0D27CDB3D30
        ADC5F8E19BAA43F5F56F6FCFD2BD7CBF2A9621FB4A9A43F33E6B38CFE1844E8D
        0B39FE0BD7CFCBEF3C7AF2EA7BCB992E2EA5696690EE6773924D7D5D3A70A715
        182B247E7F5AB4EBCDCEA36E4C8E189E69523891A491C85545192C7D00AA9C92
        57968913084A72518ABB67ACF823C0096812FB5C4496E3AA5BF0553DDBD4FE83
        DFB7CBE619BBA9FBAA1A47BF73EEB28E1D8D1B56C52BCBB745FE6FF0FD3A8F12
        F892DB4488A0C4D78C3E5881E9EEDE82BE4B1B98430CADBCBB7F99F7981CBEA6
        2DDF68F7FEBA9C1456B77AFCB26A9ACDCFD9EC138699B818FEE463BFA7F89AF9
        F8C2AE31BC46225CB05D7FC8FA2954A5824B0F868F34BB7F989737F36A7E5E91
        A0DAB43659E235FBD29FEF39FF0023F214A75A588FF66C2C6D1FC5F9B638508E
        1EF8AC5CAF2FC1792476FE15F0AC1A3AADC5CE26BE23EFF68FD97FC6BDCC065B
        0C2AE69EB2FC8F0330CCE78A7CB1D23F990EA579E1CF115F3E9125CC6D7B1F08
        EBC107B856E84FA8E7F4E3D5C664EEB51E7AB0D3BF5478B81CFE952C4BA346A2
        E6EABA3F2FF86385F10787EF3459BF7CBE65BB1C24CA383EC7D0FB7F3AF88C5E
        02A615DA5AC7A33EFF00079852C5ABC74975463D711DC3A29248655921764914
        E5594E08AA8C9C5DE1A32651528F2495D1E87E17F1AA4BB2DB5860927016E318
        56FF007BD0FBF4FA57D26073853B42BEFDFF00CCF99C7E4EE9FEF286ABB7F91D
        D8604020F06BDEBDCF07616981E55FB51FFC909F137FDBAFFE9545401EAB4005
        00216C5026EC79378F3C7B33CB369DA36F8550949A7208627B851D47D7AFD3BF
        D1E5D95474AB5F5ECBA7CCF89CEB8824E4F0F8576E8DF5F45DBD77EC79A124F2
        4F35F476B687C6B61DC5085D0F64F85FA668D1E9CB7B6528BABF200999861A2C
        FF00085EC383CF7AF91CDABE2253F67515A3D3CCFD1387B0983853F6B45F34FA
        BEABFCBF52EF8C7C54DA631B2B1461765726465E101F41DCFE9F5E95F1B99666
        E87EEE92F7BBF45E87DF65995AC47EF6ABF77F17EBD8E4ED2C6DE1B61AB78865
        3289BE78ADC3E649CFAB1ECBEFFE4F8F4E84231FAC62DDEFB2EAFD4F66AE2272
        97D5F08AD6DDF45E9E63E28B53F175F848D4456717CAAAA31140BE80773FE781
        D2A2ABE6752CB48AF925FD7DE293A19553D7593FBDFF005F77A9E85A5E99A7F8
        734E72191140DD2CF21009F727D3DABE9F05828508A852576FEF67CAE3B1F2AE
        DD4ACEC97DC8F35F1AF8F27D4D9F4FD10C91DA13B5A45043CBEC3D01FCCFE62B
        EC72ECA634AD56BEFD1745FF000C7E779BF104F14DD0C23B45E97EAFD3C9FDE7
        3DA9681FD8FA5C73EA374B06A52E1A1B30B970B9FBCE73F2F7C0FF00EBE3BA8E
        31E22A38D2578ADDF4F969A9E5D7CBFEA74154AF3B4DEAA2B7F57D8ED3E1FF00
        8A6F7576FEC8D52D5EFA22B833ED076AFF00D34CF51EFD7EB5E2E7195D1847DA
        46C93E9DFD3FAB1F49C3F9E626A5454669C9ADA4B75EBFE7BF71FE2BF079B249
        2F34C3BAD946E7898F283D41EE3F5FAD7E758FCA7D927528FC3DBB1FAB65F9BF
        B47ECEBEFDD75F5F338DAF0FCCF7BC829590CEC7C07AD6A697B1D8471BDD5AF7
        5279887A83D87B7E55EE6538BAFED152F8A3F97F5DBEE3C1CDF074391D66F965
        F9FF005DFEF3D4057D51F2C7957ED47FF2427C4DFF006EBFFA5515007AAD0014
        008403401CB78BBC1F63E218DA4C082F80C2CE83AFB30EE3F515DF82CC6A611D
        96B1EC78D99E4D47308F37C33EEBF5F2FC51E2BAE68B7DA25E35BEA109461F75
        C72AE3D54F7FF39C57D761B174B151E6A6FF00E01F9DE37015B0553D9D756FC9
        FA19B5D2711734BD46EF4BBC4BAB19DA1997B8EFEC4771ED5956A10AF1E4A8AE
        8E8C3626AE16A2A945D9A3D4B46F10E93E32B45B0D6634B7D471852A71B8FAA3
        1E87FD93FAD7C4E7190271775CD1EFD51FA4E41C52A734AFCB3EDD25FD7FC30C
        B3F014FF00DA456EA75362B82244E19C7A63B7F9EB5F1D4F2493ABFBC97BBF8B
        3EFA79EC152BD35EFF00E08EC2FEFB4CF0BE921A5296F6D18C246BCB39F403B9
        FF00F59AFA8C1E09CDAA3463FF0000F92CC3318508BC46265FE6FD0F22D7B5FD
        5BC67A9259D9C52080B7EEADA33FF8F31F5F73C0FD6BEBA8612865F4FDA547AF
        7FF23F3CC66618ACE2AAA34D68F68AFCDBFE91334D63E0E0C968D15F6BF8C34E
        06E8AD4F70A0F56ED9FF00EB831CB57307CD35CB4FB7597AF91B39D0CA7DDA56
        9D6EFD23E9DD95BC33E19D4FC597CF753C8E2DCB665BA9392C7D17D4FE82B5C6
        63A8E061ECA3ABE8BB1CF97E5788CD2A7B4936A3D64FAFA773D72D6DB49F09E8
        DB630B6F6E9D4939791BDFB93FE7815F1B8FC7DDBAD8897F5D91FA3E5B964692
        5430B1FEBBB3CF3C4FE26B9D6A431AE61B207E5881E5BDDBD4FB741FAD7C663B
        32A98A765A47B7EACFB9C065B4B0AB99EB2EFF00E4605799B1E9EBD0DAF0E787
        AEF5B9BF763CAB5538799871F41EA6BBF0780AB8A969A47B9E7E3730A5848D9E
        B27D3FCCF57D1B4AB5D26D16DECE3DABD598F2CC7D49AFAFC361A9E1A1C94D68
        7C7E231353133F6955EA68574189E55FB51FFC909F137FDBAFFE9545401EAB40
        05001400607A0A02C50D634CB4D56D1ED6FE049A16E707A83EA0F63EF5A52AD3
        A1353A6ECCE7C4E1A962A0E9568DD3FEAE78C78CBC1377A096B8B52D75A77F7C
        0F9A3FF7C0FE638FA715F5781CD2188B427EECBF33F3ECD721AB82BD4A7EF53E
        FD57AFF9EC71F5EB9F3CC51C1C8A4F519DE7877E235EE9D64F6F7F19BE2ABFBA
        766C303E8C7B8F7EBF5AF171592D3AB3E6A6F96FD3FC8FA8C0F13D6A14F92B2E
        6B6CFF00CFBFE66221D4BC65ADBB5D5D44BB54C8F24ADB63823079C0F419FAFA
        F735D4D51CBA8A508FDDBB7FD7DC79D1FAC6718872A92B756DE8A28B7A8EBB6B
        A559BE99E170CB1B71717EDC4B39F41FDD5FD7F5273A5849D797B7C56FD23D17
        F9B36AF9852C353786C0689EF27BBF4ECBFAEE69F823C032EA423BDD643C369C
        3243D1A51EFF00DD1FA9F6E0D736619B2A37A741DE5DFB7F99DD9470FCABB55B
        13A41EB6EAFD7B2FCCF45D6B59B0F0E58A46AABE605C456D1E0703F90FF3CD7C
        563B308E195EA3BC9ECBBFFC03F47CBF2D957B4292E582EBD17A1E5BACEAD77A
        BDDF9F79264FF0A0E1507A015F2189C5D4C4CB9A6FFAF23ECF0B84A585872535
        F3EBF328D731D475FE13F084BA86CBAD48345667954E8D27F80FD7F9D7B597E5
        52ADFBCABA47F17FE48F0F31CDA347F774B5977E8BFCD9E996D6F15BC290C28A
        91A0C2AA8C002BEA2108D34A315648F9694E5393949DDB26C55882803CABF6A3
        FF009213E26FFB75FF00D2A8A803D56800A002800A0028018EBBB208C8342135
        7D19E6BE34F8769397BCD055629792D6BD15BFDDF43EDD3E95EF6033870B53C4
        6ABA3EDEA7C8E6DC371A97AB84D1FF002F7F4EDE9B1E553C325BCCF14F1B472A
        1DAC8C082A7D08AFA684E334A51774CF87A94E54E4E12566BA323AA205A4C69D
        8F53F863E11B29AC60D6AF713BB93E54447CA9862327D4F1F41F5C63E6B37CC6
        A466F0F0D12DFCCFB7E1EC9E8CE9C71757DE7D1745FE6CE87C55E2D8B4DDF6D6
        0566BCE8CDD563FAFA9F6FCFD2BE1B30CD6387BD3A5ACBF047E9197E532C45AA
        55D23F8B3CCEEAE25BA9DE7B991A495CE5998F26BE56739549734DDDB3EB69D3
        8D38F2C15921B1A3CB22C71AB3BB10155464927B0A518B934A3B8E52514DC9D9
        1E8DE13F062DB14BBD59449375587AAA7B9F53FA57D36032854FF795F5976E88
        F98CC337753F7787D23DFAB3B80315EE9E08B4C614005007957ED47FF2427C4D
        FF006EBFFA5515007AAD0014005001400500140084668039AF16F846C3C410EE
        94082F14612E10723D987F10FF00208AEEC1E3EAE11E9AC7AA3C8CCF27A18F8F
        BDA4FA3FF3EE78A788341BFD0AEFC8BF88807EE4ABCA483D41FF0026BEBB098B
        A58A8F3537F2EC7E778FCBEBE0A7CB597A3E8FE665574EE70D8F6DF06EE4F860
        AE8C5585BDC1041C10773D7C1F1037ED6B5BB7E87EABC2B1FF0065A09F7FD4F3
        7FAD7E6177D4FD6ADD8B5A6D85CEA774B6F67119243D71D147A93D856F430F52
        BCB929ABB31AF88A7878F3D47647AAF85FC316DA2C6246DB35E30F9A523A7B2F
        A0FE7FA57D76072E86155DEB2EACF8FC76633C5BB6D1E88E880C57A079E14C02
        800A002803CABF6A3FF9213E26FF00B75FFD2A8A803D56800A002800A002800A
        0028002334014B54D36D353B47B6BE856685FAAB7F31E87DC5694AACE94F9E9B
        B330C461E96220E9D6574CF1BF19F812EB45F32EEC03DCE9FC93DDE2FF007BD4
        7BFE78EFF5380CDA388F72AE92FCCF80CDB87EA60EF528FBD0FC57AFF99DD783
        BFE49828FF00A779FF00F427AF9BCFF5AB59797E87D9F0B3B616837DFF00F6E3
        8DF0EF87EF35B9BF72BB2DD4E1E661C0F61EA7DABF3EC1606A62A5EEFC3DCFD2
        B1D8FA7848DA5ACBA23D6345D22D348B51059C7B41E598FDE73EA4D7D861B0B4
        F0D1E4A6ADFA9F1F89C554C54F9EA3BFE868E2B7B1805300A002800A002803CA
        BF6A3FF9213E26FF00B75FFD2A8A803D56800A002802B6A373F63B1B8B920B08
        519F68EF819C565567C9073EC8AA70F69350DAECE661F192C912BF956C9B8676
        BDC9047D7E4AF3639A371BB8A5EAFF00E01EA4B2BE576526FD23FF0004B03C4F
        27976B37D9627B7B8B85B7578EE37618FB6D1D2AD662ED1972AB49DB7FF8067F
        D9EAF28F33BC55F6B7EA6EDFDCFD92CAE2E48DC218DA4DB9C670335DF52A7B38
        39F657FB8F3E9C1D49A82EAD2FBCC7D3F5EB9D4141B4B485CEC5765373865DC3
        23236D71D2C6CEB694E2B64FE2EFAF63BAB60A141BF6937BB5F0BE9F319AA788
        6E74A687EDFA785597760C73EE3C0CF4DA2A6AE3A745C55486F7EBDBE414B034
        EBA93A73DADD3BBF526B1D5750BFB38AE61D362314ABB9775CE0E3FEF9AAA38A
        AD5A9AA90A7A3FEF7FC026B6168D1A8E9CEA6ABFBBFF0004E7351F16DB695E66
        92DA4A44BBCC4E8B36D8943724E42F1D7B0EF5E96022F35756355D9C2C9F5BDD
        7C8F1B33AD1C92341D18F329DDAB68959FCC75B78D6D2D60586DE0D3A2890602
        ADD9000FFBF75E8C329E44A106D7FDBABFF923C9A9C40E4F9E695DF797FF006A
        6A5BF88F519B5AB9D363D2A23736E8B23E6EF0B838C60ECE7A8A8960E94292AD
        ED3DD6DF4EDF336A799579D795054BDE8A4FE25D7E426ADE28BDD21ED7FB474B
        4449DCA2B4575BC838CF4DA29D2C142BDFD9CF55E5FF00043139A56C2B8FB6A5
        65276D24BA7C8CFB4F880B716E92F916916E1F725BCC30FA8D95B54CAF924E2E
        4F4F2FF828E6A59FFB48A9A8257EF2FF00ED4E84DF6B263565D2EDC93D47DB3A
        0EDFC1F5AE254E8A7673FF00C97FE09E9FD6317CA9AA4BFF00025FE453F0F788
        AFF5BB686EA0D2E34B57936176BAE400704E36F35B627094B0F27073BB5E5FF0
        4C30598D7C64554852B45BB5F995D59D9E963A8AE03D80A00F2AFDA8FF00E484
        F89BFEDD7FF4AA2A00F55A002800A008A689668DE37DDB58107692A7F0239151
        28A92B3FF204DA775FE667FF006159E3EF5E7FE064DFFC55737D4A9F9FFE052F
        F33ABEB9577D3FF018FF0090D3A069DF628ED3ECEC208E5F394091810FCFCDBB
        39CF27BD0F0545D354F9744EFBBDFD6F7058EAFED1D4BEAD5B656B7A5AC23E83
        652232B8BB6561820DDCC411FF007D53781A4F7BFF00E04FFCC1636AAD55BFF0
        18FF009091786F4D898B430CD13150A4C771226401819C354AC0514EF14D7A36
        BF26378FAED5A4D3F549FE81378734D9994CF14D36DCE0497123819183D5A878
        0A3277926FD5B7F9B0FAF568AB45A5E892FC90B1787EC218D5225BA48D4602A5
        DCA001EC3753581A51B5AEADE72B7DC98A58EAD26DBB36FF00BB1FCDA18BE1AD
        3433B2C7728CE773325DCAA5BEA4364D756122B097F6496BBDD5FF003B9C78D8
        FD7B97DBB7EEED66E3FF00A4D865CF8534AB988C5731DDCD11209492F66753F5
        05F15DAB1D5A3AC5A5E918FF0091E7CB28C34D5A69B5E7293FCD925CF8774EB9
        BF92F5E29D2EA450AF24571246580E80ED61530C65584153BAB2F24FF345D5CB
        70F56A3AAD3527A5D36BF2688A6F0A6952B234F0DCCE50E57CDBB9A400FA8058
        D52C7564AC9A5E892FC919BCA70D269C9376EF293FD4D4D32CA0D3AD22B5B343
        1DBC4308A4938EFD4F3DEB9EA4E5564E73776CEDC3D1861E9C6953568AD8B4C3
        72907BD41B3D558A5A469769A459ADA69F179502B160BB8B724E4F24D6956ACE
        B4B9EA3BB30C361A9E1A1ECE92B22F5666E1401E55FB51FF00C909F137FDBAFF
        00E9545401EAB400500140050014005001400500140050014005001400500140
        050014005001401E55FB51FF00C909F137FDBAFF00E9545401F2AFFC341FC4FF
        00FA19BFF242D7FF008DD001FF000D07F13FFE866FFC90B5FF00E374007FC341
        FC4FFF00A19BFF00242D7FF8DD001FF0D07F13FF00E866FF00C90B5FFE374007
        FC341FC4FF00FA19BFF242D7FF008DD001FF000D07F13FFE866FFC90B5FF00E3
        74007FC341FC4FFF00A19BFF00242D7FF8DD001FF0D07F13FF00E866FF00C90B
        5FFE374007FC341FC4FF00FA19BFF242D7FF008DD001FF000D07F13FFE866FFC
        90B5FF00E374007FC341FC4FFF00A19BFF00242D7FF8DD001FF0D07F13FF00E8
        66FF00C90B5FFE374007FC341FC4FF00FA19BFF242D7FF008DD001FF000D07F1
        3FFE866FFC90B5FF00E374007FC341FC4FFF00A19BFF00242D7FF8DD001FF0D0
        7F13FF00E866FF00C90B5FFE374007FC341FC4FF00FA19BFF242D7FF008DD001
        FF000D07F13FFE866FFC90B5FF00E374007FC341FC4FFF00A19BFF00242D7FF8
        DD006578A7E3178EFC55A15D68DAF6BBF6BD36E76F9B0FD8E08F76D60EBF32A0
        23E650783DA803FFD9}
      Stretch = True
      ExplicitLeft = 1
      ExplicitTop = 5
    end
    object GroupBox5: TGroupBox
      Left = 0
      Top = 453
      Width = 158
      Height = 140
      Align = alBottom
      Caption = 'Menu'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object SpeedButton5: TSpeedButton
        Left = 2
        Top = 21
        Width = 154
        Height = 29
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Cadastro Produtos'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Margin = 3
        ParentFont = False
        OnClick = SpeedButton5Click
      end
      object SpeedButton3: TSpeedButton
        Left = 2
        Top = 50
        Width = 154
        Height = 29
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Gerenciar NFC-e'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Margin = 3
        ParentFont = False
        OnClick = SpeedButton3Click
      end
      object SpeedButton12: TSpeedButton
        Left = 2
        Top = 108
        Width = 154
        Height = 29
        Cursor = crHandPoint
        Align = alTop
        Caption = 'F9- Menu Principal'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Margin = 3
        ParentFont = False
        OnClick = SpeedButton12Click
      end
      object SpeedButton13: TSpeedButton
        Left = 2
        Top = 79
        Width = 154
        Height = 29
        Cursor = crHandPoint
        Align = alTop
        Caption = 'Movimento Caixa'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Margin = 3
        ParentFont = False
        OnClick = SpeedButton13Click
      end
    end
    object GroupBox3: TGroupBox
      Left = 0
      Top = 244
      Width = 158
      Height = 172
      Align = alTop
      Caption = 'NFC-e'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object SpeedButton11: TSpeedButton
        Left = 2
        Top = 52
        Width = 154
        Height = 28
        Cursor = crHandPoint
        Align = alTop
        Caption = 'F2- Localizar Produto'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Margin = 3
        ParentFont = False
        OnClick = SpeedButton11Click
        ExplicitTop = 24
      end
      object SpeedButton8: TSpeedButton
        Left = 2
        Top = 24
        Width = 154
        Height = 28
        Cursor = crHandPoint
        Align = alTop
        Caption = 'F1- Iniciar NFC-e'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Margin = 3
        ParentFont = False
        OnClick = SpeedButton8Click
      end
      object SpeedButton6: TSpeedButton
        Left = 2
        Top = 108
        Width = 154
        Height = 28
        Cursor = crHandPoint
        Align = alTop
        Caption = 'F4- Cancelar NFC-e atual'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Margin = 3
        ParentFont = False
        OnClick = SpeedButton6Click
      end
      object SpeedButton7: TSpeedButton
        Left = 2
        Top = 80
        Width = 154
        Height = 28
        Cursor = crHandPoint
        Align = alTop
        Caption = 'F7- CPF / Cliente Nota'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Margin = 3
        ParentFont = False
        OnClick = SpeedButton7Click
      end
      object SpeedButton9: TSpeedButton
        Left = 2
        Top = 136
        Width = 154
        Height = 28
        Cursor = crHandPoint
        Align = alTop
        Caption = 'F12- Finalizar NFC-e'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        Margin = 3
        ParentFont = False
        OnClick = SpeedButton9Click
        ExplicitTop = 135
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 400
    Top = 120
    object MenuOperaes1: TMenuItem
      Caption = 'Menu Opera'#231#245'es'
      Visible = False
      object NovaVenda1: TMenuItem
        Caption = 'Nova Venda'
        ShortCut = 112
        OnClick = NovaVenda1Click
      end
      object CancelarItem1: TMenuItem
        Caption = 'Cancelar Item'
        ShortCut = 116
        OnClick = CancelarItem1Click
      end
      object Finalizar1: TMenuItem
        Caption = 'Finalizar'
        ShortCut = 123
        OnClick = Finalizar1Click
      end
      object Cliente1: TMenuItem
        Caption = 'Cliente'
        ShortCut = 118
        OnClick = Cliente1Click
      end
      object PaineldeControle1: TMenuItem
        Caption = 'Painel de Controle'
        ShortCut = 120
        OnClick = PaineldeControle1Click
      end
      object PedidodeVenda1: TMenuItem
        Caption = 'Pedido de Venda'
        ShortCut = 114
        OnClick = PedidodeVenda1Click
      end
      object CancelarVendaAtual1: TMenuItem
        Caption = 'Cancelar Venda Atual'
        ShortCut = 115
        OnClick = CancelarVendaAtual1Click
      end
      object LocalizarProduto1: TMenuItem
        Caption = 'Localizar Produto'
        ShortCut = 113
        OnClick = LocalizarProduto1Click
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 488
    Top = 392
    object ExcluirItemdaVenda1: TMenuItem
      Caption = 'Excluir Item da Venda'
      OnClick = ExcluirItemdaVenda1Click
    end
  end
end
