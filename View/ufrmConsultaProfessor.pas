unit ufrmConsultaProfessor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, UDataMod, UProfessor, UTurma,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmConsultaProfessor = class(TForm)
    panelCad: TPanel;
    Label1: TLabel;
    EdtNome_Prof: TEdit;
    edtMatricula_Prof: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    btnIncluir_Professor: TButton;
    DBG_Professor: TDBGrid;
    btn_Delete: TButton;
    edtCodigo_prof: TEdit;
    Label4: TLabel;
    btn_Refresh: TButton;
    cmb_turmaProf: TComboBox;
    procedure btnIncluir_ProfessorClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure btn_RefreshClick(Sender: TObject);
    procedure cmb_turmaProfChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    umDataMod : TDataMod;
    umProfessor : Professor;
    umTurma : Turma;
    turma_prof : String;
    procedure fnc_AtualizarBanco;
  public
    { Public declarations }
    procedure conhecaObjeto(dProfessor : Professor; dDataMod: TDataMod);
    function ListarTurmaProf : TStrings;
  end;

var
  frmConsultaProfessor: TfrmConsultaProfessor;

implementation

{$R *.dfm}

{ TfrmConsultaProfessor }

procedure TfrmConsultaProfessor.btnIncluir_ProfessorClick(Sender: TObject);
begin
   if Trim(self.edtCodigo_prof.Text) = '' then
   begin
     Application.MessageBox('Enter the Code !', 'Attention! ', MB_OK+MB_ICONWARNING);
     self.edtCodigo_prof.SetFocus;
     Abort;
   end;

   if Trim(self.EdtNome_Prof.Text) = '' then
   begin
     Application.MessageBox('Enter the name !', 'Attention! ', MB_OK+MB_ICONWARNING);
     self.EdtNome_Prof.SetFocus;
     Abort;
   end;

   if Trim(self.edtMatricula_Prof.Text) = '' then
   begin
     Application.MessageBox('Enter the registration number !', 'Attention! ', MB_OK+MB_ICONWARNING);
     self.edtMatricula_Prof.SetFocus;
     Abort;
   end;


     umProfessor.setCodigo(StrToInt(self.edtCodigo_prof.Text));
     umProfessor.setNome(self.EdtNome_Prof.Text);
     umProfessor.setMatricula(self.edtMatricula_Prof.Text);

     umDataMod.DSetProfessor.Close;
     umDataMod.DSetProfessor.Open;
     umDataMod.DSetProfessor.Insert;
     umDataMod.DSetTurma.First;

     if umProfessor.getCodigo >=0 then
     begin
       while not umdataMod.DSetTurma.Eof do
         begin
            if (turma_prof = (umDataMod.DSetTurmaTURMA.AsString)) then
               begin
                   umDataMod.DSetProfessor.Insert;
                   umDataMod.DSetProfessorIDPROFESSOR.Value := umProfessor.getCodigo;
                   umDataMod.DSetProfessorNOME.Value := umProfessor.getNome;
                   umDataMod.DSetProfessorMATRICULA.Value := umProfessor.getMatricula;
                   umDataMod.DSetProfessorTURMA.AsString :=  turma_prof;
               end;
            umDataMod.DSetProfessor.Next;
            umDataMod.DSetTurma.Next;
          end;
     end;

     if not umDataMod.IBTransa.Active then
        umDataMod.IBTransa.AutoStartTransaction;

        umDataMod.DSetProfessor.Post;

        umDataMod.DSetProfessor.Open;
end;

procedure TfrmConsultaProfessor.btn_DeleteClick(Sender: TObject);
begin
     umDataMod.DSetProfessor.Delete;
     fnc_AtualizarBanco;
end;

procedure TfrmConsultaProfessor.btn_RefreshClick(Sender: TObject);
begin
     fnc_AtualizarBanco;
end;

procedure TfrmConsultaProfessor.cmb_turmaProfChange(Sender: TObject);
begin
    turma_prof := (self.cmb_turmaProf.Items[self.cmb_turmaProf.ItemIndex]);
end;

procedure TfrmConsultaProfessor.conhecaObjeto(dProfessor : Professor; dDataMod: TDataMod);
begin
     umProfessor := dProfessor;
     umDataMod := dDataMod;
end;

procedure TfrmConsultaProfessor.fnc_AtualizarBanco;
begin
  umDataMod.DSetProfessor.Close;
  umDataMod.DSetProfessor.SelectSQL.Text := 'SELECT * FROM PROFESSOR';
  umDataMod.DSetProfessor.Open;
  self.DBG_Professor.DataSource := umDataMod.DSProfessor;
end;

procedure TfrmConsultaProfessor.FormShow(Sender: TObject);
begin
     umProfessor := professor.CriarProf;
     umDataMod :=  TDataMod.Create(nil);
     self.cmb_turmaProf.Items := ListarTurmaProf;
     fnc_AtualizarBanco;
end;

function TfrmConsultaProfessor.ListarTurmaProf: TStrings;
begin
  Result := TStringList.Create;
  Result.Clear;
  Result.BeginUpdate;
  with umdataMod.DSetTurma do
    begin
      First;
      while not Eof do
        begin
          Result.Add(FieldByName('TURMA').AsString);
          Next;
        end;
    end;
  Result.EndUpdate;
end;

end.
