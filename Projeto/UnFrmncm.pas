unit UnFrmncm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, TFlatEditUnit, TFlatGroupBoxUnit;

type
  TFRMNCM = class(TForm)
    Panel1: TPanel;
    FlatGroupBox1: TFlatGroupBox;
    editcodigo: TFlatEdit;
    rb: TRadioGroup;
    Panel2: TPanel;
    FlatGroupBox3: TFlatGroupBox;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure editcodigoChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure editcodigoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMNCM: TFRMNCM;

implementation

uses UnDmconsulta, Unfrmcadproduto;

{$R *.dfm}

procedure TFRMNCM.DBGrid1DblClick(Sender: TObject);
begin
FRMCADPRODUTO.editncm.Text:= DMCONSULTA.qyncmncm.Text;
Close;
FRMCADPRODUTO.editncm.SetFocus;
end;

procedure TFRMNCM.editcodigoChange(Sender: TObject);
var
     sqlc:string;
     tSql: String;
     consulta: String;
begin

if rb.ItemIndex=0 then     //Código
    //Código
 begin

   consulta:='SELECT* FROM TIPI WHERE NCM LIKE '''+editcodigo.text+'%'+'''' ;
   DMCONSULTA.qyncm.Active:= False;
   tsql:=consulta;

   DMCONSULTA.qyncm.SQL.Clear;
   DMCONSULTA.qyncm.SQL.Add(tsql);
   DMCONSULTA.qyncm.Active:= True;




 end;



//-----------------
  {

 sqlc:= 'select * from TIPI where upper(NCM)like''%'+UpperCase(editcodigo.Text)+'%''';
// voz:=CreateOleObject('SAPI.spVoice');
 //voz.speak(Edit1.Text, 0);

 end
  else
    sqlc:='select * from TIPI';

  With   DMCONSULTA.qyncm do
    begin
      Close;
      SQL.Clear;
      SQL.Add(sqlc);
      Prepare;
      Open;
      end;
          }
 if rb.ItemIndex=1 then     //Código
    //Código
 begin

 sqlc:= 'select * from TIPI where upper(DESCRICAO)like''%'+UpperCase(editcodigo.Text)+'%''';
// voz:=CreateOleObject('SAPI.spVoice');
 //voz.speak(Edit1.Text, 0);

 end
  else
    sqlc:='select * from TIPI';

  With   DMCONSULTA.qyncm do
    begin
      Close;
      SQL.Clear;
      SQL.Add(sqlc);
      Prepare;
      Open;
      end;








end;

procedure TFRMNCM.editcodigoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
     sqlc:string;
     tSql: String;
     consulta: String;
begin

if rb.ItemIndex=0 then     //Código
    //Código
 begin

   consulta:='SELECT* FROM TIPI WHERE NCM LIKE '''+editcodigo.text+'%'+'''' ;
   DMCONSULTA.qyncm.Active:= False;
   tsql:=consulta;

   DMCONSULTA.qyncm.SQL.Clear;
   DMCONSULTA.qyncm.SQL.Add(tsql);
   DMCONSULTA.qyncm.Active:= True;




 end;

end;

procedure TFRMNCM.FormShow(Sender: TObject);
begin
editcodigo.SetFocus;
end;

end.
