unit Unfrmmtcestoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls;

type
  TFRMMTCPRODUTOS = class(TForm)
    Panel1: TPanel;
    SpeedButton8: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    DBText3: TDBText;
    GroupBox3: TGroupBox;
    DBText2: TDBText;
    GroupBox4: TGroupBox;
    DBText1: TDBText;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    Panel3: TPanel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMMTCPRODUTOS: TFRMMTCPRODUTOS;

implementation

uses Unfrmcadproduto, UnDmpdv, UnFrmlocalizarproduto;

{$R *.dfm}

procedure TFRMMTCPRODUTOS.DBGrid1DblClick(Sender: TObject);
begin
  FRMCADPRODUTO:= TFRMCADPRODUTO.Create(Self);

  FRMCADPRODUTO.editeditar.Text:= 'E';
  FRMCADPRODUTO.panelmostra.Caption:= 'Alterando Cadastro do Produto...';
  FRMCADPRODUTO.editprecocusto.Text:=     DMLOJA.TBESTOQUEPRECOCUSTO.AsString;
  FRMCADPRODUTO.editmargemlucro.Text:=    DMLOJA.TBESTOQUEPONCENTAGEN.AsString;
  FRMCADPRODUTO.editprecovenda.Text:=     DMLOJA.TBESTOQUEVLRVENDA.AsString;
  FRMCADPRODUTO.editdesconto.Text:=       DMLOJA.TBESTOQUEDESCONTOINDIVIDUAL.AsString;
  FRMCADPRODUTO.editlucro.Text:=          DMLOJA.TBESTOQUELUCRO.AsString;
  FRMCADPRODUTO.editprecopromocao.Text:=  DMLOJA.TBESTOQUEVLVENDAPROMOCAO.AsString;
  FRMCADPRODUTO.editdatai.Text:=          DMLOJA.TBESTOQUEDTINICIOPROMOCAO.AsString;
  FRMCADPRODUTO.editdataf.Text:=          DMLOJA.TBESTOQUEDTFIMPROMOCAO.AsString  ;
  FRMCADPRODUTO.editcritico.Text:=        DMLOJA.TBESTOQUEQTDMINIMA.AsString;
  FRMCADPRODUTO.editqtdcompra.Text:=      DMLOJA.TBESTOQUEQTDCOMPRADA.AsString ;
  FRMCADPRODUTO.editqtdvendas.Text:=      DMLOJA.TBESTOQUEQTDVENDIDA.AsString;
  FRMCADPRODUTO.editqtdestoque.Text:=     DMLOJA.TBESTOQUEQTDESTOQUE.AsString ;
  FRMCADPRODUTO.Editean.Text:=            DMLOJA.TBESTOQUEREFERENCIA.AsString  ;
  FRMCADPRODUTO.editdescricao.Text:=      DMLOJA.TBESTOQUEDESCRICAO.AsString ;
  FRMCADPRODUTO.editncm.Text:=            DMLOJA.TBESTOQUENCM.AsString;
  FRMCADPRODUTO.cbcfop.Text:=             DMLOJA.TBESTOQUECFOP.AsString;
  FRMCADPRODUTO.dbmedida.Text:=           DMLOJA.TBESTOQUEUNIDADE.AsString;
  FRMCADPRODUTO.dbcolecao.Text:=          DMLOJA.TBESTOQUECOLECAO.AsString;
  FRMCADPRODUTO.editfornecedor.text:=     DMLOJA.TBESTOQUEFORNECEDOR.AsString;
  FRMCADPRODUTO.editgrupo.text:=          DMLOJA.TBESTOQUEGRUPO.AsString;
  FRMCADPRODUTO.editsecao.text:=          DMLOJA.TBESTOQUESECAO.AsString;
  FRMCADPRODUTO.editsubgrupo.Text:=       DMLOJA.TBESTOQUESUBGRUPO.AsString;
  FRMCADPRODUTO.editmarca.text:=          DMLOJA.TBESTOQUEMARCA.AsString;
  FRMCADPRODUTO.editcest.text:=           DMLOJA.TBESTOQUENRCEST.AsString;
  FRMCADPRODUTO.ShowModal;
end;

procedure TFRMMTCPRODUTOS.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
{
if odd(DMLOJA.TBESTOQUE.RecNo) then
DBGrid1.Canvas.Brush.Color:= clmenubar
else
DBGrid1.Canvas.Brush.Color:= clcream;

TDbGrid(Sender).Canvas.font.Color:= clBlack;

if gdSelected in State then
with (Sender as TDBGrid).Canvas do
begin
Brush.Color := clSkyBlue;
FillRect(Rect);
Font.Style := [fsbold]
end;

TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
If DMLOJA.TBESTOQUECFOP.AsString = '5405' then // condi��o
DBGrid1.Canvas.Font.Color:= clGreen; // coloque aqui a cor desejada
DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
 }
end;

procedure TFRMMTCPRODUTOS.FormShow(Sender: TObject);
begin
DMLOJA.TBESTOQUE.Last;
end;

