unit UnFrmpainel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, jpeg, ComCtrls;
      Const
  InputBoxMessage = WM_USER + 200;

type

  TFRMPAINEL = class(TForm)
    MainMenu1: TMainMenu;
    NFCe1: TMenuItem;
    Impressora1: TMenuItem;
    DetectarImpressora1: TMenuItem;
    estarImpressora1: TMenuItem;
    Contingncia1: TMenuItem;
    VerificarArquivos1: TMenuItem;
    EnviarContingncia1: TMenuItem;
    Caixa1: TMenuItem;
    ExtratoMovimento1: TMenuItem;
    OutrosMtodos1: TMenuItem;
    AjustarDatHora1: TMenuItem;
    Servidor1: TMenuItem;
    ReImprimiraUltimaNFCe1: TMenuItem;
    Cadastros1: TMenuItem;
    CadastrodeProdutos1: TMenuItem;
    NotasEmitidas1: TMenuItem;
    Adminstrador1: TMenuItem;
    Configurae1: TMenuItem;
    ConsultarInformaosobreanota1: TMenuItem;
    AvisoErroNFCe1: TMenuItem;
    StatusBar1: TStatusBar;
    N1: TMenuItem;
    RelatriodeNotasEmitidasPeriodo1: TMenuItem;
    procedure DetectarImpressora1Click(Sender: TObject);
    procedure estarImpressora1Click(Sender: TObject);
    procedure VerificarArquivos1Click(Sender: TObject);
    procedure EnviarContingncia1Click(Sender: TObject);
    procedure ExtratoMovimento1Click(Sender: TObject);
    procedure AjustarDatHora1Click(Sender: TObject);
    procedure Servidor1Click(Sender: TObject);
    procedure ReImprimiraUltimaNFCe1Click(Sender: TObject);
    procedure CadastrodeProdutos1Click(Sender: TObject);
    procedure NotasEmitidas1Click(Sender: TObject);
    procedure Configurae1Click(Sender: TObject);
    procedure ConsultarInformaosobreanota1Click(Sender: TObject);
    procedure AvisoErroNFCe1Click(Sender: TObject);
    procedure RelatriodeNotasEmitidasPeriodo1Click(Sender: TObject);
  private
   procedure InputBoxSetPasswordChar(var Msg: TMessage); message InputBoxMessage;

    { Private declarations }
  public
    { Public declarations }
     iRetorno: Integer;
  end;

var
  FRMPAINEL: TFRMPAINEL;

implementation

uses UnFrmpdv, UnFrmmenurelcaixa, Unfrmcadproduto, Unfrmmtcestoque,
  UnFrmmtcvendas, UnFrmconfig, UnFrmretornainformacao, UnDrmmenurelnotas;

{$R *.dfm}


procedure tfrmpainel.InputBoxSetPasswordChar(var Msg: TMessage);
var
  hInputForm, hEdit: HWND;
begin
  hInputForm := Screen.Forms[0].Handle;
  if (hInputForm <> 0) then
  begin
    hEdit := FindWindowEx(hInputForm, 0, 'TEdit', nil);
    SendMessage(hEdit, EM_SETPASSWORDCHAR, Ord('*'), 0);
  end;
end;



procedure TFRMPAINEL.AjustarDatHora1Click(Sender: TObject);
begin
  iRetorno := eAjustarDataHora_NFCe_Daruma();
  frmpdv.TrataRetorno_NFCe(iRetorno);
end;

procedure TFRMPAINEL.AvisoErroNFCe1Click(Sender: TObject);
var
    StrCodAvisoErro: String;
    StrMsgAvisoErro: String;
begin
   StrCodAvisoErro:= StringOfChar(' ',4);
   StrMsgAvisoErro:= StringOfChar(' ',600);
   iRetorno:=rAvisoErro_NFCe_Daruma(StrCodAvisoErro, StrMsgAvisoErro);
   frmpdv.TrataRetorno_NFCe(iRetorno);
   Application.MessageBox( Pchar('C�digo Erro/Aviso = ['+pchar(Trim(StrCodAvisoErro))+'] ' +  #13 +
                                 'Mensagem Erro/Aviso =['+pchar(Trim(StrMsgAvisoErro))+'] '), 'DarumaFramework Retorno do M�todo', mb_ok);


end;

procedure TFRMPAINEL.CadastrodeProdutos1Click(Sender: TObject);
begin
FRMMTCPRODUTOS:= TFRMMTCPRODUTOS.Create(Self);
FRMMTCPRODUTOS.ShowModal;
end;

procedure TFRMPAINEL.Configurae1Click(Sender: TObject);
var
quant:integer;

