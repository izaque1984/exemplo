unit UnDmpdv;

interface

uses
  SysUtils, Classes, IBDatabase, DB, IBCustomDataSet, IBQuery;

type
  TDMLOJA = class(TDataModule)
    DBDATABASE: TIBDatabase;
    TSPDV: TIBTransaction;
    TBVENDA: TIBDataSet;
    TBDETVENDA: TIBDataSet;
    TBESTOQUE: TIBDataSet;
    TBCLIENTE: TIBDataSet;
    TBVENDEDOR: TIBDataSet;
    TBPAGAMENTO: TIBDataSet;
    TBCONFIG: TIBDataSet;
    TBDEBITO: TIBDataSet;
    TBDETDEBITO: TIBDataSet;
    DSTBVENDA: TDataSource;
    DSTBDETVENDA: TDataSource;
    DSTBESTOQUE: TDataSource;
    DSTBCLIENTE: TDataSource;
    DSTBVENDEDOR: TDataSource;
    DSTBPAGAMENTO: TDataSource;
    DSTBCONFIG: TDataSource;
    DSTBDEBITO: TDataSource;
    DSTBDETDEBITO: TDataSource;
    TBCAIXA: TIBDataSet;
    DSTBCAIXA: TDataSource;
    TBUSUARIO: TIBDataSet;
    TBCOMICAO: TIBDataSet;
    DSTBUSUARIO: TDataSource;
    DSTBCOMICAO: TDataSource;
    TBVENDAMINUTA: TIntegerField;
    TBVENDADATA: TDateField;
    TBVENDAVENDA_CODVENDEDOR: TIntegerField;
    TBVENDAVENDA_NMVENDEDOR: TIBStringField;
    TBVENDAVENDA_CDCLIENTE: TIntegerField;
    TBVENDAVENDA_NMCLIENTE: TIBStringField;
    TBVENDAVENDA_ENDERECOCLIENTE: TIBStringField;
    TBVENDAVENDA_CIDADECLIENTE: TIBStringField;
    TBVENDAVENDA_BAIRROCLIENTE: TIBStringField;
    TBVENDAVENDA_NRTELEFONECLIENTE: TIBStringField;
    TBVENDAVENDA_CPFCLIENTE: TIBStringField;
    TBVENDAVENDA_FORMAPAGAMENTO: TIBStringField;
    TBVENDATOTALVENDA: TIBBCDField;
    TBVENDAVENDA_QTDITENS: TIntegerField;
    TBVENDAVENDA_DESCONTODINHEIRO: TIBBCDField;
    TBVENDAVENDA_DESCONTOPORCENTAGEM: TIBBCDField;
    TBVENDAVENDA_TOTALCOMDESCONTO: TIBBCDField;
    TBVENDAVENDA_SITUACAO: TIBStringField;
    TBVENDAVENDA_DINHEIRORECEBIDO: TIBBCDField;
    TBVENDAVENDA_VALORTROCO: TIBBCDField;
    TBVENDAVENDA_GEROUCOMICAO: TIBBCDField;
    TBVENDAVENDA_VLCOMICAOVENDEDOR: TIBBCDField;
    TBVENDACODCAIXA: TIntegerField;
    TBVENDAHORA: TIBStringField;
    TBVENDATOTALDINHEIRO: TFloatField;
    TBVENDATOTALDESCONTO: TFloatField;
    TBVENDAVLRDESCONTO: TFloatField;
    TBVENDAVALORRECEBIDO: TFloatField;
    TBVENDATROCO: TFloatField;
    TBVENDACHAVENOTA: TIBStringField;
    TBVENDASTATUSDANOTA: TIBStringField;
    TBVENDAPROTOCOLONOTA: TIBStringField;
    TBVENDASERIENOTA: TIBStringField;
    TBVENDANR_DANOTA: TIBStringField;
    TBVENDAOPERADOR: TIBStringField;
    TBVENDASUBTOTAL: TIBBCDField;
    TBDETVENDADETALHEVENDA_QTDITEN: TIntegerField;
    TBDETVENDADETALHEVENDA_VLUNITARIO: TIBBCDField;
    TBDETVENDADETALHEVENDA_VLTOTAL: TIBBCDField;
    TBDETVENDADETALHEVENDA_DESCONTO: TIBBCDField;
    TBDETVENDADETALHEVENDA_DESCRICAO: TIBStringField;
    TBDETVENDADETALHEVENDA_QUANTIDADE: TIBBCDField;
    TBDETVENDADETALHEVENDA_CFOP: TIntegerField;
    TBDETVENDADETALHEVENDA_UNIDADE: TIBStringField;
    TBDETVENDADETALHEVENDA_VALORPAGO: TIBBCDField;
    TBDETVENDADETALHEVENDA_FORMADEPAGTO: TIBStringField;
    TBDETVENDANCM: TIBStringField;
    TBDETVENDAN_ITEM: TIntegerField;
    TBDETVENDAMINUTA: TIntegerField;
    TBDETVENDAVENDA_NRNFC: TIntegerField;
    TBDETVENDADETALHE_VENDA_ALIQUOTA: TIBStringField;
    TBDETVENDAREFERENCIA: TIBStringField;
    TBDETVENDACD_DETVENDA: TIntegerField;
    TBDETVENDAQTDKL: TIBStringField;
    TBCONFIGCD_CONFIG: TIntegerField;
    TBCONFIGNM_FANTASIA: TIBStringField;
    TBCONFIGNM_RAZAOSOCIAL: TIBStringField;
    TBCONFIGNM_ENDERECO: TIBStringField;
    TBCONFIGNR_CNPJ: TIBStringField;
    TBCONFIGNR_INSCRIEM: TIBStringField;
    TBCONFIGTP_IPMPRESSORA: TIBStringField;
    TBCONFIGNR_TELEFONE: TIBStringField;
    TBCONFIGNM_CIDADE: TIBStringField;
    TBCONFIGCONVENIO: TIBStringField;
    TBCONFIGCOMICAO: TIBStringField;
    TBCONFIGCRT: TIBStringField;
    TBCONFIGCPF: TIBStringField;
    TBCONFIGCODIGOAREAMUNICIPIO: TIBStringField;
    TBCONFIGCODIGOMUNICIPIO: TIBStringField;
    TBCONFIGBAIRRO: TIBStringField;
    TBCONFIGNUMERO: TIBStringField;
    TBCONFIGMINICIPIO: TIBStringField;
    TBCONFIGXMUNICIPIO: TIBStringField;
    TBCONFIGUF: TIBStringField;
    TBCONFIGCEP: TIBStringField;
    TBCONFIGDTVENCIMENTOCERT: TDateField;
    TBCONFIGNOMEA1: TIBStringField;
    TBCONFIGSENHAA1: TIBStringField;
    TBCONFIGNUMEROSISTEMA: TIntegerField;
    TBCONFIGDTINSTALACAO: TDateField;
    TBCONFIGDTVENCIMENTOMENSA: TDateField;
    TBCONFIGDTVENCCONTRATO: TDateField;
    TBCONFIGTIPOPDV: TIBStringField;
    TBCONFIGCONTROLARESTOQUE: TIBStringField;
    TBRETORNO: TIBDataSet;
    TBRETORNOMINUTA: TIntegerField;
    TBRETORNOCODIGO: TIBStringField;
    TBRETORNOINFORETORNO: TIBStringField;
    TBRETORNODATA: TDateField;
    TBRETORNOHORA: TTimeField;
    TBRETORNONRNOTA: TIBStringField;
    TBESTOQUEREFERENCIA: TIBStringField;
    TBESTOQUEQTDCOMPRADA: TIntegerField;
    TBESTOQUEQTDVENDIDA: TIntegerField;
    TBESTOQUEQTDESTOQUE: TIntegerField;
    TBESTOQUEULTIMACOMPRA: TDateField;
    TBESTOQUEULTIMAVENDA: TDateField;
    TBESTOQUEDESCRICAO: TIBStringField;
    TBESTOQUEVLESTOQUE: TFloatField;
    TBESTOQUEPONCENTAGEN: TFloatField;
    TBESTOQUEFORNECEDOR: TIBStringField;
    TBESTOQUEGRUPO: TIBStringField;
    TBESTOQUECOR: TIBStringField;
    TBESTOQUECUSTOMEDIO: TFloatField;
    TBESTOQUEUNIDADE: TIBStringField;
    TBESTOQUEAUDITORIA: TIBStringField;
    TBESTOQUECDFORN: TIntegerField;
    TBESTOQUECDUND: TIntegerField;
    TBESTOQUECFOP: TIBStringField;
    TBESTOQUENCM: TIBStringField;
    TBESTOQUEQTDMINIMA: TIntegerField;
    TBESTOQUEALIQUOTA: TIBStringField;
    TBESTOQUEDTINICIOPROMOCAO: TDateField;
    TBESTOQUEDTFIMPROMOCAO: TDateField;
    TBESTOQUEVLRVENDA: TIBBCDField;
    TBESTOQUEPRECOCUSTO: TIBBCDField;
    TBESTOQUEVLRCOMPRA: TIBBCDField;
    TBESTOQUELUCRO: TIBBCDField;
    TBESTOQUEDESCONTOINDIVIDUAL: TIBBCDField;
    TBESTOQUEVLVENDAPROMOCAO: TIBBCDField;
    TBESTOQUECOLECAO: TIBStringField;
    TBESTOQUESECAO: TIBStringField;
    TBESTOQUESUBGRUPO: TIBStringField;
    TBESTOQUEMARCA: TIBStringField;
    TBESTOQUEIMPRIMIR: TIBStringField;
    TBPAGAMENTOCDPAGAMENTO: TIntegerField;
    TBPAGAMENTOMINUTA: TIntegerField;
    TBPAGAMENTODATAVENDA: TDateField;
    TBPAGAMENTOFORMADOPAGAMENTO: TIBStringField;
    TBPAGAMENTOVALORVENDA: TFloatField;
    TBPAGAMENTOVALORPAGO: TFloatField;
    TBPAGAMENTODESCONTO: TIBStringField;
    TBPAGAMENTOVALORDESCONTO: TFloatField;
    TBPAGAMENTOSUBTOTAL: TFloatField;
    TBPAGAMENTOCOD_VENDEDOR: TIntegerField;
    TBPAGAMENTOCD_CLIENTE: TIntegerField;
    TBCAIXACODIGO: TIntegerField;
    TBCAIXAVL_ENTRADA: TIBBCDField;
    TBCAIXADT_ENTRADA: TDateField;
    TBCAIXACOD_VENDEDOR: TIntegerField;
    TBCAIXADO_TIPO: TIBStringField;
    TBCAIXAVL_RECEBIDO: TIBBCDField;
    TBCAIXACD_CLIENTE: TIntegerField;
    TBCAIXAVL_TAXA: TIBBCDField;
    TBCAIXAVL_DESCONTO: TIBBCDField;
    TBCAIXAREFERENTE: TIBStringField;
    TBCAIXASOMA: TIBBCDField;
    TBCAIXAMINUTA: TIntegerField;
    TBCAIXANRCONTROLE: TIntegerField;
    TBCOMICAOCOD_COMICAO: TIntegerField;
    TBCOMICAOCOM_COD_VENDEDOR: TIntegerField;
    TBCOMICAOCOM_NM_VENDEDOR: TIBStringField;
    TBCOMICAOCOM_DTA_ENTRADA: TDateField;
    TBCOMICAOCOM_DO_TIPO: TIBStringField;
    TBCOMICAOCOM_VL_COMICAO: TIBBCDField;
    TBCOMICAOVL_ENTRADA: TIBBCDField;
    TBCOMICAONM_CLIENTE: TIBStringField;
    TBCOMICAONR_PEDIDO: TIntegerField;
    TBCOMICAONR_CPF: TIBStringField;
    TBCOMICAOMINUTA: TIntegerField;
    TBDEBITONR_DEBITO: TIntegerField;
    TBDEBITOCD_CLIENTE: TIntegerField;
    TBDEBITONM_CLIENTE: TIBStringField;
    TBDEBITODT_EMISAO: TDateField;
    TBDEBITODT_VENCIMENTO: TDateField;
    TBDEBITONR_PARCELA: TIntegerField;
    TBDEBITOVL_COMPRA: TIBBCDField;
    TBDEBITOVL_JURO: TIBBCDField;
    TBDEBITOVL_FCOMPRA: TIBBCDField;
    TBDEBITORF_REFERENTE: TIBStringField;
    TBDEBITONR_DIAS: TIntegerField;
    TBDEBITOCD_VENDEDOR: TIntegerField;
    TBDEBITONM_VENDEDOR: TIBStringField;
    TBDEBITOVL_COMIAPRAZOVENDEDOR: TIBBCDField;
    TBDEBITOVL_ENTRADA: TIBBCDField;
    TBDEBITOVL_PORPARC: TIBBCDField;
    TBDEBITOPLANO: TIntegerField;
    TBDEBITOMINUTA: TIntegerField;
    TBDEBITONR_CPF: TIBStringField;
    TBDEBITOVL_COMICAOAPRAZO: TIBBCDField;
    TBDEBITONR_CONVENIO: TIntegerField;
    TBDEBITONM_CONVENIO: TIBStringField;
    TBDETDEBITOCOD_PARCELA: TIntegerField;
    TBDETDEBITOCD_CLIENTE: TIntegerField;
    TBDETDEBITONR_PARCELA: TIntegerField;
    TBDETDEBITONM_CLIENTE: TIBStringField;
    TBDETDEBITORF_REFERENTE: TIBStringField;
    TBDETDEBITODT_EMISAO: TDateField;
    TBDETDEBITODT_VENCIMENTO: TDateField;
    TBDETDEBITOVL_PARCELA: TIBBCDField;
    TBDETDEBITONR_DEBITO: TIntegerField;
    TBDETDEBITOCD_VENDEDOR: TIntegerField;
    TBDETDEBITONM_VENDEDOR: TIBStringField;
    TBDETDEBITONR_DIAS: TIntegerField;
    TBDETDEBITODT_ATUAL: TDateField;
    TBDETDEBITOVL_PARCJURO: TIBBCDField;
    TBDETDEBITOMINUTA: TIntegerField;
    TBDETDEBITONR_CPF: TIBStringField;
    TBDETDEBITOVL_COMIAPRAZO: TIBBCDField;
    TBDETDEBITONR_CONVENIO: TIntegerField;
    TBDETDEBITONM_CONVENIO: TIBStringField;
    IBCARNE: TIBQuery;
    IBCARNECOD_PARCELA: TIntegerField;
    IBCARNECD_CLIENTE: TIntegerField;
    IBCARNENR_PARCELA: TIntegerField;
    IBCARNENM_CLIENTE: TIBStringField;
    IBCARNERF_REFERENTE: TIBStringField;
    IBCARNEDT_EMISAO: TDateField;
    IBCARNEDT_VENCIMENTO: TDateField;
    IBCARNEVL_PARCELA: TIBBCDField;
    IBCARNENR_DEBITO: TIntegerField;
    IBCARNECD_VENDEDOR: TIntegerField;
    IBCARNENM_VENDEDOR: TIBStringField;
    IBCARNENR_DIAS: TIntegerField;
    IBCARNEDT_ATUAL: TDateField;
    IBCARNEVL_PARCJURO: TIBBCDField;
    IBCARNEMINUTA: TIntegerField;
    IBCARNENR_CPF: TIBStringField;
    IBCARNEVL_COMIAPRAZO: TIBBCDField;
    IBCARNENR_CONVENIO: TIntegerField;
    IBCARNENM_CONVENIO: TIBStringField;
    TBCONFIGCIMPRESSORA: TIBStringField;
    TBCONFIGCONTROLEESTOQUENFC: TIBStringField;
    TBCONFIGCTRNCM: TIBStringField;
    TBVENDARTERRO: TIBStringField;
    TBESTOQUENRCEST: TIBStringField;
    TAB_CEST: TIBDataSet;
    DSTABCEST: TDataSource;
    TAB_CESTCEST: TIBStringField;
    TAB_CESTNCM: TIBStringField;
    TAB_CESTDESCRICAO: TIBStringField;
    TBTIPI: TIBDataSet;
    TBTIPINCM: TIBStringField;
    TBTIPIDESCRICAO: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure TBVENDAAfterPost(DataSet: TDataSet);
    procedure TBVENDAAfterDelete(DataSet: TDataSet);
    procedure TBDETVENDAAfterPost(DataSet: TDataSet);
    procedure TBDETVENDAAfterDelete(DataSet: TDataSet);
    procedure TBESTOQUEAfterPost(DataSet: TDataSet);
    procedure TBESTOQUEAfterDelete(DataSet: TDataSet);
    procedure TBCLIENTEAfterPost(DataSet: TDataSet);
    procedure TBCLIENTEAfterDelete(DataSet: TDataSet);
    procedure TBVENDEDORAfterPost(DataSet: TDataSet);
    procedure TBVENDEDORAfterDelete(DataSet: TDataSet);
    procedure TBRETORNOAfterPost(DataSet: TDataSet);
    procedure TBRETORNOAfterDelete(DataSet: TDataSet);
    procedure TBPAGAMENTOAfterPost(DataSet: TDataSet);
    procedure TBPAGAMENTOAfterDelete(DataSet: TDataSet);
    procedure TBCONFIGAfterPost(DataSet: TDataSet);
    procedure TBCONFIGAfterDelete(DataSet: TDataSet);
    procedure TBDEBITOAfterPost(DataSet: TDataSet);
    procedure TBDEBITOAfterDelete(DataSet: TDataSet);
    procedure TBDETDEBITOAfterPost(DataSet: TDataSet);
    procedure TBDETDEBITOAfterDelete(DataSet: TDataSet);
    procedure TBCAIXAAfterPost(DataSet: TDataSet);
    procedure TBCAIXAAfterDelete(DataSet: TDataSet);
    procedure TBCOMICAOAfterPost(DataSet: TDataSet);
    procedure TBCOMICAOAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure salvadados;
  end;

