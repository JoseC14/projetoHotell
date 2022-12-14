unit uHospedeDao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uConexao, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Phys.MySQLDef, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Comp.UI,Vcl.Dialogs, Datasnap.DBClient;

type
  THospedeDAO = class(TDataModule)
    sqlInserir: TFDQuery;
    sqlAlterar: TFDQuery;
    sqlDeletar: TFDQuery;
  private
    { Private declarations }
  public
  function pesquisarHospede(Coluna,Pesquisa:String):Boolean;
  procedure deletarHospede(Id:Integer);
  procedure alterarHospede(Nome:String;Cpf:String;Sexo:String;Profissao:String;Idade:Integer;Cep:String;Fone:String;Nacionalidade:String;Idhospede:Integer);
  procedure InserirHospede(Nome:String;Cpf:String;Sexo:String;Profissao:String;Idade:Integer;Cep:String;Fone:String;Nacionalidade:String;Data:String);
    { Public declarations }
  end;

var
  HospedeDAO: THospedeDAO;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule2 }

procedure THospedeDAO.alterarHospede(Nome, Cpf, Sexo, Profissao: String;
  Idade: Integer; Cep, Fone, Nacionalidade: String; Idhospede: Integer);
begin
  sqlAlterar.Params[0].AsString  := Nome;
  sqlAlterar.Params[1].AsString  := Cpf;
  sqlAlterar.Params[2].AsString  := Sexo;
  sqlAlterar.Params[3].AsString  := Profissao;
  sqlAlterar.Params[4].AsInteger := Idade;
  sqlAlterar.Params[5].AsString  := Cep;
  sqlAlterar.Params[6].AsString  := Fone;
  sqlAlterar.Params[7].AsString  := Nacionalidade;
  sqlAlterar.Params[8].AsInteger := Idhospede;
  sqlAlterar.ExecSQL;
end;

procedure THospedeDAO.deletarHospede(Id: Integer);
begin
  sqlDeletar.Params[0].AsInteger:=Id;
  sqlDeletar.ExecSQL;
end;

procedure THospedeDAO.InserirHospede(Nome, Cpf, Sexo, Profissao: String;
  Idade: Integer; Cep, Fone, Nacionalidade, Data:String);
begin
  sqlInserir.Params[0].AsString  := Nome;
  sqlInserir.Params[1].AsString  := Cpf;
  sqlInserir.Params[2].AsString  := Sexo;
  sqlInserir.Params[3].AsString  := Profissao;
  sqlInserir.Params[4].AsInteger := Idade;
  sqlInserir.Params[5].AsString  := Cep;
  sqlInserir.Params[6].AsString  := Fone;
  sqlInserir.Params[7].AsString  := Nacionalidade;
  sqlInserir.Params[8].AsString  := Data;

   sqlInserir.ExecSQL;


end;


function THospedeDAO.pesquisarHospede(Coluna, Pesquisa: String): Boolean;
begin
//with Tb_hospedeTable do
//begin
//  close;
//  sql.Clear;
//  sql.Add('SELECT * FROM tb_hospede WHERE &coluna LIKE :pesquisa');
//
//  ParamByName('pesquisa').AsString:=Pesquisa;
//  MacroByName('coluna').AsString:=Coluna;
//  Open;
//
//
//end;

end;

end.
