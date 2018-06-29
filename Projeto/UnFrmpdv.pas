unit UnFrmpdv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, Grids, DBGrids, Buttons, TFlatEditUnit,
  jpeg, TFlatComboBoxUnit,INIFILES ,ComCtrls, Mask, DBCtrls,
  TFlatSpeedButtonUnit;

type
  TFRMPDV = class(TForm)
    paneldescricao: TPanel;
    Panel6: TPanel;
    Panel8: TPanel;
    Label6: TLabel;
    z: TEdit;
    Panel2: TPanel;
    MainMenu1: TMainMenu;
    MenuOperaes1: TMenuItem;
    NovaVenda1: TMenuItem;
    Editunidade: TEdit;
    Editcfop: TEdit;
    Editncm: TEdit;
    editdescricao: TEdit;
    editdesc: TEdit;
    Editdetvendavalortotal: TEdit;
    Editsubtotavenda: TEdit;
    Editvendaqtditem: TEdit;
    Edittotalvenda: TEdit;
    CancelarItem1: TMenuItem;
    Editcodigoreduzido: TEdit;
    Editkg: TEdit;
    Labelnumeronfce: TLabel;
    editcodigoretorno: TFlatEdit;
    Finalizar1: TMenuItem;
    Panel5: TPanel;
    Editstatus: TEdit;
    EDT_Nome: TEdit;
    EDT_CPF: TEdit;
    EDT_Email: TEdit;
    editnumeronota: TEdit;
    editserie: TEdit;
    editprotocolo: TEdit;
    editchave: TEdit;
    EDT_codigo: TEdit;
    EDTcodvendedor: TEdit;
    Edtnomevendedor: TEdit;
    Edtvalorcomicao: TEdit;
    Editvenda_qtditem: TEdit;
    Edittotallucro: TEdit;
    Editretornastatus: TEdit;
    Cliente1: TMenuItem;
    PaineldeControle1: TMenuItem;
    PedidodeVenda1: TMenuItem;
    CancelarVendaAtual1: TMenuItem;
    PopupMenu1: TPopupMenu;
    ExcluirItemdaVenda1: TMenuItem;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Image1: TImage;
    LocalizarProduto1: TMenuItem;
    Label3: TLabel;
    lbltotalvenda: TLabel;
    Label9: TLabel;
    lblcliente: TLabel;
    Label11: TLabel;
    lblcpf: TLabel;
    Label10: TLabel;
    lblvendedor: TLabel;
    lblqtditens: TLabel;
    gbvenda: TGroupBox;
    Panel1: TPanel;
    Label29: TLabel;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    editqtd: TEdit;
    GroupBox7: TGroupBox;
    editvalorunitario: TEdit;
    GroupBox8: TGroupBox;
    edit_desc: TEdit;
    GroupBox4: TGroupBox;
    edittotal: TEdit;
    GroupBox11: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    SpeedButton1: TSpeedButton;
    Label32: TLabel;
    Edit3: TEdit;
    Editaliquota: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    panelitens: TPanel;
    DBGriditens: TDBGrid;
    pndescricao: TPanel;
    btnadiciona: TBitBtn;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    editcodigo: TEdit;
    editretornoerro: TEdit;
    Panel7: TPanel;
    GroupBox5: TGroupBox;
    SpeedButton5: TSpeedButton;
    GroupBox3: TGroupBox;
    SpeedButton11: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Image2: TImage;
    editcest: TEdit;
    DBGridvenda: TDBGrid;
    Image3: TImage;
    procedure TrataRetorno_NFCe(iRetorno:integer);
    procedure NovaVenda1Click(Sender: TObject);
    procedure habilita;
    procedure abrecopom;
    procedure aguarde;
    procedure soma;
    procedure pronto;
    procedure limpaeditdetalhevenda;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGriditensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditcodigoexcluirExit(Sender: TObject);
    procedure btnadicionaClick(Sender: TObject);
    procedure CancelarItem1Click(Sender: TObject);
    procedure editcodigoretornoExit(Sender: TObject);
    procedure Finalizar1Click(Sender: TObject);
    procedure gravadados;
    procedure limpaeditvenda;
    procedure Cliente1Click(Sender: TObject);
    procedure cccEnter(Sender: TObject);
    procedure PaineldeControle1Click(Sender: TObject);
    procedure PedidodeVenda1Click(Sender: TObject);
    procedure CancelarVendaAtual1Click(Sender: TObject);
    procedure ExcluirItemdaVenda1Click(Sender: TObject);
    procedure LocalizarProduto1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure editcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure editcodigoExit(Sender: TObject);
    procedure editqtdExit(Sender: TObject);
    procedure editcodigoEnter(Sender: TObject);
    procedure desabilita;
    procedure editqtdEnter(Sender: TObject);
    procedure editvalorunitarioExit(Sender: TObject);
    procedure editvalorunitarioEnter(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure editcodigoChange(Sender: TObject);
    procedure DBGridvendaDblClick(Sender: TObject);
    private
    { Private declarations }
  public
    { Public declarations }
    iRetorno: Integer;
  end;
     //Buscar Porta e Velocidade Automático
  function eBuscarPortaVelocidade_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFramework.dll';
   //Verificar Status CF
  function rCFVerificarStatus_NFCe_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
   //Alterar DarumaFramework.xml
  function regAlterarValor_Daruma(StrPathChave:string; StrValor:string):Integer; StdCall; External 'DarumaFramework.dll';
   //Retornar valor DarumaFramework.xml
  function regRetornaValorChave_DarumaFramework(pszProduto:string;pszChave:string;pszValor:string):Integer;StdCall; External 'DarumaFramework.dll';
    //Alterar GNE_Framework.xml
  function regAlterarValor_NFCe_Daruma(StrPathChaveGNE:string; StrValorGNE:string):Integer; StdCall; External 'DarumaFramework.dll';
   //Retornar valor GNE_Framework.xml
  function regRetornarValor_NFCe_Daruma(StrPathChaveGNE:string;pszValorGNE:string):Integer;StdCall; External 'DarumaFramework.dll';
   //Abertura NFCe
  function aCFAbrir_NFCe_Daruma(StrCPF:string; StrNome:string; StrLgr:string; StrNumero:string; StrBairro:string; StrcMun:string; StrMunicipio:string; StrUF:string; StrCEP:string): Integer; StdCall; External 'DarumaFramework.dll';
  function aCFAbrirNumSerie_NFCe_Daruma(StrNNF:string; StrNSerie:string; StrCPF:string; StrNome:string; StrLgr:string; StrNro:string; StrBairro:string; StrcMun:string; StrMunicipio:string; StrUF:string; StrCEP:string): Integer; StdCall; External 'DarumaFramework.dll';
   //Vender Item
  function aCFVender_NFCe_Daruma(StrAliquota:string; StrQuantidade:string; StrPrecoUnitario:string; StrTipoDescAcresc:string; StrValorDescAcresc:string; StrCodigoItem:string; StrUnidadeMedida:string; StrDescricaoItem:string): Integer; StdCall; External 'DarumaFramework.dll';
   //Vender Item Completo
  function aCFVenderCompleto_NFCe_Daruma(StrAliquota:string; StrQuantidade:string; StrPrecoUnitario:string; StrTipoDescAcresc:string; StrValorDescAcresc:string; StrCodigoItem:string; StrNCM:string; StrCFOP:string; StrUnidadeMedida:string; StrDescricaoItem:string; StrUsoFuturo:string): Integer; StdCall; External 'DarumaFramework.dll';
   //Vender Item Completo XML
  function aCFVenderXml_NFCe_Daruma(StrVendaItem:string): Integer; StdCall; External 'DarumaFramework.dll';
   //Lancar Acrescimo Item
  function aCFLancarAcrescimoItem_NFCe_Daruma(StrNumItem:string; StrTipoAcres:string; StrValorAcres:string): Integer; StdCall; External 'DarumaFramework.dll';
   //Lancar Desconto Item
  function aCFLancarDescontoItem_NFCe_Daruma(StrNumItem:string; StrTipoDesc:string; StrValorDesc:string): Integer; StdCall; External 'DarumaFramework.dll';
   //Cancelar Item
  function aCFCancelarItem_NFCe_Daruma(StrNumItem:string): Integer; StdCall; External 'DarumaFramework.dll';
   //Cancelar Item Parcial
  function aCFCancelarItemParcial_NFCe_Daruma(StrNumItem:string; StrQuantidade:string): Integer; StdCall; External 'DarumaFramework.dll';
   //Cancelar Acrescimo Item
  function aCFCancelarAcrescimoItem_NFCe_Daruma(StrNumItem:string): Integer; StdCall; External 'DarumaFramework.dll';
   //Cancelar Desconto Item
  function aCFCancelarDescontoItem_NFCe_Daruma(StrNumItem:string): Integer; StdCall; External 'DarumaFramework.dll';
   //Totalizar Cupom
  function aCFTotalizar_NFCe_Daruma(StrTipoDescAcresc:string; StrValorDescAcresc:string): Integer; StdCall; External 'DarumaFramework.dll';
   //Efetuar pagamento
  function aCFEfetuarPagamento_NFCe_Daruma(StrFormaPgto:string; StrValor:string): Integer; StdCall; External 'DarumaFramework.dll';
   //Encerrar NFCe
  function tCFEncerrar_NFCe_Daruma(StrMsgPromocional:string): Integer; StdCall; External 'DarumaFramework.dll';
   //Encerrar Mensagem
  function tCFEncerrarConfigMsg_NFCe_Daruma(StrInfoAdicCliente:string; StrInfoAdicFisco:string; StrUsoFuturo:string): Integer; StdCall; External 'DarumaFramework.dll';
   //Inutilizar NFCe
  function tCFInutilizar_NFCe_Daruma(StrNFInic:string; StrNFFim:string; StrNSerie:string; StrJustificativa:string): Integer; StdCall; External 'DarumaFramework.dll';
   //Identificação
  function aCFIdentificarConsumidor_NFCe_Daruma(StrCPF:string; StrNome:string; StrLgr:string; StrNro:string; StrBairro:string; StrcMun:string; StrMunicipio:string; StrUF:string; StrCEP:string; StrEmail:string): Integer; StdCall; External 'DarumaFramework.dll';
  function aCFIdentificarTransportadora_NFCe_Daruma(strCPF_CNPJ:string; StrNome:string; strIE:string; strEndereco:string; strMunicipio:string; strUF:string): Integer; StdCall; External 'DarumaFramework.dll';
   //Cancelar
  function tCFCancelar_NFCe_Daruma(StrCNPJ:string; StrBand:string; StrAut:string; StrProtAutorizacao:string; StrJustificativa:string): Integer; StdCall; External 'DarumaFramework.dll';
   //Estornar Pagamento
  function aCFEstornarPagamento_NFCe_Daruma(StrFormaPagtoEstornada:string; StrFormaPagtoEfetivada: string; StrValor: string): Integer; StdCall; External 'DarumaFramework.dll';
   //Adicionar Informação TEF
  //function aCFIdentificarCartao_NFCe_Daruma(StrCNPJ:string; StrBandeira: string; StrAutorizacao: string): Integer; StdCall; External 'DarumaFramework.dll';
   //Status Servidor
  function rStatusWS_NFCe_Daruma():Integer; StdCall; External 'DarumaFramework.dll';
   //Imprimir  Dual
  function iImprimirTexto_DUAL_DarumaFramework(stTexto: String; iTam: Integer ): Integer; StdCall; External 'DarumaFramework.dll';
   //Lei de olho no imposto
  function aCFValorLeiImposto_NFCe_Daruma(StrValorImposto: String): Integer; StdCall; External 'DarumaFramework.dll';
   //URL QrCode
   function rURLQrcode_NFCe_Daruma(StrRetornoUrl: String): Integer; StdCall; External 'DarumaFramework.dll';
   //Retornar Aviso Erro WS
   function rAvisoErro_NFCe_Daruma(StrCodigo: String; StrMensagem: String): Integer; StdCall; External 'DarumaFramework.dll';
   //Retornar Informacao estendida
   function rInfoEstendida_NFCe_Daruma(StrIndice:String; StrRetorno:String): Integer; StdCall; External 'DarumaFramework.dll';
   //Retornar Informacao
   function rRetornarInformacao_NFCe_Daruma(StrTipoIntervalo:String; StrInic:String; StrFim:String; StrSerie:String; StrChaveAcesso:String; StrInfoConsulta:String; StrPathArqResposta:String): Integer; StdCall; External 'DarumaFramework.dll';
   //Retornar Informacao em Arquivo
   function rRetornarInformacaoArq_NFCe_Daruma(StrTipoIntervalo:String; StrInic:String; StrFim:String; StrSerie:String; StrChaveAcesso:String; StrInfoConsulta:String; StrResposta:String): Integer; StdCall; External 'DarumaFramework.dll';
   //Recuperar XML
   function rRecuperarXML_NFCe_Daruma(StrDataInicial:String; StrDataFinal:String; StrStatusNF:String; StrPathXML:String): Integer; StdCall; External 'DarumaFramework.dll';
   //Status Impressora
   //function rStatusImpressora_NFCe_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
   //Reimpressao DANFE
   function iCFReImprimir_NFCe_Daruma(Str_Param1:String; Str_Param2:String; Str_Param3:String): Integer; StdCall; External 'DarumaFramework.dll';
   //Impressao DANFE
   function iCFImprimir_NFCe_Daruma(StrPathXMLVenda:String; StrPathRetornoWS:String; StrLinkQrCode:String; iNumColunas:Integer; iTipoNF:Integer): Integer; StdCall; External 'DarumaFramework.dll';
   //Impressao DANFE Parametrizado
   function iCFImprimirParametrizado_NFCe_Daruma(StrPathXMLVenda:String; StrPathRetornoWS:String; StrLinkQrCode:String; iNumColunas:Integer; iTipoNF:Integer; StrParametros :String): Integer; StdCall; External 'DarumaFramework.dll';
   //Impressao TEF
   function iTEFImprimirResposta_NFCe_Daruma(StrPathNomeArquivo:String; iNumeroVias:Integer; iCorteEntreVias:Integer; iTravarTeclado:Integer): Integer; StdCall; External 'DarumaFramework.dll';
   //Ajuste de Data e hora
   function eAjustarDataHora_NFCe_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
   //Cancelamento Offline
   function tCFCancelarOffline_NFCe_Daruma(pszNNF: string; pszNSerie: string; pszChAcesso: string; pszJustificativa: string): Integer; StdCall; External 'DarumaFramework.dll';
  //Quantidade Arquivo Contingencia Venda
   function rNumDocsContingencia_NFCe_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
  //Quantidade Arquivo Contingencia Cancelamento
  function rNumDocsContingenciaCanc_NFCe_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
  //Envio Arquivo Venda
  function tEnviarContingenciaOffline_NFCe_Daruma(iQtdDocsContingencia: integer): Integer; StdCall; External 'DarumaFramework.dll';
  //Envio Arquivo Venda Unitario
  function tEnvioUnitContingenciaOffline_NFCe_Daruma(StrCNPJEmit: string; pszSerie: string; psznNF: string; pszProtocolo: string; pszChaveAcesso: string; pszSitCodigo: string): Integer; StdCall; External 'DarumaFramework.dll';
  //Envio Arquivo Cancelamento
  function tEnviarContingenciaCancOffline_NFCe_Daruma(iQtdDocsCancContingencia: integer): Integer; StdCall; External 'DarumaFramework.dll';
  //Envio Arquivo Cancelamento Unitario
  function tEnvioUnitContingenciaCancOffline_NFCe_Daruma(StrCNPJEmit: string; StrSerie: string; StrnNF: string; StrProtocolo: string; StrChaveAcesso: string; StrSitCodigo: string): Integer; StdCall; External 'DarumaFramework.dll';
  //Retorna Informação Contingencia
  function rRetornarInformacaoContingencia_NFCe_Daruma(StrChaveAcesso: string; StrNumNota: string; StrSerie: string; StrInfoConsulta: string; StrResposta: string): Integer; StdCall; External 'DarumaFramework.dll';
  //Impostos
  function aCFConfICMS00_NFCe_Daruma(pszOrig: string; pszCST: string; pszModBC: string; pszplICMS: string): Integer; StdCall; External 'DarumaFramework.dll';
  function aCFConfICMS40_NFCe_Daruma(pszOrig: string; pszCST: string; pszICMSDeson: string; pszMotDesICMS: string): Integer; StdCall; External 'DarumaFramework.dll';
  function aCFConfICMS60_NFCe_Daruma(pszOrig: string; pszCST: string; pszvBCSTRet: string; pszvICMSSTRet: string): Integer; StdCall; External 'DarumaFramework.dll';
  function aCFConfPisAliq_NFCe_Daruma(pszCST: string; pszpPIS: string): Integer; StdCall; External 'DarumaFramework.dll';
  function aCFConfPisQtde_NFCe_Daruma(pszCST: string; pszvAliqProd: string): Integer; StdCall; External 'DarumaFramework.dll';
  function aCFConfPisNT_NFCe_Daruma(pszCST: string): Integer; StdCall; External 'DarumaFramework.dll';
  function aCFConfPisOutr_NFCe_Daruma(pszCST: string; pszpPIS: string; pszvAliqProd:string): Integer; StdCall; External 'DarumaFramework.dll';
  function aCFConfCofinsAliq_NFCe_Daruma(pszCST: string; pszpCOFINS: string): Integer; StdCall; External 'DarumaFramework.dll';
  function aCFConfCofinsQtde_NFCe_Daruma(pszCST: string; pszvAliqProd: string): Integer; StdCall; External 'DarumaFramework.dll';
  function aCFConfCofinsNT_NFCe_Daruma(pszCST: string): Integer; StdCall; External 'DarumaFramework.dll';
  function aCFConfCofinsOutr_NFCe_Daruma(pszCST: string; pszpCOFINS: string; pszvAliqProd: string): Integer; StdCall; External 'DarumaFramework.dll';
 // GRUPO DE IMPOSTO USADO PELO SIMPLES
  function aCFConfICMSSN102_NFCe_Daruma(pszOrig: string; pszCSOSN: string): Integer; StdCall; External 'DarumaFramework.dll';
  function aCFConfICMSSN500_NFCe_Daruma(pszOrig: string; pszCSOSN: string; pszvBCSTRe: string; pszvICMSSTRet: string): Integer; StdCall; External 'DarumaFramework.dll';
  function aCFConfICMSSN900_NFCe_Daruma(pszOrig: string; pszCSOSN: string; pszmodBC: string; pszvBC: string; pszpICMS: string; pszvICMS: string; pszmodBCST: string; pszvBCST: string; pszpICMSST: string; pszvICMSST: string; pszpCredSN: string; pszvCredICMSSN: string): Integer; StdCall; External 'DarumaFramework.dll';
 // FIM DOS METODOS DE ENVIO DO IMPOSTOS SIMPLES


  //Envio NFe
  function tEnviar_NFe_Daruma(pszDocumentos: string; pszParametros: string; iQtdeDoc: Integer; iTipoRetorno: Integer; pszRetorno: String): Integer; StdCall; External 'DarumaFramework.dll';
  //Atualizar e Enviar XML
  function eAtualizarEnviarXML_NFCe_Daruma(StrPathXML:String; StrParametros:String; StrEnviaXML:String): Integer; StdCall; External 'DarumaFramework.dll';


var
  FRMPDV: TFRMPDV;
  item,conf,jafoi: integer;
  totalgeral: Currency;
  tipodavenda:string;
implementation

uses UnDmpdv, UnDmconsulta, UnFrmpagamento, UnFrmidcliente, UnFrmpainel,
  UnFrmlocalizarproduto, Unfrmcadproduto, UnFrmmtcvendas, Unfrmmtcestoque,
  UnFrmmenurelcaixa;

{$R *.dfm}

procedure TFRMPDV.desabilita;
begin
gbvenda.Enabled:= False;

end;
procedure TFRMPDV.limpaeditvenda;
begin
   Conf := 0;
   totalgeral := 0;
	 jafoi := 0;
	 item := 0;

   Labelnumeronfce.Caption:='0000000';
   lbltotalvenda.Caption:= '0,00' ;
   lblqtditens.Caption:= '0';

   pndescricao.Caption:='';
   lblqtditens.Caption:= '0';

   Edittotalvenda.Clear;
   paneldescricao.Caption:= 'F1- Emitir NFCe' ;
   Editsubtotavenda.Clear;
   edittotal.Clear;
   Editvenda_qtditem.Clear;
   Editretornastatus.Clear;
   EDTcodvendedor.Clear;
   Edtnomevendedor.Clear;
   editcodigo.Clear;
   editqtd.Clear;
   editvalorunitario.Clear;
   Editdetvendavalortotal.Clear;
   Edittotallucro.Clear;
   EDT_codigo.Clear;
   EDT_CPF.Clear;
   EDT_Nome.Clear;
   EDT_Email.Clear;
   lblcpf.Caption:= '000.000.000-00';
   lblcliente.Caption := 'Consumidor Final' ;
   lblvendedor.Caption:= 'Padrão' ;
   editretornoerro.Clear;
end;

procedure TFRMPDV.LocalizarProduto1Click(Sender: TObject);
begin

  if editcodigo.Focused = true then
  begin
   FRMLOCALIZARPRODUTO:= TFRMLOCALIZARPRODUTO.Create(Self);
   FRMLOCALIZARPRODUTO.Tabvenda.Show;
   FRMLOCALIZARPRODUTO.ShowModal;
  end
  else
   Application.MessageBox('O Foco deve estar dentro do campo código do Produto!','Informação do Sistema',Mb_IconInformation);

  end;




procedure TFRMPDV.gravadados;
begin
   DMLOJA.TBVENDAMINUTA.AsString            := Labelnumeronfce.Caption;
   DMLOJA.TBVENDADATA.AsString            	:= DateToStr(Date());
   DMLOJA.TBVENDAHORA.AsString          	  := TimeToStr(Time());
   DMLOJA.TBVENDATOTALVENDA.AsString     	  := Edittotalvenda.Text;
   DMLOJA.TBVENDASUBTOTAL.AsString     	    := Editsubtotavenda.Text;
   DMLOJA.TBVENDASTATUSDANOTA.AsString      := Editstatus.Text;
   DMLOJA.TBVENDANR_DANOTA.AsString         := editnumeronota.Text;
   DMLOJA.TBVENDASERIENOTA.AsString         := editserie.Text;
   DMLOJA.TBVENDAPROTOCOLONOTA.AsString     := editprotocolo.Text;
   DMLOJA.TBVENDACHAVENOTA.AsString         := editchave.Text;
   DMLOJA.TBVENDAVENDA_CDCLIENTE.AsString   :=EDT_codigo.Text;
   DMLOJA.TBVENDAVENDA_NMCLIENTE.AsString   :=EDT_Nome.Text;
   DMLOJA.TBVENDAVENDA_CODVENDEDOR.AsString :=EDTcodvendedor.Text;
   DMLOJA.TBVENDAVENDA_NMVENDEDOR.AsString  :=Edtnomevendedor.Text;
   DMLOJA.TBVENDAVENDA_VLCOMICAOVENDEDOR.AsString:=Edtvalorcomicao.Text;
   DMLOJA.TBVENDAVENDA_QTDITENS.AsString    :=Editvenda_qtditem.Text;
   DMLOJA.TBVENDAVENDA_VALORTROCO.AsString:=  Edittotallucro.Text;
   DMLOJA.TBVENDARTERRO.AsString:=            editretornoerro.Text;    



    with DMLOJA do
  begin

     if TBDETVENDA.IsEmpty then
     begin
       TBDETVENDA.Cancel;
       TBVENDA.Cancel;

     end;




    //tabela detalhe
    TBDETVENDA.ApplyUpdates;

    //tabela venda
    DMLOJA.TBVENDA.Post;
    DMLOJA.TBVENDA.ApplyUpdates;
  //------------------------------BAIXA NO ESTOQUE----------------------------






    DMLOJA.TBDETVENDA.First;
    while not DMLOJA.TBDETVENDA.Eof do
     begin
      DMLOJA.TBEstoque.Locate('Referencia',DMLOJA.TBDETVENDAREFERENCIA.asstring,[]);
      DMLOJA.TBEstoque.edit;
      DMLOJA.TBEstoqueQTDVendida.AsInteger:=DMLOJA.TBEstoqueQTDVendida.AsInteger+DMLOJA.TBDETVENDADETALHEVENDA_QTDITEN.AsInteger;
//      DMLOJA.TBEstoqueQTDESTOQUE.AsInteger:=DMLOJA.TBEstoqueQTDESTOQUE.AsInteger-DMLOJA.TBDETALHEVENDADETALHEVENDA_QTDITEN.AsInteger;
      DMLOJA.TBEstoqueultimaVenda.asdatetime:=date;
      DMLOJA.TBEstoque.post;
      DMLOJA.TBDETVENDA.Next;
     end;







  end;
      //  DMLOJA.TBESTOQUE.Close;
      //  DMLOJA.DBDATABASE.Close;


  panelitens.BringToFront;
end;

//
procedure TFRMPDV.pronto;
begin
   paneldescricao.Caption:= 'Inserindo Produtos na NFCe';
end;
procedure TFRMPDV.soma;
begin
 totalgeral := totalgeral + StrToCurr(Editdetvendavalortotal.Text);

 Edittotalvenda.Text   := FormatFloat('###,##0.00',TotalGeral);
 Editsubtotavenda.Text := FormatFloat('###,##0.00',TotalGeral);
 lbltotalvenda.Caption := FormatFloat('###,##0.00',TotalGeral);


end;
procedure TFRMPDV.SpeedButton11Click(Sender: TObject);
begin

  if editcodigo.Focused = true then
  begin
   FRMLOCALIZARPRODUTO:= TFRMLOCALIZARPRODUTO.Create(Self);
   FRMLOCALIZARPRODUTO.Tabvenda.Show;
   FRMLOCALIZARPRODUTO.ShowModal;
  end
  else
   Application.MessageBox('O foco deve estar dentro do campo código do Produto!','Informação do Sistema',Mb_IconInformation);

 


end;

procedure TFRMPDV.SpeedButton12Click(Sender: TObject);
begin
FRMPAINEL:= TFRMPAINEL.Create(Self);
FRMPAINEL.ShowModal;
end;

procedure TFRMPDV.SpeedButton13Click(Sender: TObject);
begin
FRMMENURELCAIXA:= TFRMMENURELCAIXA.Create(Self);
FRMMENURELCAIXA.ShowModal
end;

procedure TFRMPDV.SpeedButton3Click(Sender: TObject);
begin
FRMMTCVENDAS:= TFRMMTCVENDAS.Create(Self);
FRMMTCVENDAS.ShowModal;
end;

procedure TFRMPDV.SpeedButton5Click(Sender: TObject);
begin
FRMMTCPRODUTOS:= TFRMMTCPRODUTOS.Create(Self);
FRMMTCPRODUTOS.ShowModal;
end;

procedure TFRMPDV.SpeedButton6Click(Sender: TObject);
begin
 if Conf = 0 then
      begin
        Application.MessageBox('É Necessário Iniciar uma Venda, para efetuar o Cancelamento!','Informação do Sistema',Mb_IconInformation);
        exit
      end;


if tipodavenda = 'NFC' then

BEGIN

  if Application.MessageBox('Cancelar Venda/NFC-e Atual?','Comfirmação',MB_YESNO + MB_ICONQUESTION)= IDYES then

  begin

   // dmpdv.TBCVENDA.Cancel;
    DMLOJA.TBVENDA.delete;
    DMLOJA.TBDETVENDA.Cancel;
    panelitens.BringToFront;
    iRetorno := tCFCancelar_NFCe_Daruma('', '', '', '','');
    TrataRetorno_NFCe(iRetorno);

    limpaeditvenda;
    desabilita;
    Conf := 0;


  end
  else
   begin
     exit;
   end;
END;
end;

procedure TFRMPDV.SpeedButton7Click(Sender: TObject);
begin
FRMIDCLIENTE:= TFRMIDCLIENTE.Create(Self);
FRMIDCLIENTE.ShowModal;
end;

procedure TFRMPDV.SpeedButton8Click(Sender: TObject);
begin
   if Application.MessageBox('Identificar Cliente na Nota Fiscal Eletronica?','Comfirmação',MB_YESNO + MB_ICONQUESTION)= IDYES then
begin
FRMIDCLIENTE:= TFRMIDCLIENTE.Create(Self);
FRMIDCLIENTE.ShowModal;
end;



   if conf <> 0 then
      Application.MessageBox('Já Existe um Cupom Aberto','Informação do Sistema',Mb_IconInformation)
   else

    begin
      tipodavenda:= 'NFC';
      DMLOJA.DBDATABASE.Open;
      DMLOJA.TBESTOQUE.close;
      DMLOJA.TBESTOQUE.Active:= True;

      DMLOJA.TBVENDA.Append;
      DMLOJA.TBVENDA.Post;
      DMLOJA.TBVENDA.Edit;

   	  Labelnumeronfce.Caption := StringOfChar('0',1-Length(DMLOJA.TBVENDAMinuta.AsString))+DMLOJA.TBVENDAMinuta.AsString;

	    Habilita;
	    editcodigo.SetFocus;
	    Abrecopom;
      panelitens.SendToBack;
 end;
end;

procedure TFRMPDV.SpeedButton9Click(Sender: TObject);
begin
FRMPDV.SetFocus;
 if Conf = 0 then
      begin
        Application.MessageBox('É Necessário Iniciar uma Venda, para Finalizar!','Informação do Sistema',Mb_IconInformation);
        exit
      end
      else
       begin

  if (DMLOJA.TBCONFIGCOMICAO.AsString = 'SIM') and (Edtnomevendedor.Text = '' ) then
  begin
     Application.MessageBox('Identifique o Vendedor!','Informação do Sistema',Mb_IconInformation);

  end;


 if DMLOJA.TBCONFIGCOMICAO.AsString = 'NAO'  Then

 begin
    FRMPAGAMENTO:=TFRMPAGAMENTO.Create(Self);
    FRMPAGAMENTO.ShowModal;

 end;


if (DMLOJA.TBCONFIGCOMICAO.AsString = 'SIM') and (Edtnomevendedor.Text <> '' ) then

begin
   FRMPAGAMENTO:= TFRMPAGAMENTO.Create(Self);
   FRMPAGAMENTO.ShowModal;
end;

end;
end;

procedure TFRMPDV.limpaeditdetalhevenda;
begin
//
  editcodigo.Clear;
  //editqtd.Clear;
  editdesc.Clear;
  //editvalorunitario.Clear;
  Editdescricao.Clear;

  Editcfop.Clear;
  Editncm.Clear;
  Editdetvendavalortotal.Clear;
  Editunidade.Clear;
  Editkg.Clear;
  //edittotal.Clear;
 end;
procedure TFRMPDV.aguarde;
begin
 paneldescricao.Caption:='Aguarde Abrindo Venda';
end;
procedure TFRMPDV.btnadicionaClick(Sender: TObject);
var
  StrAliquota,StrQuantidade,StrPrecoUnitario, StrTipoDescAcres, StrValorDescAcres: string;
  StrCodigoItem: string;
  StrNCM: String;
  StrCFOP: String;
  StrUnidadeMedida: string;
  StrDescricaoItem: string;
  StrUsoFuturo: String;
  desc: Currency;
  strOrig  : String;
  strCSOSN : String;
  strBCSTRe: string;
  ICMSSTRet :string;

  begin



 if tipodavenda =  'NFC' then

BEGIN


  if DMLOJA.TBCONFIGCONTROLARESTOQUE.AsString = 'SIM' then
   BEGIN

      if DMCONSULTA.QYPRODUTOQTDESTOQUE.AsInteger < StrToInt(editqtd.Text) then
         begin
           editcodigo.SetFocus;
           Application.MessageBox('Sem Quantidade no Estoque!','Informação do Sistema',Mb_IconInformation);

           limpaeditdetalhevenda;
           editcodigo.SetFocus;
           exit
        end;
   END;



     // Editdetvendavalortotal.Text := CurrToStr (StrToCurr(editvalorunitario.Text) * StrToInt(editqtd.Text));
     // Editsubtotavenda.Text       := CurrToStr(StrToCurr(editvalorunitario.Text) * StrToInt(editqtd.Text));


       if editdesc.Text='' then
       begin
         editdesc.Text:='0';
       end;
     {

      desc:= (StrToCurr(Edittotal.Text)) * StrToCurr(editdesc.Text)/100;

      Edittotal.Text:= CurrToStr (StrToCurr(Editdetvendavalortotal.Text) - desc);

     }

        if Editcfop.Text = '5102' then
        begin
         strOrig := '0';
         strCSOSN := '102';
         iRetorno:=  aCFConfICMSSN102_NFCe_Daruma(strorig,strCSOSN);

        end;

     if Editcfop.Text = '5405' then
        begin
         strOrig := '0';
         strCSOSN := '500';
         strBCSTRe:='0';
         ICMSSTRet:='0';
         iRetorno:= aCFConfICMSSN500_NFCe_Daruma(strOrig,strCSOSN,strBCSTRe,ICMSSTRet);
        end;


      StrCodigoItem      := TrimRight(editcodigo.Text);

      StrAliquota        := 'I1';

      if Editunidade.Text = 'KG' then
      begin
       StrQuantidade      := editqtd.Text;
      end;

     // sTipoQtde  := 'I';
      if Editunidade.Text <> 'KG' then
      begin
       StrQuantidade      := editqtd.Text;
      end;


      //StrQuantidade      := editqtd.Text;
      StrPrecoUnitario   := FormatCurr('###,##0.00',(StrToCurr(editvalorunitario.Text)));
      StrTipoDescAcres   := 'D%';
      StrValorDescAcres  := '0';//editdesc.Text;
      StrDescricaoItem   := TrimRight(EditDescricao.Text);
      StrUnidadeMedida   := Editunidade.Text;
      StrCFOP            := Editcfop.Text;
      StrNCM             := TrimRight(Editncm.Text);
      StrUsoFuturo       := editcest.Text;
      //TrimRight(edit_cest.Text);



      iRetorno:=aCFVenderCompleto_NFCe_Daruma(StrAliquota, StrQuantidade,StrPrecoUnitario, StrTipoDescAcres, StrValorDescAcres, StrCodigoItem, StrNCM, StrCFOP, StrUnidadeMedida, StrDescricaoItem, StrUsoFuturo);
      TrataRetorno_NFCe(iRetorno);


      //---------------------soma a quantidade itens-------
     if Editvendaqtditem.Text = '' then
     begin
      Editvendaqtditem.Text:='0';
     end;
     //COMENTEI AQUI


   //   Editvendaqtditem.Text:= IntToStr (StrToInt(Editvendaqtditem.Text) + StrToInt(editqtd.Text));
    //  lblqtditens.Caption:= Editvendaqtditem.Text;


      //-------------------------fim-----------------------
       // ------------------------------inicio ------------------detalhe venda-----
       DMLOJA.TBDETVENDA.Append;
       DMLOJA.TBDETVENDAMINUTA.AsString                 := Labelnumeronfce.Caption;
       DMLOJA.TBDETVENDAREFERENCIA.AsString             := editcodigo.Text;
       DMLOJA.TBDETVENDADETALHEVENDA_DESCRICAO.AsString := EditDescricao.Text;
       DMLOJA.TBDETVENDADETALHEVENDA_VLUNITARIO.AsString:= editvalorunitario.Text;
        if Editunidade.Text = 'UN' then
        begin
        DMLOJA.TBDETVENDADETALHEVENDA_QTDITEN.AsString   := editqtd.Text;

        end;
       DMLOJA.TBDETVENDADETALHEVENDA_DESCONTO.AsString  := editdesc.Text;
       DMLOJA.TBDETVENDADETALHEVENDA_VLTOTAL.AsString   := Editdetvendavalortotal.Text;
       DMLOJA.TBDETVENDADETALHEVENDA_CFOP.AsString      :=Editcfop.Text;
       DMLOJA.TBDETVENDADETALHEVENDA_UNIDADE.AsString   :=Editunidade.Text;
      // DMLOJA.TBDETVENDADETALHE_VENDA_ALIQUOTA.AsString :=Editaliquota.Text;
       DMLOJA.TBDETVENDANCM.AsString                    :=Editncm.Text;
       if Editunidade.Text = 'KG' then
       begin
       DMLOJA.TBDETVENDAQTDKL.AsString                  := editqtd.Text; //Editkg.Text;

       end;





       soma;
       //editcodigo.SetFocus;
       jafoi := 0;
       limpaeditdetalhevenda;
       editcodigo.Clear;
       editcodigo.SetFocus;
  //------------------------------------fim---------------------------



END;// FIM NFCE

if tipodavenda = 'PEDIDO'  then

   begin
     //INICIO VENDA

     
  if DMLOJA.TBCONFIGCONTROLARESTOQUE.AsString = 'SIM' then
   BEGIN

      if DMCONSULTA.QYPRODUTOQTDESTOQUE.AsInteger < StrToInt(editqtd.Text) then
         begin
           editcodigo.SetFocus;
           Application.MessageBox('Sem Quantidade no Estoque!','Informação do Sistema',Mb_IconInformation);

           limpaeditdetalhevenda;
           editcodigo.SetFocus;
           exit
        end;
   END;



     // Editdetvendavalortotal.Text := CurrToStr (StrToCurr(editvalorunitario.Text) * StrToInt(editqtd.Text));
     // Editsubtotavenda.Text       := CurrToStr(StrToCurr(editvalorunitario.Text) * StrToInt(editqtd.Text));


       if editdesc.Text='' then
       begin
         editdesc.Text:='0';
       end;
     {

      desc:= (StrToCurr(Edittotal.Text)) * StrToCurr(editdesc.Text)/100;

      Edittotal.Text:= CurrToStr (StrToCurr(Editdetvendavalortotal.Text) - desc);

     }


      StrCodigoItem      := TrimRight(editcodigo.Text);

      StrAliquota        := 'I1';

      if Editunidade.Text = 'KG' then
      begin
       StrQuantidade      := Editkg.Text;
      end;

     // sTipoQtde  := 'I';
      if Editunidade.Text <> 'KG' then
      begin
       StrQuantidade      := editqtd.Text;
      end;


      //StrQuantidade      := editqtd.Text;
      StrPrecoUnitario   := FormatCurr('###,##0.00',(StrToCurr(editvalorunitario.Text)));
      StrTipoDescAcres   := 'D%';
      StrValorDescAcres  := '0';//editdesc.Text;
      StrDescricaoItem   := TrimRight(EditDescricao.Text);
      StrUnidadeMedida   := Editunidade.Text;
      StrCFOP            := Editcfop.Text;
      StrNCM             := Editncm.Text;



   //   iRetorno:=aCFVenderCompleto_NFCe_Daruma(StrAliquota, StrQuantidade,StrPrecoUnitario, StrTipoDescAcres, StrValorDescAcres, StrCodigoItem, StrNCM, StrCFOP, StrUnidadeMedida, StrDescricaoItem, StrUsoFuturo);
     // TrataRetorno_NFCe(iRetorno);


      //---------------------soma a quantidade itens-------
     if Editvendaqtditem.Text = '' then
     begin
      Editvendaqtditem.Text:='0';
     end;

     Editvendaqtditem.Text:= IntToStr (StrToInt(Editvendaqtditem.Text) + StrToInt(editqtd.Text));
     lblqtditens.Caption:= Editvendaqtditem.Text;

      //-------------------------fim-----------------------
       // ------------------------------inicio ------------------detalhe venda-----
       DMLOJA.TBDETVENDA.Append;
       DMLOJA.TBDETVENDAMINUTA.AsString                 := Labelnumeronfce.Caption;
       DMLOJA.TBDETVENDAREFERENCIA.AsString             := editcodigo.Text;
       DMLOJA.TBDETVENDADETALHEVENDA_DESCRICAO.AsString := EditDescricao.Text;
       DMLOJA.TBDETVENDADETALHEVENDA_VLUNITARIO.AsString:= editvalorunitario.Text;
       DMLOJA.TBDETVENDADETALHEVENDA_QTDITEN.AsString   := editqtd.Text;
       DMLOJA.TBDETVENDADETALHEVENDA_DESCONTO.AsString  := editdesc.Text;
       DMLOJA.TBDETVENDADETALHEVENDA_VLTOTAL.AsString   := Editdetvendavalortotal.Text;
       DMLOJA.TBDETVENDADETALHEVENDA_CFOP.AsString      :=Editcfop.Text;
       DMLOJA.TBDETVENDADETALHEVENDA_UNIDADE.AsString   :=Editunidade.Text;
      // DMLOJA.TBDETVENDADETALHE_VENDA_ALIQUOTA.AsString :=Editaliquota.Text;
       DMLOJA.TBDETVENDANCM.AsString                    :=Editncm.Text;
       DMLOJA.TBDETVENDAQTDKL.AsString                  :=Editkg.Text;


       soma;
       //editcodigo.SetFocus;
       jafoi := 0;
       limpaeditdetalhevenda;
       editcodigo.Clear;
       editcodigo.SetFocus;
  //------------------------------------fim---------------------------




   end;
  end;



procedure TFRMPDV.CancelarItem1Click(Sender: TObject);
begin
editcodigoretorno.SetFocus;

end;

procedure TFRMPDV.CancelarVendaAtual1Click(Sender: TObject);
begin

 if Conf = 0 then
      begin
        Application.MessageBox('É Necessário Iniciar uma Venda, para efetuar o Cancelamento!','Informação do Sistema',Mb_IconInformation);
        exit
      end;


if tipodavenda = 'NFC' then

BEGIN

  if Application.MessageBox('Cancelar Venda/NFC-e Atual?','Comfirmação',MB_YESNO + MB_ICONQUESTION)= IDYES then

  begin

   // dmpdv.TBCVENDA.Cancel;
    DMLOJA.TBVENDA.delete;
    DMLOJA.TBDETVENDA.Cancel;
    panelitens.BringToFront;
    iRetorno := tCFCancelar_NFCe_Daruma('', '', '', '','');
    TrataRetorno_NFCe(iRetorno);

    limpaeditvenda;
    desabilita;
    Conf := 0;


  end
  else
   begin
     exit;
   end;
END;
if tipodavenda = 'PEDIDO' then

BEGIN

  if Application.MessageBox('Cancelar Venda Atual?','Comfirmação',MB_YESNO + MB_ICONQUESTION)= IDYES then

  begin

   // dmpdv.TBCVENDA.Cancel;
    DMLOJA.TBVENDA.delete;
    DMLOJA.TBDETVENDA.Cancel;
    panelitens.BringToFront;
    limpaeditvenda;
    desabilita;
    Conf := 0;


  end
  else
   begin
     exit;
   end;

END;

end;



procedure TFRMPDV.Cliente1Click(Sender: TObject);
begin
FRMIDCLIENTE:= TFRMIDCLIENTE.Create(Self);
FRMIDCLIENTE.ShowModal;
end;

procedure TFRMPDV.DBGriditensDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Column.Index = 0 then
  begin

   // DBGriditens.Canvas.Font.Color := clBlack; // cor do texto
  //  DBGriditens.Canvas.Brush.Color := $00FFFFE1; // fundo

    DBGriditens.Canvas.FillRect(Rect);
    DBGriditens.Canvas.TextOut(Rect.Left + 2,Rect.Top, IntToStr(DMLOJA.TBDETVENDA.RecNo)); // linha atual

  end
  else
    DBGriditens.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TFRMPDV.DBGridvendaDblClick(Sender: TObject);
begin
 FRMPDV.editcodigo.Text:= DMCONSULTA.qylocalizarprodutoREFERENCIA.AsString;
 editcodigo.SetFocus;
 DBGridvenda.SendToBack;

end;

procedure TFRMPDV.editcodigoChange(Sender: TObject);

var
 sqlc:string;
// voz:OleVariant;
 consulta,tSql: String;
begin

if editcodigo.Text<>''  then
begin


  consulta:= 'select * from Tbestoque where upper(DESCRICAO)like''%'+UpperCase(editcodigo.Text)+'%''';
  DMCONSULTA.qylocalizarproduto.Active:= False;
  tsql:=consulta;

  DMCONSULTA.qylocalizarproduto.SQL.Clear;
  DMCONSULTA.qylocalizarproduto.SQL.Add(tsql);
  DMCONSULTA.qylocalizarproduto.Active:= True;

  DBGridvenda.BringToFront;
  end


  else
  begin
   DBGridvenda.SendToBack;
  end;

end;

procedure TFRMPDV.editcodigoEnter(Sender: TObject);
begin
// verificar o camponente
 if (Sender is TEdit) then
// mudar a cor do componente
 TEdit(Sender).Color:=clMoneyGreen;


end;

procedure TFRMPDV.editcodigoExit(Sender: TObject);
var
 { StrAliquota,StrQuantidade,StrPrecoUnitario, StrTipoDescAcres, StrValorDescAcres: string;
  StrCodigoItem: string;
  StrNCM: String;
  StrCFOP: String;
  StrUnidadeMedida: string;
  StrDescricaoItem: string;
  StrUsoFuturo: String;
 }
  desc: Currency;
  TextoCodigo: string;
  qtdkg,recebevalor: currency;

begin
      // verificar o camponente
 if (Sender is TEdit) then
 begin
// mudar a cor do componente
 TEdit(Sender).Color:=clWhite;

 end;
   TextoCodigo := editcodigo.Text;
    {
 if  (Length(TextoCodigo) <> 13)   then
begin
   Application.MessageBox('Código não Cadastrado!','Informação do Sistema',Mb_IconInformation);
   editcodigo.SetFocus;
   Exit
end;  }

  {

   TextoCodigo := editcodigo.Text;

    if (Length(TextoCodigo) = 1)or(Length(TextoCodigo) = 2) or (Length(TextoCodigo) = 3) or (Length(TextoCodigo) = 5)or (Length(TextoCodigo) = 6)or(Length(TextoCodigo) = 7)or(Length(TextoCodigo) = 8)or
    (Length(TextoCodigo) = 9)or (Length(TextoCodigo) = 10)or (Length(TextoCodigo) = 11)or (Length(TextoCodigo) = 12) or (Length(TextoCodigo) > 13) then

      begin
        Application.MessageBox('Código não Cadastrado','Informação do Sistema',Mb_IconInformation);
      	editcodigo.SetFocus;
        editcodigo.Clear;

      end;
   }

   if  (Length(TextoCodigo) = 13) and (TextoCodigo[1] <> '2')  then

  begin
   If   editcodigo.Text <> '' then begin
	      dmconsulta.qyproduto.Active := False;
   	    dmconsulta.qyproduto.SQL.Clear;
	      dmconsulta.qyproduto.SQL.Add('select * from tbestoque where referencia='+chr(39)+editcodigo.Text+chr(39));
   	    dmconsulta.qyproduto.Active := True;
	   If dmconsulta.qyprodutoreferencia.AsString = '' then begin
   	    Application.MessageBox('Produto não Cadastrado','Informação do Sistema',Mb_IconInformation);
      	editcodigo.SetFocus;
        editcodigo.Clear;
	   end
   	else
    begin


        editqtd.Text:= '1';
        editdesc.Text:=              dmconsulta.qyprodutoDESCONTOINDIVIDUAL.AsString;
        //Editaliquota.Text:=        dmconsulta.qyprodutoALIQUOTA.AsString;
        editcodigo.Text:=            dmconsulta.qyprodutoreferencia.AsString;
        Editunidade.Text:=           dmconsulta.qyprodutoUNIDADE.AsString;
        Editcfop.Text:=              dmconsulta.qyprodutoCFOP.AsString;
//        editcest.Text:=              dmconsulta.qyprodutoNRCEST.AsString;
        Editncm.Text:=               dmconsulta.qyprodutoNCM.AsString;
        editdescricao.Text		:=     dmconsulta.qyprodutoDescricao.AsString;
        pndescricao.Caption   :=     dmconsulta.qyprodutoDescricao.AsString;

       // EDT_DescricaoItem.Text:=   dmconsulta.qyprodutoDescricao.AsString;

        
        if dmloja.TBCONFIGCTRNCM.AsString <> 'SIM' then
        begin
   	    editvalorunitario.Text	:=   dmconsulta.qyprodutoVlrVenda.AsString;

        end;

       // edit_qtd.SetFocus;
      Editdetvendavalortotal.Text := CurrToStr (StrToCurr(editvalorunitario.Text) * StrToInt(editqtd.Text));
      Editsubtotavenda.Text       := CurrToStr(StrToCurr(editvalorunitario.Text)  * StrToInt(editqtd.Text));
      Edittotal.Text              := CurrToStr(StrToCurr(editvalorunitario.Text)  * StrToInt(editqtd.Text));

      btnadiciona.Click;
   	end;
  end;

  //-----------------------------------------------inicio-------------


end;


if  (Length(TextoCodigo) = 13) and (TextoCodigo[1] = '2')  then

begin
       Editcodigoreduzido.Text := Copy(TextoCodigo,2,6);//Coloco o código do produto no Edit de código do produto
  //
     If   editcodigo.Text <> '' then begin
	      dmconsulta.qyproduto.Active := False;
   	    dmconsulta.qyproduto.SQL.Clear;
	      dmconsulta.qyproduto.SQL.Add('select * from tbestoque where referencia='+chr(39)+Editcodigoreduzido.Text+chr(39));
   	    dmconsulta.qyproduto.Active := True;
	   If dmconsulta.qyprodutoreferencia.AsString = '' then begin
   	    Application.MessageBox('Produto não Cadastrado','Informação do Sistema',Mb_IconInformation);
      	editcodigo.SetFocus;
        editcodigo.Clear;
	   end
   	else
    begin


        recebevalor := StrToFloat(Copy(TextoCodigo,8,5)) /100;

        editqtd.Text:=               '1';
        editdesc.Text:=              dmconsulta.qyprodutoDESCONTOINDIVIDUAL.AsString;
        //Editaliquota.Text:=        dmconsulta.qyprodutoALIQUOTA.AsString;
        editcodigo.Text:=            dmconsulta.qyprodutoreferencia.AsString;
        Editunidade.Text:=           dmconsulta.qyprodutoUNIDADE.AsString;
//        editcest.Text:=              dmconsulta.qyprodutoNRCEST.AsString;
        Editcfop.Text:=              dmconsulta.qyprodutoCFOP.AsString;
        Editncm.Text:=               dmconsulta.qyprodutoNCM.AsString;
        editdescricao.Text		:=     dmconsulta.qyprodutoDescricao.AsString;
       // EDT_DescricaoItem.Text:=   dmconsulta.qyprodutoDescricao.AsString;
   	   
        if dmloja.TBCONFIGCTRNCM.AsString <> 'SIM' then
        begin
   	    editvalorunitario.Text	:=   dmconsulta.qyprodutoVlrVenda.AsString;

        end;
       pndescricao.Caption   :=     dmconsulta.qyprodutoDescricao.AsString;

       // edit_qtd.SetFocus;
      Editdetvendavalortotal.Text := CurrToStr(recebevalor);
      Editsubtotavenda.Text       := CurrToStr(recebevalor);
      Edittotal.Text              := CurrToStr(recebevalor);
      qtdkg                       := (recebevalor / StrToCurr (editvalorunitario.Text));
      //Editkg.Text                 := CurrToStr(qtdkg);
      Editkg.Text                 := FormatFloat('0.000',qtdkg);

     //Editkg.Text:=FormatFloat('0.000',StrToFloat(qtdkg)) ;

      btnadiciona.Click;
   	end;
  end;

  //-----------------------------------------------inicio-------------


end;


//----------------------CASO FOR 4 DIGITO------------------------------------------------
   if  Length(TextoCodigo) = 4  then

begin
   If   editcodigo.Text <> '' then
   begin
	      dmconsulta.qyproduto.Active := False;
   	    dmconsulta.qyproduto.SQL.Clear;
	      dmconsulta.qyproduto.SQL.Add('select * from tbestoque where referencia='+chr(39)+editcodigo.Text+chr(39));
   	    dmconsulta.qyproduto.Active := True;
	   If dmconsulta.qyprodutoreferencia.AsString = '' then

     begin
   	    Application.MessageBox('Produto não Cadastrado','Informação do Sistema',Mb_IconInformation);
      	editcodigo.SetFocus;
        editcodigo.Clear;
	   end
   	else
    begin


        editqtd.Text:= '';
        editdesc.Text:=              dmconsulta.qyprodutoDESCONTOINDIVIDUAL.AsString;
        //Editaliquota.Text:=        dmconsulta.qyprodutoALIQUOTA.AsString;
        editcodigo.Text:=            dmconsulta.qyprodutoreferencia.AsString;
        Editunidade.Text:=           dmconsulta.qyprodutoUNIDADE.AsString;
        Editcfop.Text:=              dmconsulta.qyprodutoCFOP.AsString;
        editcest.Text:=              dmconsulta.qyprodutoNRCEST.AsString;
        Editncm.Text:=               dmconsulta.qyprodutoNCM.AsString;
        editdescricao.Text		:=     dmconsulta.qyprodutoDescricao.AsString;
        // EDT_DescricaoItem.Text:=   dmconsulta.qyprodutoDescricao.AsString;

        if dmloja.TBCONFIGCTRNCM.AsString <> 'SIM' then
        begin
   	    editvalorunitario.Text	:=   dmconsulta.qyprodutoVlrVenda.AsString;

        end;

        pndescricao.Caption   :=     dmconsulta.qyprodutoDescricao.AsString;

       // edit_qtd.SetFocus;
     {
      Editdetvendavalortotal.Text := CurrToStr (StrToCurr(editvalorunitario.Text) * StrToInt(editqtd.Text));
      Editsubtotavenda.Text       := CurrToStr(StrToCurr(editvalorunitario.Text)  * StrToInt(editqtd.Text));
      Edittotal.Text              := CurrToStr(StrToCurr(editvalorunitario.Text)  * StrToInt(editqtd.Text));
      }
      editqtd.SetFocus;

  end;
  end;

  //-----------------------------------------------inicio-------------

DBGridvenda.SendToBack;
end;
//----------------------FIM 4 DIGITO ----------------------------------------------------


end;

procedure TFRMPDV.FormClose(Sender: TObject; var Action: TCloseAction);
begin



if Conf = 1 then

begin

    DMLOJA.TBVENDA.delete;
    DMLOJA.TBDETVENDA.Cancel;
    DMLOJA.TBPAGAMENTO.Cancel;
    panelitens.BringToFront;

   if tipodavenda = 'NFC' then
   begin

    iRetorno := tCFCancelar_NFCe_Daruma('', '', '', '','');
//    principal.DarumaFramework_TrataRetorno_NFCe(iRetorno);

   end;
    limpaeditdetalhevenda;

    Conf := 0;
//    Close;

    FRMPDV.release;
    FRMPDV:=nil;
    Application.Terminate;

end;
    Application.Terminate;

end;

procedure TFRMPDV.editcodigoKeyPress(Sender: TObject; var Key: Char);
begin
// if not (Key in['0'..'9',Chr(8)]) then Key:= #0; 
end;

procedure TFRMPDV.EditcodigoexcluirExit(Sender: TObject);
begin
editcodigo.SetFocus;
end;

procedure TFRMPDV.editcodigoretornoExit(Sender: TObject);
begin

   
    DMLOJA.TBDETVENDA.First;
     begin
      //DMLOJA.TBEstoque.Locate('Referencia',DMLOJA.TBDETVENDAREFERENCIA.asstring,[]);
      DMLOJA.TBDETVENDA.Locate('REFERENCIA',editcodigoretorno.Text,[]);
      DMLOJA.TBDETVENDA.Delete;
      DMLOJA.TBDETVENDA.Next;
      editcodigo.SetFocus;
      editcodigoretorno.Clear;
     end;

end;

procedure TFRMPDV.cccEnter(Sender: TObject);
begin
// verificar o camponente
 if (Sender is TEdit) then
// mudar a cor do componente
 TEdit(Sender).Color:=clMoneyGreen;

end;

procedure TFRMPDV.editqtdEnter(Sender: TObject);

var
TextoCodigo: string;

begin
// verificar o camponente
 if (Sender is TEdit) then
// mudar a cor do componente
 TEdit(Sender).Color:=clMoneyGreen;

   TextoCodigo := editcodigo.Text;

    if (Length(TextoCodigo) = 1)or(Length(TextoCodigo) = 2) or (Length(TextoCodigo) = 3) or (Length(TextoCodigo) = 5)or (Length(TextoCodigo) = 6)or(Length(TextoCodigo) = 7)or(Length(TextoCodigo) = 8)or
    (Length(TextoCodigo) = 9)or (Length(TextoCodigo) = 10)or (Length(TextoCodigo) = 11)or (Length(TextoCodigo) = 12) or (Length(TextoCodigo) > 13) then

      begin
        Application.MessageBox('Código não Cadastrado','Informação do Sistema',Mb_IconInformation);
      	editcodigo.SetFocus;
        editcodigo.Clear;
        editcodigo.SetFocus;

      end;



end;

procedure TFRMPDV.editqtdExit(Sender: TObject);
begin
      // verificar o camponente
 if (Sender is TEdit) then
 begin
 // mudar a cor do componente
 TEdit(Sender).Color:=clWhite;

 end;

if editqtd.Text = '' then
begin
 Application.MessageBox('Digite a Quantidade!','Informação do Sistema',Mb_IconInformation);
 editqtd.SetFocus;
 Exit
end;

   if editcodigo.Text <> '' then

    begin

      if DMLOJA.TBCONFIGCTRNCM.AsString = 'NAO' then

      begin


      Editdetvendavalortotal.Text := CurrToStr (StrToCurr(editvalorunitario.Text) * StrToInt(editqtd.Text));
      Editsubtotavenda.Text       := CurrToStr(StrToCurr(editvalorunitario.Text)  * StrToInt(editqtd.Text));
      Edittotal.Text              := CurrToStr(StrToCurr(editvalorunitario.Text)  * StrToInt(editqtd.Text));
      btnadiciona.Click;


      end;


      if DMLOJA.TBCONFIGCTRNCM.AsString = 'SIM' then

      begin

       editvalorunitario.SetFocus;


      end;




    end
    else
    begin
      editcodigo.SetFocus;
    end;




end;

procedure TFRMPDV.editvalorunitarioEnter(Sender: TObject);
begin
// verificar o camponente
 if (Sender is TEdit) then
// mudar a cor do componente
 TEdit(Sender).Color:=clMoneyGreen;


end;

procedure TFRMPDV.editvalorunitarioExit(Sender: TObject);
begin

    if editvalorunitario.Text= ''  then
    begin
      Application.MessageBox('Digite o valor do Produto!','Informação do Sistema',Mb_IconInformation);
      editvalorunitario.SetFocus;
    end;

    if editvalorunitario.Text <> ''  then
    begin

      if Editunidade.Text = 'KG' then
      begin
      Editdetvendavalortotal.text := CurrToStr (StrToCurr(editvalorunitario.Text) * StrToCurr(editqtd.Text));
      Editsubtotavenda.Text       := CurrToStr(StrToCurr(editvalorunitario.Text)  * StrToCurr(editqtd.Text));
      Edittotal.Text              := CurrToStr(StrToCurr(editvalorunitario.Text)  * StrToCurr(editqtd.Text));

      end;

      if Editunidade.Text = 'UN' then
      begin
      Editdetvendavalortotal.text := CurrToStr (StrToCurr(editvalorunitario.Text) * StrToInt(editqtd.Text));
      Editsubtotavenda.Text       := CurrToStr(StrToCurr(editvalorunitario.Text)  * StrToInt(editqtd.Text));
      Edittotal.Text              := CurrToStr(StrToCurr(editvalorunitario.Text)  * StrToInt(editqtd.Text));

      end;

      btnadiciona.Click;
      editqtd.Clear;
      edit_desc.Clear;
      editvalorunitario.Clear;
      edittotal.Clear;



    end;
            // verificar o camponente
 if (Sender is TEdit) then
// mudar a cor do componente
 TEdit(Sender).Color:=clWhite;


end;

procedure TFRMPDV.ExcluirItemdaVenda1Click(Sender: TObject);
var
valortotal:currency;
StrNumeroItem: String;


begin

if tipodavenda = 'NFC' then

begin


if messagedlg('Confirma a Exclusão do Item na NFC-e?',mtconfirmation,
  [mbYes,mbNo],0) = mrYes then
  begin

  StrNumeroItem:= InputBox('Excluir Item da NFC-e', 'Digite o Número do Item:', '');
  iRetorno := aCFCancelarItem_NFCe_Daruma(StrNumeroItem);
  FRMPDV.TrataRetorno_NFCe(iRetorno);


  totalgeral            := StrToFloat(Edittotalvenda.Text) - StrToFloat(DBEdit2.Text);
 // lucro                 := StrToFloat(Edittotallucro.Text) - StrToFloat(DBEdit3.Text);
    Edittotalvenda.Text   := FloatToStr(totalgeral);
    Editsubtotavenda.Text := FloatToStr(totalgeral);
    lbltotalvenda.Caption      := FloatToStr(totalgeral);
 // Edittotallucro.Text   := FloatToStr(lucro);
    Editvendaqtditem.Text:= inttostr(StrToInt(Editvendaqtditem.Text) - StrToInt(DBEdit1.Text));
    lblqtditens.Caption:=  Editvendaqtditem.Text; //inttostr(StrToInt(Editvendaqtditem.Text) - StrToInt(DBEdit1.Text));

 // Edittotalvenda.Text:=valortotal;
    DMloja.TBDETVENDA.Delete;



end
   else
   begin
     exit;
   end;
end;

if tipodavenda = 'PEDIDO' then

begin
  //

  if messagedlg('Confirma a Exclusão do Item do Pedido de Venda?',mtconfirmation,
  [mbYes,mbNo],0) = mrYes then
  begin


 // lucro                 := StrToFloat(Edittotallucro.Text) - StrToFloat(DBEdit3.Text);
  totalgeral            := StrToFloat(Edittotalvenda.Text) - StrToFloat(DBEdit2.Text);
  Edittotalvenda.Text   := FloatToStr(totalgeral);
  Editsubtotavenda.Text := FloatToStr(totalgeral);
  lbltotalvenda.Caption      := FloatToStr(totalgeral);
 // Edittotallucro.Text   := FloatToStr(lucro);
  //Editvenda_qtditem.Text:= inttostr(StrToInt(Editvenda_qtditem.Text) - StrToInt(DBEdit1.Text));
 // Edittotalvenda.Text:=valortotal;
  DMLOJA.TBDETVENDA.Delete;



end
   else
   begin
     exit;
   end;


end;
end;

procedure TFRMPDV.abrecopom;

var
  StrCPF: string;
  StrNome: string;
  StrLgr: string;
  StrNro: string;
  StrBairro: string;
  StrcMun: string;
  StrMunicipio: string;
  StrUF: string;
  StrCEP: string;

begin


     if tipodavenda =  'NFC' then

   begin
    Conf := 1;

    iRetorno:=aCFAbrir_NFCe_Daruma(StrCPF,StrNome,StrLgr,StrNro,StrBairro,StrcMun,StrMunicipio,StrUF,StrCEP);
    aguarde;
    TrataRetorno_NFCe(iRetorno);

    if iRetorno = -130 then
    begin
    iRetorno := tCFCancelar_NFCe_Daruma('', '', '', '','');
    TrataRetorno_NFCe(iRetorno);
    Application.MessageBox('Foi encontrada uma venda anterior em aberto, foi Cancelada!','Informação do Sistema',Mb_IconInformation);


    iRetorno:=aCFAbrir_NFCe_Daruma(StrCPF,StrNome,StrLgr,StrNro,StrBairro,StrcMun,StrMunicipio,StrUF,StrCEP);
    TrataRetorno_NFCe(iRetorno);


    end;

   pronto;
   end;

      if tipodavenda =  'PEDIDO' then

   begin
       aguarde;
       Conf := 1;
       pronto;

   end;


end;
procedure TFRMPDV.habilita;
begin

gbvenda.Enabled:= True;
//
end;
procedure TFRMPDV.NovaVenda1Click(Sender: TObject);
begin
   if Application.MessageBox('Identificar Cliente na Nota Fiscal Eletronica?','Comfirmação',MB_YESNO + MB_ICONQUESTION)= IDYES then
begin
FRMIDCLIENTE:= TFRMIDCLIENTE.Create(Self);
FRMIDCLIENTE.ShowModal;
end;



   if conf <> 0 then
      Application.MessageBox('Já Existe um Cupom Aberto','Informação do Sistema',Mb_IconInformation)
   else

   begin
      tipodavenda:= 'NFC';
      DMLOJA.DBDATABASE.Open;
      DMLOJA.TBESTOQUE.close;
      DMLOJA.TBESTOQUE.Active:= True;

      DMLOJA.TBVENDA.Append;
      DMLOJA.TBVENDA.Post;
      DMLOJA.TBVENDA.Edit;

   	  Labelnumeronfce.Caption := StringOfChar('0',1-Length(DMLOJA.TBVENDAMinuta.AsString))+DMLOJA.TBVENDAMinuta.AsString;

	    Habilita;
	    editcodigo.SetFocus;
	    Abrecopom;
      panelitens.SendToBack;
end;
end;

procedure TFRMPDV.PaineldeControle1Click(Sender: TObject);
begin
FRMPAINEL:= TFRMPAINEL.Create(Self);
FRMPAINEL.ShowModal;
end;

procedure TFRMPDV.PedidodeVenda1Click(Sender: TObject);
begin
   if conf <> 0 then
      Application.MessageBox('Já Existe um Cupom Aberto','Informação do Sistema',Mb_IconInformation)
   else

     begin
      tipodavenda:= 'PEDIDO';

      DMLOJA.TBESTOQUE.Close;
      DMLOJA.TBESTOQUE.Active:= True;

      DMLOJA.TBVENDA.Append;
      DMLOJA.TBVENDA.Post;
      DMLOJA.TBVENDA.Edit;

   	  Labelnumeronfce.Caption := StringOfChar('0',1-Length(DMLOJA.TBVENDAMinuta.AsString))+DMLOJA.TBVENDAMinuta.AsString;

	    Habilita;
	    editcodigo.SetFocus;
	    Abrecopom;
      panelitens.SendToBack;
     end;


end;

procedure TFRMPDV.TrataRetorno_NFCe(iRetorno:integer);
begin
   case iRetorno of
    1: Application.MessageBox('[1] - Comando executado com sucesso.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
    0: Application.MessageBox('[0] - Não foi possível comunicar com a impressora não fiscal.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
    2: Application.MessageBox('[2] - Encerramento foi feito em Contingência OffLine.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
    3: Application.MessageBox('[3] -  Encerramento foi feito em Contingência OnLine.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
    4: Application.MessageBox('[4] -  Retorno TimeOut ao enviar.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -1: Application.MessageBox('[-1] - Erro encontrado na execução do método.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -2: Application.MessageBox('[-2] - Chave Inválida (Erro retornado pelo webservice).', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -3: Application.MessageBox('[-3] - Falha no schema XML (Erro retornado pelo webservice).', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -4: Application.MessageBox('[-4] - XML fora do padrão (Erro retornado pelo webservice).', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -5: Application.MessageBox('[-5] - Erro genérico (Erro retornado pelo webservice).', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -6: Application.MessageBox('[-6] - Nota já cadastrada na base de dados.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -8: Application.MessageBox('[-8] - Usuário não Autorizado.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -9: Application.MessageBox('[-9] - Usuário não Licenciado.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -10: Application.MessageBox('[-10] - Documento e Ambiente não identificados.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -11: Application.MessageBox('[-11] - Índice inexistente passado como parâmetro.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -12: Application.MessageBox('[-12] - Pagamento informado não existe no cupom.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -13: Application.MessageBox('[-13] - Tipo de Documento não identificado.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -14: Application.MessageBox('[-14] - Erro retornado pelo WebService.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -21: Application.MessageBox('[-21] - Não existe acréscimo ou desconto a ser cancelado.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
    -27: Application.MessageBox('[-27] - Não foi possível comunicar com a impressora não fiscal.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -30: Application.MessageBox('[-30] - Lista não possui itens.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
	  -31: Application.MessageBox('[-31] - Quantidade informada não pode ser maior que a quantidade vendida.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -34: Application.MessageBox('[-34] - Valor Total já foi pago.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -35: Application.MessageBox('[-35] - Desconto/ Acréscimo não pode ser igual ou maior que o valor total.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -40: Application.MessageBox('[-40] -  Tag XML não encontrada.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -50: Application.MessageBox('[-50] - Impressora OFF-LINE.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -51: Application.MessageBox('[-51] - Impressora sem papel.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -52: Application.MessageBox('[-52] - Erro ao gravar em arquivo temporário.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
    -54: Application.MessageBox('[-54] - Erro na formatação do arquivo TEF.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -99: Application.MessageBox('[-99] - Parâmetro inválido ou ponteiro nulo de parâmetro.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -100: Application.MessageBox('[-100] - Estado do cupom inválido para execução o método.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -103: Application.MessageBox('[-103] - Não foram encontradas as DLLs auxiliares WS_Framework.dll e GNE_Framework.dll).', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -108: Application.MessageBox('[-108] - O valor da Nota obriga a Identificação do Cliente.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -120: Application.MessageBox('[-120] - Encontrada tag inválida.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -121: Application.MessageBox('[-121] - Estrutura Inválida.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -122: Application.MessageBox('[-122] - Tag obrigatória não foi informada.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -123: Application.MessageBox('[-123] - Tag obrigatória não tem valor preenchido.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -130: Application.MessageBox('[-130] - NFCe já está aberta.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -131: Application.MessageBox('[-131] - NFCe não está aberta.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -132: Application.MessageBox('[-132] - NFCe não em fase de venda.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
    -133: Application.MessageBox('[-133] - NFCe não em fase de totalização.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
    -134: Application.MessageBox('[-134] - NFCe não em fase de pagamento.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
	  -135: Application.MessageBox('[-135] - NFCe não em fase de encerramento.', 'Light PDV',MB_OK + MB_ICONINFORMATION);
   else
    Application.MessageBox(pchar('Erro desconhecido: ['+ IntToStr(iRetorno)+']'), 'Light PDV', MB_OK + MB_ICONINFORMATION);
  end;
end;
procedure MakeRounded(Control: TWinControl);
var
R: TRect;
Rgn: HRGN;
begin
with Control do
begin
 R := ClientRect;
 rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 15, 15);
 Perform(EM_GETRECT, 0, lParam(@r));
 InflateRect(r, - 10, - 10);
 Perform(EM_SETRECTNP, 0, lParam(@r));
 SetWindowRgn(Handle, rgn, True);
 Invalidate;
end;
end;

procedure TFRMPDV.Finalizar1Click(Sender: TObject);
begin
FRMPDV.SetFocus;
 if Conf = 0 then
      begin
        Application.MessageBox('É Necessário Iniciar uma Venda, para Finalizar!','Informação do Sistema',Mb_IconInformation);
        exit
      end
      else
       begin

  if (DMLOJA.TBCONFIGCOMICAO.AsString = 'SIM') and (Edtnomevendedor.Text = '' ) then
  begin
     Application.MessageBox('Identifique o Vendedor!','Informação do Sistema',Mb_IconInformation);

  end;


 if DMLOJA.TBCONFIGCOMICAO.AsString = 'NAO'  Then

 begin
    FRMPAGAMENTO:=TFRMPAGAMENTO.Create(Self);
    FRMPAGAMENTO.ShowModal;

 end;


if (DMLOJA.TBCONFIGCOMICAO.AsString = 'SIM') and (Edtnomevendedor.Text <> '' ) then

begin
   FRMPAGAMENTO:= TFRMPAGAMENTO.Create(Self);
   FRMPAGAMENTO.ShowModal;
end;

end;
end;

procedure TFRMPDV.FormCreate(Sender: TObject);
{VAR
MEUINI:TIniFile;
Imagem:String;
 }
begin
{
MEUINI:=TIniFile.Create(ExtractFilePath(APPLICATION.EXENAME)+'LOGO.INI');
Imagem:=MEUINI.ReadString('LOGO','LOGOIMAGEM','C:\NFCE\PDV\LOGO\LOGO.jpg');


Image1.Picture.LoadFromFile(Imagem);
 }


end;

procedure TFRMPDV.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

end.
