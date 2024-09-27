program paletizator;

uses
  Vcl.Forms,
  uPrincipal in '..\fontes\uPrincipal.pas' {frmPrincipal},
  uAutenticacao in '..\fontes\uAutenticacao.pas' {frmAutenticacao},
  uFuncoesGerais in '..\fontes\uFuncoesGerais.pas',
  uDM in '..\fontes\uDM.pas' {DM: TDataModule},
  uFormPadrao in '..\fontes\uFormPadrao.pas' {frmPadrao},
  uAjuda in '..\fontes\uAjuda.pas' {frmAjuda},
  uCadUsuarios in '..\fontes\parametros\uCadUsuarios.pas' {frmCadastroUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadastroUsuarios, frmCadastroUsuarios);
  Application.Run;
end.
