unit UnFrmpagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Grids, DBGrids, TFlatEditUnit, StdCtrls,
  TFlatComboBoxUnit, Buttons;

type
  TFRMPAGAMENTO = class(TForm)
    Panel9: TPanel;
    logonfc: TImage;
    gbforma: TGroupBox;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    Editsubtotal: TEdit;
    Editcomicao: TEdit;
    Editnomevendedor: TEdit;
    Editcodvendedor: TEdit;
    ComboBox1: TFlatComboBox;
    Editvalorpago: TFlatEdit;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    Label9: TLabel;
    Edittroco: TEdit;
    Panel3: TPanel;
    Label1: TLabel;
    Edittotaldavenda: TEdit;
    Panel4: TPanel;
    Label4: TLabel;
    Edittotalareceber: TEdit;
    Panel5: TPanel;
    Label3: TLabel;
    Editacrescimo: TEdit;
    Panel6: TPanel;
    Label2: TLabel;
    Editdesconto: TEdit;
    Panel7: TPanel;
    Label6: TLabel;
    Editsaldorestante: TEdit;
    Panel8: TPanel;
    Label5: TLabel;
    Edittotalrecebido: TEdit;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Editnumero: TFlatEdit;
    panelenviar: TPanel;
    MEMO_InfoRetorno: TMemo;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure limpapagamento;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure salvaretorno;
    procedure EditdescontoExit(Sender: TObject);
    procedure EditdescontoEnter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure EditvalorpagoKeyPress(Sender: TObject; var Key: Char);
    procedure EditnumeroExit(Sender: TObject);
    procedure EditvalorpagoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    iRetorno: Integer;
  end;

var
    FRMPAGAMENTO: TFRMPAGAMENTO;
    confi,Int_Retorno: integer;
    StrCodAvisoErro: string;
    StrMsgAvisoErro: string;
    StrInfoEstendidaprotocolo,StrInfoEstendidachave, StrInfoEstendidanrnota,StrInfoEstendidaserie: String;



implementation

uses UnFrmpdv, UnDmpdv, UnDmconsulta, UnFrmcadcrediario, UnFrmimprimir;

{$R *.dfm}
procedure TFRMPAGAMENTO.salvaretorno;
begin
   DMLOJA.TBRETORNO.Append;

   DMLOJA.TBRETORNOCODIGO.AsString     :=  StrCodAvisoErro;
   DMLOJA.TBRETORNOINFORETORNO.AsString:=  StrMsgAvisoErro;
   DMLOJA.TBRETORNODATA.AsString       :=  DateToStr(Date());
   DMLOJA.TBRETORNOHORA.AsString       :=  TimeToStr(Time());
   DMLOJA.TBRETORNONRNOTA.AsString     :=  StrInfoEstendidanrnota;

  DMLOJA.TBRETORNO.Post;
end;

procedure TFRMPAGAMENTO.limpapagamento;
begin
 ComboBox1.Text:='';
 Editvalorpago.Clear;
 Editdesconto.Clear;
 Editacrescimo.Clear;
 Edittotalareceber.Clear;
 Edittotalrecebido.Clear;
 Editsaldorestante.Clear;
 Edittroco.Clear;
 gbforma.Enabled:=True;


end;

procedure TFRMPAGAMENTO.SpeedButton1Click(Sender: TObject);
var
 totalrecebido:string;
 StrFormaPagto: string;
 StrValor: string;
 valorcomicao: Currency;
 credi: Currency;



begin


if tipodavenda = 'NFC' then

BEGIN


   If (ComboBox1.Text = 'DINHEIRO') and (Editvalorpago.text <= Edittotaldavenda.Text) Then
 begin

 // Frmtroco:=TFrmtroco.Create(Self);
 // Frmtroco.ShowModal;
 end;

  If ComboBox1.Text='' Then
 begin
  Application.MessageBox('Digite o Código da Forma de Pagamento!','Informação do Sistema',Mb_IconInformation);
  Editnumero.SetFocus;
  exit;
 end;

 If Editvalorpago.Text='' Then
 begin
  Application.MessageBox('Digite um valor para recebimento!','Informação do Sistema',Mb_IconInformation);
  exit;
  Editvalorpago.SetFocus;
 end;

   totalrecebido:=Edittotalrecebido.Text;

   Edittotalrecebido.Text:= CurrToStr (StrToCurr(totalrecebido) + StrToCurr(Editvalorpago.Text));
   Editsaldorestante.Text := CurrToStr(StrToCurr(Edittotaldavenda.Text) - StrToCurr(Edittotalrecebido.Text));


 if StrToCurr(Edittotalrecebido.Text) >= StrToCurr(Edittotaldavenda.Text)  then
    begin
      gbforma.Enabled:=False;


      confi:= 1;

      DMLOJA.TBPAGAMENTO.Append;
      DMLOJA.TBPAGAMENTODATAVENDA.AsString:= DateToStr(Date());
      DMLOJA.TBPAGAMENTOMINUTA.AsInteger:=  StrToInt(Label10.Caption);
