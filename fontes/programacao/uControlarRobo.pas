unit uControlarRobo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormPadrao, System.ImageList,
  Vcl.ImgList, cxImageList, cxGraphics, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, cxLookAndFeels, cxLookAndFeelPainters,
  cxButtons, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmControlarRobo = class(TfrmPadrao)
    Shape1: TShape;
    Label5: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Label8: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Shape5: TShape;
    Label9: TLabel;
    Shape6: TShape;
    Label10: TLabel;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    btnReset: TcxButton;
    btnRearme: TcxButton;
    btnStart: TcxButton;
    btnStop: TcxButton;
    btnPause: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControlarRobo: TfrmControlarRobo;

implementation

{$R *.dfm}

end.
