unit uServicoDao;

interface

uses
  System.SysUtils, System.Classes, uConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TServicoDao = class(TDataModule)
    sqlInserir: TFDQuery;
    sqlAlterar: TFDQuery;
    sqlDeletar: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure inserirServico(Nome,Preco:String);
    procedure alterarServico(Nome,Preco:String;Id:Integer);
    procedure deletarServico(Id:Integer);

  end;

var
  ServicoDao: TServicoDao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TServicoDao }



procedure TServicoDao.alterarServico(Nome, Preco: String; Id:Integer);
begin
  sqlAlterar.Params[0].AsString  := Nome;
  sqlAlterar.Params[1].AsString  := Preco;
  sqlAlterar.Params[2].AsInteger := Id;
  sqlAlterar.ExecSQL;
end;

procedure TServicoDao.deletarServico(Id: Integer);
begin
  sqlDeletar.Params[0].AsInteger := Id;
  sqlDeletar.ExecSQL;
end;

procedure TServicoDao.inserirServico(Nome, Preco: String);
begin
  sqlInserir.Params[0].AsString := Nome;
  sqlInserir.Params[1].AsString := Preco;
  sqlInserir.ExecSQL;
end;

end.
