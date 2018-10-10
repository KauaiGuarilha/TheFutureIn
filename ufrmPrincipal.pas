unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Grids, Vcl.DBGrids, UPessoa, UAluno, UProfessor, UFormulario, UfrmConsultaAluno, UfrmCadastroFormulario, UDataMod,
  UfrmConsultaProfessor, UfrmInfo, UfrmConsultaTurma,UTurma, UfrmTelaLogin,
  Vcl.ImgList;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    btnAlunos: TButton;
    btnProfessor: TButton;
    btnTurma: TButton;
    Panel2: TPanel;
    Image1: TImage;
    DBG_Formulario: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    btnIncluir: TButton;
    btnRefresh: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnDelete: TButton;
    Image2: TImage;
    btn_Grades: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlunosClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnProfessorClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure btnTurmaClick(Sender: TObject);
    procedure btn_GradesClick(Sender: TObject);
  private
    { Private declarations }
    umPessoa : Pessoa;
    umAluno : Aluno;
    umProfessor : Professor;
    umFormulario : Formulario;
    umTurma : Turma;
    umDataMod : TDataMod;
    umfrmConsultaAluno : TfrmConsultaAluno;
    umfrmCadastroFormulario : TfrmCadastroFormulario;
    umfrmConsultaProfessor  : TfrmConsultaProfessor;
    umfrmInfo : TfrmInfo;
    umfrmConsultaTurma : TfrmConsultaTurma;
    umfrmTelaLogin : TfrmTelaLogin;
    procedure fnc_AtualizarBanco;
  public
    { Public declarations }
    umfrmPrincipal : TfrmPrincipal;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnAlunosClick(Sender: TObject);
begin
     umfrmConsultaAluno := TfrmConsultaAluno.Create(nil);
     try
        umfrmConsultaAluno.conhecaObjeto(umAluno, umDataMod);
        umfrmConsultaAluno.ShowModal;
     finally
        FreeAndNil(umfrmConsultaAluno);
     end;
end;

procedure TfrmPrincipal.btnDeleteClick(Sender: TObject);
begin
     umDataMod.DSetFormulario.Delete;
end;

procedure TfrmPrincipal.btnIncluirClick(Sender: TObject);
begin
     umfrmCadastroFormulario := TfrmCadastroFormulario.Create(nil);
     try
       umfrmCadastroFormulario.conhecaObjeto(umFormulario, umDataMod);
       umfrmCadastroFormulario.ShowModal;
     finally
       FreeAndNil(umfrmCadastroFormulario);
     end;
end;

procedure TfrmPrincipal.btnProfessorClick(Sender: TObject);
begin
     umfrmConsultaProfessor := TfrmConsultaProfessor.Create(nil);
     try
       umfrmConsultaProfessor.conhecaObjeto(umProfessor, umDataMod);
       umfrmConsultaProfessor.ShowModal;
     finally
       FreeAndNil(umfrmConsultaProfessor);
     end;
end;

procedure TfrmPrincipal.btnRefreshClick(Sender: TObject);
begin
  fnc_AtualizarBanco;
end;

procedure TfrmPrincipal.btnTurmaClick(Sender: TObject);
begin
     umfrmConsultaTurma := TfrmConsultaTurma.Create(nil);
     try
       umfrmConsultaTurma.conhecaObjeto(umTurma, umDataMod);
       umfrmConsultaTurma.ShowModal;
     finally
       FreeAndNil(umfrmConsultaTurma);
     end;
end;

procedure TfrmPrincipal.btn_GradesClick(Sender: TObject);
begin
     ShowMessage('Coming soon !');
end;

procedure TfrmPrincipal.fnc_AtualizarBanco;
begin
  umDataMod.DSetFormulario.Close;
  umDataMod.DSetFormulario.SelectSQL.Text := 'SELECT * FROM FORMULARIO';
  umDataMod.DSetFormulario.Open;
  self.DBG_Formulario.DataSource := umDataMod.DSFormulario;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     umPessoa.DestruirPessoa;
     umFormulario.destruirFormulario;
     umTurma.destruirTurma;
     umAluno.DestruirAluno;
     umProfessor.DestruirProf;
     umDataMod.Destroy;

end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
     umPessoa := Pessoa.CriarPessoa;
     umAluno := Aluno.CriarAluno;
     umProfessor := Professor.CriarProf;
     umTurma := turma.criarTurma;
     umFormulario := Formulario.criarFormulario;
     umDataMod :=  TDataMod.Create(nil);
     fnc_AtualizarBanco;

     umfrmTelaLogin := TfrmTelaLogin.Create(nil);
     try
       umfrmTelaLogin.ShowModal;
     finally
      FreeAndNil(umfrmTelaLogin);
     end;
end;

procedure TfrmPrincipal.Image1Click(Sender: TObject);
begin
      umfrmInfo := TfrmInfo.Create(nil);
      try
        umfrmInfo.ShowModal;
      finally
        FreeAndNil(frmInfo);
      end;
end;

end.
