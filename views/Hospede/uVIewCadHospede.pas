unit uVIewCadHospede;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Samples.Spin, uHospedeDao, HospedeDTO;

type
  TfrmCadHospede = class(TForm)
    txtNome: TEdit;
    Idade: TLabel;
    intIdade: TSpinEdit;
    Profiss�o: TLabel;
    txtProfissao: TEdit;
    Nacionalidade: TLabel;
    txtNacionalidade: TEdit;
    Sexo: TLabel;
    comSexo: TComboBox;
    CEP: TLabel;
    txtCep: TMaskEdit;
    Fone: TLabel;
    txtFone: TMaskEdit;
    txtCpf: TMaskEdit;
    CPF: TLabel;
    Nome: TLabel;
    CadastroHospedes: TLabel;
    btnCadastrar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   function isCpf(CPF_Text: string): boolean;

  end;

var
  frmCadHospede: TfrmCadHospede;
  HospedeDaoObj:THospedeDAO;
  HospedeDtoObj:THospedeDTO;
  Hoje : TDateTime;


implementation

{$R *.dfm}

uses uViewGerHospede;

procedure TfrmCadHospede.btnCadastrarClick(Sender: TObject);
begin
  HospedeDaoObj               := THospedeDAO.Create(HospedeDAO);
  HospedeDtoObj               := THospedeDTO.Create;
  HospedeDtoObj.Nome          := txtNome.Text;
  HospedeDtoObj.Cpf           := txtCpf.Text;
  HospedeDtoObj.Cep           := txtCep.Text;
  HospedeDtoObj.Fone          := txtFone.Text;
  HospedeDtoObj.Sexo          := comSexo.Text;
  HospedeDtoObj.Nacionalidade := txtNacionalidade.Text;
  HospedeDtoObj.Profissao     := txtProfissao.Text;
  HospedeDtoObj.Idade         := StrtoInt(intIdade.Text);

try

  Hoje := Now;
  if (txtNome.Text = '') OR (txtCpf.Text = '') OR (txtCep.Text = '') OR (txtFone.Text = '') OR (txtProfissao.Text = '') OR (txtNacionalidade.Text = '' ) OR (comSexo.Text = '') then
  begin
    ShowMessage('Campos obrigat�rios n�o preenchidos')
  end
  else
  begin

    if isCpf(txtCpf.Text) = True then
    begin
      HospedeDao.InserirHospede(HospedeDtoObj.Nome,HospedeDtoObj.Cpf,HospedeDtoObj.Sexo,HospedeDtoObj.Profissao,HospedeDtoObj.Idade,HospedeDtoObj.Cep,HospedeDtoObj.Fone,HospedeDtoObj.Nacionalidade, DatetoStr(Hoje));
      txtNome.Text          := '';
      txtCpf.Text           := '';
      txtCep.Text           := '';
      txtFone.Text          := '';
      txtProfissao.Text     := '';
      txtNacionalidade.Text := '';

      ShowMessage('H�spede Cadastrado');
      HospedeDtoObj.Free;
      HospedeDaoObj.Free;
      uViewGerHospede.frmGerHospede.tbhospede.DataSource.DataSet.Refresh;
    end
    else
    begin
      ShowMessage('CPF Inv�lido')
    end;
    end;



except on E:Exception do
begin
ShowMessage(E.Message);
end;


end;
end;

procedure TfrmCadHospede.FormCreate(Sender: TObject);
var
   h : HMenu;
begin
   h := getSystemMenu( Handle, FALSE );
   DeleteMenu( h, 1, MF_BYPOSITION );

end;




function TfrmCadHospede.isCpf(CPF_Text: string): boolean;
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
