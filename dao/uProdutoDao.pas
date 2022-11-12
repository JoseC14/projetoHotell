unit uProdutoDao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Intf, FireDAC.Comp.UI, FireDAC.Phys.MySQLDef, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uConexao;

type
  TProdutoDao = class(TDataModule)
    sqlInserir: TFDQuery;
    sqlAlterar: TFDQuery;
    sqlDeletar: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure deletarProduto(Id:Integer);
    procedure inserirProduto(Nome:String;Preco:String;Quantidade:Integer);
    procedure alterarProduto(Nome:String;Preco:String;Quantidade:Integer;Id:Integer);
  end;

var
  ProdutoDao: TProdutoDao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule2 }

procedure TProdutoDao.alterarProduto(Nome, Preco: String; Quantidade,
  Id: Integer);
begin
  sqlAlterar.Params[0].AsString  := Nome;
  sqlAlterar.Params[1].AsString  := Preco;
  sqlAlterar.Params[2].AsInteger := Quantidade;
  sqlAlterar.Params[3].AsInteger := Id;
  sqlAlterar.ExecSQL;
end;

procedure TProdutoDao.deletarProduto(Id: Integer);
begin
sqlDeletar.Params[0].AsInteger:=Id;
sqlDeletar.ExecSQL;
end;

procedure TProdutoDao.inserirProduto(Nome: String; Preco: String;
  Quantidade: Integer);
begin
  sqlInserir.Params[0].AsString  := Nome;
  sqlInserir.Params[1].AsString  := Preco;
  sqlInserir.Params[2].AsInteger := Quantidade;
  sqlInserir.ExecSQL;
end;

end.
