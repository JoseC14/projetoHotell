unit uViewCadFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, uFuncionarioDao,
  Vcl.ExtCtrls;

type
  TfrmCadFuncionario = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    txtNome: TEdit;
    Label3: TLabel;
    txtCpf: TMaskEdit;
    Label6: TLabel;
    txtDataAdmissao: TMaskEdit;
    Label7: TLabel;
    comGenero: TComboBox;
    Label8: TLabel;
    txtDataNascimento: TMaskEdit;
    btnCadastrar: TButton;
    txtSenha: TEdit;
    Label10: TLabel;
    txtUser: TEdit;
    Label9: TLabel;
    rgGerente: TRadioGroup;
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function isCpf(CPF_Text : String): Boolean;
  end;

var
  frmCadFuncionario: TfrmCadFuncionario;
  FuncionarioDao : TFuncionarioDao;


implementation

{$R *.dfm}

uses uViewGerFuncionario;

procedure TfrmCadFuncionario.btnCadastrarClick(Sender: TObject);
begin
   if (txtNome.Text<>'') AND (txtCpf.Text<>'') AND (txtDataAdmissao.Text<>'') AND (txtDataNascimento.Text<>'') AND (txtSenha.Text<>'') AND (txtUser.Text<>'') then
   begin
    if isCpf(txtCpf.Text) then
    begin
      FuncionarioDao := TFuncionarioDao.Create(Self);
     FuncionarioDao.inserirFuncionario(txtDataAdmissao.Text, txtCpf.Text, txtNome.Text, comGenero.Text, txtDataNascimento.Text, txtUser.Text, txtSenha.Text,rgGerente.Items[rgGerente.ItemIndex]);
     FuncionarioDao.Free;
     ShowMessage('Funcion�rio Cadastrado');
     uViewGerFuncionario.frmGerFuncionario.tbfuncionario.DataSource.DataSet.Refresh;
     txtNome.Text           := '';
     txtCpf.Text            := '';
     txtDataAdmissao.Text   := '';
     txtDataNascimento.Text := '';
     txtUser.Text           := '';
     txtSenha.Text          := '';
    end
    else
    begin
      ShowMessage('CPF Inv�lido');
    end;



   end
   else
   begin
     ShowMessage('Campos obrigat�rios n�o preenchidos!')
   end;

end;

function TfrmCadFuncionario.isCpf(CPF_Text: String): Boolean;
var
    n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;

   	d1,d2: integer;

   	digitado, calculado: string;
begin
   n1:=StrToInt(CPF_Text[1]);

   n2:=StrToInt(CPF_Text[2]);

   n3:=StrToInt(CPF_Text[3]);

   n4:=StrToInt(CPF_Text[5]);

   n5:=StrToInt(CPF_Text[6]);

   n6:=StrToInt(CPF_Text[7]);

   n7:=StrToInt(CPF_Text[9]);

   n8:=StrToInt(CPF_Text[10]);

   n9:=StrToInt(CPF_Text[11]);

                 	d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;

  d1:=11-(d1 mod 11);

   if d1>=10 then d1:=0;

    	d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;

	d2:=11-(d2 mod 11);

	if d2>=10 then

   	d2:=0;

	calculado:=inttostr(d1)+inttostr(d2);

   digitado:=CPF_Text[13]+CPF_Text[14];

   if calculado=digitado then
   begin
    Result := true
   end
   else
   begin
    Result := false;
   end;


end;

end.