var
  DMLOJA: TDMLOJA;

implementation
procedure TDMLOJA.salvadados;
begin
if TSPDV.InTransaction then
TSPDV.CommitRetaining
else
TSPDV.RollbackRetaining; //
end;

{$R *.dfm}

procedure TDMLOJA.DataModuleCreate(Sender: TObject);
begin
if DBDATABASE.Connected= false then
DBDATABASE.Connected:=true;

TSPDV.Active:=true;

TBCLIENTE.Active:=True;
TBDETDEBITO.Active:=True;
TBDEBITO.Active:=True;
TBESTOQUE.Active:=True;
TBVENDEDOR.Active:=True;
TBVENDA.Active:=True;
TBUSUARIO.Active:=True;
TBDETVENDA.Active:=True;
TBCAIXA.Active:=True;
TBCOMICAO.Active:=True;
TBCONFIG.Active:=True;
TBPAGAMENTO.Active:=True;
TBRETORNO.Active:= True;
TAB_CEST.Active:= True;
TBTIPI.Active:= True;

end;

procedure TDMLOJA.DataModuleDestroy(Sender: TObject);
begin
TBTIPI.Active:= False;
TAB_CEST.Active:=  False;
TBRETORNO.Active:= False;
TBCLIENTE.Active:=False;
TBDETDEBITO.Active:=False;
TBDEBITO.Active:=False;
TBESTOQUE.Active:=False;
TBVENDEDOR.Active:=False;
TBVENDA.Active:=False;
TBUSUARIO.Active:=False;
TBDETVENDA.Active:=False;
TBCAIXA.Active:=False;
TBCOMICAO.Active:=False;
TBCONFIG.Active:=False;
TBPAGAMENTO.Active:=False;
end;