//      dmpdv.TBPAGAMENTOVALORPAGO.AsCurrency:= StrToFloat(Editvalorpago.Text);
      DMLOJA.TBPAGAMENTOVALORPAGO.AsString:= Editvalorpago.Text;
      DMLOJA.TBPAGAMENTOVALORVENDA.AsString:= Edittotaldavenda.Text;
      DMLOJA.TBPAGAMENTOFORMADOPAGAMENTO.AsString:=ComboBox1.Text;
      DMLOJA.TBPAGAMENTOVALORDESCONTO.AsString:= Editdesconto.Text;
      DMLOJA.TBPAGAMENTOSUBTOTAL.AsString:= Editsubtotal.Text;
      DMLOJA.TBPAGAMENTO.Post;

          //-----------------------------INICIO CAIXA-----------------------------------------------------------
      {
      if ComboBox1.Text <> 'CRÉDITO LOJA' then

                      begin
                          DMLOJA.TBCAIXA.Append;
                          DMLOJA.TBCAIXAMINUTA.AsInteger:=StrToInt(Label10.Caption);
                          DMLOJA.TBCAIXAVL_ENTRADA.AsString:= Editvalorpago.Text;
                          DMLOJA.TBCAIXADT_ENTRADA.AsString:=DateToStr(Date());
                          DMLOJA.TBCAIXADO_TIPO.AsString:=ComboBox1.Text;
                          // DMLOJA.TBCAIXAVL_DESCONTO.AsCurrency:=(DMLOJA.T_VENDAVALOR_VENDA.AsCurrency*DMLOJA.T_VENDACOMI_VENDEDOR.AsCurrency)/100;
                          DMLOJA.TBCAIXAVL_RECEBIDO.AsString:=Editvalorpago.Text;
                          DMLOJA.TBCAIXAREFERENTE.AsString:= 'Venda';
                          //DMLOJA.TBCAIXAVL_RECEBIDO.AsCurrency:=DMLOJA.T_VENDAVALOR_VENDA.AsCurrency;
                          DMLOJA.TBCAIXA.Post;

                       end;

                       }


                        if DMLOJA.TBCONFIGCOMICAO.AsString = 'SIM' then
                         begin
                          valorcomicao:= (StrToCurr(Edittotaldavenda.Text)) * StrToCurr(Editcomicao.Text)/100;

                          DMLOJA.TBCOMICAO.Append;

                          DMLOJA.TBCOMICAOMINUTA.AsString:= Label10.Caption;
                          DMLOJA.TBCOMICAOCOM_COD_VENDEDOR.AsString:=Editcodvendedor.Text;
                          DMLOJA.TBCOMICAOCOM_NM_VENDEDOR.AsString:=Editnomevendedor.Text;
                          DMLOJA.TBCOMICAOCOM_DTA_ENTRADA.AsString:=DateToStr(Date());
                          DMLOJA.TBCOMICAOCOM_DO_TIPO.AsString:= 'VENDA A VISTA';
                          DMLOJA.TBCOMICAOVL_ENTRADA.AsString:=Edittotaldavenda.Text;
                          DMLOJA.TBCOMICAOCOM_VL_COMICAO.AsCurrency:= valorcomicao;


                          // DMVENDA.TBCOMICAONR_PEDIDO.AsInteger:=DMVENDA.TBVENDANR_PEDIDO_VENDA.AsInteger;
                          DMLOJA.TBCOMICAO.Post;

                      end;


     //----------------------------FIM CAIXA-----------------------------------------------------------------------







      StrFormaPagto:=ComboBox1.Text;
      StrValor:=Editvalorpago.Text;

      // iRetorno:=aCFTotalizar_NFCe_Daruma(StrTipoDescAcres,StrValorDescAcres);
      iRetorno:= aCFEfetuarPagamento_NFCe_Daruma(StrFormaPagto, StrValor);
      //frmpdv.TrataRetorno_NFCe(iRetorno);

      SpeedButton2.Click;


    end
    else
    begin

      confi:= 1;
      StrFormaPagto:=ComboBox1.Text;
      StrValor:=Editvalorpago.Text;

      iRetorno:=aCFEfetuarPagamento_NFCe_Daruma(StrFormaPagto, StrValor);
    //  frmpdv.TrataRetorno_NFCe(iRetorno);

     // Editvalorpago.SetFocus;


         if ComboBox1.Text <> 'CRÉDITO LOJA' then

                      begin
                          DMLOJA.TBCAIXA.Append;
                          DMLOJA.TBCAIXAMINUTA.AsInteger:=StrToInt(Label10.Caption);
                          DMLOJA.TBCAIXAVL_ENTRADA.AsString:= Editvalorpago.Text;
                          DMLOJA.TBCAIXADT_ENTRADA.AsString:=DateToStr(Date());
                          DMLOJA.TBCAIXADO_TIPO.AsString:=ComboBox1.Text;
                          // DMLOJA.TBCAIXAVL_DESCONTO.AsCurrency:=(DMLOJA.T_VENDAVALOR_VENDA.AsCurrency*DMLOJA.T_VENDACOMI_VENDEDOR.AsCurrency)/100;
                          DMLOJA.TBCAIXAVL_RECEBIDO.AsString:=Editvalorpago.Text;
                          //DMLOJA.TBCAIXAVL_RECEBIDO.AsCurrency:=DMLOJA.T_VENDAVALOR_VENDA.AsCurrency;
                          DMLOJA.TBCAIXA.Post;


                      end;




      DMLOJA.TBPAGAMENTO.Append;
      DMLOJA.TBPAGAMENTODATAVENDA.AsString:= DateToStr(Date());
      DMLOJA.TBPAGAMENTOMINUTA.AsInteger:=  StrToInt(Label10.Caption);
      DMLOJA.TBPAGAMENTOVALORPAGO.AsCurrency:= StrToFloat(Editvalorpago.Text);
      DMLOJA.TBPAGAMENTOVALORVENDA.AsCurrency:= StrToFloat(Edittotaldavenda.Text);
      DMLOJA.TBPAGAMENTOFORMADOPAGAMENTO.AsString:=ComboBox1.Text;
      DMLOJA.TBPAGAMENTOVALORDESCONTO.AsCurrency:= StrToFloat(Editdesconto.Text);
      DMLOJA.TBPAGAMENTOSUBTOTAL.AsCurrency:= StrToFloat(Editsubtotal.Text);

      Editvalorpago.Clear;
      ComboBox1.Text:= '';
      Editnumero.Clear;
      Editnumero.SetFocus;


    end;
