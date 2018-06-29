object FRMPAINEL: TFRMPAINEL
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'SudoSoft'
  ClientHeight = 539
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 520
    Width = 736
    Height = 19
    Panels = <
      item
        Text = 'Sistema Emissor da Nota Fiscal da Nota Eletronica'
        Width = 50
      end>
    ExplicitTop = 500
  end
  object MainMenu1: TMainMenu
    Left = 408
    Top = 8
    object Cadastros1: TMenuItem
      Caption = 'Cadastro'
      object CadastrodeProdutos1: TMenuItem
        Caption = 'Cadastro de Produtos'
        OnClick = CadastrodeProdutos1Click
      end
    end
    object Caixa1: TMenuItem
      Caption = 'Caixa'
      object ExtratoMovimento1: TMenuItem
        Caption = 'Extrato Movimento'
        OnClick = ExtratoMovimento1Click
      end
    end
    object Impressora1: TMenuItem
      Caption = 'Impressora'
      object DetectarImpressora1: TMenuItem
        Caption = 'Detectar Impressora'
        OnClick = DetectarImpressora1Click
      end
      object estarImpressora1: TMenuItem
        Caption = 'Testar Impressora'
        OnClick = estarImpressora1Click
      end
      object ReImprimiraUltimaNFCe1: TMenuItem
        Caption = 'ReImprimir a Ultima NFC-e'
        OnClick = ReImprimiraUltimaNFCe1Click
      end
    end
    object NFCe1: TMenuItem
      Caption = 'NFC-e'
      object Contingncia1: TMenuItem
        Caption = 'Conting'#234'ncia'
        object VerificarArquivos1: TMenuItem
          Caption = 'Verificar Arquivos'
          OnClick = VerificarArquivos1Click
        end
        object EnviarContingncia1: TMenuItem
          Caption = 'Enviar Conting'#234'ncia'
          OnClick = EnviarContingncia1Click
        end
      end
      object NotasEmitidas1: TMenuItem
        Caption = 'Gerenciar Notas'
        OnClick = NotasEmitidas1Click
      end
      object ConsultarInformaosobreanota1: TMenuItem
        Caption = 'Consultar Informa'#231#227'o sobre a NFCE'
        OnClick = ConsultarInformaosobreanota1Click
      end
      object AvisoErroNFCe1: TMenuItem
        Caption = 'Aviso Erro NFC-e'
        OnClick = AvisoErroNFCe1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object RelatriodeNotasEmitidasPeriodo1: TMenuItem
        Caption = 'Relat'#243'rio de Notas Emitidas Periodo'
        OnClick = RelatriodeNotasEmitidasPeriodo1Click
      end
    end
    object OutrosMtodos1: TMenuItem
      Caption = 'Outros M'#233'todos'
      object AjustarDatHora1: TMenuItem
        Caption = 'Ajustar Data / Hora'
        OnClick = AjustarDatHora1Click
      end
      object Servidor1: TMenuItem
        Caption = 'Testar Servidor'
        OnClick = Servidor1Click
      end
    end
    object Adminstrador1: TMenuItem
      Caption = 'Administrador'
      object Configurae1: TMenuItem
        Caption = 'Configura'#231#245'es'
        OnClick = Configurae1Click
      end
    end
  end
end
