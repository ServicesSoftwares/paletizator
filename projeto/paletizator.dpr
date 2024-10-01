program paletizator;

uses
  Vcl.Forms,
  uPrincipal in '..\fontes\uPrincipal.pas' {frmPrincipal},
  uAutenticacao in '..\fontes\uAutenticacao.pas' {frmAutenticacao},
  uFuncoesGerais in '..\fontes\uFuncoesGerais.pas',
  uDM in '..\fontes\uDM.pas' {DM: TDataModule},
  uFormPadrao in '..\fontes\uFormPadrao.pas' {frmPadrao},
  uAjuda in '..\fontes\uAjuda.pas' {frmAjuda},
  uCadUsuarios in '..\fontes\parametros\uCadUsuarios.pas' {frmCadastroUsuarios},
  uPesquisarRegistros in '..\fontes\uPesquisarRegistros.pas' {frmConsultarRegistros},
  uCadastroEmpresas in '..\fontes\parametros\uCadastroEmpresas.pas' {frmCadastroEmpresas},
  uCadastroRobos in '..\fontes\parametros\uCadastroRobos.pas' {frmCadastroRobos},
  uGeraProgramaPalete in '..\fontes\programacao\uGeraProgramaPalete.pas' {frmGeraProgramaPalete},
  uGeraProgramaPalete_DesenharCaixas in '..\fontes\programacao\uGeraProgramaPalete_DesenharCaixas.pas' {frmDesenharPalete},
  uGeraProgramaPalete_Caixas in '..\fontes\programacao\uGeraProgramaPalete_Caixas.pas' {frmCaixas},
  uGeraProgramaPalete_Caixas2 in '..\fontes\programacao\uGeraProgramaPalete_Caixas2.pas' {frmDesenharCamada2},
  uFormGerador in '..\fontes\programacao\uFormGerador.pas' {frmFormGerador};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmGeraProgramaPalete, frmGeraProgramaPalete);
  Application.CreateForm(TfrmDesenharPalete, frmDesenharPalete);
  Application.CreateForm(TfrmCaixas, frmCaixas);
  Application.CreateForm(TfrmDesenharCamada2, frmDesenharCamada2);
  Application.CreateForm(TfrmFormGerador, frmFormGerador);
  Application.Run;
end.
