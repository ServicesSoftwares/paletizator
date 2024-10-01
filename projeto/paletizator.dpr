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
  uCadastroRobos in '..\fontes\parametros\uCadastroRobos.pas' {frmCadastroRobos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
