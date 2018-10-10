unit UfrmTelaLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls, UDataMod, UProfessor, UAluno, UFormulario,
  Vcl.StdCtrls;

type
  TfrmTelaLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edt_NmProf: TEdit;
    Label3: TLabel;
    Image2: TImage;
    btn_Ir: TButton;
    Image1: TImage;
    edt_Senha: TEdit;
    procedure Image1Click(Sender: TObject);
    procedure btn_IrClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    umDataMod : TDataMod;
    umProfessor : Professor;
    umAluno : Aluno;
    umFormulario : Formulario;
    umfrmTelaLogin : TfrmTelaLogin;

  public
    { Public declarations }

  end;

var
  frmTelaLogin: TfrmTelaLogin;

implementation

{$R *.dfm}

procedure TfrmTelaLogin.btn_IrClick(Sender: TObject);

begin
      umDataMod.DsetProfessor.Close;
      umDataMod.DSetProfessor.Open;
      if (umDataMod.DSetProfessorNOME.Value = self.edt_NmProf.Text) and (umDataMod.DSetProfessorMATRICULA.Value = self.edt_Senha.Text) then
        begin
          self.Close;
        end
      else
        begin
          Application.MessageBox('Nome ou usuário Inválido !', 'Attention! ', MB_OK+MB_ICONWARNING);
          self.edt_NmProf.SetFocus;
        end;
end;

procedure TfrmTelaLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     umfrmTelaLogin.Free;
end;

procedure TfrmTelaLogin.FormCreate(Sender: TObject);
begin

     umProfessor := Professor.CriarProf;
     umDataMod :=  TDataMod.Create(nil);
end;

procedure TfrmTelaLogin.Image1Click(Sender: TObject);
begin
     Application.Terminate;
end;

end.
