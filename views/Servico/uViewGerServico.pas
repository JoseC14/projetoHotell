unit uViewGerServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmGerServico = class(TForm)
    txtPesquisa: TEdit;
    Label6: TLabel;
    btnDeletar: TButton;
    btnAlterar: TButton;
    btnPesquisar: TButton;
    Label5: TLabel;
    Label4: TLabel;
    comPesquisa: TComboBox;
    txtEditNome: TEdit;
    Label7: TLabel;
    txtEditPreco: TMaskEdit;
    tbservico: TDBGrid;
    dsServico: TDataSource;
    Tb_servicosTable: TFDQuery;
    comFilNome: TComboBox;
    Label2: TLabel;
    Label1: TLabel;
    comFilPreco: TComboBox;
    btnLimparFIltro: TButton;
    procedure tbservicoCellClick(Column: TColumn);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure comFilNomeChange(Sender: TObject);
    procedure comFilPrecoChange(Sender: TObject);
    procedure btnLimparFIltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGerServico: TfrmGerServico;

implementation

{$R *.dfm}

uses uServicoDao, uConexao;

procedure TfrmGerServico.btnAlterarClick(Sender: TObject);
begin
   ServicoDao := TServicoDao.Create(Self);

  try
    ServicoDao.alterarServico(txtEditNome.Text,txtEditPreco.Text,tbservico.Fields[0].Value);
    ShowMessage('Servi�o Alterado');
    tbservico.DataSource.DataSet.Refresh;
  except on E:Exception do
    begin
      ShowMessage(E.Message);
    end;

  end;
end;

procedure TfrmGerServico.btnDeletarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente Deletar?','Aten��o!', MB_OK+MB_OKCANCEL)=1 then
  begin
    ServicoDao := TServicoDao.Create(Self);
    ServicoDao.deletarServico(tbservico.Fields[0].Value);
    tbservico.DataSource.DataSet.Refresh;
    ServicoDao.Free;
  end;
end;

procedure TfrmGerServico.btnLimparFIltroClick(Sender: TObject);
begin
  comFilNome.ItemIndex  := 0;
  comFilPreco.ItemIndex := 0;
  Tb_servicosTable.Open('SELECT * FROM tb_servicos');
end;

procedure TfrmGerServico.btnPesquisarClick(Sender: TObject);
begin
   if comPesquisa.Text = 'Nome' then
  begin
     Tb_servicosTable.Close;
     Tb_servicosTable.sql.Clear;
     Tb_servicosTable.sql.Add('SELECT * FROM tb_servicos WHERE nome LIKE ''%'+txtPesquisa.Text+'%''');
     Tb_servicosTable.Open;
  end
  else if comPesquisa.Text = 'Pre�o' then
  begin
     Tb_servicosTable.Close;
     Tb_servicosTable.sql.Clear;
     Tb_servicosTable.sql.Add('SELECT * FROM tb_servicos WHERE preco LIKE ''%'+txtPesquisa.Text+'%''');
     Tb_servicosTable.Open;
  end;
end;

procedure TfrmGerServico.comFilNomeChange(Sender: TObject);
begin
  if comFilNome.ItemIndex = 1 then
  begin
    Tb_servicosTable.Open('SELECT * FROM tb_servicos ORDER BY nome ASC');
  end
  else if comFilNome.ItemIndex = 2 then
  begin
    Tb_servicosTable.Open('SELECT * FROM tb_servicos ORDER by nome DESC');
  end
  else
  begin
    Tb_servicosTable.Open('SELECT * FROM tb_servicos WHERE nome LIKE '''+comFilNome.Text+'%''');
  end;

  comFilPreco.ItemIndex := 0;

end;

procedure TfrmGerServico.comFilPrecoChange(Sender: TObject);
begin
  if comFilPreco.ItemIndex = 1 then
  begin
    Tb_servicosTable.Open('SELECT * FROM tb_servicos ORDER BY preco DESC');
  end
  else if comFilPreco.ItemIndex = 2 then
  begin
    Tb_servicosTable.Open('SELECT * FROM tb_servicos ORDER BY preco ASC');
  end;

  comFilNome.ItemIndex := 0;
end;

procedure TfrmGerServico.FormCreate(Sender: TObject);
begin
  txtEditNome.Enabled  := False;
  txtEditPreco.Enabled := False;
end;

procedure TfrmGerServico.tbservicoCellClick(Column: TColumn);
begin
  txtEditNome.Text  := tbservico.Fields[1].AsString;
  txtEditPreco.Text := tbservico.Fields[2].AsString;
  txtEditNome.Enabled  := True;
  txtEditPreco.Enabled   := True;
end;

end.
