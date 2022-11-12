unit uViewLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
 Vcl.Buttons, BusinessSkinForm, uConexao;

type
  TfrmLogin = class(TForm)
    Label1: TLabel;
    txtUser: TEdit;
    txtSenha: TEdit;
    Label2: TLabel;
    btnLogin: TButton;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin : TfrmLogin;
  uConexao     : TConexao;


implementation

{$R *.dfm}

uses  uViewHospedeFinal, uViewProdutoFinal,
  uViewServicoFinal, uViewQuartoFinal, uViewFuncionarioFinal, uViewPrincipal;



procedure TfrmLogin.btnLoginClick(Sender: TObject);
begin
   Conexao := TConexao.Create(Self);

   if Conexao.Login(txtUser.Text,txtSenha.Text) then
   begin
    ShowMessage('Logado com Sucesso');
    uViewPrincipal.frmPrincipal.Show;
    frmLogin.Visible := False;
   end
   else
   begin
     ShowMessage('Login Incorreto. Tente Novamente');
   end;

end;

end.
