unit UDataMod;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBDatabase;

type
  TDataMod = class(TDataModule)
    Banco: TIBDatabase;
    IBTransa: TIBTransaction;
    DSetAluno: TIBDataSet;
    DSetProfessor: TIBDataSet;
    DSetFormulario: TIBDataSet;
    DSAluno: TDataSource;
    DSProfessor: TDataSource;
    DSFormulario: TDataSource;
    DSetPessoa: TIBDataSet;
    DSPessoa: TDataSource;
    DSetAlunoIDALUNO: TIntegerField;
    DSetAlunoNOME: TIBStringField;
    DSetAlunoCPF: TIBStringField;
    DSetAlunoTURMA: TIBStringField;
    DSetProfessorIDPROFESSOR: TIntegerField;
    DSetProfessorNOME: TIBStringField;
    DSetProfessorMATRICULA: TIBStringField;
    DSetProfessorTURMA: TIBStringField;
    DSetFormularioIDFORM: TIntegerField;
    DSetFormularioNOME: TIBStringField;
    DSetFormularioIDADE: TIntegerField;
    DSetFormularioMATRICULA: TIBStringField;
    DSetPessoaIDPESSOA: TIntegerField;
    DSetPessoaNOME: TIBStringField;
    DSetPessoaCPF: TIBStringField;
    DSetFormularioCPF: TIBStringField;
    DSetTurma: TIBDataSet;
    DSetTurmaIDCLASS: TIntegerField;
    DSetTurmaCURSO: TIBStringField;
    DSetTurmaDISCIPLINA: TIBStringField;
    DSetTurmaTURMA: TIBStringField;
    DSTurma: TDataSource;
    DSetAlunoMATRICULA: TIBStringField;
    DSetAlunoDISCIPLINE: TIBStringField;
    DSetAlunoCOURSE: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  DataMod: TDataMod;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
