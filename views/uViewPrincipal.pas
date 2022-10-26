unit uViewPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  uViewGerReserva, uViewHospede, Vcl.Buttons, uViewProduto, uViewQuarto,
  uViewServico;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    btnReserva: TSpeedButton;
    btnHospede: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnServicos: TSpeedButton;
    btnQuartos: TSpeedButton;
    btnFuncionarios: TSpeedButton;
    btnLogout: TSpeedButton;
    Panel1: TPanel;
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnHospedeClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnQuartosClick(Sender: TObject);
    procedure btnServicosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;


implementation

{$R *.dfm}

procedure TForm2.btnProdutosClick(Sender: TObject);
begin
uViewProduto.Produto.ShowModal;
end;

procedure TForm2.btnQuartosClick(Sender: TObject);
begin
uViewQuarto.Quarto.ShowModal;
end;

procedure TForm2.btnServicosClick(Sender: TObject);
begin
uViewServico.Servico.ShowModal;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
UViewHospede.Hospede.ShowModal;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
uViewGerReserva.cadReserva.ShowModal;
end;

procedure TForm2.btnHospedeClick(Sender: TObject);
begin
uViewHospede.Hospede.ShowModal;
end;

end.
