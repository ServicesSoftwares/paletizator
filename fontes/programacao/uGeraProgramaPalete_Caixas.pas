unit uGeraProgramaPalete_Caixas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmCaixas = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    Button4: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCaixas: TfrmCaixas;
  larg_c, comp_c : Integer;
  larg_cp, comp_cp : Integer;

  p_x, p_y : Integer;
  direc : Integer;
implementation

{$R *.dfm}

uses uFuncoesGerais, uGeraProgramaPalete_DesenharCaixas;

procedure TfrmCaixas.Button1Click(Sender: TObject);
var
  escala_cx : Integer;
begin
  ESCALA_CX := escala_pl;
  NUM_CAIXA := NUM_CAIXA + 1;

  larg_c := LARG_cX;
  comp_c := COMP_CX;

  larg_cp := Trunc(larg_c / escala_cx);
  comp_cp := Trunc(comp_c / escala_cx);

  TEdit(frmDesenharPalete.FindComponent('PLW' + IntToStr(NUM_CAIXA))).Text := '88';

  //CAIXA CAMADA 1
  PANEL_CX := TPanel.Create(frmDesenharPalete);
  with PANEL_CX do
  begin
    Name :=  'CX' + IntToStr(NUM_CAIXA);
    Caption := Name + ' ' + '»↑88↑«';
    Width := comp_cp;
    Height := larg_cp;
    Top := 50;
    Left := 50;
    ParentColor := False;
    ParentBackground := false;
    BevelKind := bkSoft;
    BevelOuter := bvNone;
    StyleElements := [];
    Color := clYellow;

    Parent := frmDesenharPalete.Panel1;

    OnMouseMove := frmDesenharPalete.ControlMouseMove;
    OnMouseDown := frmDesenharPalete.ControlMouseDown;
    OnMouseUp := frmDesenharPalete.ControlMouseUp;
    OnClick := frmDesenharPalete.controlClick;
  end;

  //CAIXA VIRTUAL REFERENCIA CAMADA 2

  PANEL_CX_VR := TPanel.Create(frmDesenharPalete);
  with PANEL_CX_VR do
  begin
    Name :=  'CX_VR' + IntToStr(NUM_CAIXA);
    Caption := Name + ' ' + '»↑88↑«';
    Width := comp_cp;
    Height := larg_cp;
    Top := 50;
    Left := 50;
    ParentColor := False;
    ParentBackground := false;
    BevelKind := bkSoft;
    BevelOuter := bvNone;
    Color := $00004000;//$00333333;

    Parent := frmDesenharPalete.Panel2;
  end;

  frmDesenharPalete.Label8.Caption := IntToStr(NUM_CAIXA);
  frmDesenharPalete.Label10.Caption := IntToStr(0);
  frmDesenharPalete.ContaCaixas;
  CX_CM1 := NUM_CAIXA;
  frmCaixas.Close;
end;

procedure TfrmCaixas.Button2Click(Sender: TObject);
var
  escala_cx : Integer;
begin
  ESCALA_CX := escala_pl;
  NUM_CAIXA := NUM_CAIXA + 1;

  larg_c := LARG_cX;
  comp_c := COMP_CX;

  larg_cp := Trunc(larg_c / escala_cx);
  comp_cp := Trunc(comp_c / escala_cx);

  TEdit(frmDesenharPalete.FindComponent('PLW' + IntToStr(NUM_CAIXA))).Text := '268';

  //CAIXA CAMADA 1
  PANEL_CX := TPanel.Create(frmDesenharPalete);
  with PANEL_CX do
  begin
    Name :=  'CX' + IntToStr(NUM_CAIXA);
    Caption := Name + ' ' + '»↓268↓«';
    Width := comp_cp;
    Height := larg_cp;
    Top := 50;
    Left := 50;
    ParentColor := False;
    ParentBackground := false;
    BevelKind := bkSoft;
    BevelOuter := bvNone;
    StyleElements := [];
    Color := clYellow;

    Parent := frmDesenharPalete.Panel1;

    OnMouseMove := frmDesenharPalete.ControlMouseMove;
    OnMouseDown := frmDesenharPalete.ControlMouseDown;
    OnMouseUp := frmDesenharPalete.ControlMouseUp;
    OnClick := frmDesenharPalete.controlClick;
  end;

  //CAIXA VIRTUAL REFERENCIA CAMADA 2
  PANEL_CX_VR := TPanel.Create(frmDesenharPalete);
  with PANEL_CX_VR do
  begin
    Name :=  'CX_VR' + IntToStr(NUM_CAIXA);
    Caption := Name + ' ' + '»↓268↓«';
    Width := comp_cp;
    Height := larg_cp;
    Top := 50;
    Left := 50;
    ParentColor := False;
    ParentBackground := false;
    BevelKind := bkSoft;
    BevelOuter := bvNone;
    Color := $00004000;//$00333333;

    Parent := frmDesenharPalete.Panel2;
  end;

  frmDesenharPalete.Label8.Caption := IntToStr(NUM_CAIXA);
  frmDesenharPalete.Label10.Caption := IntToStr(0);
  CX_CM1 := NUM_CAIXA;
  frmDesenharPalete.ContaCaixas;
  frmCaixas.Close;
