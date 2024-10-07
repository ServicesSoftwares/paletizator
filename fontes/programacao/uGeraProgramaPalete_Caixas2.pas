unit uGeraProgramaPalete_Caixas2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmDesenharCamada2 = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    Button4: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    VAR
      PLADO : INTEGER;
  end;

var
  frmDesenharCamada2: TfrmDesenharCamada2;

  larg_c, comp_c : Integer;
  larg_cp, comp_cp : Integer;

  p_x, p_y : Integer;
  direc : Integer;

implementation

{$R *.dfm}

uses uDM, uFuncoesGerais, uGeraProgramaPalete_DesenharCaixas;

procedure TfrmDesenharCamada2.Button1Click(Sender: TObject);
var
  escala_cx : Integer;
begin
  ESCALA_CX := escala_pl;
  NUM_CAIXA := NUM_CAIXA + 1;

  larg_c    := LARG_cX;
  comp_c    := COMP_CX;

  larg_cp   := Trunc(larg_c / escala_cx);
  comp_cp   := Trunc(comp_c / escala_cx);

  IF(PLADO = 0)THEN //ESQUERDO
  BEGIN
    TEdit(frmDesenharPalete.FindComponent('PPW' + IntToStr(NUM_CAIXA - CX_CM1))).Text := '88';

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

      Parent        := frmDesenharPalete.Panel2;

      OnMouseMove   := frmDesenharPalete.ControlMouseMove;
      OnMouseDown   := frmDesenharPalete.ControlMouseDown;
      OnMouseUp     := frmDesenharPalete.ControlMouseUp;
      OnClick       := frmDesenharPalete.controlClick_2;
    end;

    frmDesenharPalete.Button3.Enabled := FALSE;
    frmDesenharPalete.Button5.Enabled := FALSE;

    frmDesenharPalete.Label10.Caption := IntToStr(NUM_CAIXA - CX_CM1);
    frmDesenharPalete.ContaCaixas;
  END;

  IF(PLADO = 1)THEN //ESQUERDO
  BEGIN
    TEdit(frmDesenharPalete.FindComponent('DPPW' + IntToStr(NUM_CAIXA - CX_CM1))).Text := '88';

    //CAIXA CAMADA 1
    PANEL_CX := TPanel.Create(frmDesenharPalete);
    with PANEL_CX do
    begin
      Name             :=  'DCX' + IntToStr(NUM_CAIXA);
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

      Parent        := frmDesenharPalete.Panel2;

      OnMouseMove   := frmDesenharPalete.ControlMouseMove;
      OnMouseDown   := frmDesenharPalete.ControlMouseDown;
      OnMouseUp     := frmDesenharPalete.ControlMouseUp;
      OnClick       := frmDesenharPalete.controlClick_2;
    end;

    frmDesenharPalete.Button3.Enabled := FALSE;
    frmDesenharPalete.Button5.Enabled := FALSE;

    frmDesenharPalete.Label10.Caption := IntToStr(NUM_CAIXA - CX_CM1);
    frmDesenharPalete.ContaCaixas;
  END;


  frmDesenharCamada2.Close;
end;

procedure TfrmDesenharCamada2.Button2Click(Sender: TObject);
var
  escala_cx : Integer;
begin
  ESCALA_CX := escala_pl;
  NUM_CAIXA := NUM_CAIXA + 1;

  larg_c    := LARG_cX;
  comp_c    := COMP_CX;

  larg_cp   := Trunc(larg_c / escala_cx);
  comp_cp   := Trunc(comp_c / escala_cx);

  IF(PLADO = 0)THEN //ESQUERDO
  BEGIN
    TEdit(frmDesenharPalete.FindComponent('PPW' + IntToStr(NUM_CAIXA - CX_CM1))).Text := '268';

    //CAIXA CAMADA 1
    PANEL_CX := TPanel.Create(frmDesenharPalete);
    with PANEL_CX do
    begin
      Name             :=  'CX' + IntToStr(NUM_CAIXA);
      Caption          := Name + ' ' + '»↓268↓«';
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

      Parent      := frmDesenharPalete.Panel2;

      OnMouseMove := frmDesenharPalete.ControlMouseMove;
      OnMouseDown := frmDesenharPalete.ControlMouseDown;
      OnMouseUp   := frmDesenharPalete.ControlMouseUp;
      OnClick     := frmDesenharPalete.controlClick_2;
    end;

    frmDesenharPalete.Button3.Enabled := FALSE;
    frmDesenharPalete.Button5.Enabled := FALSE;

    frmDesenharPalete.Label10.Caption := IntToStr(NUM_CAIXA - CX_CM1);
    frmDesenharPalete.ContaCaixas;
  END;
  frmDesenharCamada2.Close;
