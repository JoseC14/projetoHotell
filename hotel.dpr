program hotel;

uses
  Vcl.Forms,
  uViewPrincipal in 'views\uViewPrincipal.pas' {Form2},
  uViewGerReserva in 'views\uViewGerReserva.pas' {cadReserva},
  uConexao in 'dao\uConexao.pas' {DataModule1: TDataModule},
  uViewHospede in 'views\uViewHospede.pas' {Hospede},
  uViewCheckOut in 'views\uViewCheckOut.pas' {Form1},
  uViewQuarto in 'views\uViewQuarto.pas' {Quarto},
  uViewFuncionario in 'views\uViewFuncionario.pas' {Form7},
  uViewAdcProduto in 'views\uViewAdcProduto.pas' {Form9},
  uVIewAdcServico in 'views\uVIewAdcServico.pas' {Form10},
  HospedeDTO in 'dto\HospedeDTO.pas',
  uHospedeDao in 'dao\uHospedeDao.pas' {HospedeDAO: TDataModule},
  uViewProduto in 'views\uViewProduto.pas' {Produto},
  uViewServico in 'views\uViewServico.pas' {Servico},
  uProdutoDao in 'dao\uProdutoDao.pas' {ProdutoDao: TDataModule},
  uQuartoDao in 'dao\uQuartoDao.pas' {QuartoDao: TDataModule},
  uServicoDao in 'dao\uServicoDao.pas' {ServicoDao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TcadReserva, cadReserva);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(THospede, Hospede);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TQuarto, Quarto);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(THospedeDAO, HospedeDAO);
  Application.CreateForm(TProduto, Produto);
  Application.CreateForm(TServico, Servico);
  Application.CreateForm(TProdutoDao, ProdutoDao);
  Application.CreateForm(TQuartoDao, QuartoDao);
  Application.CreateForm(TServicoDao, ServicoDao);
  Application.Run;
end.
