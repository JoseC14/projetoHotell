unit uViewHospedeFinal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus,
  BusinessSkinForm;

type
  TfrmHospede = class(TForm)
    pTelaInterna: TPanel;
    MainMenu1: TMainMenu;
    Cadastarr1: TMenuItem;
    Gerenciar1: TMenuItem;
    Relatrios1: TMenuItem;
    procedure Gerenciar1Click(Sender: TObject);
    procedure Relatrios1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Cadastarr1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHospede: TfrmHospede;

implementation

{$R *.dfm}

uses uVIewCadHospede, uViewGerHospede, uViewRelHospede;

procedure TfrmHospede.Cadastarr1Click(Sender: TObject);
begin
  uViewCadHospede.frmCadHospede.Parent := pTelaInterna;
  uViewCadHospede.frmCadHospede.Align  := alClient;
  uViewCadHospede.frmCadHospede.Show;
end;

procedure TfrmHospede.FormShow(Sender: TObject);
begin
   uViewCadHospede.frmCadHospede.Parent := pTelaInterna;
  uViewCadHospede.frmCadHospede.Align  := alClient;
  uViewCadHospede.frmCadHospede.Show;
end;

procedure TfrmHospede.Gerenciar1Click(Sender: TObject);
begin
  uViewGerHospede.frmGerHospede.Parent := pTelaInterna;
  UViewGerHospede.frmGerHospede.Align  := alClient;
  uViewGerHospede.frmGerHospede.Show;
end;

procedure TfrmHospede.Relatrios1Click(Sender: TObject);
begin
  uViewRelHospede.frmRelHospede.Parent := pTelaInterna;
  uViewRelHospede.frmRelHospede.Align  := alClient;
  uViewRelHospede.frmRelHospede.Show;
end;

end.
