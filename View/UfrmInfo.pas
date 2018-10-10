unit UfrmInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmInfo = class(TForm)
    Label1: TLabel;
    Constr: TLabel;
    Label3: TLabel;
    Image1: TImage;
    CorX: TLabel;
    CorY: TLabel;
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    umfrmInfo : TfrmInfo;
  end;

var
  frmInfo: TfrmInfo;

implementation

{$R *.dfm}

procedure TfrmInfo.Image1Click(Sender: TObject);
begin
  close();
end;

end.
