unit ufrmConsultaAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, UAluno, UProfessor, UPessoa, UFormulario, UDataMod,
  Vcl.DBGrids;

type
  TfrmConsultaAluno = class(TForm)
    Panel1: TPanel;
    cmb_RegNome: TComboBox;
    cmb_RegMatricula: TComboBox;
    Matricula: TLabel;
    btnCadastrar: TButton;
    Nome: TLabel;
    Label2: TLabel;
    cmb_RegTurma: TComboBox;
    btn_refresh: TButton;
    edt_codigo_aluno: TEdit;
    Label1: TLabel;
    btn_delete: TButton;
    cmb_RegCpf: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    cmb_RegDisciplina: TComboBox;
    Label5: TLabel;
    cmb_RegCurso: TComboBox;
    DBG_Aluno: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure btn_refreshClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure cmb_RegNomeChange(Sender: TObject);
    procedure btn_deleteClick(Sender: TObject);
    procedure cmb_RegMatriculaChange(Sender: TObject);
    procedure cmb_RegCpfChange(Sender: TObject);
    procedure cmb_RegTurmaChange(Sender: TObject);
    procedure cmb_RegDisciplinaChange(Sender: TObject);
    procedure cmb_RegCursoChange(Sender: TObject);
  private
    { Private declarations }

    umAluno : Aluno;
    umProfessor : Professor;
    umFormulario : Formulario;
    umDataMod : TDataMod;
    nome_aluno : String;
    matricula_aluno : String;
    cpf_aluno : String;
    turma_aluno : String;
    disciplina_aluno : String;
    curso_aluno : String;
    procedure fnc_AtualizarBanco;
  public
    { Public declarations }
    procedure conhecaObjeto(pAluno : Aluno; pDataMod : TDataMod);
    function ListaCampoNome : TStrings;
    function ListaCampoMatricula : TStrings;
    function ListaCampoCPF : TStrings;
    function ListaCampoTurma : TStrings;
    function ListaCampoDisciplina : TStrings;
    function ListaCampoCurso : TStrings;

  end;

var
  frmConsultaAluno: TfrmConsultaAluno;

implementation

{$R *.dfm}

{ TfrmConsultaAluno }

procedure TfrmConsultaAluno.btnCadastrarClick(Sender: TObject);
begin

     umaluno.setCodigo(StrToInt(self.edt_codigo_aluno.Text));

     umDataMod.DSetAluno.Close;
     umDataMod.DSetAluno.Open;
     umDataMod.DSetAluno.Insert;
     umDataMod.DSetFormulario.First;
     umDataMod.DSetTurma.First;

     if umAluno.getCodigo >=0 then
     begin
       while not umdataMod.DSetFormulario.Eof do
         begin
            if (nome_aluno = (umDataMod.DSetFormularioNOME.AsString)) then
               begin
                   umDataMod.DSetAluno.Insert;
                   umDataMod.DSetAlunoIDALUNO.Value := umAluno.getCodigo;
                   umDataMod.DSetAlunoNOME.AsString := nome_aluno;
                   umDataMod.DSetAlunoCPF.AsString := cpf_aluno;
                   umDataMod.DSetAlunoMATRICULA.AsString := matricula_aluno;
                   umDataMod.DSetAlunoTURMA.AsString := turma_aluno;
                   umDataMod.DSetAlunoDISCIPLINE.AsString := disciplina_aluno;
                   umDataMod.DSetAlunoCOURSE.AsString := curso_aluno;
               end;
            umDataMod.DSetFormulario.Next;
            umDataMod.DSetTurma.Next;
          end;
     end;

     if not umDataMod.IBTransa.Active then
        umDataMod.IBTransa.AutoStartTransaction;

        umDataMod.DSetAluno.Post;

        umDataMod.DSetAluno.Open;
end;

procedure TfrmConsultaAluno.btn_deleteClick(Sender: TObject);
begin
     umDataMod.DSetAluno.Delete;
     fnc_AtualizarBanco;
end;

procedure TfrmConsultaAluno.btn_refreshClick(Sender: TObject);
begin
     fnc_AtualizarBanco;
end;

procedure TfrmConsultaAluno.cmb_RegCpfChange(Sender: TObject);
begin
    cpf_aluno := (self.cmb_RegCpf.Items[self.cmb_RegCpf.ItemIndex]);
end;

procedure TfrmConsultaAluno.cmb_RegDisciplinaChange(Sender: TObject);
begin
    disciplina_aluno := (self.cmb_RegDisciplina.Items[self.cmb_RegDisciplina.ItemIndex]);