end;

procedure TfrmDesenharCamada2.Button3Click(Sender: TObject);
var
  escala_cx : Integer;
begin
  ESCALA_CX := escala_pl;
  NUM_CAIXA := NUM_CAIXA + 1;

  larg_c    := LARG_cX;
  comp_c    := COMP_CX;

  larg_cp   := Trunc(larg_c / escala_cx);
  comp_cp   := Trunc(comp_c / escala_cx);

  IF(PLADO = 0)THEN //ESQUERDO
  BEGIN
    TEdit(frmDesenharPalete.FindComponent('PPW' + IntToStr(NUM_CAIXA - CX_CM1))).Text := '0';

    //CAIXA CAMADA 1
    PANEL_CX := TPanel.Create(frmDesenharPalete);
    with PANEL_CX do
    begin
      Name             :=  'CX' + IntToStr(NUM_CAIXA);
      Caption          := Name + ' ' + '»←0←«';
      Width            := LARG_cp;
      Height           := COMP_cp;
      Top              := 50;
      Left             := 50;
      ParentColor      := False;
      ParentBackground := false;
      BevelKind        := bkSoft;
      BevelOuter       := bvNone;
      StyleElements    := [];
      Color            := clYellow;

      Parent := frmDesenharPalete.Panel2;

      OnMouseMove := frmDesenharPalete.ControlMouseMove;
      OnMouseDown := frmDesenharPalete.ControlMouseDown;
      OnMouseUp   := frmDesenharPalete.ControlMouseUp;
      OnClick     := frmDesenharPalete.controlClick_2;
    end;

    frmDesenharPalete.Button3.Enabled := FALSE;
    frmDesenharPalete.Button5.Enabled := FALSE;

    frmDesenharPalete.Label10.Caption := IntToStr(NUM_CAIXA - CX_CM1);
    frmDesenharPalete.ContaCaixas;
  END;
  frmDesenharCamada2.Close;
end;

procedure TfrmDesenharCamada2.Button4Click(Sender: TObject);
var
  escala_cx : Integer;
begin
  ESCALA_CX := escala_pl;
  NUM_CAIXA := NUM_CAIXA + 1;

  larg_c    := LARG_cX;
  comp_c    := COMP_CX;

  larg_cp   := Trunc(larg_c / escala_cx);
  comp_cp   := Trunc(comp_c / escala_cx);

  IF(PLADO = 0)THEN //ESQUERDO
  BEGIN
    TEdit(frmDesenharPalete.FindComponent('PPW' + IntToStr(NUM_CAIXA - CX_CM1))).Text := '178';

    //CAIXA CAMADA 1
    PANEL_CX := TPanel.Create(frmDesenharPalete);
    with PANEL_CX do
    begin
      Name             :=  'CX' + IntToStr(NUM_CAIXA);
      Caption          := Name + ' ' + '»→178→«';
      Width            := LARG_cp;
      Height           := COMP_cp;
      Top              := 50;
      Left             := 50;
      ParentColor      := False;
      ParentBackground := false;
      BevelKind        := bkSoft;
      BevelOuter       := bvNone;
      StyleElements    := [];
      Color            := clYellow;

      Parent      := frmDesenharPalete.Panel2;

      OnMouseMove := frmDesenharPalete.ControlMouseMove;
      OnMouseDown := frmDesenharPalete.ControlMouseDown;
      OnMouseUp   := frmDesenharPalete.ControlMouseUp;
      OnClick     := frmDesenharPalete.controlClick_2;

    end;

    frmDesenharPalete.Button3.Enabled := FALSE;
    frmDesenharPalete.Button5.Enabled := FALSE;

    frmDesenharPalete.Label10.Caption := IntToStr(NUM_CAIXA - CX_CM1);
    frmDesenharPalete.ContaCaixas;
  END;

  frmDesenharCamada2.Close;
end;

end.
