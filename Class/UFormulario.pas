unit UFormulario;

interface

uses Sysutils, UPessoa;

type Formulario = class(Pessoa)

    private codigo : Integer;
    private idade : Integer;
    private matricula : String;

    public constructor criarFormulario;

     function getCodigo : Integer;
     procedure setCodigo(dCodigo : Integer);

     function getIdade : Integer;
     procedure setIdade(dIdade : Integer);

     function getMatricula : String;
     procedure setMatricula(dMatricula : String);

    public destructor destruirFormulario;

end;
implementation

{ formulario }

constructor formulario.criarFormulario;
begin
    codigo := 0;
    idade := 0;
    matricula :='';
end;

destructor formulario.destruirFormulario;
begin

end;

function formulario.getCodigo: Integer;
begin
     result := codigo;
end;

function formulario.getIdade: Integer;
begin
    result := idade;
end;

function formulario.getMatricula: String;
begin
     result := matricula;
end;

procedure formulario.setCodigo(dCodigo: Integer);
begin
     codigo := dCodigo;
end;

procedure formulario.setIdade(dIdade: Integer);
begin
     idade := dIdade;
end;

procedure formulario.setMatricula(dMatricula: String);
begin
     matricula := dMatricula
end;

end.
