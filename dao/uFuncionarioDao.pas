unit uFuncionarioDao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFuncionarioDao = class(TDataModule)
    sqlInserir: TFDQuery;
    sqlDeletar: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  procedure inserirFuncionario(dataadmissao, cpf, nome, genero, datanasc, user, senha, gerente :String);
  procedure deletarFuncionario(id : Integer);


  end;

var
  FuncionarioDao: TFuncionarioDao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uConexao;

{$R *.dfm}

{ TDataModule2 }


{ TFuncionarioDao }

procedure TFuncionarioDao.deletarFuncionario(id: Integer);
begin
  sqlDeletar.Params[0].AsInteger := id;
  sqlDeletar.ExecSQL;
end;

procedure TFuncionarioDao.inserirFuncionario(dataadmissao, cpf, nome, genero,
  datanasc, user, senha, gerente: String);
begin
  sqlInserir.Params[0].AsString := dataadmissao;
  sqlInserir.Params[1].AsString := cpf;
  sqlInserir.Params[2].AsString := nome;
  sqlInserir.Params[3].AsString := genero;
  sqlInserir.Params[4].AsString := datanasc;
  sqlInserir.Params[5].AsString := user;
  sqlInserir.Params[6].AsString := senha;
  sqlInserir.Params[7].AsString := gerente;

  sqlInserir.ExecSQL;
end;

end.