begin
 PostMessage(Handle, InputBoxMessage, 0, 0);

quant:=strtoint(inputbox('('+'Senha de Acesso'+')','Digite a Senha de Acesso!:','0'));

if quant = 1984 then
BEGIN

       FRMCONFIG:= TFRMCONFIG.Create(Self);
       FRMCONFIG.ShowModal;
END
else
Application.MessageBox('Usuario n�o permitido!','Informa��o do Sistema',Mb_IconInformation);



end;

procedure TFRMPAINEL.ConsultarInformaosobreanota1Click(Sender: TObject);
begin
FRMRETORNAINFODANOTA:= TFRMRETORNAINFODANOTA.Create(Self);
FRMRETORNAINFODANOTA.ShowModal;
end;

procedure TFRMPAINEL.DetectarImpressora1Click(Sender: TObject);
var
   StrPorta: string;
   StrVelocidade: string;

begin
  StrPorta:= StringOfChar(' ',20);
  StrVelocidade:= StringOfChar(' ',20);

  iRetorno:= eBuscarPortaVelocidade_DUAL_DarumaFramework();

  if(iRetorno = 1) then
    begin
      iRetorno:= regRetornaValorChave_DarumaFramework('DUAL','Velocidade', StrVelocidade);
      iRetorno:= regRetornaValorChave_DarumaFramework('DUAL','PortaComunicacao', StrPorta);
      ShowMessage('Comunica��o estabelecida! Porta: ' + StrPorta +  ' Velocidade: ' + StrVelocidade);
    end
   else
    begin
      ShowMessage('Erro ao estabelecer comunica��o!');
    end



end;

procedure TFRMPAINEL.EnviarContingncia1Click(Sender: TObject);
var
    StrNumArq: String;
    iQtdDocsContingencia : Integer;
    StrCodAvisoErro: string;
    StrMsgAvisoErro: string;

begin
  StrNumArq:= InputBox('Enviar as Notas em ContingenciaOffline', 'Informe a quantidade de arquivos que deseja enviar (se 0, envia todos os arquivos):', '0');
  if (StrNumArq <> '') then
  begin
    iQtdDocsContingencia := StrToInt(StrNumArq);
    iRetorno := tEnviarContingenciaOffline_NFCe_Daruma(iQtdDocsContingencia);
    frmpdv.TrataRetorno_NFCe(iRetorno);



  end
  else
    Application.MessageBox('Opera��o cancelada pelo usu�rio!', 'DarumaFramework Retorno do M�todo', mb_ok);



end;

