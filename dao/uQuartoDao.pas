unit uQuartoDao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uConexao;

type
  TQuartoDao = class(TDataModule)
    sqlInserir: TFDQuery;
    sqlAlterar: TFDQuery;
    sqlDeletar: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure inserirQuarto(Numero:Integer;Tipo:String);
    procedure alterarQuarto(Numero:Integer;Tipo:String;Id:Integer);
    procedure deletarQuarto(Id:Integer);
  end;

var
  QuartoDao: TQuartoDao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule2 }


{ TDataModule2 }

procedure TQuartoDao.alterarQuarto(Numero: Integer; Tipo: String; Id: Integer);
begin
  sqlAlterar.Params[0].AsInteger := Numero;
  sqlAlterar.Params[1].AsString  := Tipo;
  sqlAlterar.Params[2].AsInteger := Id;
  sqlAlterar.ExecSQL;
end;

procedure TQuartoDao.deletarQuarto(Id: Integer);
begin
  sqlDeletar.Params[0].AsInteger := Id;
  sqlDeletar.ExecSQL;
end;

procedure TQuartoDao.inserirQuarto(Numero: Integer; Tipo: String);
begin
  sqlInserir.Params[0].AsInteger := Numero;
  sqlInserir.Params[1].AsString  := Tipo;
  sqlInserir.ExecSQL;
end;

end.
