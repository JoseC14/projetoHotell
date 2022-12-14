unit uViewCadServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmCadServico = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    txtNome: TEdit;
    Label3: TLabel;
    txtPreco: TMaskEdit;
    btnCadastrar: TButton;
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadServico: TfrmCadServico;

implementation

{$R *.dfm}

uses uServicoDao, uViewGerServico;

procedure TfrmCadServico.btnCadastrarClick(Sender: TObject);
begin
   ServicoDao := TServicoDao.Create(Self);
  try
    ServicoDao.inserirServico(txtNome.Text,txtPreco.Text);
    ShowMessage('Servi?o Cadastrado');
    ServicoDao.Free;
    uViewGerServico.frmGerServico.tbservico.DataSource.DataSet.Refresh;
  except on E:Exception do
  begin
    ShowMessage(E.Message);
  end;


  end;
end;

end.
