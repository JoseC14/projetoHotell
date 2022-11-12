unit uHospedeReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, frxClass, frxDBSet, RLRichText,
  RLFilters, RLPDFFilter;

type
  TForm1 = class(TForm)
    RLReport1: TRLReport;
    Header: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    Title: TRLBand;
    Detail: TRLBand;
    RLPDFFilter1: TRLPDFFilter;
    RLDBText1: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uViewRelHospede;

end.