END;// FIM TIPO DE VENDA NFCE

  if tipodavenda = 'PEDIDO' then

begin
//


   If (ComboBox1.Text = 'DINHEIRO') and (Editvalorpago.text <= Edittotaldavenda.Text) Then
 begin

  //Frmtroco:=TFrmtroco.Create(Self);
  //Frmtroco.ShowModal;
 end;

  If ComboBox1.Text='' Then
 begin
  Application.MessageBox('Selecione a Forma de Pagamento!','Informação do Sistema',Mb_IconInformation);
  Editnumero.SetFocus;
  exit;
 end;

 If Editvalorpago.Text='' Then
 begin
  Application.MessageBox('Digite um valor para recebimento!','Informação do Sistema',Mb_IconInformation);
  exit;
  Editvalorpago.SetFocus;
 end;

   totalrecebido:=Edittotalrecebido.Text;

   Edittotalrecebido.Text:= CurrToStr (StrToCurr(totalrecebido) + StrToCurr(Editvalorpago.Text));
   Editsaldorestante.Text := CurrToStr(StrToCurr(Edittotaldavenda.Text) - StrToCurr(Edittotalrecebido.Text));


 if StrToCurr(Edittotalrecebido.Text) >= StrToCurr(Edittotaldavenda.Text)  then
    begin
      gbforma.Enabled:=False;


      confi:= 1;

      DMLOJA.TBPAGAMENTO.Append;
      DMLOJA.TBPAGAMENTODATAVENDA.AsString:= DateToStr(Date());
      DMLOJA.TBPAGAMENTOMINUTA.AsInteger:=  StrToInt(Label10.Caption);
//      dmpdv.TBPAGAMENTOVALORPAGO.AsCurrency:= StrToFloat(Editvalorpago.Text);
      DMLOJA.TBPAGAMENTOVALORPAGO.AsString:= Editvalorpago.Text;
      DMLOJA.TBPAGAMENTOVALORVENDA.AsString:= Edittotaldavenda.Text;
      DMLOJA.TBPAGAMENTOFORMADOPAGAMENTO.AsString:=ComboBox1.Text;
      DMLOJA.TBPAGAMENTOVALORDESCONTO.AsString:= Editdesconto.Text;
      DMLOJA.TBPAGAMENTOSUBTOTAL.AsString:= Editsubtotal.Text;
      DMLOJA.TBPAGAMENTO.Post;
    //-----------------------------INICIO CAIXA-----------------------------------------------------------
      if ComboBox1.Text <> 'CRÉDITO LOJA' then

                      begin
                          DMLOJA.TBCAIXA.Append;
                          DMLOJA.TBCAIXAMINUTA.AsInteger:=StrToInt(Label10.Caption);
                          DMLOJA.TBCAIXAVL_ENTRADA.AsString:= Editvalorpago.Text;
                          DMLOJA.TBCAIXADT_ENTRADA.AsString:=DateToStr(Date());
                          DMLOJA.TBCAIXADO_TIPO.AsString:=ComboBox1.Text;
                          // DMLOJA.TBCAIXAVL_DESCONTO.AsCurrency:=(DMLOJA.T_VENDAVALOR_VENDA.AsCurrency*DMLOJA.T_VENDACOMI_VENDEDOR.AsCurrency)/100;
                          DMLOJA.TBCAIXAVL_RECEBIDO.AsString:=Editvalorpago.Text;
                          //DMLOJA.TBCAIXAVL_RECEBIDO.AsCurrency:=DMLOJA.T_VENDAVALOR_VENDA.AsCurrency;
                          DMLOJA.TBCAIXA.Post;

                        if DMLOJA.TBCONFIGCOMICAO.AsString = 'SIM' then
                         begin
                          valorcomicao:= (StrToCurr(Edittotaldavenda.Text)) * StrToCurr(Editcomicao.Text)/100;

                          DMLOJA.TBCOMICAO.Append;

                          DMLOJA.TBCOMICAOMINUTA.AsString:= Label10.Caption;
                          DMLOJA.TBCOMICAOCOM_COD_VENDEDOR.AsString:=Editcodvendedor.Text;
                          DMLOJA.TBCOMICAOCOM_NM_VENDEDOR.AsString:=Editnomevendedor.Text;
                          DMLOJA.TBCOMICAOCOM_DTA_ENTRADA.AsString:=DateToStr(Date());
                          DMLOJA.TBCOMICAOCOM_DO_TIPO.AsString:= 'VENDA A VISTA';
                          DMLOJA.TBCOMICAOVL_ENTRADA.AsString:=Edittotaldavenda.Text;
                          DMLOJA.TBCOMICAOCOM_VL_COMICAO.AsCurrency:= valorcomicao;


                          // DMVENDA.TBCOMICAONR_PEDIDO.AsInteger:=DMVENDA.TBVENDANR_PEDIDO_VENDA.AsInteger;
                          DMLOJA.TBCOMICAO.Post;


                         end;

                      end;


     //----------------------------FIM CAIXA-----------------------------------------------------------------------



       SpeedButton2.Click;






    end
    else
    begin

      confi:= 1;
         if ComboBox1.Text <> 'CRÉDITO LOJA' then

                      begin
                          DMLOJA.TBCAIXA.Append;
                          DMLOJA.TBCAIXAMINUTA.AsInteger:=StrToInt(Label10.Caption);
                          DMLOJA.TBCAIXAVL_ENTRADA.AsString:= Editvalorpago.Text;
                          DMLOJA.TBCAIXADT_ENTRADA.AsString:=DateToStr(Date());
                          DMLOJA.TBCAIXADO_TIPO.AsString:=ComboBox1.Text;
                          // DMLOJA.TBCAIXAVL_DESCONTO.AsCurrency:=(DMLOJA.T_VENDAVALOR_VENDA.AsCurrency*DMLOJA.T_VENDACOMI_VENDEDOR.AsCurrency)/100;
                          DMLOJA.TBCAIXAVL_RECEBIDO.AsString:=Editvalorpago.Text;
                          //DMLOJA.TBCAIXAVL_RECEBIDO.AsCurrency:=DMLOJA.T_VENDAVALOR_VENDA.AsCurrency;
                          DMLOJA.TBCAIXA.Post;


                      end;




      DMLOJA.TBPAGAMENTO.Append;
      DMLOJA.TBPAGAMENTODATAVENDA.AsString:= DateToStr(Date());
      DMLOJA.TBPAGAMENTOMINUTA.AsInteger:=  StrToInt(Label10.Caption);
      DMLOJA.TBPAGAMENTOVALORPAGO.AsCurrency:= StrToFloat(Editvalorpago.Text);
      DMLOJA.TBPAGAMENTOVALORVENDA.AsCurrency:= StrToFloat(Edittotaldavenda.Text);
      DMLOJA.TBPAGAMENTOFORMADOPAGAMENTO.AsString:=ComboBox1.Text;
      DMLOJA.TBPAGAMENTOVALORDESCONTO.AsCurrency:= StrToFloat(Editdesconto.Text);
      DMLOJA.TBPAGAMENTOSUBTOTAL.AsCurrency:= StrToFloat(Editsubtotal.Text);

      Editvalorpago.Clear;
      ComboBox1.Text:= '';


    end;


