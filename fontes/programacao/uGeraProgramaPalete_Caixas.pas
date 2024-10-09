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
    VAR
      PLADO : INTEGER;
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

  IF(PLADO = 0)THEN //ESQUERDO
  BEGIN
    TEdit(frmDesenharPalete.FindComponent('PLW' + IntToStr(NUM_CAIXA))).Text := '88';

    //CAIXA CAMADA 1
    PANEL_CX := TPanel.Create(frmDesenharPalete);
    with PANEL_CX do
    begin
      Name             :=  'CX' + IntToStr(NUM_CAIXA);
      Caption          := Name + ' ' + '»↑88↑«';
      Width            := comp_cp;
      Height           := larg_cp;
      Top              := 50;
      Left             := 50;
      ParentColor      := False;
      ParentBackground := false;
      BevelKind        := bkSoft;
      BevelOuter       := bvNone;
      StyleElements    := [];
      Color            := clYellow;

      Parent      := frmDesenharPalete.Panel1;

      OnMouseMove := frmDesenharPalete.ControlMouseMove;
      OnMouseDown := frmDesenharPalete.ControlMouseDown;
      OnMouseUp   := frmDesenharPalete.ControlMouseUp;
      OnClick     := frmDesenharPalete.controlClick;
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
  END;

  IF(PLADO = 1)THEN //DIREITO
  BEGIN
    inc(DNUM_CAIXA);

    TEdit(frmDesenharPalete.FindComponent('DPLW' + IntToStr(DNUM_CAIXA))).Text := '88';

    //CAIXA CAMADA 1
    PANEL_DCX := TPanel.Create(frmDesenharPalete);
    with PANEL_DCX do
    begin
      Name :=  'DCX' + IntToStr(DNUM_CAIXA);
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

      Parent := frmDesenharPalete.Panel3;

      OnMouseMove := frmDesenharPalete.ControlMouseDirMove;
      OnMouseDown := frmDesenharPalete.ControlMouseDirDown;
      OnMouseUp   := frmDesenharPalete.ControlMouseDirUp;
      OnClick     := frmDesenharPalete.controlClickDir;
    end;

    //CAIXA VIRTUAL REFERENCIA CAMADA 2
    PANEL_DCX_VR := TPanel.Create(frmDesenharPalete);
    with PANEL_DCX_VR do
    begin
      Name :=  'DCX_VR' + IntToStr(DNUM_CAIXA);
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

      Parent := frmDesenharPalete.Panel4;
    end;

    frmDesenharPalete.lblTotalCxaCam1.Caption := IntToStr(DNUM_CAIXA);
    frmDesenharPalete.lblTotalCxaCam2.Caption := IntToStr(0);
    frmDesenharPalete.ContaCaixasDir;
    CX_DCM1 := DNUM_CAIXA;
  END;

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

  IF(PLADO = 0)THEN //ESQUERDO
  BEGIN
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
      OnMouseUp   := frmDesenharPalete.ControlMouseUp;
      OnClick     := frmDesenharPalete.controlClick;
    end;

    //CAIXA VIRTUAL REFERENCIA CAMADA 2
    PANEL_DCX_VR := TPanel.Create(frmDesenharPalete);
    with PANEL_DCX_VR do
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
  END;

  IF(PLADO = 1)THEN //DIREITO
  BEGIN
    inc(DNUM_CAIXA);

    TEdit(frmDesenharPalete.FindComponent('DPLW' + IntToStr(DNUM_CAIXA))).Text := '268';

    //CAIXA CAMADA 1
    PANEL_DCX := TPanel.Create(frmDesenharPalete);
    with PANEL_DCX do
    begin
      Name :=  'DCX' + IntToStr(DNUM_CAIXA);
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

      Parent := frmDesenharPalete.Panel3;

      OnMouseMove := frmDesenharPalete.ControlMouseDirMove;
      OnMouseDown := frmDesenharPalete.ControlMouseDirDown;
      OnMouseUp   := frmDesenharPalete.ControlMouseDirUp;
      OnClick     := frmDesenharPalete.controlClickDir;
    end;

    //CAIXA VIRTUAL REFERENCIA CAMADA 2
    PANEL_DCX_VR := TPanel.Create(frmDesenharPalete);
    with PANEL_DCX_VR do
    begin
      Name :=  'DCX_VR' + IntToStr(DNUM_CAIXA);
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

      Parent := frmDesenharPalete.Panel4;
    end;

    frmDesenharPalete.lblTotalCxaCam1.Caption := IntToStr(DNUM_CAIXA);
    frmDesenharPalete.lblTotalCxaCam2.Caption := IntToStr(0);
    frmDesenharPalete.ContaCaixasDir;
    CX_DCM1 := DNUM_CAIXA;
  END;

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

  IF(PLADO = 0)THEN //ESQUERDO
  BEGIN
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
      OnMouseUp   := frmDesenharPalete.ControlMouseUp;
      OnClick     := frmDesenharPalete.controlClick;

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
  END;

  IF(PLADO = 1)THEN //DIREITO
  BEGIN
    inc(DNUM_CAIXA);

    TEdit(frmDesenharPalete.FindComponent('DPLW' + IntToStr(DNUM_CAIXA))).Text := '0';

    //CAIXA CAMADA 1
    PANEL_DCX := TPanel.Create(frmDesenharPalete);
    with PANEL_DCX do
    begin
      Name :=  'DCX' + IntToStr(NUM_CAIXA);
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

      Parent := frmDesenharPalete.Panel3;

      OnMouseMove := frmDesenharPalete.ControlMouseDirMove;
      OnMouseDown := frmDesenharPalete.ControlMouseDirDown;
      OnMouseUp   := frmDesenharPalete.ControlMouseDirUp;
      OnClick     := frmDesenharPalete.controlClickDir;

    end;

    //CAIXA VIRTUAL REFERENCIA CAMADA 2
    PANEL_DCX_VR := TPanel.Create(frmDesenharPalete);
    with PANEL_DCX_VR do
    begin
      Name :=  'DCX_VR' + IntToStr(DNUM_CAIXA);
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

      Parent := frmDesenharPalete.Panel4;
    end;

    frmDesenharPalete.lblTotalCxaCam1.Caption := IntToStr(DNUM_CAIXA);
    frmDesenharPalete.lblTotalCxaCam2.Caption := IntToStr(0);
    frmDesenharPalete.ContaCaixasDir;
    CX_DCM1 := DNUM_CAIXA;
  END;

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

  IF(PLADO = 0)THEN //ESQUERDO
  BEGIN
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
      OnMouseUp   := frmDesenharPalete.ControlMouseUp;
      OnClick     := frmDesenharPalete.controlClick;

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
  END;

  IF(PLADO = 1)THEN //DIREITO
  BEGIN
    inc(DNUM_CAIXA);

    TEdit(frmDesenharPalete.FindComponent('DPLW' + IntToStr(DNUM_CAIXA))).Text := '178';

    //CAIXA CAMADA 1
    PANEL_DCX := TPanel.Create(frmDesenharPalete);
    with PANEL_DCX do
    begin

      Name :=  'DCX' + IntToStr(DNUM_CAIXA);
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

      Parent := frmDesenharPalete.Panel3;

      OnMouseMove := frmDesenharPalete.ControlMouseDirMove;
      OnMouseDown := frmDesenharPalete.ControlMouseDirDown;
      OnMouseUp   := frmDesenharPalete.ControlMouseDirUp;
      OnClick     := frmDesenharPalete.controlClickDir;

    end;

    //CAIXA VIRTUAL REFERENCIA CAMADA 2
    PANEL_DCX_VR := TPanel.Create(frmDesenharPalete);
    with PANEL_DCX_VR do
    begin

      Name :=  'DCX_VR' + IntToStr(DNUM_CAIXA);
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

      Parent := frmDesenharPalete.Panel4;
    end;

    frmDesenharPalete.lblTotalCxaCam1.Caption := IntToStr(DNUM_CAIXA);
    frmDesenharPalete.lblTotalCxaCam2.Caption := IntToStr(0);
    frmDesenharPalete.ContaCaixasDir;
    CX_DCM1 := DNUM_CAIXA;
  END;

  frmCaixas.Close;
end;

end.