end;

procedure TfrmCaixas.Button3Click(Sender: TObject);
var
  escala_cx : Integer;
begin
  ESCALA_CX := escala_pl;
  NUM_CAIXA := NUM_CAIXA + 1;

  larg_c := LARG_cX;
  comp_c := COMP_CX;

  larg_cp := Trunc(larg_c / escala_cx);
  comp_cp := Trunc(comp_c / escala_cx);

  TEdit(frmDesenharPalete.FindComponent('PLW' + IntToStr(NUM_CAIXA))).Text := '0';

  //CAIXA CAMADA 1
  PANEL_CX := TPanel.Create(frmDesenharPalete);
  with PANEL_CX do
  begin
    Name :=  'CX' + IntToStr(NUM_CAIXA);
    Caption := Name + ' ' + '»←0←«';
    Width := larg_cp;
    Height := comp_cp;
    Top := 50;
    Left := 50;
    ParentColor := False;
    ParentBackground := false;
    BevelKind := bkSoft;
    BevelOuter := bvNone;
    StyleElements := [];
    Color := clYellow;

    Parent := frmDesenharPalete.Panel1;

    OnMouseMove := frmDesenharPalete.ControlMouseMove;
    OnMouseDown := frmDesenharPalete.ControlMouseDown;
    OnMouseUp := frmDesenharPalete.ControlMouseUp;
    OnClick := frmDesenharPalete.controlClick;

  end;

  //CAIXA VIRTUAL REFERENCIA CAMADA 2
  PANEL_CX_VR := TPanel.Create(frmDesenharPalete);
  with PANEL_CX_VR do
  begin
    Name :=  'CX_VR' + IntToStr(NUM_CAIXA);
    Caption := Name + ' ' + '»←0←«';
    Width := larg_cp;
    Height := comp_cp;
    Top := 50;
    Left := 50;
    ParentColor := False;
    ParentBackground := false;
    BevelKind := bkSoft;
    BevelOuter := bvNone;
    Color := $00004000;//$00333333;

    Parent := frmDesenharPalete.Panel2;
  end;

  frmDesenharPalete.Label8.Caption := IntToStr(NUM_CAIXA);
  frmDesenharPalete.Label10.Caption := IntToStr(0);
  CX_CM1 := NUM_CAIXA;
  frmDesenharPalete.ContaCaixas;
  frmCaixas.Close;
end;

procedure TfrmCaixas.Button4Click(Sender: TObject);
var
  escala_cx : Integer;
begin
  ESCALA_CX := escala_pl;
  NUM_CAIXA := NUM_CAIXA + 1;

  larg_c := LARG_cX;
  comp_c := COMP_CX;

  larg_cp := Trunc(larg_c / escala_cx);
  comp_cp := Trunc(comp_c / escala_cx);

  TEdit(frmDesenharPalete.FindComponent('PLW' + IntToStr(NUM_CAIXA))).Text := '178';

  //CAIXA CAMADA 1
  PANEL_CX := TPanel.Create(frmDesenharPalete);
  with PANEL_CX do
  begin

    Name :=  'CX' + IntToStr(NUM_CAIXA);
    Caption := Name + ' ' + '»→178→«';
    Width := larg_cp;
    Height := comp_cp;
    Top := 50;
    Left := 50;
    ParentColor := False;
    ParentBackground := false;
    BevelKind := bkSoft;
    BevelOuter := bvNone;
    StyleElements := [];
    Color := clYellow;

    Parent := frmDesenharPalete.Panel1;

    OnMouseMove := frmDesenharPalete.ControlMouseMove;
    OnMouseDown := frmDesenharPalete.ControlMouseDown;
    OnMouseUp := frmDesenharPalete.ControlMouseUp;
    OnClick := frmDesenharPalete.controlClick;

  end;

  //CAIXA VIRTUAL REFERENCIA CAMADA 2
  PANEL_CX_VR := TPanel.Create(frmDesenharPalete);
  with PANEL_CX_VR do
  begin

    Name :=  'CX_VR' + IntToStr(NUM_CAIXA);
    Caption := Name + ' ' + '»→178→«';
    Width := larg_cp;
    Height := comp_cp;
    Top := 50;
    Left := 50;
    ParentColor := False;
    ParentBackground := false;
    BevelKind := bkSoft;
    BevelOuter := bvNone;
    Color := $00004000;//$00333333;

    Parent := frmDesenharPalete.Panel2;
  end;

  frmDesenharPalete.Label8.Caption := IntToStr(NUM_CAIXA);
  frmDesenharPalete.Label10.Caption := IntToStr(0);
  CX_CM1 := NUM_CAIXA;
  frmDesenharPalete.ContaCaixas;
  frmCaixas.Close;
end;

end.
