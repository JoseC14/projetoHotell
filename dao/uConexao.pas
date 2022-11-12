unit uConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Comp.UI, Datasnap.DBClient;

type
  TConexao = class(TDataModule)
    FDConexao: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    sqlLogin: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function Login(user,senha :String) : Boolean;
  end;

var
  Conexao: TConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule1 }

function TConexao.Login(user, senha: String): Boolean;
begin
  sqlLogin.Params[0].AsString := user;
  sqlLogin.Params[1].AsString := senha;

  sqlLogin.Open;

  if sqlLogin.IsEmpty = True then
  begin
    Result := False
  end
  else
  begin
    Result := True;
  end;

end;

end.