procedure TDMLOJA.TBCAIXAAfterDelete(DataSet: TDataSet);
begin
TBCAIXA.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBCAIXAAfterPost(DataSet: TDataSet);
begin
TBCAIXA.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBCLIENTEAfterDelete(DataSet: TDataSet);
begin
TBCLIENTE.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBCLIENTEAfterPost(DataSet: TDataSet);
begin
TBCLIENTE.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBCOMICAOAfterDelete(DataSet: TDataSet);
begin
TBCOMICAO.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBCOMICAOAfterPost(DataSet: TDataSet);
begin
TBCOMICAO.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBCONFIGAfterDelete(DataSet: TDataSet);
begin
TBCONFIG.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBCONFIGAfterPost(DataSet: TDataSet);
begin
TBCONFIG.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBDEBITOAfterDelete(DataSet: TDataSet);
begin
TBDEBITO.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBDEBITOAfterPost(DataSet: TDataSet);
begin
TBDEBITO.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBDETDEBITOAfterDelete(DataSet: TDataSet);
begin
TBDETDEBITO.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBDETDEBITOAfterPost(DataSet: TDataSet);
begin
TBDETDEBITO.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBDETVENDAAfterDelete(DataSet: TDataSet);
begin
TBDETVENDA.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBDETVENDAAfterPost(DataSet: TDataSet);
begin
TBDETVENDA.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBESTOQUEAfterDelete(DataSet: TDataSet);
begin
TBESTOQUE.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBESTOQUEAfterPost(DataSet: TDataSet);
begin
TBESTOQUE.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBPAGAMENTOAfterDelete(DataSet: TDataSet);
begin
TBPAGAMENTO.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBPAGAMENTOAfterPost(DataSet: TDataSet);
begin
TBPAGAMENTO.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBRETORNOAfterDelete(DataSet: TDataSet);
begin
TBRETORNO.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBRETORNOAfterPost(DataSet: TDataSet);
begin
TBRETORNO.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBVENDAAfterDelete(DataSet: TDataSet);
begin
TBVENDA.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBVENDAAfterPost(DataSet: TDataSet);
begin
TBVENDA.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBVENDEDORAfterDelete(DataSet: TDataSet);
begin
TBVENDEDOR.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

procedure TDMLOJA.TBVENDEDORAfterPost(DataSet: TDataSet);
begin
TBVENDEDOR.ApplyUpdates;
//TSLOJA.CommitRetaining;
salvadados;
end;

end.
