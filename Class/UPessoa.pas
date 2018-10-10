unit UPessoa;

interface

uses SysUtils;

type Pessoa = class

    private codigo : Integer;
    private nome : String;
    private cpf : String;

    public constructor CriarPessoa;

    function getCodigo : Integer;
    procedure setCodigo(dCodigo : Integer);

    function getNome : String;
    procedure setNome(dNome : String);

    function getCpf : String;
    procedure setCpf(dCpf : String);


    public Destructor DestruirPessoa;
end;

implementation

{ Pessoa }

constructor Pessoa.CriarPessoa;
begin
    nome := '';
    cpf := '';
end;

destructor Pessoa.DestruirPessoa;
begin

end;

function Pessoa.getCodigo: Integer;
begin
     result := codigo;
end;

function Pessoa.getCpf: String;
begin
    result := cpf;
end;

function Pessoa.getNome: String;
begin
    result := nome;
end;

procedure Pessoa.setCodigo(dCodigo: Integer);
begin
     codigo := dCodigo;
end;

procedure Pessoa.setCpf(dCpf: String);
begin
     cpf := dCpf;
end;

procedure Pessoa.setNome(dNome: String);
begin
     nome := dNome;
end;

end.
