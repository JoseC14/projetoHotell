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
    Tb_produtoTable: TFDQuery;
    dsProduto: TDataSource;
    Label1: TLabel;
    comFilPreco: TComboBox;
    Label2: TLabel;
    comFilNome: TComboBox;
    Label3: TLabel;
    comFilQuant: TComboBox;
    btnLimparFIltro: TButton;
    procedure tbprodutoCellClick(Column: TColumn);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure comFilPrecoChange(Sender: TObject);
    procedure comFilNomeChange(Sender: TObject);
    procedure comFilQuantChange(Sender: TObject);
    procedure btnLimparFIltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGerProduto: TfrmGerProduto;

implementation

{$R *.dfm}

uses uProdutoDao, uConexao;

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

procedure TfrmGerProduto.btnLimparFIltroClick(Sender: TObject);
begin
  comFilPreco.ItemIndex := 0;
  comFilNome.ItemIndex  := 0;
  comFilQuant.ItemIndex := 0;
  Tb_produtoTable.Open('SELECT * FROM tb_produto');
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

procedure TfrmGerProduto.comFilQuantChange(Sender: TObject);
begin
   if comFilQuant.ItemIndex = 1 then
   begin
     Tb_produtoTable.Open('SELECT * FROM tb_produto ORDER BY preco DESC');
   end
   else if comFilQuant.ItemIndex = 2 then
   begin
     Tb_produtoTable.Open('SELECT * FROM tb_produto ORDER BY preco ASC');
   end;
   comFilNome.ItemIndex  := 0;
   comFilPreco.ItemIndex := 0;
end;

procedure TfrmGerProduto.comFilNomeChange(Sender: TObject);
begin
    if comFilNome.ItemIndex = 1 then
    begin
      Tb_produtoTable.Open('SELECT * FROM tb_produto ORDER BY nome ASC');
    end
    else if comFilNome.ItemIndex = 2 then
    begin
      Tb_produtoTable.Open('SELECT * FROM tb_produto ORDER BY nome DESC');
    end
    else
    begin
      Tb_produtoTable.Open('SELECT * FROM tb_produto WHERE nome LIKE '''+comFilNome.Text+'%''');
    end;

    comFilPreco.ItemIndex := 0;
    comFilQuant.ItemIndex := 0;

end;

procedure TfrmGerProduto.comFilPrecoChange(Sender: TObject);
begin
  if comFilPreco.ItemIndex = 1 then
  begin
   with Tb_produtoTable do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM tb_produto ORDER BY preco DESC');
  end;
  end
  else if comFilPreco.ItemIndex = 2 then
  begin
   with Tb_produtoTable do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM tb_produto ORDER BY preco ASC');
  end;
  end;
  Tb_produtoTable.Open;

  comFilNome.ItemIndex  := 0;
  comFilQuant.ItemIndex := 0;

end;

procedure TfrmGerProduto.FormCreate(Sender: TObject);
begin
  txtEditPreco.Enabled      := False;
  txtEditNome.Enabled       := False;
  txtEditQuantidade.Enabled := False;
end;

procedure TfrmGerProduto.tbprodutoCellClick(Column: TColumn);
begin
  txtEditPreco.Text      := tbproduto.Fields[1].Value;
  txtEditNome.Text       := tbproduto.Fields[2].Value;
  txtEditQuantidade.Text := tbproduto.Fields[3].Value;
   txtEditPreco.Enabled     := True;
  txtEditNome.Enabled       := True;
  txtEditQuantidade.Enabled := True;

end;

end.