procedure TFRMMTCPRODUTOS.SpeedButton1Click(Sender: TObject);
begin
Close ();
end;

procedure TFRMMTCPRODUTOS.SpeedButton2Click(Sender: TObject);
begin

FRMCADPRODUTO:= TFRMCADPRODUTO.Create(Self);

FRMCADPRODUTO.editeditar.Text:= 'N';
FRMCADPRODUTO.panelmostra.Caption:= 'Cadastrando Novo Produto no Estoque...';
FRMCADPRODUTO.ShowModal;
end;

procedure TFRMMTCPRODUTOS.SpeedButton4Click(Sender: TObject);
begin

  FRMCADPRODUTO:= TFRMCADPRODUTO.Create(Self);

  FRMCADPRODUTO.editeditar.Text:= 'E';
  FRMCADPRODUTO.panelmostra.Caption:= 'Alterando Cadastro do Produto...';
  FRMCADPRODUTO.editprecocusto.Text:=     DMLOJA.TBESTOQUEPRECOCUSTO.AsString;
  FRMCADPRODUTO.editmargemlucro.Text:=    DMLOJA.TBESTOQUEPONCENTAGEN.AsString;
  FRMCADPRODUTO.editprecovenda.Text:=     DMLOJA.TBESTOQUEVLRVENDA.AsString;
  FRMCADPRODUTO.editdesconto.Text:=       DMLOJA.TBESTOQUEDESCONTOINDIVIDUAL.AsString;
  FRMCADPRODUTO.editlucro.Text:=          DMLOJA.TBESTOQUELUCRO.AsString;
  FRMCADPRODUTO.editprecopromocao.Text:=  DMLOJA.TBESTOQUEVLVENDAPROMOCAO.AsString;
  FRMCADPRODUTO.editdatai.Text:=          DMLOJA.TBESTOQUEDTINICIOPROMOCAO.AsString;
  FRMCADPRODUTO.editdataf.Text:=          DMLOJA.TBESTOQUEDTFIMPROMOCAO.AsString  ;
  FRMCADPRODUTO.editcritico.Text:=        DMLOJA.TBESTOQUEQTDMINIMA.AsString;
  FRMCADPRODUTO.editqtdcompra.Text:=      DMLOJA.TBESTOQUEQTDCOMPRADA.AsString ;
  FRMCADPRODUTO.editqtdvendas.Text:=      DMLOJA.TBESTOQUEQTDVENDIDA.AsString;
  FRMCADPRODUTO.editqtdestoque.Text:=     DMLOJA.TBESTOQUEQTDESTOQUE.AsString ;
  FRMCADPRODUTO.Editean.Text:=            DMLOJA.TBESTOQUEREFERENCIA.AsString  ;
  FRMCADPRODUTO.editdescricao.Text:=      DMLOJA.TBESTOQUEDESCRICAO.AsString ;
  FRMCADPRODUTO.editncm.Text:=            DMLOJA.TBESTOQUENCM.AsString;
  FRMCADPRODUTO.cbcfop.Text:=             DMLOJA.TBESTOQUECFOP.AsString;
  FRMCADPRODUTO.dbmedida.Text:=           DMLOJA.TBESTOQUEUNIDADE.AsString;
  FRMCADPRODUTO.dbcolecao.Text:=          DMLOJA.TBESTOQUECOLECAO.AsString;
  FRMCADPRODUTO.editfornecedor.text:=     DMLOJA.TBESTOQUEFORNECEDOR.AsString;
  FRMCADPRODUTO.editgrupo.text:=          DMLOJA.TBESTOQUEGRUPO.AsString;
  FRMCADPRODUTO.editsecao.text:=          DMLOJA.TBESTOQUESECAO.AsString;
  FRMCADPRODUTO.editsubgrupo.Text:=       DMLOJA.TBESTOQUESUBGRUPO.AsString;
  FRMCADPRODUTO.editmarca.text:=          DMLOJA.TBESTOQUEMARCA.AsString;
  FRMCADPRODUTO.editcest.text:=           DMLOJA.TBESTOQUENRCEST.AsString;
  FRMCADPRODUTO.ShowModal;
end;

procedure TFRMMTCPRODUTOS.SpeedButton6Click(Sender: TObject);
begin
 if Application.MessageBox('Confirma a Exclus�o do Produto?','Comfirma��o',MB_YESNO + MB_ICONQUESTION)= IDYES then

  begin
   DMLOJA.TBESTOQUE.Delete;
   Application.MessageBox('Produto Deletado do Estoque!','Informa��o do Sistema',Mb_IconInformation);


  end
else
 Begin
  Application.MessageBox('Exclus�o cancelada!','Informa��o do Sistema',Mb_IconInformation);
  Exit
 end;
end;

procedure TFRMMTCPRODUTOS.SpeedButton8Click(Sender: TObject);
begin
FRMLOCALIZARPRODUTO:= TFRMLOCALIZARPRODUTO.Create(Self);
FRMLOCALIZARPRODUTO.Tabestoque.Show;
FRMLOCALIZARPRODUTO.ShowModal;
end;

end.
