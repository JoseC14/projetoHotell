unit uViewPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  uViewGerReserva, uViewHospede, Vcl.Buttons, uViewProduto, uViewQuarto;

type
  TForm2 = class(TForm)
    btnHospede: TSpeedButton;
    btnReserva: TSpeedButton;
    btnProduto: TSpeedButton;
    btnServico: TSpeedButton;
    btnFuncionarios: TSpeedButton;
    btnLogout: TSpeedButton;
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnHospedeClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnQuartosClick(Sender: TObject);
    procedure ReservaClick(Sender: TObject);
    procedure ProdutosClick(Sender: TObject);
    procedure ServicosClick(Sender: TObject);
    procedure FuncionįriosClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure btnServicoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  Hospede : THospede;


implementation

{$R *.dfm}

uses uViewServico, uViewFuncionario, uViewHospedeFinal, uViewProdutoFinal;

procedure TForm2.btnProdutosClick(Sender: TObject);
begin
uViewProduto.Produto.ShowModal;
end;

procedure TForm2.btnQuartosClick(Sender: TObject);
begin
uViewQuarto.Quarto.ShowModal;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
UViewHospede.Hospede.ShowModal;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
uViewGerReserva.cadReserva.ShowModal;
end;

procedure TForm2.FuncionįriosClick(Sender: TObject);
begin
uViewFuncionario.Form7.ShowModal;
end;

procedure TForm2.ProdutosClick(Sender: TObject);
begin
UViewProduto.Produto.ShowModal;
end;

procedure TForm2.btnHospedeClick(Sender: TObject);
begin
uViewHospede.Hospede.ShowModal;
end;

procedure TForm2.ReservaClick(Sender: TObject);
begin
uViewGerReserva.cadReserva.ShowModal;
end;

procedure TForm2.btnServicoClick(Sender: TObject);
begin
  uViewServico.Servico.ShowModal;
end;

procedure TForm2.ServicosClick(Sender: TObject);
begin
  uViewServico.Servico.ShowModal;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
  uViewHospedeFinal.frmHospede.ShowModal;
end;

procedure TForm2.btnProdutoClick(Sender: TObject);
begin
  UViewProdutoFinal.frmProduto.Show;
end;

end.
