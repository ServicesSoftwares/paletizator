unit uGeraProgramaPalete_DesenharCaixas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormPadrao, System.ImageList,
  Vcl.ImgList, cxImageList, cxGraphics, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmDesenharPalete = class(TfrmPadrao)
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Panel1: TPanel;
    Image3: TImage;
    Button3: TButton;
    PLX1: TEdit;
    PLY1: TEdit;
    PLW1: TEdit;
    PLX2: TEdit;
    PLY2: TEdit;
    PLW2: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel2: TPanel;
    Image6: TImage;
    Button5: TButton;
    PLX3: TEdit;
    PLY3: TEdit;
    PLW3: TEdit;
    PLX4: TEdit;
    PLY4: TEdit;
    PLW4: TEdit;
    PLX5: TEdit;
    PLY5: TEdit;
    PLW5: TEdit;
    PLX6: TEdit;
    PLY6: TEdit;
    PLW6: TEdit;
    PLX7: TEdit;
    PLY7: TEdit;
    PLW7: TEdit;
    PLX8: TEdit;
    PLY8: TEdit;
    PLW8: TEdit;
    PLX9: TEdit;
    PLY9: TEdit;
    PLW9: TEdit;
    PPX1: TEdit;
    PPY1: TEdit;
    PPW1: TEdit;
    PPX2: TEdit;
    PPY2: TEdit;
    PPW2: TEdit;
    PPX3: TEdit;
    PPY3: TEdit;
    PPW3: TEdit;
    PPX4: TEdit;
    PPY4: TEdit;
    PPW4: TEdit;
    PPX5: TEdit;
    PPY5: TEdit;
    PPW5: TEdit;
    PPX6: TEdit;
    PPY6: TEdit;
    PPW6: TEdit;
    PPX7: TEdit;
    PPY7: TEdit;
    PPW7: TEdit;
    PPX8: TEdit;
    PPY8: TEdit;
    PPW8: TEdit;
    PPX9: TEdit;
    PPY9: TEdit;
    PPW9: TEdit;
    Button4: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Image2: TImage;
    Label12: TLabel;
    Label13: TLabel;
    QRYROBO: TFDQuery;
    Edit5: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    FDownX,
    FDownY: Integer;
    FDragging: Boolean;

  public
    { Public declarations }
    procedure ControlMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ControlMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure ControlMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

    procedure ContaCaixas;
    procedure CalcularPosicaoCaixa;

    procedure controlClick(Sender : Tobject);
    procedure controlClick_2(Sender : Tobject);

    procedure CalcularCaixa;
    procedure GeraImagemCxa;


    procedure GeraPontosMovimento;
    var
      PIDROBO : integer;
      PCOMPRIMENTOCXA, PLARGURACXA, PALTURACXA : INTEGER;
      PCOMPRIMENTOPLT, PLARGURAPLT, PCAMADAS : INTEGER;
  end;

var
  frmDesenharPalete: TfrmDesenharPalete;
  NUM_CAIXA : Integer;
  PANEL_CX : TPanel;
  PANEL_CX_VR : TPanel;

  COMP_CX, LARG_CX, ALT_CX : Integer;
  comp_p, larg_p : Integer;

  ESCALA_CX : Integer = 6;
  escala_pl : Integer = 6;
  coluna : string = '3500';

  COMP_PX, LARG_PX : Integer;
  comp_pl_px, larg_pl_px : Integer;

  px_base, mm_base, px_at , mm_at : Integer;
  CX_CM1, CX_CM2 : Integer;

implementation

{$R *.dfm}

uses uFormGerador, uFuncoesGerais, uDM, uGeraProgramaPalete_Caixas,
  uGeraProgramaPalete_Caixas2;

type
  TMoveCracker = class(TControl);

{ TfrmDesenharPalete }

procedure TfrmDesenharPalete.btnSalvarClick(Sender: TObject);
begin
  inherited;
  CalcularPosicaoCaixa;


end;

procedure TfrmDesenharPalete.Button10Click(Sender: TObject);
var
  nome : string;
begin
  try
    nome := Label4.Caption;
    Tpanel(FindComponent(nome)).left := TEdit(FindComponent(nome)).left - 1;
    controlClick(TEdit(FindComponent(nome)));
  except

  end;
end;

procedure TfrmDesenharPalete.Button11Click(Sender: TObject);
var
  nome : string;
begin
  try
    nome := Label6.Caption;
    Tpanel(FindComponent(nome)).Top := TEdit(FindComponent(nome)).Top - 1;
    controlClick_2(TEdit(FindComponent(nome)));
  except

  end;
end;

procedure TfrmDesenharPalete.Button12Click(Sender: TObject);
var
  nome : string;
begin
  try
    nome := Label6.Caption;
    Tpanel(FindComponent(nome)).Top := TEdit(FindComponent(nome)).Top + 1;
    controlClick_2(TEdit(FindComponent(nome)));
  except

  end;
end;

procedure TfrmDesenharPalete.Button13Click(Sender: TObject);
var
  nome : string;
