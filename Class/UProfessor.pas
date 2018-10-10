unit UProfessor;

interface

uses Upessoa, SysUtils;

type Professor = class(Pessoa)

     private codigo : Integer;
     private matricula : String;
     private turma : String;
     public umPessoa : Pessoa;

     public Constructor CriarProf;

     function getCodigo : Integer;
     procedure setCodigo(dCodigo : Integer);

     function getMatricula : String;
     procedure setMatricula(dMatricula : String);

     function getTurma : String;
     procedure setTurma(dTurma : String);

     public Destructor DestruirProf;
end;

implementation

{ Professor }

constructor Professor.CriarProf;
begin
     matricula := '';
     turma :='';
     umPessoa := Pessoa.CriarPessoa;
end;

destructor Professor.DestruirProf;
begin
     umPessoa.DestruirPessoa;
end;

function Professor.getCodigo: Integer;
begin
     result := codigo;
end;

function Professor.getMatricula: String;
begin
    result := matricula;
end;

function Professor.getTurma: String;
begin
    result := turma;
end;

procedure Professor.setCodigo(dCodigo: Integer);
begin
     codigo := dCodigo;
end;

procedure Professor.setMatricula(dMatricula: String);
begin
     matricula := dMatricula;
end;

procedure Professor.setTurma(dTurma: String);
begin
      turma := dTurma;
end;

end.