end;

procedure TfrmConsultaAluno.cmb_RegMatriculaChange(Sender: TObject);
begin
     matricula_aluno := (self.cmb_RegMatricula.Items[self.cmb_RegMatricula.ItemIndex]);
end;

procedure TfrmConsultaAluno.cmb_RegNomeChange(Sender: TObject);
begin
     nome_aluno := (self.cmb_RegNome.Items[self.cmb_RegNome.ItemIndex]);
end;

procedure TfrmConsultaAluno.cmb_RegTurmaChange(Sender: TObject);
begin
    turma_aluno := (self.cmb_RegTurma.Items[self.cmb_RegTurma.ItemIndex]);
end;

procedure TfrmConsultaAluno.cmb_RegCursoChange(Sender: TObject);
begin
    curso_aluno := (self.cmb_RegCurso.Items[self.cmb_RegCurso.ItemIndex]);
end;

procedure TfrmConsultaAluno.conhecaObjeto(pAluno: Aluno; pDataMod: TDataMod);
begin
     umAluno := pAluno;
     umDataMod := pDataMod;
end;

procedure TfrmConsultaAluno.FormShow(Sender: TObject);
begin
     fnc_AtualizarBanco;

     self.cmb_RegNome.Items := ListaCampoNome;
     self.cmb_RegMatricula.Items := ListaCampoMatricula;
     self.cmb_RegCpf.Items :=  ListaCampoCPF;
     self.cmb_RegTurma.Items := ListaCampoTurma;
     self.cmb_RegDisciplina.Items :=  ListaCampoDisciplina;
     self.cmb_RegCurso.Items := ListaCampoCurso;

end;
function TfrmConsultaAluno.ListaCampoCPF: TStrings;
begin
  Result := TStringList.Create;
  Result.Clear;
  Result.BeginUpdate;
  with umdataMod.DSetFormulario do
    begin
      First;
      while not Eof do
        begin
          Result.Add(FieldByName('CPF').AsString);
          Next;
        end;
    end;
  Result.EndUpdate;
end;

function TfrmConsultaAluno.ListaCampoCurso: TStrings;
begin
  Result := TStringList.Create;
  Result.Clear;
  Result.BeginUpdate;
  with umdataMod.DSetTurma do
    begin
      First;
      while not Eof do
        begin
          Result.Add(FieldByName('CURSO').AsString);
          Next;
        end;
    end;
  Result.EndUpdate;
end;

function TfrmConsultaAluno.ListaCampoDisciplina: TStrings;
begin
  Result := TStringList.Create;
  Result.Clear;
  Result.BeginUpdate;
  with umDataMod.DSetTurma do
    begin
      First;
      while not Eof do
        begin
          Result.Add(FieldByName('DISCIPLINA').AsString);
          Next;
        end;
    end;
  Result.EndUpdate;
end;

procedure TfrmConsultaAluno.fnc_AtualizarBanco;
begin
  umDataMod.DSetAluno.Close;
  umDataMod.DSetAluno.SelectSQL.Text := 'SELECT * FROM ALUNO';
  umDataMod.DSetAluno.Open;
  self.DBG_Aluno.DataSource := umDataMod.DSAluno;
end;

function TfrmConsultaAluno.ListaCampoMatricula: TStrings;
begin
  Result := TStringList.Create;
  Result.Clear;
  Result.BeginUpdate;
  with umDataMod.DSetFormulario do
    begin
      First;
      while not Eof do
        begin
          Result.Add(FieldByName('MATRICULA').AsString);
          Next;
        end;
    end;
  Result.EndUpdate;
end;

function TfrmConsultaAluno.ListaCampoNome: TStrings;
begin
  Result := TStringList.Create;    //-- Criar lista
  Result.Clear;     //-- Limpar lista
  Result.BeginUpdate;       //-- Acessar a lista mais rapido, melhora o desempenho
  with umDataMod.DSetFormulario do    //-- Para não repetir este nome
    begin
      First; //-- primeiro registro da tabela (TbNomeTabela)
      while not Eof do //-- Enqto não chegar ao fim da tabela (TbNomeTabela)
        begin
          Result.Add(FieldByName('NOME').AsString); //-- Copiar o registro para lista
          Next; //-- Ir para o proximo registro
        end;
    end;
  Result.EndUpdate;//-- Retornar o status normal da lista
  end;
function TfrmConsultaAluno.ListaCampoTurma: TStrings;
begin
  Result := TStringList.Create;
  Result.Clear;
  Result.BeginUpdate;
  with umDataMod.DSetTurma do
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