begin
  try
    nome := Label6.Caption;
    Tpanel(FindComponent(nome)).left := TEdit(FindComponent(nome)).left + 1;
    controlClick_2(TEdit(FindComponent(nome)));
  except

  end;
end;

procedure TfrmDesenharPalete.Button14Click(Sender: TObject);
var
  nome : string;
begin
  try
    nome := Label6.Caption;
    Tpanel(FindComponent(nome)).left := TEdit(FindComponent(nome)).left - 1;
    controlClick_2(TEdit(FindComponent(nome)));
  except

  end;
end;

procedure TfrmDesenharPalete.Button3Click(Sender: TObject);
begin
  inherited;
  frmCaixas.Image1.Picture := Image2.Picture;
  frmCaixas.ShowModal;
end;

procedure TfrmDesenharPalete.Button4Click(Sender: TObject);
begin
  inherited;
  frmDesenharCamada2.Image1.Picture := Image2.Picture;
  CX_CM1 := StrToInt(Label8.Caption);
  frmDesenharCamada2.showmodal;
end;

procedure TfrmDesenharPalete.Button5Click(Sender: TObject);
begin
  inherited;
  if NUM_CAIXA > 0 then
  BEGIN
    TPanel(FindComponent('CX' + IntToStr(NUM_CAIXA))).Destroy;
    TPanel(FindComponent('CX_VR' + IntToStr(NUM_CAIXA))).Destroy;

    TEdit(FindComponent('PLX' + IntToStr(NUM_CAIXA))).Text := '0';
    TEdit(FindComponent('PLY' + IntToStr(NUM_CAIXA))).Text := '0';
    TEdit(FindComponent('PLW' + IntToStr(NUM_CAIXA))).Text := '0';

    NUM_CAIXA := NUM_CAIXA - 1;

    Label8.Caption := IntToStr(NUM_CAIXA);
    Label10.Caption := IntToStr(0);

    ContaCaixas;
  END;
end;

procedure TfrmDesenharPalete.Button6Click(Sender: TObject);
VAR
  CX_M1 : Integer;
begin
  CX_M1 := StrToInt(Label8.CAPTION);

  if NUM_CAIXA > CX_M1 then
  BEGIN
    TPanel(FindComponent('CX' + IntToStr(NUM_CAIXA))).Destroy;
    //TPanel(FindComponent('CX_VR' + IntToStr(NUM_CAIXA))).Destroy;

    TEdit(FindComponent('PPX' + IntToStr(NUM_CAIXA - CX_CM1))).Text := '0';
    TEdit(FindComponent('PPY' + IntToStr(NUM_CAIXA - CX_CM1))).Text := '0';
    TEdit(FindComponent('PPW' + IntToStr(NUM_CAIXA - CX_CM1))).Text := '0';

    NUM_CAIXA := NUM_CAIXA - 1;


    Label10.Caption := IntToStr(NUM_CAIXA - CX_CM1);
    ContaCaixas;

    if CX_CM1 = NUM_CAIXA then
    BEGIN
      Button5.Enabled := True;
      Button3.Enabled := True;
    END;
  END;
end;

procedure TfrmDesenharPalete.Button7Click(Sender: TObject);
var
  nome : string;
begin
  try

    nome := Label4.Caption;
    Tpanel(FindComponent(nome)).Top := TEdit(FindComponent(nome)).Top - 1;
    controlClick(TEdit(FindComponent(nome)));

  except

  end;
end;

procedure TfrmDesenharPalete.Button8Click(Sender: TObject);
var
  nome : string;
begin
  try

    nome := Label4.Caption;
    Tpanel(FindComponent(nome)).Top := TEdit(FindComponent(nome)).Top + 1;
    controlClick(TEdit(FindComponent(nome)));

  except

  end;
end;

procedure TfrmDesenharPalete.Button9Click(Sender: TObject);
var
  nome : string;
begin
  try

    nome := Label4.Caption;
    Tpanel(FindComponent(nome)).left := TEdit(FindComponent(nome)).left + 1;
    controlClick(TEdit(FindComponent(nome)));

  except

  end;
end;

procedure TfrmDesenharPalete.CalcularCaixa;
var
  X_IN, X_FIN, Y_IN, Y_FIN : Integer;
  XP_IN, XP_FIN, YP_IN, YP_FIN : Integer;
  ct_cx, os_garra, calc_garra : Integer;
  os_larg_cx : Integer;

label
  RECALCULA_ESCALA;

