unit uPesquisarRegistros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  cxImageList, cxGraphics, Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls,
  cxLookAndFeels, cxLookAndFeelPainters, cxButtons, JvExControls,
  JvGradient, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, StrUtils;

type
  TfrmConsultarRegistros = class(TForm)
    MENU: TMainMenu;
    Ajuda1: TMenuItem;
    Sair1: TMenuItem;
    Timer: TTimer;
    ImageList: TcxImageList;
    pnFiltros: TPanel;
    pnAcoes: TPanel;
    pnDados: TPanel;
    GroupBox1: TGroupBox;
    btnSelecionar: TcxButton;
    cxButton2: TcxButton;
    Gradient: TJvGradient;
    Label1: TLabel;
    cbCampoBuscar: TComboBox;
    edtTextoBuscar: TEdit;
    DBGrid: TDBGrid;
    DS: TDataSource;
    QRY: TFDQuery;
    cbLabelCampoBuscar: TComboBox;
    procedure Sair1Click(Sender: TObject);
    procedure Ajuda1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbLabelCampoBuscarChange(Sender: TObject);
    procedure edtTextoBuscarChange(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
  private
    { Private declarations }
    procedure MontaSQL(PSELECT, PWHERE, PORDERBY, PFILTRO, PTEXTOBUSCAR : STRING);
    procedure MontaFRM(PCAMPOSFILTROS, PLABELCAMPOSFILTRO : STRING);
  public
    { Public declarations }
    VAR
      PTITULO, PSELECT, PWHERE, PORDERBY, PCAMPOSFILTROS, PLABELCAMPOSFILTRO, PCAMPORET, PRET : STRING;
  end;

var
  frmConsultarRegistros: TfrmConsultarRegistros;

implementation

{$R *.dfm}

uses uFuncoesGerais, uAjuda, uDM;

procedure TfrmConsultarRegistros.Ajuda1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmAjuda, frmAjuda);
  frmAjuda.ShowModal;
  frmAjuda.Release;
  frmAjuda.Free;
end;

procedure TfrmConsultarRegistros.btnSelecionarClick(Sender: TObject);
begin
  PRET := QRY.FieldByName(PCAMPORET).AsString;
  ModalResult := mrOk;
end;

procedure TfrmConsultarRegistros.cbLabelCampoBuscarChange(Sender: TObject);
begin
  cbCampoBuscar.ItemIndex := cbLabelCampoBuscar.ItemIndex;
end;

procedure TfrmConsultarRegistros.cxButton2Click(Sender: TObject);
begin
  Sair1Click(self);
end;

procedure TfrmConsultarRegistros.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Var
  w : Integer;

begin
  w := 5 + DBGrid.Canvas.TextExtent(Column.Field.DisplayText).cx;
  if w>column.Width then
    Column.Width := w;
end;

procedure TfrmConsultarRegistros.edtTextoBuscarChange(Sender: TObject);
begin
  MontaSQL(PSELECT, PWHERE, PORDERBY, cbCampoBuscar.Text, edtTextoBuscar.Text);
end;

procedure TfrmConsultarRegistros.FormActivate(Sender: TObject);
Var
  i : Integer;

begin
  // Initialize width
  for I := 0 to DBGrid.Columns.Count - 1 do
    DBGrid.Columns[i].Width := 5 + DBGrid.Canvas.TextWidth(DBGrid.Columns[i].title.caption)
end;

procedure TfrmConsultarRegistros.FormShow(Sender: TObject);
begin
  MontaFRM(PCAMPOSFILTROS, PLABELCAMPOSFILTRO);
  MontaSQL(PSELECT, PWHERE, PORDERBY, cbCampoBuscar.Text, edtTextoBuscar.Text);

  frmConsultarRegistros.Caption := frmConsultarRegistros.Caption + ' ' + PTITULO;
end;

procedure TfrmConsultarRegistros.MontaFRM(PCAMPOSFILTROS, PLABELCAMPOSFILTRO : STRING);
VAR
  FILTROS, LABELS : TArray<System.string>;

  I, J : INTEGER;
begin
  //
  cbCampoBuscar.Items.Clear;
  cbLabelCampoBuscar.Items.Clear;

  FILTROS := SplitString(PCAMPOSFILTROS, ';');
  LABELS  := SplitString(PLABELCAMPOSFILTRO, ';');

  for I := Low(FILTROS) to High(FILTROS) do
    cbCampoBuscar.Items.Add(FILTROS[I]);

  for j := Low(LABELS) to High(LABELS) do
    cbLabelCampoBuscar.Items.Add(LABELS[I]);

  cbLabelCampoBuscar.ItemIndex := 0;
  cbLabelCampoBuscarChange(self);
end;

procedure TfrmConsultarRegistros.MontaSQL(PSELECT, PWHERE,
  PORDERBY, PFILTRO, PTEXTOBUSCAR: STRING);
begin
  //
  QRY.Close;
  QRY.SQL.Clear;
  QRY.SQL.Add(PSELECT);
  IF(LENGTH(TRIM(PWHERE)) > 0)THEN
  BEGIN
    QRY.SQL.Add(' WHERE ' + PWHERE);

    IF(LENGTH(TRIM(PTEXTOBUSCAR)) > 0)THEN
      QRY.SQL.Add(' AND ' + PFILTRO + ' LIKE ' + PTEXTOBUSCAR);
  END;
  IF(LENGTH(TRIM(PORDERBY)) > 0)THEN
    QRY.SQL.Add(' ORDER BY ' + PORDERBY);
  QRY.Open;
  QRY.FetchAll;
  QRY.First;

  btnSelecionar.Enabled := NOT(QRY.IsEmpty);
end;

procedure TfrmConsultarRegistros.Sair1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
