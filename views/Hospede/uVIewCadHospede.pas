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
    Profissão: TLabel;
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
  end;

var
  frmCadHospede: TfrmCadHospede;
  HospedeDaoObj:THospedeDAO;
  HospedeDtoObj:THospedeDTO;
  Hoje : TDateTime;


implementation

{$R *.dfm}

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
  HospedeDao.InserirHospede(HospedeDtoObj.Nome,HospedeDtoObj.Cpf,HospedeDtoObj.Sexo,HospedeDtoObj.Profissao,HospedeDtoObj.Idade,HospedeDtoObj.Cep,HospedeDtoObj.Fone,HospedeDtoObj.Nacionalidade, DatetoStr(Hoje));
  txtNome.Text      := '';
  txtCpf.Text       := '';
  txtCep.Text       := '';
  txtFone.Text      := '';
  txtProfissao.Text := '';

  ShowMessage('Hóspede Cadastrado');
  HospedeDtoObj.Free;
  HospedeDaoObj.Free;
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

end.