begin

  (***********************************)
  //calcula centro da caixa para garra
  os_garra := QRYROBO.FieldByName('OFFSET_GARRA').AsInteger;
  os_larg_cx := PLARGURACXA;

  calc_garra := trunc(os_larg_cx / 2);
  calc_garra := calc_garra - os_garra;
  Label16.Caption := IntToStr(calc_garra);
  frmFormGerador.Label16.Caption := label16.Caption;
  (***********************************)


  Image2.Picture := nil;
  Image2.Canvas.Brush.Color := $00333333;
  Image2.Canvas.Rectangle(0,0,425,145);

  Image2.Canvas.Pen.Color := clWhite;
  Image2.Canvas.MoveTo(10,135);
  Image2.Canvas.LineTo(10,10);
  Image2.Canvas.LineTo(5,15);
  Image2.Canvas.MoveTo(10,10);
  Image2.Canvas.LineTo(15,15);

  Image2.Canvas.Pen.Color := clWhite;
  Image2.Canvas.MoveTo(10,135);
  Image2.Canvas.LineTo(415,135);
  Image2.Canvas.LineTo(410,130);
  Image2.Canvas.MoveTo(415,135);
  Image2.Canvas.LineTo(410,140);

  ESCALA_CX := 1;
  NUM_CAIXA := 0;

  try
    BEGIN
      COMP_CX := PCOMPRIMENTOCXA;
      LARG_CX := PLARGURACXA;
      ALT_CX := PALTURACXA;
    END;
  except

  end;

  RECALCULA_ESCALA:

  try
    BEGIN
      COMP_PX := Round(COMP_CX / ESCALA_CX);
      LARG_PX := Round(LARG_CX / ESCALA_CX);
    END;
  Except

  end;

  try
    Image2.Canvas.Pen.Color := clBlack;
    Image2.Canvas.Brush.Color := clYellow;

    X_IN := 20;
    Y_IN := 125 - LARG_PX;

    X_FIN := 20 + COMP_PX;
    Y_FIN := 125;
  except

  end;

  if (Y_IN < 10) OR (X_FIN > 410) then
  BEGIN
    ESCALA_CX := ESCALA_CX + 1;
    GOTO RECALCULA_ESCALA;
  END;


  Image2.Canvas.Rectangle(X_IN, Y_IN, X_FIN, Y_FIN);



  //desenha palete
   try
    BEGIN
      comp_p := PCOMPRIMENTOPLT;
      LARG_p := PLARGURAPLT;

      comp_pl_px := Round(comp_p / escala_pl);
      larg_pl_px := Round(larg_p / escala_pl);
    END;
  except

  end;

  //desenho palete camada 1;
  Image3.Picture := nil;
  Image3.Canvas.Brush.Color := $00333333;
  Image3.Canvas.Rectangle(0,0,400,400);

  XP_IN := 200 - TRUNC(comp_pl_px / 2);
  YP_IN := 200 - TRUNC(larg_pl_px / 2);

  XP_FIN := XP_IN + comp_pl_px;
  YP_FIN := YP_IN + larg_pl_px;

  Image3.Canvas.Pen.Color := clWhite;
  Image3.Canvas.MoveTo(XP_IN,0);
  Image3.Canvas.LineTo(XP_IN, 400);

  Image3.Canvas.Pen.Color := clWhite;
  Image3.Canvas.MoveTo(0,YP_IN);
  Image3.Canvas.LineTo(400, YP_IN);

  Image3.Canvas.Pen.Color := clWhite;
  Image3.Canvas.MoveTo(XP_FIN,0);
  Image3.Canvas.LineTo(XP_FIN, 400);

  Image3.Canvas.Pen.Color := clWhite;
  Image3.Canvas.MoveTo(0, YP_FIN);
  Image3.Canvas.LineTo(400, YP_FIN);


  Image3.Canvas.Brush.Color := clGreen;
  Image3.Canvas.Rectangle(XP_IN, YP_IN, XP_FIN, YP_FIN);

  //coloca ponto inicial do palete 1
  Edit4.Text := IntToStr(XP_IN);
  Edit5.Text := IntToStr(YP_FIN);

  //desenho palete camada 2;
  Image6.Picture := nil;
  Image6.Canvas.Brush.Color := $00333333;
  Image6.Canvas.Rectangle(0,0,400,400);

  XP_IN := 200 - TRUNC(comp_pl_px / 2);
  YP_IN := 200 - TRUNC(larg_pl_px / 2);

  XP_FIN := XP_IN + comp_pl_px;
  YP_FIN := YP_IN + larg_pl_px;

  Image6.Canvas.Pen.Color := clWhite;
  Image6.Canvas.MoveTo(XP_IN,0);
  Image6.Canvas.LineTo(XP_IN, 400);

  Image6.Canvas.Pen.Color := clWhite;
  Image6.Canvas.MoveTo(0,YP_IN);
  Image6.Canvas.LineTo(400, YP_IN);

  Image6.Canvas.Pen.Color := clWhite;
  Image6.Canvas.MoveTo(XP_FIN,0);
  Image6.Canvas.LineTo(XP_FIN, 400);

  Image6.Canvas.Pen.Color := clWhite;
  Image6.Canvas.MoveTo(0, YP_FIN);
  Image6.Canvas.LineTo(400, YP_FIN);


  Image6.Canvas.Brush.Color := clGreen;
  Image6.Canvas.Rectangle(XP_IN, YP_IN, XP_FIN, YP_FIN);

  //coloca ponto inicial do palete
  Edit6.Text := IntToStr(XP_IN);
  Edit7.Text := IntToStr(YP_FIN);
end;

