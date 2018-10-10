unit UTurma;

interface

uses SysUtils;

type Turma = class

    private codigo : Integer;
    private curso : String;
    private disciplina :String;
    private turma : String;

    public Constructor criarTurma;

    function getCodigo : Integer;
    procedure setCodigo(dCodigo: Integer);

    function getCurso : String;
    procedure setCurso(dCurso : String);

    function getDisciplina : String;
    procedure setDisciplina(dDisciplina : String);

    function getTurma : String;
    procedure setTurma(dTurma : String);

    public Destructor destruirTurma;

end;


implementation

{ Turma }

constructor Turma.criarTurma;
begin
    codigo := 0;
    curso := '';
    disciplina := '';
    turma := '';
end;

destructor Turma.destruirTurma;
begin

end;

function Turma.getCodigo: Integer;
begin
    result := codigo;
end;

function Turma.getCurso: String;
begin
    result := curso;
end;

function Turma.getDisciplina: String;
begin
     result := disciplina;
end;

function Turma.getTurma: String;
begin
    result := turma;
end;

procedure Turma.setCodigo(dCodigo: Integer);
begin
     codigo := dCodigo;
end;

procedure Turma.setCurso(dCurso: String);
begin
    curso := dCurso;
end;

procedure Turma.setDisciplina(dDisciplina: String);
begin
    disciplina := dDisciplina;
end;

procedure Turma.setTurma(dTurma: String);
begin
    turma := dTurma;
end;

end.
