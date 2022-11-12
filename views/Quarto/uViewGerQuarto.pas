unit uViewGerQuarto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Samples.Spin;

type
  TGerQuarto = class(TForm)
    tbquarto: TDBGrid;
    Label7: TLabel;
    comEditQuarto: TComboBox;
    Label6: TLabel;
    Deletar: TButton;
    Alterar: TButton;
    Pesquisar: TButton;
    txtPesquisa: TEdit;
    comPesquisa: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    intEditNumero: TSpinEdit;
    Tb_quartoTable: TFDQuery;
    dsQuarto: TDataSource;
    Label1: TLabel;
    comFilNumero: TComboBox;
    Label2: TLabel;
    comFilQuarto: TComboBox;
    btnLimparFIltro: TButton;
    procedure tbquartoCellClick(Column: TColumn);
    procedure PesquisarClick(Sender: TObject);
    procedure AlterarClick(Sender: TObject);
    procedure DeletarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure comFilNumeroChange(Sender: TObject);
    procedure comFilQuartoChange(Sender: TObject);
    procedure btnLimparFIltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GerQuarto: TGerQuarto;

implementation

{$R *.dfm}

uses uQuartoDao, uConexao;

procedure TGerQuarto.AlterarClick(Sender: TObject);
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

procedure TGerQuarto.btnLimparFIltroClick(Sender: TObject);
begin
  comFilNumero.ItemIndex := 0;
  comFilQuarto.ItemIndex := 0;
  Tb_quartoTable.Open('SELECT * FROM tb_quarto');
end;

procedure TGerQuarto.comFilNumeroChange(Sender: TObject);
begin
    if comFilNumero.ItemIndex = 1 then
    begin
      Tb_quartoTable.Open('SELECT * FROM tb_quarto ORDER BY numero DESC');
    end
    else if comFilNumero.ItemIndex = 2 then
    begin
      Tb_quartoTable.Open('SELECT * FROM tb_quarto ORDER BY numero ASC');
    end;

    comFilQuarto.ItemIndex := 0;
end;

procedure TGerQuarto.comFilQuartoChange(Sender: TObject);
begin
  Tb_quartoTable.Open('SELECT * FROM tb_quarto WHERE tipo = '''+comFilQuarto.Text+'''') ;
  comFilNumero.ItemIndex := 0;
end;

procedure TGerQuarto.DeletarClick(Sender: TObject);
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

procedure TGerQuarto.FormCreate(Sender: TObject);
begin
  comEditQuarto.Enabled := False;
  intEditNumero.Enabled := False;
end;

procedure TGerQuarto.PesquisarClick(Sender: TObject);
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
      Tb_quartoTable.Open('SELECT * FROM tb_quarto WHERE tipo LIKE ''%'+txtPesquisa.Text+'%''');
    end;
end;

procedure TGerQuarto.tbquartoCellClick(Column: TColumn);
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
end;
  comEditQuarto.Enabled := True;
  intEditNumero.Enabled := True;

end;


end.
