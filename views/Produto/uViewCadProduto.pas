unit uViewCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin, Vcl.Mask;

type
  TfrmCadProduto = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    txtNome: TEdit;
    Label3: TLabel;
    floatPreco: TMaskEdit;
    Label8: TLabel;
    intQuantidade: TSpinEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProduto: TfrmCadProduto;

implementation

{$R *.dfm}

uses uProdutoDao;

procedure TfrmCadProduto.Button1Click(Sender: TObject);
begin
  ProdutoDao:=TProdutoDao.Create(Self);

try
   ProdutoDao.inserirProduto(txtNome.Text,floatPreco.Text,StrtoInt(intQuantidade.Text));
   ShowMessage('Produto Inserido');
except on E:Exception do
begin
  ShowMessage(E.Message);
end;

end;
end;

end.

