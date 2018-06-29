unit UnDrmmenurelnotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls;

type
  TFRMMENURELNOTA = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    btnImprimir: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    DATAI: TMaskEdit;
    GroupBox3: TGroupBox;
    DATAF: TMaskEdit;
    ComboBox1: TComboBox;
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMMENURELNOTA: TFRMMENURELNOTA;

implementation

uses UnDmconsulta, UnFrmrelnota;

{$R *.dfm}

procedure TFRMMENURELNOTA.btnImprimirClick(Sender: TObject);
begin
IF DATAI.Text=''THEN
     IF DATAF.Text=''THEN
     begin
      Application.MessageBox('Os Campos data não podem ser nulos!','Informação do Sistema',Mb_IconInformation);
      exit
     end;
      if ComboBox1.Text = '' then
      begin
      Application.MessageBox('Selecione o Tipo de Pagamanto para obter o Relatório!','Informação do Sistema',Mb_IconInformation);
      exit
     end;

  if ComboBox1.Text = 'Rejeitado' then


   begin

    DMCONSULTA.IBCONSULTAVENDA.Close;

    DMCONSULTA.IBCONSULTAVENDA.SQL.CLEAR;
    DMCONSULTA.IBCONSULTAVENDA.SQL.Add('select * from TBVENDA where DATA between:datai and:dataf');
    DMCONSULTA.IBCONSULTAVENDA.ParamByName('DATAI').AsDate:=STRTODATE(DATAI.Text);
    DMCONSULTA.IBCONSULTAVENDA.ParamByName('DATAF').AsDate:=STRTODATE(DATAF.Text);
    DMCONSULTA.IBCONSULTAVENDA.Open;
    FRMRELNOTA:=TFRMRELNOTA.Create(Self);
    FRMRELNOTA.qrprelnota.preview;

   end;
   if ComboBox1.Text = 'Autorizado' then
   begin
    //
    DMCONSULTA.IBCONSULTAVENDA.Close;
    DMCONSULTA.IBCONSULTAVENDA.SQL.CLEAR;
    DMCONSULTA.IBCONSULTAVENDA.SQL.Add('select * from TBVENDA where DATA between:datai and:dataf and STATUSDANOTA =:FPAG');
    DMCONSULTA.IBCONSULTAVENDA.ParamByName('DATAI').AsDate:=STRTODATE(DATAI.Text);
    DMCONSULTA.IBCONSULTAVENDA.ParamByName('DATAF').AsDate:=STRTODATE(DATAF.Text);
    DMCONSULTA.IBCONSULTAVENDA.ParamByName('FPAG').AsString:=ComboBox1.Text;

    DMCONSULTA.IBCONSULTAVENDA.Open;
    FRMRELNOTA:=TFRMRELNOTA.Create(Self);
    FRMRELNOTA.qrprelnota.preview;
   end;
end;

end.
