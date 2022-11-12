program hotel;

uses
  Vcl.Forms,
  uViewLogin in 'views\uViewLogin.pas' {frmLogin},
  uConexao in 'dao\uConexao.pas' {Conexao: TDataModule},
  uVIewAdcServico in 'views\uVIewAdcServico.pas' {AdcServico},
  HospedeDTO in 'dto\HospedeDTO.pas',
  uHospedeDao in 'dao\uHospedeDao.pas' {HospedeDAO: TDataModule},
  uProdutoDao in 'dao\uProdutoDao.pas' {ProdutoDao: TDataModule},
  uQuartoDao in 'dao\uQuartoDao.pas' {QuartoDao: TDataModule},
  uServicoDao in 'dao\uServicoDao.pas' {ServicoDao: TDataModule},
  uVIewCadHospede in 'views\Hospede\uVIewCadHospede.pas' {frmCadHospede},
  uViewGerHospede in 'views\Hospede\uViewGerHospede.pas' {frmGerHospede},
  uViewRelHospede in 'views\Hospede\uViewRelHospede.pas' {frmRelHospede},
  uViewProdutoFinal in 'views\Produto\uViewProdutoFinal.pas' {frmProduto},
  uViewCadProduto in 'views\Produto\uViewCadProduto.pas' {frmCadProduto},
  uViewGerProduto in 'views\Produto\uViewGerProduto.pas' {frmGerProduto},
  uViewServicoFinal in 'views\Servico\uViewServicoFinal.pas' {frmServico},
  uViewCadServico in 'views\Servico\uViewCadServico.pas' {frmCadServico},
  uViewHospedeFinal in 'views\Hospede\uViewHospedeFinal.pas' {frmHospede},
  uViewGerServico in 'views\Servico\uViewGerServico.pas' {frmGerServico},
  uViewQuartoFinal in 'views\Quarto\uViewQuartoFinal.pas' {frmQuarto},
  uVIewCadQuarto in 'views\Quarto\uVIewCadQuarto.pas' {CadQuarto},
  uViewGerQuarto in 'views\Quarto\uViewGerQuarto.pas' {GerQuarto},
  uViewGerFuncionario in 'views\Funcionarios\uViewGerFuncionario.pas' {frmGerFuncionario},
  uViewCadFuncionario in 'views\Funcionarios\uViewCadFuncionario.pas' {frmCadFuncionario},
  uViewFuncionarioFinal in 'views\Funcionarios\uViewFuncionarioFinal.pas' {frmFuncionarioFinal},
  uHospedeReport in 'relatorios\uHospedeReport.pas' {Form1},
  uFuncionarioDao in 'dao\uFuncionarioDao.pas' {FuncionarioDao: TDataModule},
  uViewPrincipal in 'views\uViewPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TConexao, Conexao);
  Application.CreateForm(TAdcServico, AdcServico);
  Application.CreateForm(THospedeDAO, HospedeDAO);
  Application.CreateForm(TProdutoDao, ProdutoDao);
  Application.CreateForm(TQuartoDao, QuartoDao);
  Application.CreateForm(TServicoDao, ServicoDao);
  Application.CreateForm(TfrmCadHospede, frmCadHospede);
  Application.CreateForm(TfrmGerHospede, frmGerHospede);
  Application.CreateForm(TfrmRelHospede, frmRelHospede);
  Application.CreateForm(TfrmProduto, frmProduto);
  Application.CreateForm(TfrmCadProduto, frmCadProduto);
  Application.CreateForm(TfrmGerProduto, frmGerProduto);
  Application.CreateForm(TfrmServico, frmServico);
  Application.CreateForm(TfrmCadServico, frmCadServico);
  Application.CreateForm(TfrmHospede, frmHospede);
  Application.CreateForm(TfrmGerServico, frmGerServico);
  Application.CreateForm(TfrmQuarto, frmQuarto);
  Application.CreateForm(TCadQuarto, CadQuarto);
  Application.CreateForm(TGerQuarto, GerQuarto);
  Application.CreateForm(TfrmGerFuncionario, frmGerFuncionario);
  Application.CreateForm(TfrmCadFuncionario, frmCadFuncionario);
  Application.CreateForm(TfrmFuncionarioFinal, frmFuncionarioFinal);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFuncionarioDao, FuncionarioDao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