procedure TFRMPAINEL.estarImpressora1Click(Sender: TObject);
begin
iRetorno:=iImprimirTexto_DUAL_DarumaFramework('<bmp></bmp>Daruma Developers<l></l>'+
'CNPJ-00.000.000/0000-00   I.E-000000000000<l></l>'+
'Av. Shishima, Urbanova, S�o Jos� dos Campos-SP<l></l>'+
'------------------------------------------------<l></l>'+
'        DANFE NFC-e - Documento Auxiliar<l></l>'+
'              DOCUMENTO DE TESTE<l></l>'+
'  <b>N�o permite aproveitamento de cr�dito de ICMS</b><l></l>'+
'------------------------------------------------<l></l>'+
'<c>Item  Cod.   Descricao         Qtde Un   VlrUnit   VlrTot</c><l></l>'+
'------------------------------------------------<l></l>'+
'<c>001 123456789098765432  C           53.56 C X 5.25 281.19</c><l></l>'+
'<c>002 123456  Chinelo de dedo de teste para a impress�o da DANFE da NFCe dsaldsajdsalkjdsalkadsljkadsjlksdakjlsdakljdasjkladsjkdalsdakj500</c><l></l>'+
'<c>500                  Kg     X 62.30              31150.00</c><l></l>'+
'------------------------------------------------<l></l>'+
'QTD. TOTAL DE ITENS                          002<l></l>'+
'VALOR TOTAL R$                           5143.56<l></l>'+

'FORMA DE PAGAMENTO                    Valor Pago<l></l>'+
'Cheque                                     35.75<l></l>'+
'------------------------------------------------<l></l>'+
'Informa��o dos Tributos Totais Incidentes(Lei Federal 12.741/2012)                          1,00<l></l>' +
'------------------------------------------------<l></l>'+
'             AREA DE MENSAGEM FISCAL<l></l>'+
'<c>N�mero:00000089 S�rie:0 Emiss�o:00/00/2000 00:00:00 - Via<c><l></l>'+
'<c>                        consumidor</c><l></l>'+
'Consulte pela Chave de Acesso em: http://www.desenvolvedoresdaruma.com.br<l></l>'+
'                 CHAVE DE ACESSO<l></l>'+
'<c>  0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000</c><l></l>'+
'------------------------------------------------<l></l>'+
'                  CONSUMIDOR<l></l>'+
'      CNPJ/CPF/ID Estrangeiro - 00000000000<l></l>'+
'------------------------------------------------<l></l>'+
'         Consulta via leitor de QR Code<l></l>'+
'<ce><qrcode>http://www.desenvolvedoresdaruma.com.br</qrcode></ce><l></l>'+
'<c> Protocolo de Autoriza��o: 99999999 00/00/0000 00:00:00</c><sl>4</sl><gui></gui><l></l>', 0);

   case iRetorno of
    0: Application.MessageBox('[0] - Impressora desligada', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
    1: Application.MessageBox('[1] - Impress�o OK', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
    -1: Application.MessageBox('[-1] - Arquivo de formato inv�lido', 'Daruma DLL Framework',MB_OK + MB_ICONINFORMATION);
    -2: Application.MessageBox('[-2] - Arquivo Corrompido/ Erro de Estrutura', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
    -3: Application.MessageBox('[-3] - BMP n�o � monocrom�tico', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
    -4: Application.MessageBox('[-4] - Imagem possui compacta��o', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
    -8: Application.MessageBox('[-8] - N�o foi poss�vel localizar o arquivo', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
    -9: Application.MessageBox('[-9] - N�o foi poss�vel criar arquivo tempor�rio', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
    -10: Application.MessageBox('[-10] - Impressora n�o possui modo gr�fico', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
    -11: Application.MessageBox('[-11] - Impressora matricial, n�o permite esta impress�o', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
   else
    Application.MessageBox(pchar('Retorno n�o esperado: ['+ IntToStr(iRetorno)+']'), 'Daruma DLL Framework', mb_ok + 16);
   end;

end;

procedure TFRMPAINEL.ExtratoMovimento1Click(Sender: TObject);
begin
FRMMENURELCAIXA:= TFRMMENURELCAIXA.Create(Self);
FRMMENURELCAIXA.ShowModal;
end;

procedure TFRMPAINEL.NotasEmitidas1Click(Sender: TObject);
begin
FRMMTCVENDAS:= TFRMMTCVENDAS.Create(Self);
FRMMTCVENDAS.ShowModal;
end;

procedure TFRMPAINEL.ReImprimiraUltimaNFCe1Click(Sender: TObject);
var
    StrParam1: String;
    StrParam2: String;
    StrParam3: String;
begin
  StrParam1 :=''; // EDT_Param1.Text;
  StrParam2 :=''; //EDT_Param2.Text;
  StrParam3 :=''; //EDT_Param3.Text;

  iRetorno := iCFReImprimir_NFCe_Daruma(StrParam1, StrParam2, StrParam3);
  frmpdv.TrataRetorno_NFCe(iRetorno);



end;

procedure TFRMPAINEL.RelatriodeNotasEmitidasPeriodo1Click(Sender: TObject);
begin
 FRMMENURELNOTA:= TFRMMENURELNOTA.Create(Self);
 FRMMENURELNOTA.ShowModal;
end;

procedure TFRMPAINEL.Servidor1Click(Sender: TObject);
begin
  iRetorno:=rStatusWS_NFCe_Daruma();
  case iRetorno of
     1: Application.MessageBox('[1] - Comunica��o OK.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
     0: Application.MessageBox('[0] - Erro do m�todo.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
    -1: Application.MessageBox('[-1] - Falha na Comunica��o.', 'Light PDV',MB_OK + MB_ICONINFORMATION);
    -2: Application.MessageBox('[-2] - Chave do desenvolvedor inv�lida.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
    -5: Application.MessageBox('[-5] - Erro Gen�rico.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
    -8: Application.MessageBox('[-8] - Usu�rio n�o Autorizado.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
    -9: Application.MessageBox('[-9] - Usu�rio n�o Licenciado.', 'Light PDV', MB_OK + MB_ICONINFORMATION);
   else
    Application.MessageBox(pchar('Retorno n�o Esperado: ['+ IntToStr(iRetorno)+']'), 'Light PDV', mb_ok + 16);
   end;

end;

procedure TFRMPAINEL.VerificarArquivos1Click(Sender: TObject);
begin
  iRetorno := rNumDocsContingencia_NFCe_Daruma();
  Application.MessageBox( Pchar('Quantidade de Arquivos de Vendas: '+pchar(Trim(IntToStr(iRetorno)))), 'DarumaFramework Retorno do M�todo', mb_ok);

end;

end.
