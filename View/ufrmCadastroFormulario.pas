unit ufrmCadastroFormulario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, UFormulario, UDataMod;

type
  TfrmCadastroFormulario = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtNome: TEdit;
    edtIdade: TEdit;
    edtMatricula: TEdit;
    btnIncluir: TButton;
    edtCodigo: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    edt_CPF: TEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    umFormulario : Formulario;
    umDataMod : TDataMod;
    umfrmCadastroFormulario : TfrmCadastroFormulario;
  public
    { Public declarations }
    procedure conhecaObjeto(dFormulario: Formulario; dDataMod: TDataMod);

  end;

var
  frmCadastroFormulario: TfrmCadastroFormulario;

implementation

{$R *.dfm}

{ TfrmCadastroFormulario }



procedure TfrmCadastroFormulario.btnIncluirClick(Sender: TObject);
begin
   if Trim(self.edtCodigo.Text) = '' then
   begin
     Application.MessageBox('Enter the Code !', 'Attention! ', MB_OK+MB_ICONWARNING);
     self.edtCodigo.SetFocus;
     Abort;
   end;

   if Trim(self.edtNome.Text) = '' then
   begin
     Application.MessageBox('Enter the name !', 'Attention! ', MB_OK+MB_ICONWARNING);
     self.edtNome.SetFocus;
     Abort;
   end;

   if Trim(self.edtIdade.Text) = '' then
   begin
     Application.MessageBox('Enter the age !', 'Attention! ', MB_OK+MB_ICONWARNING);
     self.edtIdade.SetFocus;
     Abort;
   end;

   if Trim(self.edt_CPF.Text) = '' then
   begin
      Application.MessageBox('Enter the CPF !', 'Attention! ', MB_OK+MB_ICONWARNING);
      self.edt_CPF.SetFocus;
      Abort;
   end;

   if Trim(self.edtMatricula.Text) = '' then
   begin
     Application.MessageBox('Enter the registration number !', 'Attention! ', MB_OK+MB_ICONWARNING);
     self.edtMatricula.SetFocus;
     Abort;
   end;

     umFormulario.setCodigo(StrToInt(self.edtCodigo.Text));
     umFormulario.setNome(self.edtNome.Text);
     umFormulario.setIdade(StrToInt(self.edtIdade.Text));
     umFormulario.setCpf(self.edt_CPF.Text);
     umFormulario.setMatricula(self.edtMatricula.Text);

     umDataMod.DSetFormulario.Close;
     umDataMod.DSetFormulario.Open;

     if not umDataMod.IBTransa.Active then
        umDataMod.IBTransa.AutoStartTransaction;

     if umFormulario.getCodigo >=0 then
        umDataMod.DSetFormulario.Insert



     else
        umDataMod.DSetFormulario.Edit;
        umDataMod.DSetFormularioIDFORM.Value := umFormulario.getCodigo;
        umDataMod.DSetFormularioNOME.Value := umFormulario.getNome;
        umDataMod.DSetFormularioIDADE.Value := umFormulario.getIdade;
        umDataMod.DSetFormularioCPF.Value := umFormulario.getCpf;
        umDataMod.DSetFormularioMATRICULA.Value := umFormulario.getMatricula;

        umDataMod.DSetFormulario.Post;
        umDataMod.IBTransa.Commit;
        umDataMod.DSetFormulario.Open;
end;

procedure TfrmCadastroFormulario.conhecaObjeto(dFormulario: Formulario; dDataMod: TDataMod);
begin
     umFormulario := dFormulario;
     umDataMod := dDataMod;
end;

procedure TfrmCadastroFormulario.FormShow(Sender: TObject);
begin
     umFormulario := Formulario.criarFormulario;
end;

end.
