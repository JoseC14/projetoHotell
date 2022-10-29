unit uViewHospedeFinal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, uVIewCadHospede,
  Vcl.StdCtrls, uViewGerHospede, uViewRelHospede;

type
  TfrmHospede = class(TForm)
    Menu: TMainMenu;
    Cadastrar1: TMenuItem;
    Gerenciar1: TMenuItem;
    Alterar1: TMenuItem;
    pTelaInterna: TPanel;
    procedure Cadastrar1Click(Sender: TObject);
    procedure Gerenciar1Click(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHospede : TfrmHospede;
  CadHospede : TfrmCadHospede;
  GerHospede : TfrmGerHospede;
  RelHospede : TfrmRelHospede;

implementation

{$R *.dfm}






procedure TfrmHospede.Alterar1Click(Sender: TObject);
begin
  RelHospede        := TfrmRelHospede.Create(Self);
  RelHospede.Parent := pTelaInterna;
  RelHospede.Align  := AlClient;
  RelHospede.Show;
end;

procedure TfrmHospede.Cadastrar1Click(Sender: TObject);
begin


  CadHospede        := TfrmCadHospede.Create(Self);
  CadHospede.Parent := pTelaInterna;
  CadHospede.Align  := AlClient;
  CadHospede.Show;
end;

procedure TfrmHospede.FormCreate(Sender: TObject);
begin
  CadHospede        := TfrmCadHospede.Create(Self);
  CadHospede.Parent := pTelaInterna;
  CadHospede.Align  := AlClient;
  CadHospede.Show;
end;

procedure TfrmHospede.Gerenciar1Click(Sender: TObject);
begin
  GerHospede := TfrmGerHospede.Create(Self);
  GerHospede.Parent := pTelaInterna;
  GerHospede.Align  := AlClient;
  GerHospede.Show;
end;

end.
