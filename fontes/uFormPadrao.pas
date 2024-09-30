unit uFormPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.ToolWin, System.ImageList, Vcl.ImgList, cxImageList,
  cxGraphics;

type
  TfrmPadrao = class(TForm)
    Timer: TTimer;
    StatusBar: TStatusBar;
    MENU: TMainMenu;
    Ajuda1: TMenuItem;
    Sair1: TMenuItem;
    pnBase: TPanel;
    ToolBar: TToolBar;
    btnSalvar: TToolButton;
    btnCancelar: TToolButton;
    ToolButton1: TToolButton;
    btnPesquisar: TToolButton;
    ToolButton3: TToolButton;
    btnVoltar: TToolButton;
    ImageList: TcxImageList;
    procedure TimerTimer(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Ajuda1Click(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPadrao: TfrmPadrao;

implementation

{$R *.dfm}

uses uFuncoesGerais, uAjuda;

procedure TfrmPadrao.Ajuda1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmAjuda, frmAjuda);
  frmAjuda.ShowModal;
  frmAjuda.Release;
  frmAjuda.Free;
end;

procedure TfrmPadrao.btnCancelarClick(Sender: TObject);
begin
  IF(Application.MessageBox('Deseja cancelar o processo atual?','',MB_ICONQUESTION+MB_YESNO)=mrNo)THEN
    ABORT;
end;

procedure TfrmPadrao.btnVoltarClick(Sender: TObject);
begin
  Sair1Click(self);
end;

procedure TfrmPadrao.Sair1Click(Sender: TObject);
begin
  ModalResult := mrcancel;
end;

procedure TfrmPadrao.TimerTimer(Sender: TObject);
begin
  StatusBar.Panels.Items[1].Text := FormatDateTime('DD/MM/YYYY HH:MM:SS', NOW);
  StatusBar.Panels.Items[3].Text := IntToStr(CodUsuario) + ' - ' + NomeUsuario;
end;

end.
