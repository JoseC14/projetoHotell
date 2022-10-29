unit uViewRelHospede;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmRelHospede = class(TForm)
    Label2: TLabel;
    dtInicio: TMaskEdit;
    dtFim: TMaskEdit;
    Label3: TLabel;
    comRelSexo: TComboBox;
    Label5: TLabel;
    rgAtivo: TRadioGroup;
    btnRelatorio: TButton;
    Tb_hospedeTable: TFDQuery;
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelHospede: TfrmRelHospede;

implementation

{$R *.dfm}

uses hospederelatorio;

procedure TfrmRelHospede.btnRelatorioClick(Sender: TObject);
begin
  if   (comRelSexo.ItemIndex = 2) AND (rgAtivo.ItemIndex = 2)  then
begin
  Tb_hospedeTable.Close;
  Tb_hospedeTable.sql.Clear;
  Tb_hospedeTable.sql.Add('SELECT * FROM tb_hospede WHERE datacadastro BETWEEN :inicio AND :fim ');
  Tb_hospedeTable.Params[0].AsString := dtInicio.Text;
  Tb_hospedeTable.Params[1].AsString := dtFim.Text;

end
else if (comRelSexo.ItemIndex = 0) AND (rgAtivo.ItemIndex = 2)  then
begin
  Tb_hospedeTable.Close;
  Tb_hospedeTable.sql.Clear;
  Tb_hospedeTable.sql.Add('SELECT * FROM tb_hospede WHERE datacadastro BETWEEN :inicio AND :fim AND sexo = ''Masculino''');
  Tb_hospedeTable.Params[0].AsString := dtInicio.Text;
  Tb_hospedeTable.Params[1].AsString := dtFim.Text;

end
else if (comRelSexo.ItemIndex = 1) AND (rgAtivo.ItemIndex = 2)  then
begin
  Tb_hospedeTable.Close;
  Tb_hospedeTable.sql.Clear;
  Tb_hospedeTable.sql.Add('SELECT * FROM tb_hospede WHERE datacadastro BETWEEN :inicio AND :fim AND sexo = ''Feminino''');
  Tb_hospedeTable.Params[0].AsString := dtInicio.Text;
  Tb_hospedeTable.Params[1].AsString := dtFim.Text;

end
else if   (comRelSexo.ItemIndex = 0) AND (rgAtivo.ItemIndex = 0)  then
begin
  Tb_hospedeTable.Close;
  Tb_hospedeTable.sql.Clear;
  Tb_hospedeTable.sql.Add('SELECT * FROM tb_hospede WHERE datacadastro BETWEEN :inicio AND :fim  AND sexo = ''Masculino'' AND ativo = ''S''');
  Tb_hospedeTable.Params[0].AsString := dtInicio.Text;
  Tb_hospedeTable.Params[1].AsString := dtFim.Text;

end
else if   (comRelSexo.ItemIndex = 1) AND (rgAtivo.ItemIndex = 0)  then
begin
  Tb_hospedeTable.Close;
  Tb_hospedeTable.sql.Clear;
  Tb_hospedeTable.sql.Add('SELECT * FROM tb_hospede WHERE datacadastro BETWEEN :inicio AND :fim AND sexo = ''feminino'' AND ativo = ''S''');
  Tb_hospedeTable.Params[0].AsString := dtInicio.Text;
  Tb_hospedeTable.Params[1].AsString := dtFim.Text;

end
else if   (comRelSexo.ItemIndex = 2) AND (rgAtivo.ItemIndex = 0)  then
begin
  Tb_hospedeTable.Close;
  Tb_hospedeTable.sql.Clear;
  Tb_hospedeTable.sql.Add('SELECT * FROM tb_hospede WHERE datacadastro BETWEEN :inicio AND :fim  AND ativo = ''S''');
  Tb_hospedeTable.Params[0].AsString := dtInicio.Text;
  Tb_hospedeTable.Params[1].AsString := dtFim.Text;

end
else if   (comRelSexo.ItemIndex = 0) AND (rgAtivo.ItemIndex = 1)  then
begin
  Tb_hospedeTable.Close;
  Tb_hospedeTable.sql.Clear;
  Tb_hospedeTable.sql.Add('SELECT * FROM tb_hospede WHERE datacadastro BETWEEN :inicio AND :fim  AND sexo = ''Feminino'' AND ativo = ''N''');
  Tb_hospedeTable.Params[0].AsString := dtInicio.Text;
  Tb_hospedeTable.Params[1].AsString := dtFim.Text;

end
else if   (comRelSexo.ItemIndex = 1) AND (rgAtivo.ItemIndex = 1)  then
begin
  Tb_hospedeTable.Close;
  Tb_hospedeTable.sql.Clear;
  Tb_hospedeTable.sql.Add('SELECT * FROM tb_hospede WHERE datacadastro BETWEEN :inicio AND :fim  AND sexo = ''Feminino'' AND ativo = ''N''');
  Tb_hospedeTable.Params[0].AsString := dtInicio.Text;
  Tb_hospedeTable.Params[1].AsString := dtFim.Text;

end ;






  Tb_hospedeTable.Open;
  hospederelatorio.RelatorioHospede.Relatorio.Preview;
end;

end.