end;




end;

procedure TFRMPAGAMENTO.SpeedButton2Click(Sender: TObject);
var
  StrMsgPromocional: string;
  StrCPF: string;
  StrNome: string;
  StrLgr: string;
  StrNro: string;
  StrBairro: string;
  StrcMun: string;
  StrMunicipio: string;
  StrUF: string;
  StrCEP: string;
  StrEmail: String;
  StrCodAvisoErro: string;
  StrMsgAvisoErro: string;
  //StrInfoEstendidaprotocolo,StrInfoEstendidachave, StrInfoEstendidanrnota,StrInfoEstendidaserie: String;

  //----------Fim variavel global------------
   // F RECEBE 0
   // A RECEBE 1

  begin

   if Edittotalrecebido.Text ='' then
  begin
    Application.MessageBox('Não existem dados para Finalizar a NFC-e!','Informação do Sistema',Mb_IconInformation);
    Exit
  end;



  if StrToFloat(Edittotalrecebido.Text) < StrToFloat(Edittotaldavenda.Text) then
   Begin

        Application.MessageBox('Total Recebido é Menor que o Valor da Venda!','Informação do Sistema',Mb_IconInformation);
        exit

   End;
  if tipodavenda= 'NFC' then

BEGIN

 if StrToFloat(Edittotalrecebido.Text) >= StrToFloat(Edittotaldavenda.Text)  then


    begin
 //------------------------------------inicio identifica cliente -----------------------------
      if FRMPDV.EDT_Nome.Text <> '' then
       begin
        StrCPF:=FRMPDV.EDT_CPF.Text;
        StrNome:=FRMPDV.EDT_Nome.Text;
        StrEmail:=FRMPDV.EDT_Email.Text;
       {
        StrLgr:=FRMPDV.EDT_Lgr.Text;
        StrNro:=FRMPDV.EDT_Nro.Text;
        StrBairro:=FRMPDV.EDT_Bairro.Text;
        StrcMun:=FRMPDV.EDT_cMun.Text;
        StrMunicipio:=FRMPDV.EDT_Municipio.Text;
        StrUF:=FRMPDV.EDT_UF.Text;
        StrCEP:=FRMPDV.EDT_CEP.Text;
         }

        iRetorno:=aCFIdentificarConsumidor_NFCe_Daruma(StrCPF,StrNome,'','','','','','','', StrEmail);
       end;
 //---------------------------------------fim identifica cliente -----------------------------

 //-------------------------encerrar nfce--------------------------


        frmimprimir:= TFRMIMPRIMIR.Create(Self);
        frmimprimir.ShowModal;

        panelenviar.BringToFront;
        StrMsgPromocional:='Obrigado Volte Sempre!';
        iRetorno:=tCFEncerrar_NFCe_Daruma(StrMsgPromocional);

        frmpdv.TrataRetorno_NFCe(iRetorno);

