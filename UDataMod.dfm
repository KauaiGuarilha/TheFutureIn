object DataMod: TDataMod
  OldCreateOrder = False
  Height = 310
  Width = 438
  object Banco: TIBDatabase
    Connected = True
    DatabaseName = 
      '\\127.0.0.1\C:\Users\Porteiro\Documents\GitHub\TheFutureIn\DataB' +
      'ase\THE_FUTURE_IN.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 56
    Top = 56
  end
  object IBTransa: TIBTransaction
    Active = True
    DefaultDatabase = Banco
    Left = 128
    Top = 56
  end
  object DSetAluno: TIBDataSet
    Database = Banco
    Transaction = IBTransa
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ALUNO'
      'where'
      '  IDALUNO = :IDALUNO')
    InsertSQL.Strings = (
      'insert into ALUNO'
      '  (COURSE, CPF, DISCIPLINE, MATRICULA, NOME, TURMA)'
      'values'
      '  (:COURSE, :CPF, :DISCIPLINE, :MATRICULA, :NOME, :TURMA)')
    RefreshSQL.Strings = (
      'Select '
      '  IDALUNO,'
      '  NOME,'
      '  CPF,'
      '  TURMA,'
      '  MATRICULA,'
      '  DISCIPLINE,'
      '  COURSE'
      'from ALUNO '
      'where'
      '  IDALUNO = :IDALUNO')
    SelectSQL.Strings = (
      'select * from ALUNO')
    ModifySQL.Strings = (
      'update ALUNO'
      'set'
      '  COURSE = :COURSE,'
      '  CPF = :CPF,'
      '  DISCIPLINE = :DISCIPLINE,'
      '  MATRICULA = :MATRICULA,'
      '  NOME = :NOME,'
      '  TURMA = :TURMA'
      'where'
      '  IDALUNO = :IDALUNO')
    ParamCheck = True
    UniDirectional = False
    Active = True
    Left = 56
    Top = 136
    object DSetAlunoIDALUNO: TIntegerField
      FieldName = 'IDALUNO'
      Origin = '"ALUNO"."IDALUNO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DSetAlunoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ALUNO"."NOME"'
      Size = 25
    end
    object DSetAlunoCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"ALUNO"."CPF"'
      Size = 11
    end
    object DSetAlunoTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"ALUNO"."TURMA"'
      Size = 10
    end
    object DSetAlunoMATRICULA: TIBStringField
      FieldName = 'MATRICULA'
      Origin = '"ALUNO"."MATRICULA"'
      Size = 10
    end
    object DSetAlunoDISCIPLINE: TIBStringField
      FieldName = 'DISCIPLINE'
      Origin = '"ALUNO"."DISCIPLINE"'
      Size = 40
    end
    object DSetAlunoCOURSE: TIBStringField
      FieldName = 'COURSE'
      Origin = '"ALUNO"."COURSE"'
      Size = 40
    end
  end
  object DSetProfessor: TIBDataSet
    Database = Banco
    Transaction = IBTransa
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PROFESSOR'
      'where'
      '  IDPROFESSOR = :IDPROFESSOR')
    InsertSQL.Strings = (
      'insert into PROFESSOR'
      '  (MATRICULA, NOME, TURMA)'
      'values'
      '  (:MATRICULA, :NOME, :TURMA)')
    RefreshSQL.Strings = (
      'Select '
      '  IDPROFESSOR,'
      '  NOME,'
      '  MATRICULA,'
      '  TURMA'
      'from PROFESSOR '
      'where'
      '  IDPROFESSOR = :IDPROFESSOR')
    SelectSQL.Strings = (
      'select * from PROFESSOR')
    ModifySQL.Strings = (
      'update PROFESSOR'
      'set'
      '  MATRICULA = :MATRICULA,'
      '  NOME = :NOME,'
      '  TURMA = :TURMA'
      'where'
      '  IDPROFESSOR = :IDPROFESSOR')
    ParamCheck = True
    UniDirectional = False
    Active = True
    Left = 128
    Top = 136
    object DSetProfessorIDPROFESSOR: TIntegerField
      FieldName = 'IDPROFESSOR'
      Origin = '"PROFESSOR"."IDPROFESSOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DSetProfessorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"PROFESSOR"."NOME"'
      Size = 25
    end
    object DSetProfessorMATRICULA: TIBStringField
      FieldName = 'MATRICULA'
      Origin = '"PROFESSOR"."MATRICULA"'
      Size = 10
    end
    object DSetProfessorTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"PROFESSOR"."TURMA"'
      Size = 10
    end
  end
  object DSetFormulario: TIBDataSet
    Database = Banco
    Transaction = IBTransa
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from FORMULARIO'
      'where'
      '  IDFORM = :IDFORM')
    InsertSQL.Strings = (
      'insert into FORMULARIO'
      '  (CPF, IDADE, MATRICULA, NOME)'
      'values'
      '  (:CPF, :IDADE, :MATRICULA, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  IDFORM,'
      '  NOME,'
      '  IDADE,'
      '  MATRICULA,'
      '  CPF'
      'from FORMULARIO '
      'where'
      '  IDFORM = :IDFORM')
    SelectSQL.Strings = (
      'select * from FORMULARIO')
    ModifySQL.Strings = (
      'update FORMULARIO'
      'set'
      '  CPF = :CPF,'
      '  IDADE = :IDADE,'
      '  MATRICULA = :MATRICULA,'
      '  NOME = :NOME'
      'where'
      '  IDFORM = :IDFORM')
    ParamCheck = True
    UniDirectional = False
    Active = True
    Left = 208
    Top = 136
    object DSetFormularioIDFORM: TIntegerField
      FieldName = 'IDFORM'
      Origin = '"FORMULARIO"."IDFORM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DSetFormularioNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FORMULARIO"."NOME"'
      Size = 25
    end
    object DSetFormularioIDADE: TIntegerField
      FieldName = 'IDADE'
      Origin = '"FORMULARIO"."IDADE"'
    end
    object DSetFormularioMATRICULA: TIBStringField
      FieldName = 'MATRICULA'
      Origin = '"FORMULARIO"."MATRICULA"'
      Size = 10
    end
    object DSetFormularioCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"FORMULARIO"."CPF"'
      Size = 11
    end
  end
  object DSAluno: TDataSource
    DataSet = DSetAluno
    Left = 56
    Top = 200
  end
  object DSProfessor: TDataSource
    DataSet = DSetProfessor
    Left = 128
    Top = 200
  end
  object DSFormulario: TDataSource
    DataSet = DSetFormulario
    Left = 208
    Top = 200
  end
  object DSetPessoa: TIBDataSet
    Database = Banco
    Transaction = IBTransa
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from PESSOA'
      'where'
      '  IDPESSOA = :IDPESSOA')
    InsertSQL.Strings = (
      'insert into PESSOA'
      '  (CPF, NOME)'
      'values'
      '  (:CPF, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  IDPESSOA,'
      '  NOME,'
      '  CPF'
      'from PESSOA '
      'where'
      '  IDPESSOA = :IDPESSOA')
    SelectSQL.Strings = (
      'select * from PESSOA')
    ModifySQL.Strings = (
      'update PESSOA'
      'set'
      '  CPF = :CPF,'
      '  NOME = :NOME'
      'where'
      '  IDPESSOA = :IDPESSOA')
    ParamCheck = True
    UniDirectional = False
    Active = True
    Left = 288
    Top = 136
    object DSetPessoaIDPESSOA: TIntegerField
      FieldName = 'IDPESSOA'
      Origin = '"PESSOA"."IDPESSOA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DSetPessoaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"PESSOA"."NOME"'
      Size = 25
    end
    object DSetPessoaCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"PESSOA"."CPF"'
      Size = 11
    end
  end
  object DSPessoa: TDataSource
    DataSet = DSetPessoa
    Left = 288
    Top = 200
  end
  object DSetTurma: TIBDataSet
    Database = Banco
    Transaction = IBTransa
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TURMA'
      'where'
      '  IDCLASS = :IDCLASS')
    InsertSQL.Strings = (
      'insert into TURMA'
      '  (CURSO, DISCIPLINA, TURMA)'
      'values'
      '  (:CURSO, :DISCIPLINA, :TURMA)')
    RefreshSQL.Strings = (
      'Select '
      '  IDCLASS,'
      '  CURSO,'
      '  DISCIPLINA,'
      '  TURMA'
      'from TURMA '
      'where'
      '  IDCLASS = :IDCLASS')
    SelectSQL.Strings = (
      'select * from TURMA')
    ModifySQL.Strings = (
      'update TURMA'
      'set'
      '  CURSO = :CURSO,'
      '  DISCIPLINA = :DISCIPLINA,'
      '  TURMA = :TURMA'
      'where'
      '  IDCLASS = :IDCLASS')
    ParamCheck = True
    UniDirectional = False
    Active = True
    Left = 360
    Top = 136
    object DSetTurmaIDCLASS: TIntegerField
      FieldName = 'IDCLASS'
      Origin = '"TURMA"."IDCLASS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DSetTurmaCURSO: TIBStringField
      FieldName = 'CURSO'
      Origin = '"TURMA"."CURSO"'
      Size = 25
    end
    object DSetTurmaDISCIPLINA: TIBStringField
      FieldName = 'DISCIPLINA'
      Origin = '"TURMA"."DISCIPLINA"'
    end
    object DSetTurmaTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"TURMA"."TURMA"'
      Size = 10
    end
  end
  object DSTurma: TDataSource
    DataSet = DSetTurma
    Left = 360
    Top = 200
  end
end
