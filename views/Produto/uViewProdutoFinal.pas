unit uViewProdutoFinal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls;

type
  TfrmProduto = class(TForm)
    MainMenu1: TMainMenu;
    Cadastrat1: TMenuItem;
    Gerenciar1: TMenuItem;
    Relatrios1: TMenuItem;
    pTelaInterna: TPanel;
    procedure Cadastrat1Click(Sender: TObject);
    procedure Gerenciar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduto: TfrmProduto;

implementation

{$R *.dfm}

uses uViewCadProduto, uViewGerProduto;

procedure TfrmProduto.Cadastrat1Click(Sender: TObject);
begin
  uViewCadProduto.frmCadProduto.Parent := pTelaInterna;
  uViewCadProduto.frmCadProduto.Align  := AlClient;
  uViewCadProduto.frmCadProduto.Show;
end;

procedure TfrmProduto.FormShow(Sender: TObject);
begin
  uViewCadProduto.frmCadProduto.Parent := pTelaInterna;
  uViewCadProduto.frmCadProduto.Align  := AlClient;
  uViewCadProduto.frmCadProduto.Show;
end;

procedure TfrmProduto.Gerenciar1Click(Sender: TObject);
begin
  uViewGerProduto.frmGerProduto.Parent := pTelaInterna;
  UViewGerProduto.frmGerProduto.Align  := AlClient;
  uViewGerProduto.frmGerProduto.Show;
end;

end.
