unit uViewQuarto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Samples.Spin, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, uConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uQuartoDao;

type
  TQuarto = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Cadastrar: TButton;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    txtPesquisa: TEdit;
    Pesquisar: TButton;
    comPesquisa: TComboBox;
    tbquarto: TDBGrid;
    Deletar: TButton;
    Alterar: TButton;
    intNumero: TSpinEdit;
    comTipo: TComboBox;
    Label5: TLabel;
    comEditQuarto: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    intEditNumero: TSpinEdit;
    Tb_quartoTable: TFDQuery;
    dsPesquisa: TDataSource;
    procedure CadastrarClick(Sender: TObject);
    procedure tbquartoCellClick(Column: TColumn);
    procedure AlterarClick(Sender: TObject);
    procedure DeletarClick(Sender: TObject);
    procedure PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Quarto: TQuarto;
  QuartoDao:TQuartoDao;

implementation

{$R *.dfm}

procedure TQuarto.AlterarClick(Sender: TObject);
begin
  QuartoDao := TQuartoDao.Create(Self);

  try
    QuartoDao.alterarQuarto(StrtoInt(intEditNumero.Text),comEditQuarto.Text,tbquarto.Fields[0].Value) ;
    ShowMessage('Quarto Alterado');
    tbquarto.DataSource.DataSet.Refresh;
    QuartoDao.Free;
  Except on E:Exception do
  begin
    ShowMessage(E.Message);
  end;
  end;
  end;


procedure TQuarto.DeletarClick(Sender: TObject);
begin
if Application.MessageBox('Deseja Realmente Deletar?','Aten��o!', MB_OK+MB_OKCANCEL)=1 then
  QuartoDao := TQuartoDao.Create(Self);
   try
     QuartoDao.deletarQuarto(tbquarto.Fields[0].Value) ;
     tbquarto.DataSource.DataSet.Refresh;
     except on E:Exception do
     begin
      ShowMessage(E.Message);
     end;

   end;
end;

procedure TQuarto.PesquisarClick(Sender: TObject);
begin
  if comPesquisa.ItemIndex = 0 then
begin
  with Tb_quartoTable do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM tb_quarto WHERE numero LIKE ''%'+txtPesquisa.Text+'%''');
    Open;
  end;
end
else if comPesquisa.ItemIndex = 1 then
begin
  with Tb_quartoTable do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM tb_quarto WHERE tipo LIKE ''%'+txtPesquisa.Text+'%''');
    Open;
  end;
end;
end;

procedure TQuarto.CadastrarClick(Sender: TObject);
begin
  QuartoDao := TQuartoDao.Create(Self);

  try
  QuartoDao.inserirQuarto(StrtoInt(intNumero.Text),comTipo.Text);
  ShowMessage('Quarto Cadastrado');
  tbquarto.DataSource.DataSet.Refresh;
  QuartoDao.Free;
  Except on E:Exception do
  begin
  ShowMessage(E.Message);
  end;

  end;

end;


procedure TQuarto.tbquartoCellClick(Column: TColumn);
begin
   intEditNumero.Text:=tbquarto.Fields[1].Value;
if tbquarto.Fields[2].Value='Solteiro Standard' then
begin
  comEditQuarto.ItemIndex := 0;
end
else if tbquarto.Fields[2].Value = 'Solteiro Master' then
begin
  comEditQuarto.ItemIndex := 1;
end
else if tbquarto.Fields[2].Value = 'Solteiro Deluxe' then
begin
  comEditQuarto.ItemIndex := 2;
end
else if tbquarto.Fields[2].Value = 'Casal Standard' then
begin
  comEditQuarto.ItemIndex := 3;
end
else if tbquarto.Fields[2].Value = 'Casal Master' then
begin
  comEditQuarto.ItemIndex := 4;
end
else if tbquarto.Fields[2].Value = 'Casal Deluxe' then
begin
  comEditQuarto.ItemIndex := 5;
end

end;

end.
