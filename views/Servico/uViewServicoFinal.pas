unit uViewServicoFinal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls;

type
  TfrmServico = class(TForm)
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
  frmServico: TfrmServico;

implementation

{$R *.dfm}

uses uViewCadServico, uViewGerServico;

procedure TfrmServico.Cadastrar1Click(Sender: TObject);
begin
 uViewCadServico.frmCadServico.Parent := pTelaInterna;
 uViewCadServico.frmCadServico.Align  := alClient;
 uViewCadServico.frmCadServico.Show;
end;

procedure TfrmServico.FormShow(Sender: TObject);
begin
  uViewCadServico.frmCadServico.Parent := pTelaInterna;
 uViewCadServico.frmCadServico.Align  := alClient;
 uViewCadServico.frmCadServico.Show;
end;

procedure TfrmServico.Gerenciar1Click(Sender: TObject);
begin
  uViewGerServico.frmGerServico.Parent := pTelaInterna;
  uViewGerServico.frmGerServico.Align  := alClient;
  uViewGerServico.frmGerServico.Show;
end;

end.
