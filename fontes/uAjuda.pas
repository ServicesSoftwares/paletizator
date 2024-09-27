unit uAjuda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls;

type
  TfrmAjuda = class(TForm)
    ImageSuporte: TImage;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAjuda: TfrmAjuda;

implementation

{$R *.dfm}

end.
