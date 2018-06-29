unit UnFrmlocalizacliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, TFlatEditUnit, Buttons, DBCtrls, Grids, DBGrids;

type
  TFRMLOCALIZACLIENTE = class(TForm)
    DBGrid4: TDBGrid;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    DBText1: TDBText;
    GroupBox3: TGroupBox;
    DBText2: TDBText;
    GroupBox4: TGroupBox;
    DBText3: TDBText;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    GroupBox1: TGroupBox;
    Edit1: TFlatEdit;
    RadioGroup1: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid4DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMLOCALIZACLIENTE: TFRMLOCALIZACLIENTE;

implementation

uses UnDmconsulta, UnFrmcadcrediario;

{$R *.dfm}

procedure TFRMLOCALIZACLIENTE.DBGrid4DblClick(Sender: TObject);
begin
frmcadcrediario.editcodigo.Text:= DMCONSULTA.IBCONSULTACLIENTECLI_CODIGO.AsString;
Close;
end;

procedure TFRMLOCALIZACLIENTE.Edit1Change(Sender: TObject);
var
 sqlc:string;
// voz:OleVariant;
begin

if RadioGroup1.ItemIndex = 0 then

Begin

 if Length(edit1.Text)>0 then
 begin
 sqlc:= 'select * from TBCLIENTE where upper(CLI_NOME)like''%'+UpperCase(Edit1.Text)+'%''';
// voz:=CreateOleObject('SAPI.spVoice');
 //voz.speak(Edit1.Text, 0);

 end
  else
    sqlc:='select * from TBCLIENTE';

  With  DMCONSULTA.IBCONSULTACLIENTE do
    begin
      Close;
      SQL.Clear;
      SQL.Add(sqlc);
      Prepare;
      Open;
      end;

End;

 if RadioGroup1.ItemIndex = 1 then

Begin

 if Length(edit1.Text)>0 then
 begin
 sqlc:= 'select * from TBCLIENTE where upper(CLI_CPF)like''%'+UpperCase(Edit1.Text)+'%''';
// voz:=CreateOleObject('SAPI.spVoice');
 //voz.speak(Edit1.Text, 0);

 end
  else
    sqlc:='select * from TBCLIENTE';

  With DMCONSULTA.IBCONSULTACLIENTE do
    begin
      Close;
      SQL.Clear;
      SQL.Add(sqlc);
      Prepare;
      Open;
      end;

End;

end;

procedure TFRMLOCALIZACLIENTE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = Vk_Escape then Close;
end;

procedure TFRMLOCALIZACLIENTE.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
end;

end.
