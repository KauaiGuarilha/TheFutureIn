unit ufrmConsultaTurma;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, UTurma, UDataMod,
  Vcl.DBGrids;

type
  TfrmConsultaTurma = class(TForm)
    Panel1: TPanel;
    DBG_Turma: TDBGrid;
    edt_Codigo_Turma: TEdit;
    edt_Curso: TEdit;
    edt_Disciplina: TEdit;
    edt_Turma: TEdit;
    Label1: TLabel;
    Course: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnCadastrar: TButton;
    btnDeletar: TButton;
    btnRefresh: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
    umTurma : Turma;
    umDataMod : TDataMod;
    procedure fnc_AtualizarBanco;
  public
    { Public declarations }
    procedure conhecaObjeto(dTurma : Turma; dDataMod : TDataMod);
  end;

var
  frmConsultaTurma: TfrmConsultaTurma;

implementation

{$R *.dfm}

{ TfrmConsultaTurma }

procedure TfrmConsultaTurma.btnCadastrarClick(Sender: TObject);
begin
   if Trim(self.edt_Codigo_Turma.Text) = '' then
   begin
     Application.MessageBox('Enter the Code !', 'Attention! ', MB_OK+MB_ICONWARNING);
     self.edt_Codigo_Turma.SetFocus;
     Abort;
   end;

   if Trim(self.edt_Curso.Text) = '' then
   begin
     Application.MessageBox('Enter the Course !', 'Attention!', MB_OK+MB_ICONWARNING);
     self.edt_Curso.SetFocus;
     Abort
   end;

   if Trim(self.edt_Disciplina.Text) = '' then
   begin
     Application.MessageBox('Enter the Discipline !', 'Attention!', MB_OK+MB_ICONWARNING);
     self.edt_Disciplina.SetFocus;
     Abort
   end;

   if Trim(self.edt_Turma.Text) = '' then
   begin
     Application.MessageBox('Enter the Class !', 'Attention!', MB_OK+MB_ICONWARNING);
     self.edt_Turma.SetFocus;
     Abort
   end;

   umTurma.setCodigo(StrToInt(self.edt_Codigo_Turma.Text));
   umTurma.setCurso(self.edt_Curso.Text);
   umTurma.setDisciplina(self.edt_Disciplina.Text);
   umTurma.setTurma(self.edt_Turma.Text);

   umDataMod.DSetTurma.Close;
   umDataMod.DSetTurma.Open;

   if not umDataMod.IBTransa.Active then
      umDataMod.IBTransa.StartTransaction;

   if umTurma.getCodigo >= 0 then
      umDataMod.DSetTurma.Insert

   else

      umDataMod.DSetTurma.Edit;
      umDataMod.DSetTurmaIDCLASS.Value := umturma.getCodigo;
      umDataMod.DSetTurmaCURSO.Value := umTurma.getCurso;
      umDataMod.DSetTurmaDISCIPLINA.Value := umTurma.getDisciplina;
      umDataMod.DSetTurmaTURMA.Value := umTurma.getTurma;

      umDataMod.DSetTurma.Post;
      umDataMod.IBTransa.Commit;
      umDataMod.DSetTurma.Open;

      fnc_AtualizarBanco;

      self.edt_Codigo_Turma.Text := '';
      self.edt_Curso.Text := '';
      self.edt_Disciplina.Text := '';
      self.edt_Turma.Text := '';

end;

procedure TfrmConsultaTurma.btnDeletarClick(Sender: TObject);
begin
    umDataMod.DSetTurma.Delete;
    fnc_AtualizarBanco;
end;

procedure TfrmConsultaTurma.btnRefreshClick(Sender: TObject);
begin
  fnc_AtualizarBanco;
end;

procedure TfrmConsultaTurma.conhecaObjeto(dTurma: Turma; dDataMod: TDataMod);
begin
    umTurma := dTurma;
    umDataMod := dDataMod;
end;

procedure TfrmConsultaTurma.fnc_AtualizarBanco;
begin
  umDataMod.DSetTurma.Close;
  umDataMod.DSetTurma.SelectSQL.Text := 'SELECT * FROM TURMA';
  umDataMod.DSetTurma.Open;
  self.DBG_Turma.DataSource := umDataMod.DSTurma;
end;

procedure TfrmConsultaTurma.FormCreate(Sender: TObject);
begin
     umTurma := Turma.criarTurma;
     umDataMod := TDataMod.Create(nil);
     fnc_AtualizarBanco;
end;

procedure TfrmConsultaTurma.FormShow(Sender: TObject);
begin
    fnc_AtualizarBanco;
end;

end.
