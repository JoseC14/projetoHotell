unit uViewProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask, uConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Samples.Spin, uProdutoDao;

type
  TProduto = class(TForm)
    PageControl1: TPageControl;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    floatPreco: TMaskEdit;
    txtNome: TEdit;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    txtPesquisa: TEdit;
    btnPesquisar: TButton;
    comPesquisa: TComboBox;
    tbproduto: TDBGrid;
    btnDeletar: TButton;
    btnAlterar: TButton;
    txtEditNome: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    txtEditPreco: TMaskEdit;
    Tb_produtoTable: TFDQuery;
    dsProduto: TDataSource;
    Label8: TLabel;
    intQuantidade: TSpinEdit;
    Label9: TLabel;
    txtEditQuantidade: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure tbprodutoCellClick(Column: TColumn);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id:Integer;
  end;

var
  Produto: TProduto;
  ProdutoDao:TProdutoDao;

implementation

{$R *.dfm}

procedure TProduto.Button1Click(Sender: TObject);
begin
ProdutoDao:=TProdutoDao.Create(Self);

try
   ProdutoDao.inserirProduto(txtNome.Text,floatPreco.Text,StrtoInt(intQuantidade.Text));
   ShowMessage('Produto Inserido');
   tbproduto.DataSource.DataSet.Refresh;
except on E:Exception do
begin
  ShowMessage(E.Message);
end;

end;


tbproduto.DataSource.DataSet.Refresh;
end;

procedure TProduto.btnAlterarClick(Sender: TObject);
begin
  ProdutoDao := TProdutoDao.Create(Self);
  try
  ProdutoDao.alterarProduto(txtEditNome.Text,txtEditPreco.Text,StrtoInt(txtEditQuantidade.Text),id);
  tbproduto.DataSource.DataSet.Refresh;
  except on E:Exception do
  begin
    ShowMessage(E.Message);
  end;

  end;

end;

procedure TProduto.btnDeletarClick(Sender: TObject);
begin

if Application.MessageBox('Deseja Realmente Deletar?','Atenção!', MB_OK+MB_OKCANCEL)=1 then
begin
   ProdutoDao := TProdutoDao.Create(Self);
   try
   ProdutoDao.deletarProduto(id);
   tbproduto.DataSource.DataSet.Refresh;
   Except on E:Exception do
   begin
     ShowMessage(E.Message);
   end;


   end;


end;
end;

procedure TProduto.btnPesquisarClick(Sender: TObject);
begin
if comPesquisa.Text = 'Nome' then
begin
  Tb_produtoTable.Close;
  Tb_produtoTable.SQL.Clear;
  Tb_produtoTable.SQL.Add('SELECT * FROM tb_produto WHERE nome LIKE ''%'+txtPesquisa.Text+'%''');

  Tb_produtoTable.Open;

end
else if comPesquisa.Text = 'Quantidade' then
begin
  Tb_produtoTable.Close;
  Tb_produtoTable.SQL.Clear;
  Tb_produtoTable.SQL.Add('SELECT * FROM tb_produto WHERE quantidade LIKE ''%'+txtPesquisa.Text+'%''');
  Tb_produtoTable.Open;

end
else if comPesquisa.Text = 'Preço' then
begin
  Tb_produtoTable.Close;
  Tb_produtoTable.SQL.Clear;
  Tb_produtoTable.SQL.Add('SELECT * FROM tb_produto WHERE preco LIKE ''%'+txtPesquisa.Text+'%''');
  Tb_produtoTable.Open;

end


end;

procedure TProduto.tbprodutoCellClick(Column: TColumn);
begin
  id                     := tbproduto.Fields[0].Value;
  txtEditPreco.Text      := tbproduto.Fields[1].Value;
  txtEditNome.Text       := tbproduto.Fields[2].Value;
  txtEditQuantidade.Text := tbproduto.Fields[3].Value;

end;

end.
