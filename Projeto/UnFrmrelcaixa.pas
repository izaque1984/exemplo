unit UnFrmrelcaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRExport, QRXMLSFilt, QRPDFFilt;

type
  TFRMRELCAIXA = class(TForm)
    qrpcaixa: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel16: TQRLabel;
    QRExpr3: TQRExpr;
    QRPDFFilter1: TQRPDFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    QRRTFFilter1: TQRRTFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMRELCAIXA: TFRMRELCAIXA;

implementation

{$R *.dfm}

end.
