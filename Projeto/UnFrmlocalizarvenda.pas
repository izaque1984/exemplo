unit UnFrmlocalizarvenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, Mask, DBCtrls, TFlatEditUnit;

type
  TFRMLOCALIZARVENDA = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    rb: TRadioGroup;
    Panel3: TPanel;
    GroupBox4: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit3: TDBEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Edit1: TFlatEdit;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMLOCALIZARVENDA: TFRMLOCALIZARVENDA;

implementation

uses UnDmpdv, UnDmconsulta;

{$R *.dfm}

procedure TFRMLOCALIZARVENDA.DBGrid1DblClick(Sender: TObject);
begin
DMLOJA.TBVENDA.Locate('minuta',DMCONSULTA.IBCONSULTAVENDA.FieldByName('minuta').AsInteger,[]);
Close;
end;

procedure TFRMLOCALIZARVENDA.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tSql: String;
   
     consulta: String;
begin

 if rb.ItemIndex=0 then     //Código
 consulta:='SELECT* FROM TBVENDA WHERE VENDA_NMCLIENTE LIKE '''+Edit1.text+'%'+''''
 ELSE
  consulta:='SELECT* FROM TBVENDA WHERE NR_DANOTA LIKE '''+Edit1.text+'%'+'''';




  DMCONSULTA.IBCONSULTAVENDA.Active:= False;
  tsql:=consulta;

  DMCONSULTA.IBCONSULTAVENDA.SQL.Clear;
  DMCONSULTA.IBCONSULTAVENDA.SQL.Add(tsql);
  DMCONSULTA.IBCONSULTAVENDA.Active:= True;

end;

end.
