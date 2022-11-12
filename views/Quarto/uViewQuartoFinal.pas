unit uViewQuartoFinal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls;

type
  TfrmQuarto = class(TForm)
    MainMenu1: TMainMenu;
    Cadastrar1: TMenuItem;
    Gerenciar1: TMenuItem;
    Relatrio1: TMenuItem;
    pTelaInterna: TPanel;
    procedure Cadastrar1Click(Sender: TObject);
    procedure Gerenciar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuarto: TfrmQuarto;

implementation

{$R *.dfm}

uses uVIewCadQuarto, uViewGerQuarto;

procedure TfrmQuarto.Cadastrar1Click(Sender: TObject);
begin
  uViewCadQuarto.CadQuarto.Parent := pTelaInterna;
  uViewCadQuarto.CadQuarto.Align  := alClient;
  uViewCadQuarto.CadQuarto.Show;
end;

procedure TfrmQuarto.FormShow(Sender: TObject);
begin
   uViewCadQuarto.CadQuarto.Parent := pTelaInterna;
  uViewCadQuarto.CadQuarto.Align  := alClient;
  uViewCadQuarto.CadQuarto.Show;
end;

procedure TfrmQuarto.Gerenciar1Click(Sender: TObject);
begin
  uViewGerQuarto.GerQuarto.Parent := pTelaInterna;
  uViewGerQuarto.GerQuarto.Align  := alClient;
  uViewGerQuarto.GerQuarto.Show;
end;

end.
