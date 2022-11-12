unit uViewPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
 Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    btnHospede: TSpeedButton;
    btnReserva: TSpeedButton;
    btnProduto: TSpeedButton;
    btnServico: TSpeedButton;
    btnFuncionarios: TSpeedButton;
    btnLogout: TSpeedButton;
    btnQuarto: TSpeedButton;
    procedure btnHospedeClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure btnServicoClick(Sender: TObject);
    procedure btnFuncionariosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;


implementation

{$R *.dfm}

uses  uViewHospedeFinal, uViewProdutoFinal,
  uViewServicoFinal, uViewQuartoFinal, uViewFuncionarioFinal;

procedure TfrmPrincipal.btnFuncionariosClick(Sender: TObject);
begin
  uViewFuncionarioFinal.frmFuncionarioFinal.Show;
end;

procedure TfrmPrincipal.btnHospedeClick(Sender: TObject);
begin
  uViewHospedeFinal.frmHospede.ShowModal;
end;

procedure TfrmPrincipal.btnServicoClick(Sender: TObject);
begin
  uViewServicoFinal.frmServico.ShowModal;
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  uViewQuartoFinal.frmQuarto.ShowModal;
end;

procedure TfrmPrincipal.btnProdutoClick(Sender: TObject);
begin
  UViewProdutoFinal.frmProduto.ShowModal;
end;

end.
