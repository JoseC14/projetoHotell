unit uViewFuncionarioFinal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls;

type
  TfrmFuncionarioFinal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastrar1: TMenuItem;
    Gerenciar1: TMenuItem;
    Relatrios1: TMenuItem;
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
  frmFuncionarioFinal: TfrmFuncionarioFinal;

implementation

{$R *.dfm}

uses uViewCadFuncionario, uViewGerFuncionario;

procedure TfrmFuncionarioFinal.Cadastrar1Click(Sender: TObject);
begin
  uViewCadFuncionario.frmCadFuncionario.Parent := pTelaInterna;
  uViewCadFuncionario.frmCadFuncionario.Align  := alClient;
  uViewCadFuncionario.frmCadFuncionario.Show;
end;

procedure TfrmFuncionarioFinal.FormShow(Sender: TObject);
begin
  uViewCadFuncionario.frmCadFuncionario.Parent := pTelaInterna;
  uViewCadFuncionario.frmCadFuncionario.Align  := alClient;
  uViewCadFuncionario.frmCadFuncionario.Show;
end;

procedure TfrmFuncionarioFinal.Gerenciar1Click(Sender: TObject);
begin
  uViewGerFuncionario.frmGerFuncionario.Parent := pTelaInterna;
  uViewGerFuncionario.frmGerFuncionario.Align  := alClient;
  uViewGerFuncionario.frmGerFuncionario.Show;
end;

end.
