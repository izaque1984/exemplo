unit UnFrmidcliente;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TFlatEditUnit, Buttons, TFlatGroupBoxUnit;

type
  TFRMIDCLIENTE = class(TForm)
    FlatGroupBox1: TFlatGroupBox;
    editcpf: TFlatEdit;
    editnome: TFlatEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure editnomeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMIDCLIENTE: TFRMIDCLIENTE;

implementation

uses UnFrmpdv;

{$R *.dfm}


procedure TFRMIDCLIENTE.editnomeExit(Sender: TObject);
begin
if (editcpf.Text='') or (editnome.Text='')  then
begin
 Application.MessageBox('Os Campos n�o podem ser nulos!','Informa��o do Sistema',Mb_IconInformation);
 Exit
end;


FRMPDV.EDT_CPF.Text       := editcpf.Text;
FRMPDV.EDT_Nome.Text      := editnome.Text;
FRMPDV.lblcliente.Caption := editnome.Text;
FRMPDV.lblcpf.Caption     := editcpf.Text;

Close;
end;

procedure TFRMIDCLIENTE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = Vk_Escape then Close;
if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFRMIDCLIENTE.FormShow(Sender: TObject);
begin
editcpf.SetFocus;
end;

end.
