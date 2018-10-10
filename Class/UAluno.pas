unit UAluno;

interface

uses Upessoa, SysUtils;

type Aluno = Class(Pessoa)

    private codigo : Integer;
    private turma : String;
    private discip : String;
    private curso : String;
    public umPessoa : Pessoa;

    public Constructor CriarAluno;

    function getCodigo : Integer;
    procedure setCodigo(dCodigo : Integer);

    function getTurma : String;
    procedure setTurma(dTurma : String);

    function getDiscip : String;
    procedure setDiscip(dDiscip : String);

    function getCurso : String;
    procedure setCurso(dCurso : String);

    public Destructor DestruirAluno;
End;

implementation

{ Aluno }

constructor Aluno.CriarAluno;
begin
    codigo := 0;
    turma := '';
    discip := '';
    curso := '';
    umPessoa := Pessoa.CriarPessoa;
end;

destructor Aluno.DestruirAluno;
begin
     umPessoa.DestruirPessoa;
end;

function Aluno.getCodigo: Integer;
begin
    result := codigo;
end;

function Aluno.getCurso: String;
begin
    result := curso;
end;

function Aluno.getDiscip: String;
begin
     result := discip;
end;

function Aluno.getTurma: String;
begin
    result := turma;
end;

procedure Aluno.setCodigo(dCodigo: Integer);
begin
    codigo := dCodigo;
end;

procedure Aluno.setCurso(dCurso: String);
begin
     curso := dCurso;
end;

procedure Aluno.setDiscip(dDiscip: String);
begin
     discip := dDiscip;
end;

procedure Aluno.setTurma(dTurma: String);
begin
     turma := dTurma;
end;

end.
