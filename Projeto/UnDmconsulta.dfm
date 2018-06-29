object DMCONSULTA: TDMCONSULTA
  OldCreateOrder = False
  Height = 387
  Width = 656
  object qyproduto: TIBQuery
    Database = DMLOJA.DBDATABASE
    Transaction = DMLOJA.TSPDV
    SQL.Strings = (
      'select * from TBESTOQUE')
    Left = 24
    Top = 32
    object qyprodutoREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = '"TBESTOQUE"."REFERENCIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object qyprodutoQTDCOMPRADA: TIntegerField
      FieldName = 'QTDCOMPRADA'
      Origin = '"TBESTOQUE"."QTDCOMPRADA"'
    end
    object qyprodutoQTDVENDIDA: TIntegerField
      FieldName = 'QTDVENDIDA'
      Origin = '"TBESTOQUE"."QTDVENDIDA"'
    end
    object qyprodutoQTDESTOQUE: TIntegerField
      FieldName = 'QTDESTOQUE'
      Origin = '"TBESTOQUE"."QTDESTOQUE"'
    end
    object qyprodutoULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      Origin = '"TBESTOQUE"."ULTIMACOMPRA"'
    end
    object qyprodutoULTIMAVENDA: TDateField
      FieldName = 'ULTIMAVENDA'
      Origin = '"TBESTOQUE"."ULTIMAVENDA"'
    end
    object qyprodutoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"TBESTOQUE"."DESCRICAO"'
      Size = 50
    end
    object qyprodutoVLESTOQUE: TFloatField
      FieldName = 'VLESTOQUE'
      Origin = '"TBESTOQUE"."VLESTOQUE"'
    end
    object qyprodutoPONCENTAGEN: TFloatField
      FieldName = 'PONCENTAGEN'
      Origin = '"TBESTOQUE"."PONCENTAGEN"'
    end
    object qyprodutoFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = '"TBESTOQUE"."FORNECEDOR"'
      Size = 40
    end
    object qyprodutoGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = '"TBESTOQUE"."GRUPO"'
      Size = 25
    end
    object qyprodutoCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"TBESTOQUE"."COR"'
    end
    object qyprodutoCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Origin = '"TBESTOQUE"."CUSTOMEDIO"'
    end
    object qyprodutoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"TBESTOQUE"."UNIDADE"'
      FixedChar = True
      Size = 2
    end
    object qyprodutoAUDITORIA: TIBStringField
      FieldName = 'AUDITORIA'
      Origin = '"TBESTOQUE"."AUDITORIA"'
      Size = 50
    end
    object qyprodutoCDFORN: TIntegerField
      FieldName = 'CDFORN'
      Origin = '"TBESTOQUE"."CDFORN"'
    end
    object qyprodutoCDUND: TIntegerField
      FieldName = 'CDUND'
      Origin = '"TBESTOQUE"."CDUND"'
    end
    object qyprodutoCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = '"TBESTOQUE"."CFOP"'
      Size = 4
    end
    object qyprodutoNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"TBESTOQUE"."NCM"'
      Size = 8
    end
    object qyprodutoQTDMINIMA: TIntegerField
      FieldName = 'QTDMINIMA'
      Origin = '"TBESTOQUE"."QTDMINIMA"'
    end
    object qyprodutoALIQUOTA: TIBStringField
      FieldName = 'ALIQUOTA'
      Origin = '"TBESTOQUE"."ALIQUOTA"'
      Size = 4
    end
    object qyprodutoDTINICIOPROMOCAO: TDateField
      FieldName = 'DTINICIOPROMOCAO'
      Origin = '"TBESTOQUE"."DTINICIOPROMOCAO"'
    end
    object qyprodutoDTFIMPROMOCAO: TDateField
      FieldName = 'DTFIMPROMOCAO'
      Origin = '"TBESTOQUE"."DTFIMPROMOCAO"'
    end
    object qyprodutoVLRVENDA: TIBBCDField
      FieldName = 'VLRVENDA'
      Origin = '"TBESTOQUE"."VLRVENDA"'
      Precision = 18
      Size = 2
    end
    object qyprodutoPRECOCUSTO: TIBBCDField
      FieldName = 'PRECOCUSTO'
      Origin = '"TBESTOQUE"."PRECOCUSTO"'
      Precision = 18
      Size = 2
    end
    object qyprodutoVLRCOMPRA: TIBBCDField
      FieldName = 'VLRCOMPRA'
      Origin = '"TBESTOQUE"."VLRCOMPRA"'
      Precision = 18
      Size = 2
    end
    object qyprodutoLUCRO: TIBBCDField
      FieldName = 'LUCRO'
      Origin = '"TBESTOQUE"."LUCRO"'
      Precision = 18
      Size = 2
    end
    object qyprodutoDESCONTOINDIVIDUAL: TIBBCDField
      FieldName = 'DESCONTOINDIVIDUAL'
      Origin = '"TBESTOQUE"."DESCONTOINDIVIDUAL"'
      Precision = 18
      Size = 2
    end
    object qyprodutoVLVENDAPROMOCAO: TIBBCDField
      FieldName = 'VLVENDAPROMOCAO'
      Origin = '"TBESTOQUE"."VLVENDAPROMOCAO"'
      Precision = 18
      Size = 2
    end
    object qyprodutoCOLECAO: TIBStringField
      FieldName = 'COLECAO'
      Origin = '"TBESTOQUE"."COLECAO"'
      Size = 25
    end
    object qyprodutoSECAO: TIBStringField
      FieldName = 'SECAO'
      Origin = '"TBESTOQUE"."SECAO"'
      Size = 25
    end
    object qyprodutoSUBGRUPO: TIBStringField
      FieldName = 'SUBGRUPO'
      Origin = '"TBESTOQUE"."SUBGRUPO"'
      Size = 25
    end
    object qyprodutoMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"TBESTOQUE"."MARCA"'
      Size = 25
    end
    object qyprodutoIMPRIMIR: TIBStringField
      FieldName = 'IMPRIMIR'
      Origin = '"TBESTOQUE"."IMPRIMIR"'
      FixedChar = True
      Size = 3
    end
    object qyprodutoNRCEST: TIBStringField
      FieldName = 'NRCEST'
      Origin = '"TBESTOQUE"."NRCEST"'
      Size = 13
    end
  end
  object qyclientevenda: TIBQuery
    Database = DMLOJA.DBDATABASE
    Transaction = DMLOJA.TSPDV
    SQL.Strings = (
      'select * from TBCLIENTE')
    Left = 32
    Top = 88
    object qyclientevendaCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = '"TBCLIENTE"."CLI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qyclientevendaCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"TBCLIENTE"."CLI_NOME"'
      Size = 35
    end
    object qyclientevendaCLI_SEXO: TIBStringField
      FieldName = 'CLI_SEXO'
      Origin = '"TBCLIENTE"."CLI_SEXO"'
    end
    object qyclientevendaCLI_PESSOA: TIBStringField
      FieldName = 'CLI_PESSOA'
      Origin = '"TBCLIENTE"."CLI_PESSOA"'
    end
    object qyclientevendaCLI_RG: TIBStringField
      FieldName = 'CLI_RG'
      Origin = '"TBCLIENTE"."CLI_RG"'
    end
    object qyclientevendaCLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
      Origin = '"TBCLIENTE"."CLI_CPF"'
      FixedChar = True
      Size = 14
    end
    object qyclientevendaCLI_NASCIMENTO: TDateField
      FieldName = 'CLI_NASCIMENTO'
      Origin = '"TBCLIENTE"."CLI_NASCIMENTO"'
    end
    object qyclientevendaCLI_ENDERECO: TIBStringField
      FieldName = 'CLI_ENDERECO'
      Origin = '"TBCLIENTE"."CLI_ENDERECO"'
      Size = 35
    end
    object qyclientevendaCLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Origin = '"TBCLIENTE"."CLI_BAIRRO"'
      Size = 35
    end
    object qyclientevendaCLI_NUMEROCASA: TIntegerField
      FieldName = 'CLI_NUMEROCASA'
      Origin = '"TBCLIENTE"."CLI_NUMEROCASA"'
    end
    object qyclientevendaCLI_COMPLEMENTO: TIBStringField
      FieldName = 'CLI_COMPLEMENTO'
      Origin = '"TBCLIENTE"."CLI_COMPLEMENTO"'
    end
    object qyclientevendaCLI_CIDADE: TIBStringField
      FieldName = 'CLI_CIDADE'
      Origin = '"TBCLIENTE"."CLI_CIDADE"'
      Size = 35
    end
    object qyclientevendaCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"TBCLIENTE"."CLI_CEP"'
      FixedChar = True
      Size = 9
    end
    object qyclientevendaCLI_TELEFONE: TIBStringField
      FieldName = 'CLI_TELEFONE'
      Origin = '"TBCLIENTE"."CLI_TELEFONE"'
      Size = 13
    end
    object qyclientevendaCLI_CELULAR: TIBStringField
      FieldName = 'CLI_CELULAR'
      Origin = '"TBCLIENTE"."CLI_CELULAR"'
      Size = 13
    end
    object qyclientevendaCLI_FONERECADO: TIBStringField
      FieldName = 'CLI_FONERECADO'
      Origin = '"TBCLIENTE"."CLI_FONERECADO"'
      Size = 13
    end
    object qyclientevendaCLI_ESTADOCIVIL: TIBStringField
      FieldName = 'CLI_ESTADOCIVIL'
      Origin = '"TBCLIENTE"."CLI_ESTADOCIVIL"'
      Size = 14
    end
    object qyclientevendaCLI_NMCONJUGE: TIBStringField
      FieldName = 'CLI_NMCONJUGE'
      Origin = '"TBCLIENTE"."CLI_NMCONJUGE"'
      Size = 35
    end
    object qyclientevendaCLI_STSPC: TIBStringField
      FieldName = 'CLI_STSPC'
      Origin = '"TBCLIENTE"."CLI_STSPC"'
    end
    object qyclientevendaCLI_DATACONSULTA: TDateField
      FieldName = 'CLI_DATACONSULTA'
      Origin = '"TBCLIENTE"."CLI_DATACONSULTA"'
    end
    object qyclientevendaCLI_TELCONTATO: TIBStringField
      FieldName = 'CLI_TELCONTATO'
      Origin = '"TBCLIENTE"."CLI_TELCONTATO"'
      Size = 13
    end
    object qyclientevendaCLI_DATACADASTRO: TDateField
      FieldName = 'CLI_DATACADASTRO'
      Origin = '"TBCLIENTE"."CLI_DATACADASTRO"'
    end
    object qyclientevendaCLI_INATIVIDADE: TIBStringField
      FieldName = 'CLI_INATIVIDADE'
      Origin = '"TBCLIENTE"."CLI_INATIVIDADE"'
    end
    object qyclientevendaCLI_RENDA: TIBBCDField
      FieldName = 'CLI_RENDA'
      Origin = '"TBCLIENTE"."CLI_RENDA"'
      Precision = 18
      Size = 2
    end
    object qyclientevendaCLI_NMTRABALHO: TIBStringField
      FieldName = 'CLI_NMTRABALHO'
      Origin = '"TBCLIENTE"."CLI_NMTRABALHO"'
      Size = 40
    end
    object qyclientevendaCLI_TELTRABALHO: TIBStringField
      FieldName = 'CLI_TELTRABALHO'
      Origin = '"TBCLIENTE"."CLI_TELTRABALHO"'
      Size = 13
    end
    object qyclientevendaCLI_FUNCAO: TIBStringField
      FieldName = 'CLI_FUNCAO'
      Origin = '"TBCLIENTE"."CLI_FUNCAO"'
      Size = 30
    end
    object qyclientevendaCLI_UF: TIBStringField
      FieldName = 'CLI_UF'
      Origin = '"TBCLIENTE"."CLI_UF"'
      FixedChar = True
      Size = 2
    end
    object qyclientevendaCLI_EMAIL: TIBStringField
      FieldName = 'CLI_EMAIL'
      Origin = '"TBCLIENTE"."CLI_EMAIL"'
      Size = 50
    end
    object qyclientevendaCLI_CODIGOMUNICIPIO: TIBStringField
      FieldName = 'CLI_CODIGOMUNICIPIO'
      Origin = '"TBCLIENTE"."CLI_CODIGOMUNICIPIO"'
      Size = 7
    end
  end
  object IBRELCAIXA: TIBQuery
    Database = DMLOJA.DBDATABASE
    Transaction = DMLOJA.TSPDV
    SQL.Strings = (
      'select * from TBCAIXA'
      'where dt_entrada =:dt_entrada')
    Left = 40
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dt_entrada'
        ParamType = ptUnknown
      end>
    object IBRELCAIXACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"TBCAIXA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBRELCAIXAVL_ENTRADA: TIBBCDField
      FieldName = 'VL_ENTRADA'
      Origin = '"TBCAIXA"."VL_ENTRADA"'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object IBRELCAIXADT_ENTRADA: TDateField
      FieldName = 'DT_ENTRADA'
      Origin = '"TBCAIXA"."DT_ENTRADA"'
    end
    object IBRELCAIXACOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = '"TBCAIXA"."COD_VENDEDOR"'
    end
    object IBRELCAIXADO_TIPO: TIBStringField
      FieldName = 'DO_TIPO'
      Origin = '"TBCAIXA"."DO_TIPO"'
      Size = 50
    end
    object IBRELCAIXAVL_RECEBIDO: TIBBCDField
      FieldName = 'VL_RECEBIDO'
      Origin = '"TBCAIXA"."VL_RECEBIDO"'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object IBRELCAIXACD_CLIENTE: TIntegerField
      FieldName = 'CD_CLIENTE'
      Origin = '"TBCAIXA"."CD_CLIENTE"'
    end
    object IBRELCAIXAVL_TAXA: TIBBCDField
      FieldName = 'VL_TAXA'
      Origin = '"TBCAIXA"."VL_TAXA"'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object IBRELCAIXAVL_DESCONTO: TIBBCDField
      FieldName = 'VL_DESCONTO'
      Origin = '"TBCAIXA"."VL_DESCONTO"'
      Precision = 18
      Size = 2
    end
    object IBRELCAIXAREFERENTE: TIBStringField
      FieldName = 'REFERENTE'
      Origin = '"TBCAIXA"."REFERENTE"'
    end
    object IBRELCAIXASOMA: TIBBCDField
      FieldName = 'SOMA'
      Origin = '"TBCAIXA"."SOMA"'
      Precision = 18
      Size = 2
    end
    object IBRELCAIXAMINUTA: TIntegerField
      FieldName = 'MINUTA'
      Origin = '"TBCAIXA"."MINUTA"'
    end
    object IBRELCAIXANRCONTROLE: TIntegerField
      FieldName = 'NRCONTROLE'
      Origin = '"TBCAIXA"."NRCONTROLE"'
    end
  end
  object IBCONSULTACLIENTE: TIBQuery
    Database = DMLOJA.DBDATABASE
    Transaction = DMLOJA.TSPDV
    SQL.Strings = (
      'select * from TBCLIENTE')
    Left = 128
    Top = 32
    object IBCONSULTACLIENTECLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = '"TBCLIENTE"."CLI_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBCONSULTACLIENTECLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"TBCLIENTE"."CLI_NOME"'
      Size = 35
    end
    object IBCONSULTACLIENTECLI_SEXO: TIBStringField
      FieldName = 'CLI_SEXO'
      Origin = '"TBCLIENTE"."CLI_SEXO"'
    end
    object IBCONSULTACLIENTECLI_PESSOA: TIBStringField
      FieldName = 'CLI_PESSOA'
      Origin = '"TBCLIENTE"."CLI_PESSOA"'
    end
    object IBCONSULTACLIENTECLI_RG: TIBStringField
      FieldName = 'CLI_RG'
      Origin = '"TBCLIENTE"."CLI_RG"'
    end
    object IBCONSULTACLIENTECLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
      Origin = '"TBCLIENTE"."CLI_CPF"'
      FixedChar = True
      Size = 14
    end
    object IBCONSULTACLIENTECLI_NASCIMENTO: TDateField
      FieldName = 'CLI_NASCIMENTO'
      Origin = '"TBCLIENTE"."CLI_NASCIMENTO"'
    end
    object IBCONSULTACLIENTECLI_ENDERECO: TIBStringField
      FieldName = 'CLI_ENDERECO'
      Origin = '"TBCLIENTE"."CLI_ENDERECO"'
      Size = 35
    end
    object IBCONSULTACLIENTECLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Origin = '"TBCLIENTE"."CLI_BAIRRO"'
      Size = 35
    end
    object IBCONSULTACLIENTECLI_NUMEROCASA: TIntegerField
      FieldName = 'CLI_NUMEROCASA'
      Origin = '"TBCLIENTE"."CLI_NUMEROCASA"'
    end
    object IBCONSULTACLIENTECLI_COMPLEMENTO: TIBStringField
      FieldName = 'CLI_COMPLEMENTO'
      Origin = '"TBCLIENTE"."CLI_COMPLEMENTO"'
    end
    object IBCONSULTACLIENTECLI_CIDADE: TIBStringField
      FieldName = 'CLI_CIDADE'
      Origin = '"TBCLIENTE"."CLI_CIDADE"'
      Size = 35
    end
    object IBCONSULTACLIENTECLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"TBCLIENTE"."CLI_CEP"'
      FixedChar = True
      Size = 9
    end
    object IBCONSULTACLIENTECLI_TELEFONE: TIBStringField
      FieldName = 'CLI_TELEFONE'
      Origin = '"TBCLIENTE"."CLI_TELEFONE"'
      Size = 13
    end
    object IBCONSULTACLIENTECLI_CELULAR: TIBStringField
      FieldName = 'CLI_CELULAR'
      Origin = '"TBCLIENTE"."CLI_CELULAR"'
      Size = 13
    end
    object IBCONSULTACLIENTECLI_FONERECADO: TIBStringField
      FieldName = 'CLI_FONERECADO'
      Origin = '"TBCLIENTE"."CLI_FONERECADO"'
      Size = 13
    end
    object IBCONSULTACLIENTECLI_ESTADOCIVIL: TIBStringField
      FieldName = 'CLI_ESTADOCIVIL'
      Origin = '"TBCLIENTE"."CLI_ESTADOCIVIL"'
      Size = 14
    end
    object IBCONSULTACLIENTECLI_NMCONJUGE: TIBStringField
      FieldName = 'CLI_NMCONJUGE'
      Origin = '"TBCLIENTE"."CLI_NMCONJUGE"'
      Size = 35
    end
    object IBCONSULTACLIENTECLI_STSPC: TIBStringField
      FieldName = 'CLI_STSPC'
      Origin = '"TBCLIENTE"."CLI_STSPC"'
    end
    object IBCONSULTACLIENTECLI_DATACONSULTA: TDateField
      FieldName = 'CLI_DATACONSULTA'
      Origin = '"TBCLIENTE"."CLI_DATACONSULTA"'
    end
    object IBCONSULTACLIENTECLI_TELCONTATO: TIBStringField
      FieldName = 'CLI_TELCONTATO'
      Origin = '"TBCLIENTE"."CLI_TELCONTATO"'
      Size = 13
    end
    object IBCONSULTACLIENTECLI_DATACADASTRO: TDateField
      FieldName = 'CLI_DATACADASTRO'
      Origin = '"TBCLIENTE"."CLI_DATACADASTRO"'
    end
    object IBCONSULTACLIENTECLI_INATIVIDADE: TIBStringField
      FieldName = 'CLI_INATIVIDADE'
      Origin = '"TBCLIENTE"."CLI_INATIVIDADE"'
    end
    object IBCONSULTACLIENTECLI_RENDA: TIBBCDField
      FieldName = 'CLI_RENDA'
      Origin = '"TBCLIENTE"."CLI_RENDA"'
      Precision = 18
      Size = 2
    end
    object IBCONSULTACLIENTECLI_NMTRABALHO: TIBStringField
      FieldName = 'CLI_NMTRABALHO'
      Origin = '"TBCLIENTE"."CLI_NMTRABALHO"'
      Size = 40
    end
    object IBCONSULTACLIENTECLI_TELTRABALHO: TIBStringField
      FieldName = 'CLI_TELTRABALHO'
      Origin = '"TBCLIENTE"."CLI_TELTRABALHO"'
      Size = 13
    end
    object IBCONSULTACLIENTECLI_FUNCAO: TIBStringField
      FieldName = 'CLI_FUNCAO'
      Origin = '"TBCLIENTE"."CLI_FUNCAO"'
      Size = 30
    end
    object IBCONSULTACLIENTECLI_UF: TIBStringField
      FieldName = 'CLI_UF'
      Origin = '"TBCLIENTE"."CLI_UF"'
      FixedChar = True
      Size = 2
    end
    object IBCONSULTACLIENTECLI_EMAIL: TIBStringField
      FieldName = 'CLI_EMAIL'
      Origin = '"TBCLIENTE"."CLI_EMAIL"'
      Size = 50
    end
    object IBCONSULTACLIENTECLI_CODIGOMUNICIPIO: TIBStringField
      FieldName = 'CLI_CODIGOMUNICIPIO'
      Origin = '"TBCLIENTE"."CLI_CODIGOMUNICIPIO"'
      Size = 7
    end
  end
  object DSIBCONSULTACLIENTE: TDataSource
    DataSet = IBCONSULTACLIENTE
    Left = 168
    Top = 32
  end
  object qylocalizarproduto: TIBQuery
    Database = DMLOJA.DBDATABASE
    Transaction = DMLOJA.TSPDV
    SQL.Strings = (
      'select * from TBESTOQUE')
    Left = 40
    Top = 200
    object qylocalizarprodutoREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = '"TBESTOQUE"."REFERENCIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object qylocalizarprodutoQTDCOMPRADA: TIntegerField
      FieldName = 'QTDCOMPRADA'
      Origin = '"TBESTOQUE"."QTDCOMPRADA"'
    end
    object qylocalizarprodutoQTDVENDIDA: TIntegerField
      FieldName = 'QTDVENDIDA'
      Origin = '"TBESTOQUE"."QTDVENDIDA"'
    end
    object qylocalizarprodutoQTDESTOQUE: TIntegerField
      FieldName = 'QTDESTOQUE'
      Origin = '"TBESTOQUE"."QTDESTOQUE"'
    end
    object qylocalizarprodutoULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      Origin = '"TBESTOQUE"."ULTIMACOMPRA"'
    end
    object qylocalizarprodutoULTIMAVENDA: TDateField
      FieldName = 'ULTIMAVENDA'
      Origin = '"TBESTOQUE"."ULTIMAVENDA"'
    end
    object qylocalizarprodutoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"TBESTOQUE"."DESCRICAO"'
      Size = 50
    end
    object qylocalizarprodutoVLESTOQUE: TFloatField
      FieldName = 'VLESTOQUE'
      Origin = '"TBESTOQUE"."VLESTOQUE"'
    end
    object qylocalizarprodutoPONCENTAGEN: TFloatField
      FieldName = 'PONCENTAGEN'
      Origin = '"TBESTOQUE"."PONCENTAGEN"'
    end
    object qylocalizarprodutoFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = '"TBESTOQUE"."FORNECEDOR"'
      Size = 40
    end
    object qylocalizarprodutoGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = '"TBESTOQUE"."GRUPO"'
      Size = 25
    end
    object qylocalizarprodutoCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"TBESTOQUE"."COR"'
    end
    object qylocalizarprodutoCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Origin = '"TBESTOQUE"."CUSTOMEDIO"'
    end
    object qylocalizarprodutoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"TBESTOQUE"."UNIDADE"'
      FixedChar = True
      Size = 2
    end
    object qylocalizarprodutoAUDITORIA: TIBStringField
      FieldName = 'AUDITORIA'
      Origin = '"TBESTOQUE"."AUDITORIA"'
      Size = 50
    end
    object qylocalizarprodutoCDFORN: TIntegerField
      FieldName = 'CDFORN'
      Origin = '"TBESTOQUE"."CDFORN"'
    end
    object qylocalizarprodutoCDUND: TIntegerField
      FieldName = 'CDUND'
      Origin = '"TBESTOQUE"."CDUND"'
    end
    object qylocalizarprodutoCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = '"TBESTOQUE"."CFOP"'
      Size = 4
    end
    object qylocalizarprodutoNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"TBESTOQUE"."NCM"'
      Size = 8
    end
    object qylocalizarprodutoQTDMINIMA: TIntegerField
      FieldName = 'QTDMINIMA'
      Origin = '"TBESTOQUE"."QTDMINIMA"'
    end
    object qylocalizarprodutoALIQUOTA: TIBStringField
      FieldName = 'ALIQUOTA'
      Origin = '"TBESTOQUE"."ALIQUOTA"'
      Size = 4
    end
    object qylocalizarprodutoDTINICIOPROMOCAO: TDateField
      FieldName = 'DTINICIOPROMOCAO'
      Origin = '"TBESTOQUE"."DTINICIOPROMOCAO"'
    end
    object qylocalizarprodutoDTFIMPROMOCAO: TDateField
      FieldName = 'DTFIMPROMOCAO'
      Origin = '"TBESTOQUE"."DTFIMPROMOCAO"'
    end
    object qylocalizarprodutoVLRVENDA: TIBBCDField
      FieldName = 'VLRVENDA'
      Origin = '"TBESTOQUE"."VLRVENDA"'
      Precision = 18
      Size = 2
    end
    object qylocalizarprodutoPRECOCUSTO: TIBBCDField
      FieldName = 'PRECOCUSTO'
      Origin = '"TBESTOQUE"."PRECOCUSTO"'
      Precision = 18
      Size = 2
    end
    object qylocalizarprodutoVLRCOMPRA: TIBBCDField
      FieldName = 'VLRCOMPRA'
      Origin = '"TBESTOQUE"."VLRCOMPRA"'
      Precision = 18
      Size = 2
    end
    object qylocalizarprodutoLUCRO: TIBBCDField
      FieldName = 'LUCRO'
      Origin = '"TBESTOQUE"."LUCRO"'
      Precision = 18
      Size = 2
    end
    object qylocalizarprodutoDESCONTOINDIVIDUAL: TIBBCDField
      FieldName = 'DESCONTOINDIVIDUAL'
      Origin = '"TBESTOQUE"."DESCONTOINDIVIDUAL"'
      Precision = 18
      Size = 2
    end
    object qylocalizarprodutoVLVENDAPROMOCAO: TIBBCDField
      FieldName = 'VLVENDAPROMOCAO'
      Origin = '"TBESTOQUE"."VLVENDAPROMOCAO"'
      Precision = 18
      Size = 2
    end
    object qylocalizarprodutoCOLECAO: TIBStringField
      FieldName = 'COLECAO'
      Origin = '"TBESTOQUE"."COLECAO"'
      Size = 25
    end
    object qylocalizarprodutoSECAO: TIBStringField
      FieldName = 'SECAO'
      Origin = '"TBESTOQUE"."SECAO"'
      Size = 25
    end
    object qylocalizarprodutoSUBGRUPO: TIBStringField
      FieldName = 'SUBGRUPO'
      Origin = '"TBESTOQUE"."SUBGRUPO"'
      Size = 25
    end
    object qylocalizarprodutoMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"TBESTOQUE"."MARCA"'
      Size = 25
    end
    object qylocalizarprodutoIMPRIMIR: TIBStringField
      FieldName = 'IMPRIMIR'
      Origin = '"TBESTOQUE"."IMPRIMIR"'
      FixedChar = True
      Size = 3
    end
    object qylocalizarprodutoNRCEST: TIBStringField
      FieldName = 'NRCEST'
      Origin = '"TBESTOQUE"."NRCEST"'
      Size = 13
    end
  end
  object dsqylocalizarproduto: TDataSource
    DataSet = qylocalizarproduto
    Left = 144
    Top = 192
  end
  object IBCONSULTAVENDA: TIBQuery
    Database = DMLOJA.DBDATABASE
    Transaction = DMLOJA.TSPDV
    SQL.Strings = (
      'select * from TBVENDA'
      'order by NR_DANOTA')
    Left = 368
    Top = 64
    object IBCONSULTAVENDAMINUTA: TIntegerField
      FieldName = 'MINUTA'
      Origin = '"TBVENDA"."MINUTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBCONSULTAVENDADATA: TDateField
      FieldName = 'DATA'
      Origin = '"TBVENDA"."DATA"'
    end
    object IBCONSULTAVENDAVENDA_CODVENDEDOR: TIntegerField
      FieldName = 'VENDA_CODVENDEDOR'
      Origin = '"TBVENDA"."VENDA_CODVENDEDOR"'
    end
    object IBCONSULTAVENDAVENDA_NMVENDEDOR: TIBStringField
      FieldName = 'VENDA_NMVENDEDOR'
      Origin = '"TBVENDA"."VENDA_NMVENDEDOR"'
    end
    object IBCONSULTAVENDAVENDA_CDCLIENTE: TIntegerField
      FieldName = 'VENDA_CDCLIENTE'
      Origin = '"TBVENDA"."VENDA_CDCLIENTE"'
    end
    object IBCONSULTAVENDAVENDA_NMCLIENTE: TIBStringField
      FieldName = 'VENDA_NMCLIENTE'
      Origin = '"TBVENDA"."VENDA_NMCLIENTE"'
      Size = 35
    end
    object IBCONSULTAVENDAVENDA_ENDERECOCLIENTE: TIBStringField
      FieldName = 'VENDA_ENDERECOCLIENTE'
      Origin = '"TBVENDA"."VENDA_ENDERECOCLIENTE"'
      Size = 35
    end
    object IBCONSULTAVENDAVENDA_CIDADECLIENTE: TIBStringField
      FieldName = 'VENDA_CIDADECLIENTE'
      Origin = '"TBVENDA"."VENDA_CIDADECLIENTE"'
      Size = 35
    end
    object IBCONSULTAVENDAVENDA_BAIRROCLIENTE: TIBStringField
      FieldName = 'VENDA_BAIRROCLIENTE'
      Origin = '"TBVENDA"."VENDA_BAIRROCLIENTE"'
      Size = 35
    end
    object IBCONSULTAVENDAVENDA_NRTELEFONECLIENTE: TIBStringField
      FieldName = 'VENDA_NRTELEFONECLIENTE'
      Origin = '"TBVENDA"."VENDA_NRTELEFONECLIENTE"'
      Size = 13
    end
    object IBCONSULTAVENDAVENDA_CPFCLIENTE: TIBStringField
      FieldName = 'VENDA_CPFCLIENTE'
      Origin = '"TBVENDA"."VENDA_CPFCLIENTE"'
      Size = 14
    end
    object IBCONSULTAVENDAVENDA_FORMAPAGAMENTO: TIBStringField
      FieldName = 'VENDA_FORMAPAGAMENTO'
      Origin = '"TBVENDA"."VENDA_FORMAPAGAMENTO"'
    end
    object IBCONSULTAVENDATOTALVENDA: TIBBCDField
      FieldName = 'TOTALVENDA'
      Origin = '"TBVENDA"."TOTALVENDA"'
      Precision = 18
      Size = 2
    end
    object IBCONSULTAVENDAVENDA_QTDITENS: TIntegerField
      FieldName = 'VENDA_QTDITENS'
      Origin = '"TBVENDA"."VENDA_QTDITENS"'
    end
    object IBCONSULTAVENDAVENDA_DESCONTODINHEIRO: TIBBCDField
      FieldName = 'VENDA_DESCONTODINHEIRO'
      Origin = '"TBVENDA"."VENDA_DESCONTODINHEIRO"'
      Precision = 18
      Size = 2
    end
    object IBCONSULTAVENDAVENDA_DESCONTOPORCENTAGEM: TIBBCDField
      FieldName = 'VENDA_DESCONTOPORCENTAGEM'
      Origin = '"TBVENDA"."VENDA_DESCONTOPORCENTAGEM"'
      Precision = 18
      Size = 2
    end
    object IBCONSULTAVENDAVENDA_TOTALCOMDESCONTO: TIBBCDField
      FieldName = 'VENDA_TOTALCOMDESCONTO'
      Origin = '"TBVENDA"."VENDA_TOTALCOMDESCONTO"'
      Precision = 18
      Size = 2
    end
    object IBCONSULTAVENDAVENDA_SITUACAO: TIBStringField
      FieldName = 'VENDA_SITUACAO'
      Origin = '"TBVENDA"."VENDA_SITUACAO"'
      FixedChar = True
      Size = 1
    end
    object IBCONSULTAVENDAVENDA_DINHEIRORECEBIDO: TIBBCDField
      FieldName = 'VENDA_DINHEIRORECEBIDO'
      Origin = '"TBVENDA"."VENDA_DINHEIRORECEBIDO"'
      Precision = 18
      Size = 2
    end
    object IBCONSULTAVENDAVENDA_VALORTROCO: TIBBCDField
      FieldName = 'VENDA_VALORTROCO'
      Origin = '"TBVENDA"."VENDA_VALORTROCO"'
      Precision = 18
      Size = 2
    end
    object IBCONSULTAVENDAVENDA_GEROUCOMICAO: TIBBCDField
      FieldName = 'VENDA_GEROUCOMICAO'
      Origin = '"TBVENDA"."VENDA_GEROUCOMICAO"'
      Precision = 18
      Size = 2
    end
    object IBCONSULTAVENDAVENDA_VLCOMICAOVENDEDOR: TIBBCDField
      FieldName = 'VENDA_VLCOMICAOVENDEDOR'
      Origin = '"TBVENDA"."VENDA_VLCOMICAOVENDEDOR"'
      Precision = 18
      Size = 2
    end
    object IBCONSULTAVENDACODCAIXA: TIntegerField
      FieldName = 'CODCAIXA'
      Origin = '"TBVENDA"."CODCAIXA"'
    end
    object IBCONSULTAVENDAHORA: TIBStringField
      FieldName = 'HORA'
      Origin = '"TBVENDA"."HORA"'
      Size = 14
    end
    object IBCONSULTAVENDATOTALDINHEIRO: TFloatField
      FieldName = 'TOTALDINHEIRO'
      Origin = '"TBVENDA"."TOTALDINHEIRO"'
    end
    object IBCONSULTAVENDATOTALDESCONTO: TFloatField
      FieldName = 'TOTALDESCONTO'
      Origin = '"TBVENDA"."TOTALDESCONTO"'
    end
    object IBCONSULTAVENDAVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      Origin = '"TBVENDA"."VLRDESCONTO"'
    end
    object IBCONSULTAVENDAVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      Origin = '"TBVENDA"."VALORRECEBIDO"'
    end
    object IBCONSULTAVENDATROCO: TFloatField
      FieldName = 'TROCO'
      Origin = '"TBVENDA"."TROCO"'
    end
    object IBCONSULTAVENDACHAVENOTA: TIBStringField
      FieldName = 'CHAVENOTA'
      Origin = '"TBVENDA"."CHAVENOTA"'
      Size = 50
    end
    object IBCONSULTAVENDASTATUSDANOTA: TIBStringField
      FieldName = 'STATUSDANOTA'
      Origin = '"TBVENDA"."STATUSDANOTA"'
      Size = 50
    end
    object IBCONSULTAVENDAPROTOCOLONOTA: TIBStringField
      FieldName = 'PROTOCOLONOTA'
      Origin = '"TBVENDA"."PROTOCOLONOTA"'
      Size = 15
    end
    object IBCONSULTAVENDASERIENOTA: TIBStringField
      FieldName = 'SERIENOTA'
      Origin = '"TBVENDA"."SERIENOTA"'
      Size = 3
    end
    object IBCONSULTAVENDANR_DANOTA: TIBStringField
      FieldName = 'NR_DANOTA'
      Origin = '"TBVENDA"."NR_DANOTA"'
      Size = 6
    end
    object IBCONSULTAVENDAOPERADOR: TIBStringField
      FieldName = 'OPERADOR'
      Origin = '"TBVENDA"."OPERADOR"'
    end
    object IBCONSULTAVENDASUBTOTAL: TIBBCDField
      FieldName = 'SUBTOTAL'
      Origin = '"TBVENDA"."SUBTOTAL"'
      Precision = 18
      Size = 2
    end
    object IBCONSULTAVENDARTERRO: TIBStringField
      FieldName = 'RTERRO'
      Origin = '"TBVENDA"."RTERRO"'
      Size = 200
    end
  end
  object DSIBVENDA: TDataSource
    DataSet = IBCONSULTAVENDA
    Left = 464
    Top = 72
  end
  object dsqyncm: TDataSource
    DataSet = qyncm
    Left = 360
    Top = 224
  end
  object qyncm: TIBQuery
    Database = DMLOJA.DBDATABASE
    Transaction = DMLOJA.TSPDV
    SQL.Strings = (
      'select * from TIPI')
    Left = 304
    Top = 232
    object qyncmNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"TIPI"."NCM"'
      Required = True
      FixedChar = True
      Size = 8
    end
    object qyncmDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"TIPI"."DESCRICAO"'
      Required = True
      Size = 1100
    end
  end
  object dsqycest: TDataSource
    DataSet = qycest
    Left = 376
    Top = 288
  end
  object qycest: TIBQuery
    Database = DMLOJA.DBDATABASE
    Transaction = DMLOJA.TSPDV
    SQL.Strings = (
      'select * from TAB_CEST')
    Left = 312
    Top = 296
    object qycestCEST: TIBStringField
      FieldName = 'CEST'
      Origin = '"TAB_CEST"."CEST"'
      Required = True
      Size = 7
    end
    object qycestNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"TAB_CEST"."NCM"'
      Size = 8
    end
    object qycestDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"TAB_CEST"."DESCRICAO"'
      Size = 512
    end
  end
end