//      informacao de erro da nota      -------------------
     {
         StrCodAvisoErro:= StringOfChar(' ',4);
         StrMsgAvisoErro:= StringOfChar(' ',600);
         iRetorno:=rAvisoErro_NFCe_Daruma(StrCodAvisoErro, StrMsgAvisoErro);
//         frmpdv.TrataRetorno_NFCe(iRetorno);
         Application.MessageBox( Pchar('Código Erro/Aviso = ['+pchar(Trim(StrCodAvisoErro))+'] ' +  #13 +'Mensagem Erro/Aviso =['+pchar(Trim(StrMsgAvisoErro))+'] '), 'Basic_NFCE', mb_ok);

       }
//       fim -------------------

//------------------------------Condiçoes----------------------


     if  (iretorno = 1)or(iretorno = 2)or(iretorno = 3)or(iretorno = 0) then
      begin

 //----------------------informação estendida----------------------

         StrInfoEstendidanrnota:= StringOfChar(' ',9);
         iRetorno := rInfoEstendida_NFCe_Daruma('2', StrInfoEstendidanrnota);
         StrInfoEstendidaserie:= StringOfChar(' ',5);
         iRetorno := rInfoEstendida_NFCe_Daruma('5', StrInfoEstendidaserie);
         StrInfoEstendidaprotocolo:= StringOfChar(' ',60);
         iRetorno := rInfoEstendida_NFCe_Daruma('4', StrInfoEstendidaprotocolo);
         StrInfoEstendidachave:= StringOfChar(' ',60);
         iRetorno := rInfoEstendida_NFCe_Daruma('3', StrInfoEstendidachave);

//---------------------------fim info estendida ------------------

 //--------------------------- inicio gera crediario ------------------


 //--------------------------- fim gera crediario gera crediario ------------------
      // if  (iretorno = 1)or(iretorno = 2)or(iretorno = 3) then
      //begin

        MEMO_InfoRetorno.Clear();
        MEMO_InfoRetorno.BringToFront;
        MEMO_InfoRetorno.Lines.Add('---------INFORMAÇÃO DE ENVIO E RETORNO SEFAZ----------');
        MEMO_InfoRetorno.Lines.Add('');
        MEMO_InfoRetorno.Lines.Add('NOTA  : ['+ Trim(StrInfoEstendidanrnota)+']');
        MEMO_InfoRetorno.Lines.Add('SERIE : ['+ Trim(StrInfoEstendidaserie)+']');
        MEMO_InfoRetorno.Lines.Add('PROTOCOLO: ['+ Trim(StrInfoEstendidaprotocolo)+']');
        MEMO_InfoRetorno.Lines.Add('CHAVE : ['+ Trim(StrInfoEstendidachave)+']');
        if iRetorno = 2 then
        begin
        MEMO_InfoRetorno.Lines.Add('ATENÇÃO! NFCE EMITIDA EM CONTINGENCIA OFFLINE');

        end;
        MEMO_InfoRetorno.Lines.Add('');



        if (iRetorno = 1) then
        begin
         FRMPDV.Editstatus.Text:= 'Autorizado';//StrMsgAvisoErro;
        end;



        if (iRetorno = 2) then
        begin
        FRMPDV.Editstatus.Text:= 'NFCE Emitida em Contingência Off Line';//StrMsgAvisoErro;
        end;

        FRMPDV.Edittotalvenda.Text:= Edittotaldavenda.Text;
        FRMPDV.Editsubtotavenda.Text:= Editsubtotal.Text;

        FRMPDV.editnumeronota.Text:= TrimRight(StrInfoEstendidanrnota);
        FRMPDV.editserie.Text:= TrimRight(StrInfoEstendidaserie);
        FRMPDV.editprotocolo.Text:= StrInfoEstendidaprotocolo;
        FRMPDV.editchave.Text:= TrimRight(StrInfoEstendidachave);

                          DMLOJA.TBCAIXA.Append;
                          DMLOJA.TBCAIXAMINUTA.AsInteger:=StrToInt(Label10.Caption);
                          DMLOJA.TBCAIXAVL_ENTRADA.AsString:= Editvalorpago.Text;
                          DMLOJA.TBCAIXADT_ENTRADA.AsString:=DateToStr(Date());
                          DMLOJA.TBCAIXADO_TIPO.AsString:=ComboBox1.Text;
                          // DMLOJA.TBCAIXAVL_DESCONTO.AsCurrency:=(DMLOJA.T_VENDAVALOR_VENDA.AsCurrency*DMLOJA.T_VENDACOMI_VENDEDOR.AsCurrency)/100;
                          DMLOJA.TBCAIXAVL_RECEBIDO.AsString:=Editvalorpago.Text;
                          DMLOJA.TBCAIXAREFERENTE.AsString:= 'Nota Fiscal';
                          //DMLOJA.TBCAIXAVL_RECEBIDO.AsCurrency:=DMLOJA.T_VENDAVALOR_VENDA.AsCurrency;
                          DMLOJA.TBCAIXA.Post;


        salvaretorno;
        FRMPDV.gravadados;
        FRMPDV.limpaeditvenda;
        Edittotalrecebido.Clear;
        FRMPDV.desabilita;
        Confi := 0;
        Close;
        Application.MessageBox('Nota Fiscal Gerada e Enviada Com Sucesso!','Informação do Sistema',Mb_IconInformation);


      end;

      // else


        if  (iretorno = -1)or(iretorno = -2)or(iretorno = -3)or(iretorno = -4)or(iretorno = -5)
        or(iretorno = -6)or(iretorno = -8)or(iretorno = -9)or(iretorno = -10)or(iretorno = -13)
        or(iretorno = -14)or(iretorno = -24)or(iretorno = -27)or(iretorno = -52)or(iretorno = -99)
        or(iretorno = -103)or(iretorno = -108)or(iretorno = -120)or(iretorno = -121)or(iretorno = -135) then

       begin

                          StrInfoEstendidanrnota:= StringOfChar(' ',9);
                          iRetorno := rInfoEstendida_NFCe_Daruma('2', StrInfoEstendidanrnota);

                          StrInfoEstendidaserie:= StringOfChar(' ',5);
                          iRetorno := rInfoEstendida_NFCe_Daruma('5', StrInfoEstendidaserie);



                          FRMPDV.editnumeronota.Text:= TrimRight(StrInfoEstendidanrnota);
                          FRMPDV.editserie.Text:= TrimRight(StrInfoEstendidaserie);

                          FRMPDV.editprotocolo.clear;
                          FRMPDV.editchave.clear;
                          FRMPDV.Edittotalvenda.clear;
                          FRMPDV.Editsubtotavenda.clear;


                         panelenviar.SendToBack;
                         MEMO_InfoRetorno.Clear();

                         StrCodAvisoErro:= StringOfChar(' ',4);
                         StrMsgAvisoErro:= StringOfChar(' ',600);
                         Int_Retorno:=rAvisoErro_NFCe_Daruma(StrCodAvisoErro, StrMsgAvisoErro);
                         MEMO_InfoRetorno.BringToFront;
                         MEMO_InfoRetorno.Lines.Add('Informação WebService SOAP');
                         MEMO_InfoRetorno.Lines.Add('CODIGO: ['+ Trim(StrCodAvisoErro)+']');
                         MEMO_InfoRetorno.Lines.Add('AVISO : ['+ Trim(StrMsgAvisoErro)+']');
                         MEMO_InfoRetorno.Lines.Add('------------NFC-e Recusada------------');
                         salvaretorno;
                         
                         FRMPDV.editretornoerro.Text:= StrMsgAvisoErro;
                         FRMPDV.Editstatus.Text:= 'Rejeitado';



                         FRMPDV.gravadados;

//                         DMLOJA.TBVENDA.delete;
                         FRMPDV.panelitens.BringToFront;
                         FRMPDV.limpaeditvenda;
                         FRMPDV.desabilita;
//                         iRetorno := tCFCancelar_NFCe_Daruma('', '', '', '','');
                         // principal.DarumaFramework_TrataRetorno_NFCe(iRetorno);

                         Confi := 0;
                         Application.MessageBox('Erro no Envio da Nota! Verique a Mensagem de Erro!','Informação do Sistema',Mb_IconInformation);

       end;
 //------------------------------fim encerrar nfce----------------------


 Confi:=0;

    end
    else
        begin
            Application.MessageBox('Total Recebido é Menor que o Valor da Venda!','Informação do Sistema',Mb_IconInformation);
            exit
        end;


END;// FIM NFCE

if tipodavenda =  'PEDIDO' then

begin

{
//
 if Edittotalrecebido.Text = '' then
  begin
    Application.MessageBox('Não existe dados para finalizar a NFC-e!','Informação do Sistema',Mb_IconInformation);
    Exit
  end;



  if StrToFloat(Edittotalrecebido.Text) < StrToFloat(Edittotaldavenda.Text) then
   Begin

        Application.MessageBox('Total Recebido Menor que o Valor da Venda!','Informação do Sistema',Mb_IconInformation);
        exit

   End;

    }
  if StrToFloat(Edittotalrecebido.Text) >= StrToFloat(Edittotaldavenda.Text)  then


    begin
 //------------------------------------inicio identifica cliente -----------------------------
 //---------------------------------------fim identifica cliente -----------------------------

 //-------------------------encerrar nfce--------------------------

        panelenviar.BringToFront;

 //--------------------------- inicio gera crediario ------------------

      if ComboBox1.Text = 'CRÉDITO LOJA' then
                   begin

                    recebevalor:= Editvalorpago.Text;
                    recebenumero:= FRMPDV.Labelnumeronfce.Caption;
                    frmcadcrediario:= TFRMCADCREDIARIO.Create(Self);
                    frmcadcrediario.ShowModal;

                   end;
 //--------------------------- fim gera crediario gera crediario ------------------
      // if  (iretorno = 1)or(iretorno = 2)or(iretorno = 3) then
      //begin

        MEMO_InfoRetorno.Clear();
        MEMO_InfoRetorno.BringToFront;
        MEMO_InfoRetorno.Lines.Add('Pedido de Venda Finalizado com Sucesso!');
        FRMPDV.Editstatus.Text:= 'Pedido de Venda!';//StrMsgAvisoErro;
        FRMPDV.Edittotalvenda.Text:= Edittotaldavenda.Text;
        FRMPDV.Editsubtotavenda.Text:= Editsubtotal.Text;

//        salvaretorno;
        FRMPDV.gravadados;
        FRMPDV.limpaeditvenda;
        Edittotalrecebido.Clear;
        FRMPDV.desabilita;
        Confi := 0;
      end



       else
            begin

                         panelenviar.SendToBack;
                         MEMO_InfoRetorno.Clear();

                         MEMO_InfoRetorno.BringToFront;
                         MEMO_InfoRetorno.Lines.Add('Verefique a Venda!');
                         DMLOJA.TBVENDA.delete;
                         FRMPDV.panelitens.BringToFront;
                         FRMPDV.limpaeditvenda;
                         FRMPDV.desabilita;
                         Confi := 0;

              end;
 //------------------------------fim encerrar nfce----------------------


     Confi:=0;

      //Frmrelrecibovenda:=TFrmrelrecibovenda.Create(Self);
      //Frmrelrecibovenda.qrprecibovenda.preview;

     {

    end
      else
        begin
            Application.MessageBox('Total Recebido Menor que o Valor da Venda!','Informação do Sistema',Mb_IconInformation);
            exit   }
        end;




  end;

procedure TFRMPAGAMENTO.SpeedButton3Click(Sender: TObject);
begin
if confi = 1 then

begin
  Application.MessageBox('Impossivel Fechar! NFC-e em fase de Pagamento!','Informação do Sistema',Mb_IconInformation);

 end
else
begin
close;

//FR_aCFEfetuarPagamento_NFCe_Daruma.release;
//FR_aCFEfetuarPagamento_NFCe_Daruma:=nil;
end;

end;

procedure TFRMPAGAMENTO.SpeedButton4Click(Sender: TObject);
begin
if confi = 1 then

begin

   Application.MessageBox('Impossivel Fechar! NFC-e em fase de Pagamento!','Informação do Sistema',Mb_IconInformation);

end
else
begin
close;

//FR_aCFEfetuarPagamento_NFCe_Daruma.release;
//FR_aCFEfetuarPagamento_NFCe_Daruma:=nil;
end;

end;

procedure TFRMPAGAMENTO.EditdescontoEnter(Sender: TObject);
begin
// verificar o camponente
 if (Sender is TEdit) then
// mudar a cor do componente
 TEdit(Sender).Color:=clMoneyGreen;


end;

procedure TFRMPAGAMENTO.EditdescontoExit(Sender: TObject);
var
  StrTipoDescAcres: string;
  StrValorDescAcres: string;
  desc: Currency;
begin

// verificar o camponente
 if (Sender is TEdit) then
// mudar a cor do componente
 TEdit(Sender).Color:=clWhite;


if tipodavenda = 'NFC' then

BEGIN


If Editdesconto.Text='' Then
begin
 Application.MessageBox('Digite um valor para o Desconto!','Informação do Sistema',Mb_IconInformation);


 Editdesconto.SetFocus;
 exit;

end
   else
   begin
    // Edittotaldavenda.Text := CurrToStr (StrToCurr(Editsubtotal.Text) - StrToCurr(Editdesconto.Text));

    Edittotaldavenda.Text := FormatFloat('###,##0.00',(StrToCurr(Editsubtotal.Text) - StrToCurr(Editdesconto.Text)));
    Edittotaldavenda.Text := StringReplace(Edittotaldavenda.Text, '.','', [rfReplaceAll]);


      //desc:= (StrToCurr(Editsubtotal.Text)) * StrToCurr(Editdesconto.Text)/100;

      //Edittotaldavenda.Text:= CurrToStr (StrToCurr(Edittotaldavenda.Text) - desc);

     StrTipoDescAcres:='D$';
     StrValorDescAcres:=Editdesconto.Text;
     iRetorno:=aCFTotalizar_NFCe_Daruma(StrTipoDescAcres,StrValorDescAcres);

   // FRMPDV.TrataRetorno_NFCe(iRetorno);
   ComboBox1.SetFocus;

   Editdesconto.Enabled:= False;
   Confi:=1;
   Editnumero.SetFocus;
   end;
END;// FIM NFCE
   if tipodavenda =  'PEDIDO' then

  begin
  //
  If Editdesconto.Text='' Then
begin
 Application.MessageBox('Digite um valor para o Desconto!','Informação do Sistema',Mb_IconInformation);


 Editdesconto.SetFocus;
 exit;

end
   else
   begin
    // Edittotaldavenda.Text := CurrToStr (StrToCurr(Editsubtotal.Text) - StrToCurr(Editdesconto.Text));

    Edittotaldavenda.Text := FormatFloat('###,##0.00',(StrToCurr(Editsubtotal.Text) - StrToCurr(Editdesconto.Text)));
    Edittotaldavenda.Text := StringReplace(Edittotaldavenda.Text, '.','', [rfReplaceAll]);


      //desc:= (StrToCurr(Editsubtotal.Text)) * StrToCurr(Editdesconto.Text)/100;

      //Edittotaldavenda.Text:= CurrToStr (StrToCurr(Edittotaldavenda.Text) - desc);

   //  StrTipoDescAcres:='D$';
   //  StrValorDescAcres:=Editdesconto.Text;
   //  iRetorno:=aCFTotalizar_NFCe_Daruma(StrTipoDescAcres,StrValorDescAcres);

 // principal.DarumaFramework_TrataRetorno_NFCe(iRetorno);
   ComboBox1.SetFocus;

   Editdesconto.ReadOnly:= True;
   Confi:=1;
   Editnumero.SetFocus;
   end;




  end;
end;

procedure TFRMPAGAMENTO.EditnumeroExit(Sender: TObject);
begin

if Editnumero.Text = '1' then
begin
ComboBox1.Text :=   'DINHEIRO';

if Editsaldorestante.Text= '' then
begin
Editvalorpago.Text:= Edittotaldavenda.Text;
end;

if Editsaldorestante.Text <> '' then
begin
Editvalorpago.Text:= Editsaldorestante.Text;
end;

end;

if Editnumero.Text = '2' then
begin
ComboBox1.Text :=   'CHEQUE';
if Editsaldorestante.Text= '' then
begin
Editvalorpago.Text:= Edittotaldavenda.Text;
end;

if Editsaldorestante.Text <> '' then
begin
Editvalorpago.Text:= Editsaldorestante.Text;
end;
end;

if Editnumero.Text = '3' then
begin
ComboBox1.Text :=   'CARTAO DE CREDITO';
if Editsaldorestante.Text= '' then
begin
Editvalorpago.Text:= Edittotaldavenda.Text;
end;

if Editsaldorestante.Text <> '' then
begin
Editvalorpago.Text:= Editsaldorestante.Text;
end;
end;

if Editnumero.Text = '4' then
begin
ComboBox1.Text :=   'CARTAO DE DEBITO';
if Editsaldorestante.Text= '' then
begin
Editvalorpago.Text:= Edittotaldavenda.Text;
end;

if Editsaldorestante.Text <> '' then
begin
Editvalorpago.Text:= Editsaldorestante.Text;
end;
end;

if Editnumero.Text = '5' then
begin
ComboBox1.Text :=   'CRÉDITO LOJA';
if Editsaldorestante.Text= '' then
begin
Editvalorpago.Text:= Edittotaldavenda.Text;
end;

if Editsaldorestante.Text <> '' then
begin
Editvalorpago.Text:= Editsaldorestante.Text;
end;
end;

if Editnumero.Text = '6' then
begin
ComboBox1.Text :=   'VALE ALIMENTACAO';
if Editsaldorestante.Text= '' then
begin
Editvalorpago.Text:= Edittotaldavenda.Text;
end;

if Editsaldorestante.Text <> '' then
begin
Editvalorpago.Text:= Editsaldorestante.Text;
end;
end;

if Editnumero.Text = '7' then
begin
ComboBox1.Text :=   'VALE REFEICAO';
if Editsaldorestante.Text= '' then
begin
Editvalorpago.Text:= Edittotaldavenda.Text;
end;

if Editsaldorestante.Text <> '' then
begin
Editvalorpago.Text:= Editsaldorestante.Text;
end;
end;
if Editnumero.Text = '8' then
begin
ComboBox1.Text :=   'VALE PRESENTE';
if Editsaldorestante.Text= '' then
begin
Editvalorpago.Text:= Edittotaldavenda.Text;
end;

if Editsaldorestante.Text <> '' then
begin
Editvalorpago.Text:= Editsaldorestante.Text;
end;
end;

if Editnumero.Text = '9' then
begin
ComboBox1.Text :=   'VALE COMBUSTIVEL';
if Editsaldorestante.Text= '' then
begin
Editvalorpago.Text:= Edittotaldavenda.Text;
end;

if Editsaldorestante.Text <> '' then
begin
Editvalorpago.Text:= Editsaldorestante.Text;
end;
end;

if Editnumero.Text = '10' then
begin
ComboBox1.Text :=   'OUTROS';
if Editsaldorestante.Text= '' then
begin
Editvalorpago.Text:= Edittotaldavenda.Text;
end;

if Editsaldorestante.Text <> '' then
begin
Editvalorpago.Text:= Editsaldorestante.Text;
end;
end;

 Editvalorpago.SetFocus;
 Editnumero.Clear;
end;

procedure TFRMPAGAMENTO.EditvalorpagoExit(Sender: TObject);
begin

 SpeedButton1.Click;


end;

procedure TFRMPAGAMENTO.EditvalorpagoKeyPress(Sender: TObject; var Key: Char);
begin
{
//FormatarComoMoeda( Editvalorpago, Key );

If (key=#13) Then
Editvalorpago.SetFocus
Else If not (Key in['0'..'9',#8,#044]) then
begin
Beep; // 044 , ; 045 - ; 046 . ; 047 / ;
Key:=#0;
Application.MessageBox('Este campo só aceita Nºs e virgulas, Para indicar os centavos Ex: 1111,22!','Informação do Sistema',Mb_IconInformation);


end; }
end;

procedure TFRMPAGAMENTO.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = Vk_Escape then Close;
if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFRMPAGAMENTO.FormShow(Sender: TObject);
begin
 limpapagamento;
 Edittotaldavenda.Text:= FRMPDV.Edittotalvenda.Text;
 Editsubtotal.Text:=     FRMPDV.Editsubtotavenda.Text;
 Label10.Caption:=       FRMPDV.Labelnumeronfce.Caption;
 Edittotalrecebido.Text := '0,00';
 {
 Editcodvendedor.Text:=  //FRMPDV.EDTcodvendedor.Text;
 Editnomevendedor.Text:= //FRMPDV.Edtnomevendedor.Text;
 Editcomicao.Text:=      //FRMPDV.Edtvalorcomicao.Text;
 }
 Editdesconto.ReadOnly:= False;

 Editdesconto.SetFocus;
 confi := 0;
 Edittotaldavenda.Text := StringReplace(Edittotaldavenda.Text, '.','', [rfReplaceAll]);
 Editsubtotal.Text := StringReplace(Editsubtotal.Text, '.','', [rfReplaceAll]) ;
 if tipodavenda = 'NFC' then

Begin
   logonfc.Visible:= True;
   Panel9.Caption:= ' Finalizando a emissão da NFC-e...';
End;

end;


end.
