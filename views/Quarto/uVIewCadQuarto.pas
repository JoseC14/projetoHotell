unit uVIewCadQuarto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TCadQuarto = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    comTipo: TComboBox;
    Label3: TLabel;
    intNumero: TSpinEdit;
    Cadastrar: TButton;
    procedure CadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadQuarto: TCadQuarto;

implementation

{$R *.dfm}

uses uQuartoDao, uViewGerQuarto;

procedure TCadQuarto.CadastrarClick(Sender: TObject);
begin
   QuartoDao := TQuartoDao.Create(Self);

  try
  QuartoDao.inserirQuarto(StrtoInt(intNumero.Text),comTipo.Text);
  ShowMessage('Quarto Cadastrado');
  uViewGerQuarto.GerQuarto.tbquarto.DataSource.DataSet.Refresh;
  QuartoDao.Free;
  Except on E:Exception do
  begin
  ShowMessage(E.Message);
  end;

  end;
end;

end.
