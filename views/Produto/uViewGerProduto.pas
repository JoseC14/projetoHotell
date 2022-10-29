unit uViewGerProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.Samples.Spin, Vcl.Mask, Vcl.StdCtrls;

type
  TfrmGerProduto = class(TForm)
    Label5: TLabel;
    Label4: TLabel;
    comPesquisa: TComboBox;
    txtPesquisa: TEdit;
    btnPesquisar: TButton;
    btnAlterar: TButton;
    btnDeletar: TButton;
    Label6: TLabel;
    txtEditNome: TEdit;
    Label7: TLabel;
    txtEditPreco: TMaskEdit;
    Label9: TLabel;
    txtEditQuantidade: TSpinEdit;
    tbproduto: TDBGrid;
    dsProduto: TDataSource;
    Tb_produtoTable: TFDQuery;
    procedure tbprodutoCellClick(Column: TColumn);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGerProduto: TfrmGerProduto;

implementation

{$R *.dfm}

uses uProdutoDao;

procedure TfrmGerProduto.btnAlterarClick(Sender: TObject);
begin
   ProdutoDao := TProdutoDao.Create(Self);
  try
  ProdutoDao.alterarProduto(txtEditNome.Text,txtEditPreco.Text,StrtoInt(txtEditQuantidade.Text),tbproduto.Fields[0].Value);
  tbproduto.DataSource.DataSet.Refresh;
  except on E:Exception do
  begin
    ShowMessage(E.Message);
  end;

  end;

end;

procedure TfrmGerProduto.btnDeletarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente Deletar?','Aten��o!', MB_OK+MB_OKCANCEL)=1 then
begin
   ProdutoDao := TProdutoDao.Create(Self);
   try
   ProdutoDao.deletarProduto(tbProduto.Fields[0].Value);
   tbproduto.DataSource.DataSet.Refresh;
   Except on E:Exception do
   begin
     ShowMessage(E.Message);
   end;


   end;


end;
end;

procedure TfrmGerProduto.btnPesquisarClick(Sender: TObject);
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
else if comPesquisa.Text = 'Pre�o' then
begin
  Tb_produtoTable.Close;
  Tb_produtoTable.SQL.Clear;
  Tb_produtoTable.SQL.Add('SELECT * FROM tb_produto WHERE preco LIKE ''%'+txtPesquisa.Text+'%''');
  Tb_produtoTable.Open;

end

end;

procedure TfrmGerProduto.tbprodutoCellClick(Column: TColumn);
begin
  txtEditPreco.Text      := tbproduto.Fields[1].Value;
  txtEditNome.Text       := tbproduto.Fields[2].Value;
  txtEditQuantidade.Text := tbproduto.Fields[3].Value;
end;

end.
