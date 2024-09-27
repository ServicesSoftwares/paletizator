unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, uFuncoesGerais, Vcl.ComCtrls,
  Vcl.ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, Vcl.Samples.Calendar, JvExExtCtrls,
  JvExtComponent, JvClock, Vcl.AppEvnts, System.ImageList, Vcl.ImgList, cxImageList;

type
  TfrmPrincipal = class(TForm)
    MENU: TMainMenu;
    Parametros1: TMenuItem;
    Empresa1: TMenuItem;
    Empresas1: TMenuItem;
    N1: TMenuItem;
    Robes1: TMenuItem;
    StatusBar: TStatusBar;
    Timer: TTimer;
    Panel1: TPanel;
    btnRobos: TcxButton;
    btnPrograma: TcxButton;
    cxButton1: TcxButton;
    Shape1: TShape;
    Panel2: TPanel;
    Calendar: TCalendar;
    JvClock1: TJvClock;
    JvClock2: TJvClock;
    ApplicationEvents: TApplicationEvents;
    TrayIcon: TTrayIcon;
    PopupMenu: TPopupMenu;
    ImageList: TcxImageList;
    Restaurar1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure Robes1Click(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure ApplicationEventsMinimize(Sender: TObject);
    procedure Restaurar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
  private
    { Private declarations }

    procedure AbrirCadastroUsuario;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadUsuarios;

procedure TfrmPrincipal.AbrirCadastroUsuario;
begin
  //verifica se usuario é administador ou desenvolvedor
  if not(ValidaPermissaoUsuario(CodUsuario))then
  begin
    Application.MessageBox('Usuário sem permissão para acesso a essa aplicação.','Aviso!',MB_OK+MB_ICONWARNING);
    ABORT;
  end;

  Application.CreateForm(tfrmCadastroUsuarios,frmCadastroUsuarios);
  frmCadastroUsuarios.ShowModal;
  frmCadastroUsuarios.Release;
  frmCadastroUsuarios.Free;
end;

procedure TfrmPrincipal.ApplicationEventsMinimize(Sender: TObject);
begin
  Self.Hide();
  Self.WindowState := wsMinimized;
  TrayIcon.Visible := True;
  TrayIcon.Animate := True;
  TrayIcon.BalloonHint  := 'Sistema está minimizado na barra de tarefas. Para visualizar a configuração use a opção restaurar.';
  TrayIcon.BalloonTitle := 'Informação';
  TrayIcon.BalloonFlags := bfInfo;
  TrayIcon.ShowBalloonHint;
end;

procedure TfrmPrincipal.Empresa1Click(Sender: TObject);
begin
  AbrirCadastroUsuario;
end;

procedure TfrmPrincipal.Fechar1Click(Sender: TObject);
begin
  Application.terminate;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  //
end;

procedure TfrmPrincipal.Restaurar1Click(Sender: TObject);
begin
  TrayIcon.Visible := False;
  Show();
  WindowState := wsMaximized;
  Application.BringToFront();
end;

procedure TfrmPrincipal.Robes1Click(Sender: TObject);
begin
  if not(ValidaPermissaoUsuario(CodUsuario))then
  begin
    Application.MessageBox('Usuário sem permissão para acesso a essa aplicação.','Aviso!',MB_OK+MB_ICONWARNING);
    ABORT;
  end;
end;

procedure TfrmPrincipal.TimerTimer(Sender: TObject);
begin
  StatusBar.Panels.Items[1].Text := FormatDateTime('DD/MM/YYYY HH:MM:SS', NOW);
  StatusBar.Panels.Items[3].Text := IntToStr(CodUsuario) + ' - ' + NomeUsuario;

  Calendar.CalendarDate := Now;
end;

end.
