unit UnFrmretornainformacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFRMRETORNAINFODANOTA = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    EDT_Inicio: TEdit;
    EDT_Fim: TEdit;
    EDT_Chave: TEdit;
    MEMO_InfoRetorno: TMemo;
    BR_Enviar: TButton;
    BT_Fechar: TButton;
    CB_TipoIntervalo: TComboBox;
    EDT_Serie: TEdit;
    EDT_Indice: TEdit;
    procedure BR_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    iRetorno: Integer;
  end;

var
  FRMRETORNAINFODANOTA: TFRMRETORNAINFODANOTA;

implementation

uses UnFrmpdv;

{$R *.dfm}

procedure TFRMRETORNAINFODANOTA.BR_EnviarClick(Sender: TObject);
 var
  strTipo: String;
  strInicio:String;
  strFim: String;
  strSerie: String;
  strChave: String;
  strIndice: String;
  strInfo: String;

begin
MEMO_InfoRetorno.Clear();
strTipo:= CB_TipoIntervalo.Text;
strInicio:= EDT_Inicio.Text;
strFim:= EDT_Fim.Text;
strSerie:=EDT_Serie.Text;
strChave:=EDT_Chave.Text;
strIndice:=EDT_Indice.Text;
strInfo:=StringOfChar(#0,5000);
iRetorno:= rRetornarInformacao_NFCe_Daruma(strTipo, strInicio, strFim, strSerie, strChave, strIndice, strInfo);
frmpdv.TrataRetorno_NFCe(iRetorno);
MEMO_InfoRetorno.Lines.Add('Infos:['+ Trim(strInfo)+']');

end;

end.