procedure TfrmDesenharPalete.CalcularPosicaoCaixa;
var
  qtde_cam, cam_par, cam_impar : Integer;
  I, II, III : Integer;
  calc_m1, calc_m2, calc_m3 : Integer;
  z_cam : array[1..40] of Integer;
  offset_altura, offset_app, offset_gar_palete : Integer;
  g_cx, z_inicial : Integer;
  x_cx, y_cx, Z_CX, X_READ, Y_READ, G_READ : Integer;
  esp_caixa : Integer;
  conta_caixas : Integer;

  ct_cx, os_garra, calc_garra : Integer;
  os_larg_cx : Integer;

begin
  (***********************************)
  //calcula centro da caixa para garra
  os_garra   := QRYROBO.FieldByName('OFFSET_GARRA').AsInteger;
  os_larg_cx := PLARGURACXA;

  calc_garra := trunc(os_larg_cx / 2);
  calc_garra := calc_garra - os_garra;
  Label16.Caption := IntToStr(calc_garra);
  //frmFormGerador.Label16.Caption := label16.Caption;
  (***********************************)

  qtde_cam := PCAMADAS;

  //parametros
  offset_altura     := QRYROBO.FieldByName('OFFSET_ALTURA').AsInteger;

  //OFFSET_gar_palete := StrToInt(frmFormGerador.offset_gr.text);
  OFFSET_gar_palete   := StrToInt(frmFormGerador.Label16.caption);

  offset_app := QRYROBO.FieldByName('OFFSET_APPROC').AsInteger;
  z_inicial := QRYROBO.FieldByName('Z_PALETE').AsInteger;

  //dados locais
  cam_impar := StrToInt(label8.Caption);
  cam_par := StrToInt(Label10.Caption);
  esp_caixa := PALTURACXA;

  conta_caixas := 1;
  frmFormGerador.Memo1.Clear;

  //carrega Z das camadas
  for I := 1 to qtde_cam do
    z_cam[I] := z_inicial + ((esp_caixa * (I - 1))) + offset_altura;

  for I := 1 to qtde_cam do
  begin
    //CAMADA IMPAR
    if ((I mod 2) <> 0) OR (cam_par = 0) then
    begin
      for II := 1 to cam_impar do
      begin
        //PEGA DADOS DA CAIXA
        g_READ := StrToInt(TEdit(FindComponent('PLW' + IntToStr(II))).TEXT);
        x_READ := StrToInt(TEdit(FindComponent('PLX' + IntToStr(II))).TEXT);
        y_READ := StrToInt(TEdit(FindComponent('PLY' + IntToStr(II))).TEXT);

        g_cx := G_READ;

        //calcula posica de aproximação
        frmFormGerador.Memo1.Lines.Add('#calculo_ap_CX ' + IntToStr(conta_caixas));

        if (g_cx = 88) then
        begin
          x_cx := X_READ;
          y_cx := Y_READ - offset_gar_palete - offset_app;
          Z_CX := z_cam[I] + offset_app;
        end;

        if (g_cx = 178) then
        BEGIN
          x_cx := X_READ + offset_gar_palete + offset_app;
          y_cx := Y_READ - offset_app;
          Z_CX := z_cam[I] + offset_app;
        END;

        if (g_cx = 268) then
        begin
          x_cx := X_READ;
          y_cx := Y_READ + offset_gar_palete + offset_app;
          Z_CX := z_cam[I] + offset_app;
        end;

        if (g_cx = 0) then
        begin
          x_cx := X_READ - offset_gar_palete - offset_app;
          y_cx := Y_READ - offset_app;
          Z_CX := z_cam[I] + offset_app;
        end;

        //adiciona ao memo
        frmFormGerador.Memo1.Lines.Add(IntToStr(x_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(y_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(z_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(g_cx));

        //calcula posica de posição
        frmFormGerador.Memo1.Lines.Add('#calculo_pf_CX ' + IntToStr(conta_caixas));

        //calcula offset de posicao final
        if (g_cx = 88) then
        begin
          x_cx := X_READ;
          y_cx := Y_READ - offset_gar_palete;
          Z_CX := z_cam[I];
        end;

        if (g_cx = 178) then
        BEGIN
          x_cx := X_READ + offset_gar_palete;
          y_cx := Y_READ;
          Z_CX := z_cam[I];
        END;

        if (g_cx = 268) then
        begin
          x_cx := X_READ;
          y_cx := Y_READ + offset_gar_palete;
          Z_CX := z_cam[I];
        end;

        if (g_cx = 0) then
        begin
          x_cx := X_READ - offset_gar_palete;
          y_cx := Y_READ;
          Z_CX := z_cam[I];
        end;

        //adiciona ao memo
        frmFormGerador.Memo1.Lines.Add(IntToStr(x_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(y_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(z_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(g_cx));

        conta_caixas := conta_caixas + 1;

      end;
    end;

    //CAMADA PAR
    if ((I mod 2) = 0) AND (cam_par > 0) then
    begin
      for II := 1 to cam_par do
      begin
        //PEGA DADOS DA CAIXA
        g_READ := StrToInt(TEdit(FindComponent('PPW' + IntToStr(II))).TEXT);
        x_READ := StrToInt(TEdit(FindComponent('PPX' + IntToStr(II))).TEXT);
        y_READ := StrToInt(TEdit(FindComponent('PPY' + IntToStr(II))).TEXT);

        g_cx := G_READ;

        //calcula posica de aproximação
        frmFormGerador.Memo1.Lines.Add('#calculo_ap_CX ' + IntToStr(conta_caixas));

        if (g_cx = 88) then
        begin
          x_cx := X_READ;
          y_cx := Y_READ - offset_gar_palete - offset_app;
          Z_CX := z_cam[I] + offset_app;
        end;

        if (g_cx = 178) then
        BEGIN
          x_cx := X_READ + offset_gar_palete + offset_app;
          y_cx := Y_READ - offset_app;
          Z_CX := z_cam[I] + offset_app;
        END;

        if (g_cx = 268) then
        begin
          x_cx := X_READ;
          y_cx := Y_READ + offset_gar_palete + offset_app;
          Z_CX := z_cam[I] + offset_app;
        end;

        if (g_cx = 0) then
        begin
          x_cx := X_READ - offset_gar_palete - offset_app;
          y_cx := Y_READ - offset_app;
          Z_CX := z_cam[I] + offset_app;
        end;

        //adiciona ao memo
        frmFormGerador.Memo1.Lines.Add(IntToStr(x_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(y_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(z_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(g_cx));


        //calcula posica de posição
        frmFormGerador.Memo1.Lines.Add('#calculo_pf_CX ' + IntToStr(conta_caixas));

        //calcula offset de posicao final
        if (g_cx = 88) then
        begin
          x_cx := X_READ;
          y_cx := Y_READ - offset_gar_palete;
          Z_CX := z_cam[I];
        end;

        if (g_cx = 178) then
        BEGIN
          x_cx := X_READ + offset_gar_palete;
          y_cx := Y_READ;
          Z_CX := z_cam[I];
        END;

        if (g_cx = 268) then
        begin
          x_cx := X_READ;
          y_cx := Y_READ + offset_gar_palete;
          Z_CX := z_cam[I];
        end;

        if (g_cx = 0) then
        begin
          x_cx := X_READ - offset_gar_palete;
          y_cx := Y_READ;
          Z_CX := z_cam[I];
        end;

        //adiciona ao memo
        frmFormGerador.Memo1.Lines.Add(IntToStr(x_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(y_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(z_cx));
        frmFormGerador.Memo1.Lines.Add(IntToStr(g_cx));

        conta_caixas := conta_caixas + 1;
      end;
    end;
  end;
end;

procedure TfrmDesenharPalete.ContaCaixas;
var
  t_cam, t_cam_1, t_cam_2 : Integer;
  calc_m1, calc_m2, calc_m3 : Integer;
  qtde_cam_par, qtde_cam_impar : Integer;
begin
  try
    t_cam := PCAMADAS;
    t_cam_1 := StrToInt(Label8.Caption);
    t_cam_2 := StrToInt(Label10.caption);

    //calcula qtde de cada camada
    if t_cam_2 = 0 then
    begin
      qtde_cam_par := 0;
      qtde_cam_impar := t_cam;
    end else
    begin
      if (t_cam mod 2) = 0 then
      begin
        qtde_cam_par := trunc(t_cam / 2);
        qtde_cam_impar := trunc(t_cam / 2);
      end else
      begin
        qtde_cam_par := trunc(t_cam / 2);
        qtde_cam_impar := trunc(t_cam / 2) + 1;
      end;
    end;

    //conta as camadas
    calc_m1 := t_cam_1 * qtde_cam_impar;
    calc_m2 := t_cam_2 * qtde_cam_par;

    calc_m3 := calc_m1 + calc_m2;
    Label12.Caption := IntToStr(calc_m3);
  except

  end;
end;

procedure TfrmDesenharPalete.controlClick(Sender: Tobject);
var
  num_peca : Integer;
  calc_base : Integer;
  I : Integer;
  NOME_CX : string;
  TOP_CX, LEFT_CX, WIDTH_CX, HEIGHT_CX : Integer;
begin
  label4.Caption := (Sender as TPanel).Name;
  num_peca := StrToInt(Copy(label4.Caption, 3, 2));

  for I := 1 to CX_CM1 do
  begin
    NOME_CX := 'CX' + IntToStr(I);
    if assigned(FindComponent(NOME_CX)) then
    BEGIN
      //calculo das posições Y
      TOP_CX    := TPanel(FindComponent('CX' + IntToStr(I))).TOP;
      HEIGHT_CX := TPanel(FindComponent('CX' + IntToStr(I))).Height;

      px_at     := Top_CX + TRUNC(Height_CX / 2);
      px_base   := StrToInt(Edit5.Text) - PX_AT;
      MM_BASE   := (px_base * 6);
      calc_base := StrToInt(Edit2.TEXT) + MM_BASE;

      TEdit(FindComponent('PLY' + IntToStr(I))).Text := IntToStr(calc_base);

      //calculo das posições X
      Left_CX  := TPanel(FindComponent('CX' + IntToStr(I))).Left;
      WIDTH_CX := TPanel(FindComponent('CX' + IntToStr(I))).Width;

      px_at     := TRUNC(WIDTH_CX / 2)+ LEFT_CX;
      px_base   := px_at + StrToInt(Edit4.Text);
      mm_base   := (px_base * 6);
      calc_base := StrToInt(Edit1.TEXT) - MM_BASE;
      //calc_base := escala_pl;

      TEdit(FindComponent('PLX' + IntToStr(I))).Text    := IntToStr(calc_base);

      //coloca cx camada 2 na mesma posição
      TPanel(FindComponent('CX_VR' + IntToStr(I))).Top  := TOP_CX;
      TPanel(FindComponent('CX_VR' + IntToStr(I))).Left := LEFT_CX;
    END;
  end;
end;

procedure TfrmDesenharPalete.controlClick_2(Sender: Tobject);
var
  num_peca : Integer;
  calc_base : Integer;
  I : Integer;
  NOME_CX : string;
  TOP_CX, LEFT_CX, WIDTH_CX, HEIGHT_CX : Integer;
begin
  label6.Caption := (Sender as TPanel).Name;
  num_peca := StrToInt(Copy(label6.Caption, 3, 2));

  for I := NUM_PECA to 20 do
  begin
    NOME_CX := 'CX' + IntToStr(I);
    if assigned(FindComponent(NOME_CX)) then
    BEGIN
      //calculo das posições Y
      TOP_CX    := TPanel(FindComponent('CX' + IntToStr(I))).TOP;
      HEIGHT_CX := TPanel(FindComponent('CX' + IntToStr(I))).Height;

      px_at     := Top_CX + TRUNC(Height_CX / 2);
      px_base   := StrToInt(Edit7.Text) - PX_AT;
      MM_BASE   := (px_base * 6);
      calc_base := StrToInt(Edit2.TEXT)+ MM_BASE;

      TEdit(FindComponent('PPY' + IntToStr(I - CX_CM1))).Text := IntToStr(calc_base);

      //calculo das posições X
      Left_CX   := TPanel(FindComponent('CX' + IntToStr(I))).Left;
      WIDTH_CX  := TPanel(FindComponent('CX' + IntToStr(I))).Width;

      px_at     := LEFT_CX + TRUNC(WIDTH_CX / 2);
      px_base   := px_at + StrToInt(Edit6.Text);
      mm_base   := (px_base * 6);
      calc_base := StrToInt(Edit1.TEXT) - MM_BASE;

      TEdit(FindComponent('PPX' + IntToStr(I - CX_CM1))).Text := IntToStr(calc_base);

      //coloca cx camada 2 na mesma posição
      //TPanel(FindComponent('CX_VR' + IntToStr(I))).Top  := TOP_CX;
      //TPanel(FindComponent('CX_VR' + IntToStr(I))).Left := LEFT_CX;
    END;
  end;
end;

procedure TfrmDesenharPalete.ControlMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDownX := X;
  FDownY := Y;
  FDragging := True;
  TMoveCracker(Sender).MouseCapture := True;
end;

procedure TfrmDesenharPalete.ControlMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if FDragging then
  begin
    with Sender as TControl do
    begin
      Left := X - FDownX + Left;
      Top  := Y - FDownY + Top;
    end;
  end;
end;

procedure TfrmDesenharPalete.ControlMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if FDragging then
  begin
   FDragging := False;
   TMoveCracker(Sender).MouseCapture := False;
  end;
end;

procedure TfrmDesenharPalete.FormShow(Sender: TObject);
begin
  inherited;
  //carregar dados do robo
  QRYROBO.Close;
  QRYROBO.Params[0].AsInteger := PIDROBO;
  QRYROBO.Open;
  QRYROBO.FetchAll;

  GeraImagemCxa;
  CalcularPosicaoCaixa;
end;

procedure TfrmDesenharPalete.GeraImagemCxa;
begin
  Image2.Picture := nil;
  Image2.Canvas.Brush.Color := $00333333;
  Image2.Canvas.Rectangle(0,0,425,145);

  Image2.Canvas.Pen.Color := clWhite;
  Image2.Canvas.MoveTo(10,135);
  Image2.Canvas.LineTo(10,10);
  Image2.Canvas.LineTo(5,15);
  Image2.Canvas.MoveTo(10,10);
  Image2.Canvas.LineTo(15,15);

  Image2.Canvas.Pen.Color := clWhite;
  Image2.Canvas.MoveTo(10,135);
  Image2.Canvas.LineTo(415,135);
  Image2.Canvas.LineTo(410,130);
  Image2.Canvas.MoveTo(415,135);
  Image2.Canvas.LineTo(410,140);
end;

procedure TfrmDesenharPalete.GeraPontosMovimento;
var
  comp_cx_in, larg_cx_in, alt_cx_in : Integer;
  calc_m1, calc_m2, calc_m3 : Integer;
  v_pegada, v_largada, veloc, v_subida : Integer;

  I, II : Integer;

  //ponto de retorno
  xp_rev, yp_rev, zp_rev, os_z_ret : Integer;
  curva_retorno : Integer;

  //ponto pre entrada
  xp_pre, yp_pre, zp_pre, os_pre : Integer;
  curva_pre, mesa_livre, os_encosto : Integer;
  dist_roletes, px_roletes, x_mesa : Integer;


  //calculo posicao espera
  OS_espera, media_y_cx : Integer;
  pos_y_espera : Integer;
  xp_es, yp_es, zp_es, x_min : Integer;


  //posição de alinhamento
  os_alin, medida_alin : Integer;
  pos_alin, xp_alin, yp_alin, zp_alin : Integer;
  x_seg_fixa : Integer;

  //posição de subida
  os_subida, alt_alin_seg : Integer;
  pos_z_subida : Integer;
  xp_sub, yp_sub, zp_sub : Integer;

begin

  //Form14.memo2.Clear;
  //Form14.Memo2.Lines.Add(Form2.label12.Caption);
  {x_min := 50;
  veloc := StrToInt(Edit5.text);
  comp_cx_in := COMP_CX;
  larg_cx_in := LARG_CX;


  (************************************)
  //calculo ponto pre entrada
  mesa_livre := QRYROBO.FieldByName('').AsInteger;
  os_encosto := QRYROBO.FieldByName('').AsInteger;
  OS_espera  := QRYROBO.FieldByName('').AsInteger;
  zp_pre     := QRYROBO.FieldByName('').AsInteger;
  dist_roletes := StrToInt(Form7.Edit2.text);
  x_mesa := StrToInt(Form7.xp_mesa_ed.text);
  curva_pre := StrToInt(Edit9.Text);

  px_roletes := (x_mesa + os_encosto);
  xp_pre := px_roletes + trunc(comp_cx_in / 2);
  //yp_pre := mesa_livre;

  yp_pre := OS_espera - (Trunc(larg_cx_in / 2)) - (mesa_livre) - (mesa_livre);

  //encontra ponto de entrada
  for I := 1 to 20 do
  begin
    px_roletes := (x_mesa + os_encosto) + (dist_roletes * I);

    if (px_roletes > xp_pre) then
    begin
      xp_pre := px_roletes;
      Break;
    end;

  end;

  if xp_pre < 1247 then
  begin
    xp_pre := 1247;
  end;

  //pre entrada em PX11
  //monta codigo
  Memo4.Clear;
  Memo4.Lines.Add('SETE PX11 (1),' + IntToStr(xp_pre) + ';');
//    Form1.mbrobo.WriteRegister(24, xp_pre);
    Form14.Memo2.Lines.Add(IntToStr(xp_pre));

  Memo4.Lines.Add('SETE PX11 (2),' + IntToStr(Yp_pre) + ';');
//    Form1.mbrobo.WriteRegister(25, Yp_pre);
     Form14.Memo2.Lines.Add(IntToStr(Yp_pre));

  Memo4.Lines.Add('SETE PX11 (3),' + IntToStr(Zp_pre) + ';');
//    Form1.mbrobo.WriteRegister(26, Zp_pre);
    Form14.Memo2.Lines.Add(IntToStr(Zp_pre));

  Memo4.Lines.Add('SETE PX11 (4),' + FloatToStr(88) + ';');

  Memo4.Lines.Add('ADDP P11, PX11;');
  Memo4.Lines.Add('MOVJ P11, V' + IntToStr(veloc) + ', Z' + IntToStr(curva_pre) + ';');
  (*****************************)


  (*********************************)
  //calculo ponto retorno
  //***************
  xp_rev := strtoint(form6.edit7.Text);
  yp_rev := StrToInt(Form6.Edit9.text);
  zp_rev := StrToInt(Form6.Edit10.text);
  curva_retorno := StrToInt(Form6.Edit13.text);

  if (zp_rev < 0) then
  begin
    ShowMessage('Valor Z de Retorno Muito Baixo!');
    Exit;
  end;

  //retorno em PX10
  //alimenta XP_Pegada para geracao
  XP_Pegada := xp_pre;


  //monta codigo
  Memo3.Clear;
  Memo3.Lines.Add('SETE PX10 (1),' + IntToStr(xp_pre) + ';'); //IntToStr(xp_rev) + ';');
  Form14.Memo2.Lines.Add(IntToStr(xp_pre));
//  Form1.mbrobo.WriteRegister(21, xp_pre);

  Memo3.Lines.Add('SETE PX10 (2),' + IntToStr(Yp_rev) + ';');
  Form14.Memo2.Lines.Add(IntToStr(Yp_rev));
//  Form1.mbrobo.WriteRegister(22, Yp_rev);

  Memo3.Lines.Add('SETE PX10 (3),' + IntToStr(Zp_rev) + ';');
  Form14.Memo2.Lines.Add(IntToStr(Zp_rev));
//  Form1.mbrobo.WriteRegister(23, Zp_rev);

  Memo3.Lines.Add('SETE PX10 (4),' + IntToStr(88) + ';');
//  Form1.mbrobo.WriteRegister(24, 88);
  Memo3.Lines.Add('ADDP P10, PX10;');
  Memo3.Lines.Add('MOVJ P10, V' + IntToStr(veloc) + ', Z' + IntToStr(curva_retorno) + ';');
  (************************************)


  (*****************************)
  //calculo ponto de espera


  OS_espera := StrToInt(Edit11.text);
  media_y_cx := (0) - Trunc(larg_cx_in / 2);
  pos_y_espera := media_y_cx - OS_espera;

  (* OS ESPERA AGORA É PONTO ZERO Y*)
  pos_y_espera := OS_espera - (Trunc(larg_cx_in / 2)) - (mesa_livre);

  v_pegada := StrToInt(Edit3.text);

  xp_es := xp_pre;
  yp_es := pos_y_espera;
  zp_es := zp_pre;

  //entrada PX12
  //monta codigo
  Memo5.Clear;
  Memo5.Lines.Add('SETE PX12 (1),' + IntToStr(xp_es) + ';');
 //   Form1.mbrobo.WriteRegister(27, xp_es);
    Form14.Memo2.Lines.Add(IntToStr(xp_es));

  Memo5.Lines.Add('SETE PX12 (2),' + IntToStr(Yp_es) + ';');
 //   Form1.mbrobo.WriteRegister(28, Yp_es);
    Form14.Memo2.Lines.Add(IntToStr(Yp_es));

  Memo5.Lines.Add('SETE PX12 (3),' + IntToStr(Zp_es) + ';');
 //   Form1.mbrobo.WriteRegister(29, Zp_es);
    Form14.Memo2.Lines.Add(IntToStr(Zp_es));

  Memo5.Lines.Add('SETE PX12 (4),' + FloatToStr(88) + ';');
  Memo5.Lines.Add('ADDP P12, PX12;');
  Memo5.Lines.Add('MOVL P12, V' + IntToStr(v_pegada) + ', Z1;');
  (*****************************)




  (*****************************)
  //calculo ponto de alinhamento
  os_alin := StrToInt(Edit10.text);
  medida_alin := (0) - Trunc(larg_cx_in / 2);
  pos_alin := medida_alin - os_alin;

  pos_alin := os_alin - larg_cx_in;

  v_pegada := StrToInt(Edit3.text);

  xp_alin := xp_pre;
  yp_alin := pos_alin;
  zp_alin := zp_pre;

  //entrada PX13
  //monta codigo
  Memo6.Clear;
  Memo6.Lines.Add('SETE PX13 (1),' + IntToStr(xp_alin) + ';');
 //  Form1.mbrobo.WriteRegister(30, xp_alin);
   Form14.Memo2.Lines.Add(IntToStr(xp_alin));

  Memo6.Lines.Add('SETE PX13 (2),' + IntToStr(Yp_alin) + ';');
 //  Form1.mbrobo.WriteRegister(31, Yp_alin);
   Form14.Memo2.Lines.Add(IntToStr(Yp_alin));

  Memo6.Lines.Add('SETE PX13 (3),' + IntToStr(Zp_alin) + ';');
 //  Form1.mbrobo.WriteRegister(32, Zp_alin);
   Form14.Memo2.Lines.Add(IntToStr(Zp_alin));

  Memo6.Lines.Add('SETE PX13 (4),' + FloatToStr(88) + ';');
  Memo6.Lines.Add('ADDP P13, PX13;');
  Memo6.Lines.Add('MOVL P13, V' + IntToStr(v_pegada) + ', Z0;');
  (*****************************)

  (*****************************)
  os_subida := StrToInt(Edit12.text);
  alt_alin_seg := StrToInt(Form7.Edit4.text);
  v_pegada := StrToInt(Edit3.text);
  v_subida := StrToInt(Edit16.text);

  pos_z_subida := os_subida + alt_alin_seg;
  xp_sub := xp_alin;
  yp_sub := yp_alin;
  zp_sub := pos_z_subida;

  //entrada PX14
  //monta codigo
  Memo7.Clear;
  Memo7.Lines.Add('SETE PX14 (1),' + IntToStr(xp_sub) + ';');
//  Form1.mbrobo.WriteRegister(33, xp_sub);
   Form14.Memo2.Lines.Add(IntToStr(xp_sub));

  Memo7.Lines.Add('SETE PX14 (2),' + IntToStr(Yp_sub) + ';');
 // Form1.mbrobo.WriteRegister(34, Yp_sub);
   Form14.Memo2.Lines.Add(IntToStr(Yp_sub));

  Memo7.Lines.Add('SETE PX14 (3),' + IntToStr(Zp_sub) + ';');
 // Form1.mbrobo.WriteRegister(64, Zp_sub);
  Form14.Memo2.Lines.Add(IntToStr(Zp_sub));

  Memo7.Lines.Add('SETE PX14 (4),' + FloatToStr(88) + ';');
  Memo7.Lines.Add('ADDP P14, PX14;');
  Memo7.Lines.Add('MOVL P14, V' + IntToStr(v_subida) + ', Z1;');
  (*****************************)    }
end;

end.
