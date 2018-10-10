program TheFutureIn;

uses
  Vcl.Forms,
  ufrmPrincipal in 'ufrmPrincipal.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  UPessoa in 'Class\UPessoa.pas',
  UAluno in 'Class\UAluno.pas',
  UProfessor in 'Class\UProfessor.pas',
  ufrmConsultaAluno in 'View\ufrmConsultaAluno.pas' {frmConsultaAluno},
  UFormulario in 'Class\UFormulario.pas',
  UDataMod in 'UDataMod.pas' {DataMod: TDataModule},
  ufrmCadastroFormulario in 'View\ufrmCadastroFormulario.pas' {frmCadastroFormulario},
  ufrmConsultaProfessor in 'View\ufrmConsultaProfessor.pas' {frmConsultaProfessor},
  UfrmInfo in 'View\UfrmInfo.pas' {frmInfo},
  ufrmConsultaTurma in 'View\ufrmConsultaTurma.pas' {frmConsultaTurma},
  UTurma in 'Class\UTurma.pas',
  UfrmTelaLogin in 'View\UfrmTelaLogin.pas' {frmTelaLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('TabletDark');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataMod, DataMod);
  Application.Run;
end.
