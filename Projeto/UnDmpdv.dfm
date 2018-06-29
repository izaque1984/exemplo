object DMLOJA: TDMLOJA
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 546
  Width = 882
  object DBDATABASE: TIBDatabase
    Connected = True
    DatabaseName = 'C:\BiSistemas\Basic_NFCE\Bds\BDADOS.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = TSPDV
    Left = 32
    Top = 16
  end
  object TSPDV: TIBTransaction
    Active = True
    DefaultDatabase = DBDATABASE
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 104
    Top = 16
  end
  object TBVENDA: TIBDataSet
    Database = DBDATABASE
    Transaction = TSPDV
    AfterDelete = TBVENDAAfterDelete
    AfterPost = TBVENDAAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from TBVENDA'
      'where'
      '  MINUTA = :OLD_MINUTA')
    InsertSQL.Strings = (
      'insert into TBVENDA'
      
        '  (CHAVENOTA, CODCAIXA, DATA, HORA, MINUTA, NR_DANOTA, OPERADOR,' +
        ' PROTOCOLONOTA, '
      
        '   RTERRO, SERIENOTA, STATUSDANOTA, SUBTOTAL, TOTALDESCONTO, TOT' +
        'ALDINHEIRO, '
      
        '   TOTALVENDA, TROCO, VALORRECEBIDO, VENDA_BAIRROCLIENTE, VENDA_' +
        'CDCLIENTE, '
      
        '   VENDA_CIDADECLIENTE, VENDA_CODVENDEDOR, VENDA_CPFCLIENTE, VEN' +
        'DA_DESCONTODINHEIRO, '
      
        '   VENDA_DESCONTOPORCENTAGEM, VENDA_DINHEIRORECEBIDO, VENDA_ENDE' +
        'RECOCLIENTE, '
      
        '   VENDA_FORMAPAGAMENTO, VENDA_GEROUCOMICAO, VENDA_NMCLIENTE, VE' +
        'NDA_NMVENDEDOR, '
      
        '   VENDA_NRTELEFONECLIENTE, VENDA_QTDITENS, VENDA_SITUACAO, VEND' +
        'A_TOTALCOMDESCONTO, '
      '   VENDA_VALORTROCO, VENDA_VLCOMICAOVENDEDOR, VLRDESCONTO)'
      'values'
      
        '  (:CHAVENOTA, :CODCAIXA, :DATA, :HORA, :MINUTA, :NR_DANOTA, :OP' +
        'ERADOR, '
      
        '   :PROTOCOLONOTA, :RTERRO, :SERIENOTA, :STATUSDANOTA, :SUBTOTAL' +
        ', :TOTALDESCONTO, '
      
        '   :TOTALDINHEIRO, :TOTALVENDA, :TROCO, :VALORRECEBIDO, :VENDA_B' +
        'AIRROCLIENTE, '
      
        '   :VENDA_CDCLIENTE, :VENDA_CIDADECLIENTE, :VENDA_CODVENDEDOR, :' +
        'VENDA_CPFCLIENTE, '
      
        '   :VENDA_DESCONTODINHEIRO, :VENDA_DESCONTOPORCENTAGEM, :VENDA_D' +
        'INHEIRORECEBIDO, '
      
        '   :VENDA_ENDERECOCLIENTE, :VENDA_FORMAPAGAMENTO, :VENDA_GEROUCO' +
        'MICAO, '
      
        '   :VENDA_NMCLIENTE, :VENDA_NMVENDEDOR, :VENDA_NRTELEFONECLIENTE' +
        ', :VENDA_QTDITENS, '
      
        '   :VENDA_SITUACAO, :VENDA_TOTALCOMDESCONTO, :VENDA_VALORTROCO, ' +
        ':VENDA_VLCOMICAOVENDEDOR, '
      '   :VLRDESCONTO)')
    RefreshSQL.Strings = (
      'Select '
      '  MINUTA,'
      '  DATA,'
      '  VENDA_CODVENDEDOR,'
      '  VENDA_NMVENDEDOR,'
      '  VENDA_CDCLIENTE,'
      '  VENDA_NMCLIENTE,'
      '  VENDA_ENDERECOCLIENTE,'
      '  VENDA_CIDADECLIENTE,'
      '  VENDA_BAIRROCLIENTE,'
      '  VENDA_NRTELEFONECLIENTE,'
      '  VENDA_CPFCLIENTE,'
      '  VENDA_FORMAPAGAMENTO,'
      '  TOTALVENDA,'
      '  VENDA_QTDITENS,'
      '  VENDA_DESCONTODINHEIRO,'
      '  VENDA_DESCONTOPORCENTAGEM,'
      '  VENDA_TOTALCOMDESCONTO,'
      '  VENDA_SITUACAO,'
      '  VENDA_DINHEIRORECEBIDO,'
      '  VENDA_VALORTROCO,'
      '  VENDA_GEROUCOMICAO,'
      '  VENDA_VLCOMICAOVENDEDOR,'
      '  CODCAIXA,'
      '  HORA,'
      '  TOTALDINHEIRO,'
      '  TOTALDESCONTO,'
      '  VLRDESCONTO,'
      '  VALORRECEBIDO,'
      '  TROCO,'
      '  CHAVENOTA,'
      '  STATUSDANOTA,'
      '  PROTOCOLONOTA,'
      '  SERIENOTA,'
      '  NR_DANOTA,'
      '  OPERADOR,'
      '  SUBTOTAL,'
      '  RTERRO'
      'from TBVENDA '
      'where'
      '  MINUTA = :MINUTA')
    SelectSQL.Strings = (
      'select * from TBVENDA'
      'ORDER BY minuta')
    ModifySQL.Strings = (
      'update TBVENDA'
      'set'
      '  CHAVENOTA = :CHAVENOTA,'
      '  CODCAIXA = :CODCAIXA,'
      '  DATA = :DATA,'
      '  HORA = :HORA,'
      '  MINUTA = :MINUTA,'
      '  NR_DANOTA = :NR_DANOTA,'
      '  OPERADOR = :OPERADOR,'
      '  PROTOCOLONOTA = :PROTOCOLONOTA,'
      '  RTERRO = :RTERRO,'
      '  SERIENOTA = :SERIENOTA,'
      '  STATUSDANOTA = :STATUSDANOTA,'
      '  SUBTOTAL = :SUBTOTAL,'
      '  TOTALDESCONTO = :TOTALDESCONTO,'
      '  TOTALDINHEIRO = :TOTALDINHEIRO,'
      '  TOTALVENDA = :TOTALVENDA,'
      '  TROCO = :TROCO,'
      '  VALORRECEBIDO = :VALORRECEBIDO,'
      '  VENDA_BAIRROCLIENTE = :VENDA_BAIRROCLIENTE,'
      '  VENDA_CDCLIENTE = :VENDA_CDCLIENTE,'
      '  VENDA_CIDADECLIENTE = :VENDA_CIDADECLIENTE,'
      '  VENDA_CODVENDEDOR = :VENDA_CODVENDEDOR,'
      '  VENDA_CPFCLIENTE = :VENDA_CPFCLIENTE,'
      '  VENDA_DESCONTODINHEIRO = :VENDA_DESCONTODINHEIRO,'
      '  VENDA_DESCONTOPORCENTAGEM = :VENDA_DESCONTOPORCENTAGEM,'
      '  VENDA_DINHEIRORECEBIDO = :VENDA_DINHEIRORECEBIDO,'
      '  VENDA_ENDERECOCLIENTE = :VENDA_ENDERECOCLIENTE,'
      '  VENDA_FORMAPAGAMENTO = :VENDA_FORMAPAGAMENTO,'
      '  VENDA_GEROUCOMICAO = :VENDA_GEROUCOMICAO,'
      '  VENDA_NMCLIENTE = :VENDA_NMCLIENTE,'
      '  VENDA_NMVENDEDOR = :VENDA_NMVENDEDOR,'
      '  VENDA_NRTELEFONECLIENTE = :VENDA_NRTELEFONECLIENTE,'
      '  VENDA_QTDITENS = :VENDA_QTDITENS,'
      '  VENDA_SITUACAO = :VENDA_SITUACAO,'
      '  VENDA_TOTALCOMDESCONTO = :VENDA_TOTALCOMDESCONTO,'
      '  VENDA_VALORTROCO = :VENDA_VALORTROCO,'
      '  VENDA_VLCOMICAOVENDEDOR = :VENDA_VLCOMICAOVENDEDOR,'
      '  VLRDESCONTO = :VLRDESCONTO'
      'where'
      '  MINUTA = :OLD_MINUTA')
    GeneratorField.Field = 'MINUTA'
    GeneratorField.Generator = 'TBVENDA_MINUTA_GEN'
    Left = 32
    Top = 96
    object TBVENDAMINUTA: TIntegerField
      FieldName = 'MINUTA'
      Origin = '"TBVENDA"."MINUTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBVENDADATA: TDateField
      FieldName = 'DATA'
      Origin = '"TBVENDA"."DATA"'
    end
    object TBVENDAVENDA_CODVENDEDOR: TIntegerField
      FieldName = 'VENDA_CODVENDEDOR'
      Origin = '"TBVENDA"."VENDA_CODVENDEDOR"'
    end
    object TBVENDAVENDA_NMVENDEDOR: TIBStringField
      FieldName = 'VENDA_NMVENDEDOR'
      Origin = '"TBVENDA"."VENDA_NMVENDEDOR"'
    end
    object TBVENDAVENDA_CDCLIENTE: TIntegerField
      FieldName = 'VENDA_CDCLIENTE'
      Origin = '"TBVENDA"."VENDA_CDCLIENTE"'
    end
    object TBVENDAVENDA_NMCLIENTE: TIBStringField
      FieldName = 'VENDA_NMCLIENTE'
      Origin = '"TBVENDA"."VENDA_NMCLIENTE"'
      Size = 35
    end
    object TBVENDAVENDA_ENDERECOCLIENTE: TIBStringField
      FieldName = 'VENDA_ENDERECOCLIENTE'
      Origin = '"TBVENDA"."VENDA_ENDERECOCLIENTE"'
      Size = 35
    end
    object TBVENDAVENDA_CIDADECLIENTE: TIBStringField
      FieldName = 'VENDA_CIDADECLIENTE'
      Origin = '"TBVENDA"."VENDA_CIDADECLIENTE"'
      Size = 35
    end
    object TBVENDAVENDA_BAIRROCLIENTE: TIBStringField
      FieldName = 'VENDA_BAIRROCLIENTE'
      Origin = '"TBVENDA"."VENDA_BAIRROCLIENTE"'
      Size = 35
    end
    object TBVENDAVENDA_NRTELEFONECLIENTE: TIBStringField
      FieldName = 'VENDA_NRTELEFONECLIENTE'
      Origin = '"TBVENDA"."VENDA_NRTELEFONECLIENTE"'
      Size = 13
    end
    object TBVENDAVENDA_CPFCLIENTE: TIBStringField
      FieldName = 'VENDA_CPFCLIENTE'
      Origin = '"TBVENDA"."VENDA_CPFCLIENTE"'
      Size = 14
    end
    object TBVENDAVENDA_FORMAPAGAMENTO: TIBStringField
      FieldName = 'VENDA_FORMAPAGAMENTO'
      Origin = '"TBVENDA"."VENDA_FORMAPAGAMENTO"'
    end
    object TBVENDATOTALVENDA: TIBBCDField
      FieldName = 'TOTALVENDA'
      Origin = '"TBVENDA"."TOTALVENDA"'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object TBVENDAVENDA_QTDITENS: TIntegerField
      FieldName = 'VENDA_QTDITENS'
      Origin = '"TBVENDA"."VENDA_QTDITENS"'
    end
    object TBVENDAVENDA_DESCONTODINHEIRO: TIBBCDField
      FieldName = 'VENDA_DESCONTODINHEIRO'
      Origin = '"TBVENDA"."VENDA_DESCONTODINHEIRO"'
      Precision = 18
      Size = 2
    end
    object TBVENDAVENDA_DESCONTOPORCENTAGEM: TIBBCDField
      FieldName = 'VENDA_DESCONTOPORCENTAGEM'
      Origin = '"TBVENDA"."VENDA_DESCONTOPORCENTAGEM"'
      Precision = 18
      Size = 2
    end
    object TBVENDAVENDA_TOTALCOMDESCONTO: TIBBCDField
      FieldName = 'VENDA_TOTALCOMDESCONTO'
      Origin = '"TBVENDA"."VENDA_TOTALCOMDESCONTO"'
      Precision = 18
      Size = 2
    end
    object TBVENDAVENDA_SITUACAO: TIBStringField
      FieldName = 'VENDA_SITUACAO'
      Origin = '"TBVENDA"."VENDA_SITUACAO"'
      FixedChar = True
      Size = 1
    end
    object TBVENDAVENDA_DINHEIRORECEBIDO: TIBBCDField
      FieldName = 'VENDA_DINHEIRORECEBIDO'
      Origin = '"TBVENDA"."VENDA_DINHEIRORECEBIDO"'
      Precision = 18
      Size = 2
    end
    object TBVENDAVENDA_VALORTROCO: TIBBCDField
      FieldName = 'VENDA_VALORTROCO'
      Origin = '"TBVENDA"."VENDA_VALORTROCO"'
      Precision = 18
      Size = 2
    end
    object TBVENDAVENDA_GEROUCOMICAO: TIBBCDField
      FieldName = 'VENDA_GEROUCOMICAO'
      Origin = '"TBVENDA"."VENDA_GEROUCOMICAO"'
      Precision = 18
      Size = 2
    end
    object TBVENDAVENDA_VLCOMICAOVENDEDOR: TIBBCDField
      FieldName = 'VENDA_VLCOMICAOVENDEDOR'
      Origin = '"TBVENDA"."VENDA_VLCOMICAOVENDEDOR"'
      Precision = 18
      Size = 2
    end
    object TBVENDACODCAIXA: TIntegerField
      FieldName = 'CODCAIXA'
      Origin = '"TBVENDA"."CODCAIXA"'
    end
    object TBVENDAHORA: TIBStringField
      FieldName = 'HORA'
      Origin = '"TBVENDA"."HORA"'
      Size = 14
    end
    object TBVENDATOTALDINHEIRO: TFloatField
      FieldName = 'TOTALDINHEIRO'
      Origin = '"TBVENDA"."TOTALDINHEIRO"'
    end
    object TBVENDATOTALDESCONTO: TFloatField
      FieldName = 'TOTALDESCONTO'
      Origin = '"TBVENDA"."TOTALDESCONTO"'
    end
    object TBVENDAVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      Origin = '"TBVENDA"."VLRDESCONTO"'
    end
    object TBVENDAVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
      Origin = '"TBVENDA"."VALORRECEBIDO"'
    end
    object TBVENDATROCO: TFloatField
      FieldName = 'TROCO'
      Origin = '"TBVENDA"."TROCO"'
    end
    object TBVENDACHAVENOTA: TIBStringField
      FieldName = 'CHAVENOTA'
      Origin = '"TBVENDA"."CHAVENOTA"'
      Size = 50
    end
    object TBVENDASTATUSDANOTA: TIBStringField
      FieldName = 'STATUSDANOTA'
      Origin = '"TBVENDA"."STATUSDANOTA"'
      Size = 50
    end
    object TBVENDAPROTOCOLONOTA: TIBStringField
      FieldName = 'PROTOCOLONOTA'
      Origin = '"TBVENDA"."PROTOCOLONOTA"'
      Size = 15
    end
    object TBVENDASERIENOTA: TIBStringField
      FieldName = 'SERIENOTA'
      Origin = '"TBVENDA"."SERIENOTA"'
      Size = 3
    end
    object TBVENDANR_DANOTA: TIBStringField
      FieldName = 'NR_DANOTA'
      Origin = '"TBVENDA"."NR_DANOTA"'
      Size = 6
    end
    object TBVENDAOPERADOR: TIBStringField
      FieldName = 'OPERADOR'
      Origin = '"TBVENDA"."OPERADOR"'
    end
    object TBVENDASUBTOTAL: TIBBCDField
      FieldName = 'SUBTOTAL'
      Origin = '"TBVENDA"."SUBTOTAL"'
      Precision = 18
      Size = 2
    end
    object TBVENDARTERRO: TIBStringField
      FieldName = 'RTERRO'
      Origin = '"TBVENDA"."RTERRO"'
      Size = 200
    end
  end
  object TBDETVENDA: TIBDataSet
    Database = DBDATABASE
    Transaction = TSPDV
    AfterDelete = TBDETVENDAAfterDelete
    AfterPost = TBDETVENDAAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from TBDETALHEVENDA'
      'where'
      '  CD_DETVENDA = :OLD_CD_DETVENDA')
    InsertSQL.Strings = (
      'insert into TBDETALHEVENDA'
      
        '  (CD_DETVENDA, DETALHE_VENDA_ALIQUOTA, DETALHEVENDA_CFOP, DETAL' +
        'HEVENDA_DESCONTO, '
      
        '   DETALHEVENDA_DESCRICAO, DETALHEVENDA_FORMADEPAGTO, DETALHEVEN' +
        'DA_QTDITEN, '
      
        '   DETALHEVENDA_QUANTIDADE, DETALHEVENDA_UNIDADE, DETALHEVENDA_V' +
        'ALORPAGO, '
      
        '   DETALHEVENDA_VLTOTAL, DETALHEVENDA_VLUNITARIO, MINUTA, N_ITEM' +
        ', NCM, '
      '   REFERENCIA, VENDA_NRNFC)'
      'values'
      
        '  (:CD_DETVENDA, :DETALHE_VENDA_ALIQUOTA, :DETALHEVENDA_CFOP, :D' +
        'ETALHEVENDA_DESCONTO, '
      
        '   :DETALHEVENDA_DESCRICAO, :DETALHEVENDA_FORMADEPAGTO, :DETALHE' +
        'VENDA_QTDITEN, '
      
        '   :DETALHEVENDA_QUANTIDADE, :DETALHEVENDA_UNIDADE, :DETALHEVEND' +
        'A_VALORPAGO, '
      
        '   :DETALHEVENDA_VLTOTAL, :DETALHEVENDA_VLUNITARIO, :MINUTA, :N_' +
        'ITEM, :NCM, '
      '   :REFERENCIA, :VENDA_NRNFC)')
    RefreshSQL.Strings = (
      'Select '
      '  DETALHEVENDA_QTDITEN,'
      '  DETALHEVENDA_VLUNITARIO,'
      '  DETALHEVENDA_VLTOTAL,'
      '  DETALHEVENDA_DESCONTO,'
      '  DETALHEVENDA_DESCRICAO,'
      '  DETALHEVENDA_QUANTIDADE,'
      '  DETALHEVENDA_CFOP,'
      '  DETALHEVENDA_UNIDADE,'
      '  DETALHEVENDA_VALORPAGO,'
      '  DETALHEVENDA_FORMADEPAGTO,'
      '  NCM,'
      '  N_ITEM,'
      '  MINUTA,'
      '  VENDA_NRNFC,'
      '  DETALHE_VENDA_ALIQUOTA,'
      '  REFERENCIA,'
      '  CD_DETVENDA'
      'from TBDETALHEVENDA '
      'where'
      '  CD_DETVENDA = :CD_DETVENDA')
    SelectSQL.Strings = (
      'select * from TBDETALHEVENDA'
      'WHERE MINUTA =:MINUTA')
    ModifySQL.Strings = (
      'update TBDETALHEVENDA'
      'set'
      '  CD_DETVENDA = :CD_DETVENDA,'
      '  DETALHE_VENDA_ALIQUOTA = :DETALHE_VENDA_ALIQUOTA,'
      '  DETALHEVENDA_CFOP = :DETALHEVENDA_CFOP,'
      '  DETALHEVENDA_DESCONTO = :DETALHEVENDA_DESCONTO,'
      '  DETALHEVENDA_DESCRICAO = :DETALHEVENDA_DESCRICAO,'
      '  DETALHEVENDA_FORMADEPAGTO = :DETALHEVENDA_FORMADEPAGTO,'
      '  DETALHEVENDA_QTDITEN = :DETALHEVENDA_QTDITEN,'
      '  DETALHEVENDA_QUANTIDADE = :DETALHEVENDA_QUANTIDADE,'
      '  DETALHEVENDA_UNIDADE = :DETALHEVENDA_UNIDADE,'
      '  DETALHEVENDA_VALORPAGO = :DETALHEVENDA_VALORPAGO,'
      '  DETALHEVENDA_VLTOTAL = :DETALHEVENDA_VLTOTAL,'
      '  DETALHEVENDA_VLUNITARIO = :DETALHEVENDA_VLUNITARIO,'
      '  MINUTA = :MINUTA,'
      '  N_ITEM = :N_ITEM,'
      '  NCM = :NCM,'
      '  REFERENCIA = :REFERENCIA,'
      '  VENDA_NRNFC = :VENDA_NRNFC'
      'where'
      '  CD_DETVENDA = :OLD_CD_DETVENDA')
    GeneratorField.Field = 'CD_DETVENDA'
    GeneratorField.Generator = 'CD_DETVENDA_GEN'
    DataSource = DSTBVENDA
    Left = 32
    Top = 160
    object TBDETVENDADETALHEVENDA_QTDITEN: TIntegerField
      FieldName = 'DETALHEVENDA_QTDITEN'
      Origin = '"TBDETALHEVENDA"."DETALHEVENDA_QTDITEN"'
    end
    object TBDETVENDADETALHEVENDA_VLUNITARIO: TIBBCDField
      FieldName = 'DETALHEVENDA_VLUNITARIO'
      Origin = '"TBDETALHEVENDA"."DETALHEVENDA_VLUNITARIO"'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object TBDETVENDADETALHEVENDA_VLTOTAL: TIBBCDField
      FieldName = 'DETALHEVENDA_VLTOTAL'
      Origin = '"TBDETALHEVENDA"."DETALHEVENDA_VLTOTAL"'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object TBDETVENDADETALHEVENDA_DESCONTO: TIBBCDField
      FieldName = 'DETALHEVENDA_DESCONTO'
      Origin = '"TBDETALHEVENDA"."DETALHEVENDA_DESCONTO"'
      Precision = 18
      Size = 2
    end
    object TBDETVENDADETALHEVENDA_DESCRICAO: TIBStringField
      FieldName = 'DETALHEVENDA_DESCRICAO'
      Origin = '"TBDETALHEVENDA"."DETALHEVENDA_DESCRICAO"'
      Size = 40
    end
    object TBDETVENDADETALHEVENDA_QUANTIDADE: TIBBCDField
      FieldName = 'DETALHEVENDA_QUANTIDADE'
      Origin = '"TBDETALHEVENDA"."DETALHEVENDA_QUANTIDADE"'
      Precision = 18
      Size = 2
    end
    object TBDETVENDADETALHEVENDA_CFOP: TIntegerField
      FieldName = 'DETALHEVENDA_CFOP'
      Origin = '"TBDETALHEVENDA"."DETALHEVENDA_CFOP"'
    end
    object TBDETVENDADETALHEVENDA_UNIDADE: TIBStringField
      FieldName = 'DETALHEVENDA_UNIDADE'
      Origin = '"TBDETALHEVENDA"."DETALHEVENDA_UNIDADE"'
      FixedChar = True
      Size = 2
    end
    object TBDETVENDADETALHEVENDA_VALORPAGO: TIBBCDField
      FieldName = 'DETALHEVENDA_VALORPAGO'
      Origin = '"TBDETALHEVENDA"."DETALHEVENDA_VALORPAGO"'
      Precision = 18
      Size = 2
    end
    object TBDETVENDADETALHEVENDA_FORMADEPAGTO: TIBStringField
      FieldName = 'DETALHEVENDA_FORMADEPAGTO'
      Origin = '"TBDETALHEVENDA"."DETALHEVENDA_FORMADEPAGTO"'
    end
    object TBDETVENDANCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"TBDETALHEVENDA"."NCM"'
      Size = 13
    end
    object TBDETVENDAN_ITEM: TIntegerField
      FieldName = 'N_ITEM'
      Origin = '"TBDETALHEVENDA"."N_ITEM"'
    end
    object TBDETVENDAMINUTA: TIntegerField
      FieldName = 'MINUTA'
      Origin = '"TBDETALHEVENDA"."MINUTA"'
    end
    object TBDETVENDAVENDA_NRNFC: TIntegerField
      FieldName = 'VENDA_NRNFC'
      Origin = '"TBDETALHEVENDA"."VENDA_NRNFC"'
    end
    object TBDETVENDADETALHE_VENDA_ALIQUOTA: TIBStringField
      FieldName = 'DETALHE_VENDA_ALIQUOTA'
      Origin = '"TBDETALHEVENDA"."DETALHE_VENDA_ALIQUOTA"'
      Size = 4
    end
    object TBDETVENDAREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = '"TBDETALHEVENDA"."REFERENCIA"'
      Size = 13
    end
    object TBDETVENDACD_DETVENDA: TIntegerField
      FieldName = 'CD_DETVENDA'
      Origin = '"TBDETALHEVENDA"."CD_DETVENDA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBDETVENDAQTDKL: TIBStringField
      FieldName = 'QTDKL'
      Origin = '"TBDETALHEVENDA"."QTDKL"'
      Size = 8
    end
  end
  object TBESTOQUE: TIBDataSet
    Database = DBDATABASE
    Transaction = TSPDV
    AfterDelete = TBESTOQUEAfterDelete
    AfterPost = TBESTOQUEAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from TBESTOQUE'
      'where'
      '  REFERENCIA = :OLD_REFERENCIA')
    InsertSQL.Strings = (
      'insert into TBESTOQUE'
      
        '  (ALIQUOTA, AUDITORIA, CDFORN, CDUND, CFOP, COLECAO, COR, CUSTO' +
        'MEDIO, '
      
        '   DESCONTOINDIVIDUAL, DESCRICAO, DTFIMPROMOCAO, DTINICIOPROMOCA' +
        'O, FORNECEDOR, '
      
        '   GRUPO, IMPRIMIR, LUCRO, MARCA, NCM, NRCEST, PONCENTAGEN, PREC' +
        'OCUSTO, '
      
        '   QTDCOMPRADA, QTDESTOQUE, QTDMINIMA, QTDVENDIDA, REFERENCIA, S' +
        'ECAO, SUBGRUPO, '
      
        '   ULTIMACOMPRA, ULTIMAVENDA, UNIDADE, VLESTOQUE, VLRCOMPRA, VLR' +
        'VENDA, '
      '   VLVENDAPROMOCAO)'
      'values'
      
        '  (:ALIQUOTA, :AUDITORIA, :CDFORN, :CDUND, :CFOP, :COLECAO, :COR' +
        ', :CUSTOMEDIO, '
      
        '   :DESCONTOINDIVIDUAL, :DESCRICAO, :DTFIMPROMOCAO, :DTINICIOPRO' +
        'MOCAO, '
      
        '   :FORNECEDOR, :GRUPO, :IMPRIMIR, :LUCRO, :MARCA, :NCM, :NRCEST' +
        ', :PONCENTAGEN, '
      
        '   :PRECOCUSTO, :QTDCOMPRADA, :QTDESTOQUE, :QTDMINIMA, :QTDVENDI' +
        'DA, :REFERENCIA, '
      
        '   :SECAO, :SUBGRUPO, :ULTIMACOMPRA, :ULTIMAVENDA, :UNIDADE, :VL' +
        'ESTOQUE, '
      '   :VLRCOMPRA, :VLRVENDA, :VLVENDAPROMOCAO)')
    RefreshSQL.Strings = (
      'Select '
      '  REFERENCIA,'
      '  QTDCOMPRADA,'
      '  QTDVENDIDA,'
      '  QTDESTOQUE,'
      '  ULTIMACOMPRA,'
      '  ULTIMAVENDA,'
      '  DESCRICAO,'
      '  VLESTOQUE,'
      '  PONCENTAGEN,'
      '  FORNECEDOR,'
      '  GRUPO,'
      '  COR,'
      '  CUSTOMEDIO,'
      '  UNIDADE,'
      '  AUDITORIA,'
      '  CDFORN,'
      '  CDUND,'
      '  CFOP,'
      '  NCM,'
      '  QTDMINIMA,'
      '  ALIQUOTA,'
      '  DTINICIOPROMOCAO,'
      '  DTFIMPROMOCAO,'
      '  VLRVENDA,'
      '  PRECOCUSTO,'
      '  VLRCOMPRA,'
      '  LUCRO,'
      '  DESCONTOINDIVIDUAL,'
      '  VLVENDAPROMOCAO,'
      '  COLECAO,'
      '  SECAO,'
      '  SUBGRUPO,'
      '  MARCA,'
      '  IMPRIMIR,'
      '  NRCEST'
      'from TBESTOQUE '
      'where'
      '  REFERENCIA = :REFERENCIA')
    SelectSQL.Strings = (
      'select * from TBESTOQUE')
    ModifySQL.Strings = (
      'update TBESTOQUE'
      'set'
      '  ALIQUOTA = :ALIQUOTA,'
      '  AUDITORIA = :AUDITORIA,'
      '  CDFORN = :CDFORN,'
      '  CDUND = :CDUND,'
      '  CFOP = :CFOP,'
      '  COLECAO = :COLECAO,'
      '  COR = :COR,'
      '  CUSTOMEDIO = :CUSTOMEDIO,'
      '  DESCONTOINDIVIDUAL = :DESCONTOINDIVIDUAL,'
      '  DESCRICAO = :DESCRICAO,'
      '  DTFIMPROMOCAO = :DTFIMPROMOCAO,'
      '  DTINICIOPROMOCAO = :DTINICIOPROMOCAO,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  GRUPO = :GRUPO,'
      '  IMPRIMIR = :IMPRIMIR,'
      '  LUCRO = :LUCRO,'
      '  MARCA = :MARCA,'
      '  NCM = :NCM,'
      '  NRCEST = :NRCEST,'
      '  PONCENTAGEN = :PONCENTAGEN,'
      '  PRECOCUSTO = :PRECOCUSTO,'
      '  QTDCOMPRADA = :QTDCOMPRADA,'
      '  QTDESTOQUE = :QTDESTOQUE,'
      '  QTDMINIMA = :QTDMINIMA,'
      '  QTDVENDIDA = :QTDVENDIDA,'
      '  REFERENCIA = :REFERENCIA,'
      '  SECAO = :SECAO,'
      '  SUBGRUPO = :SUBGRUPO,'
      '  ULTIMACOMPRA = :ULTIMACOMPRA,'
      '  ULTIMAVENDA = :ULTIMAVENDA,'
      '  UNIDADE = :UNIDADE,'
      '  VLESTOQUE = :VLESTOQUE,'
      '  VLRCOMPRA = :VLRCOMPRA,'
      '  VLRVENDA = :VLRVENDA,'
      '  VLVENDAPROMOCAO = :VLVENDAPROMOCAO'
      'where'
      '  REFERENCIA = :OLD_REFERENCIA')
    Left = 32
    Top = 224
    object TBESTOQUEREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = '"TBESTOQUE"."REFERENCIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object TBESTOQUEQTDCOMPRADA: TIntegerField
      FieldName = 'QTDCOMPRADA'
      Origin = '"TBESTOQUE"."QTDCOMPRADA"'
    end
    object TBESTOQUEQTDVENDIDA: TIntegerField
      FieldName = 'QTDVENDIDA'
      Origin = '"TBESTOQUE"."QTDVENDIDA"'
    end
    object TBESTOQUEQTDESTOQUE: TIntegerField
      FieldName = 'QTDESTOQUE'
      Origin = '"TBESTOQUE"."QTDESTOQUE"'
    end
    object TBESTOQUEULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      Origin = '"TBESTOQUE"."ULTIMACOMPRA"'
    end
    object TBESTOQUEULTIMAVENDA: TDateField
      FieldName = 'ULTIMAVENDA'
      Origin = '"TBESTOQUE"."ULTIMAVENDA"'
    end
    object TBESTOQUEDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"TBESTOQUE"."DESCRICAO"'
      Size = 50
    end
    object TBESTOQUEVLESTOQUE: TFloatField
      FieldName = 'VLESTOQUE'
      Origin = '"TBESTOQUE"."VLESTOQUE"'
    end
    object TBESTOQUEPONCENTAGEN: TFloatField
      FieldName = 'PONCENTAGEN'
      Origin = '"TBESTOQUE"."PONCENTAGEN"'
    end
    object TBESTOQUEFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = '"TBESTOQUE"."FORNECEDOR"'
      Size = 40
    end
    object TBESTOQUEGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = '"TBESTOQUE"."GRUPO"'
      Size = 25
    end
    object TBESTOQUECOR: TIBStringField
      FieldName = 'COR'
      Origin = '"TBESTOQUE"."COR"'
    end
    object TBESTOQUECUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Origin = '"TBESTOQUE"."CUSTOMEDIO"'
    end
    object TBESTOQUEUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"TBESTOQUE"."UNIDADE"'
      FixedChar = True
      Size = 2
    end
    object TBESTOQUEAUDITORIA: TIBStringField
      FieldName = 'AUDITORIA'
      Origin = '"TBESTOQUE"."AUDITORIA"'
      Size = 50
    end
    object TBESTOQUECDFORN: TIntegerField
      FieldName = 'CDFORN'
      Origin = '"TBESTOQUE"."CDFORN"'
    end
    object TBESTOQUECDUND: TIntegerField
      FieldName = 'CDUND'
      Origin = '"TBESTOQUE"."CDUND"'
    end
    object TBESTOQUECFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = '"TBESTOQUE"."CFOP"'
      Size = 4
    end
    object TBESTOQUENCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"TBESTOQUE"."NCM"'
      Size = 8
    end
    object TBESTOQUEQTDMINIMA: TIntegerField
      FieldName = 'QTDMINIMA'
      Origin = '"TBESTOQUE"."QTDMINIMA"'
    end
    object TBESTOQUEALIQUOTA: TIBStringField
      FieldName = 'ALIQUOTA'
      Origin = '"TBESTOQUE"."ALIQUOTA"'
      Size = 4
    end
    object TBESTOQUEDTINICIOPROMOCAO: TDateField
      FieldName = 'DTINICIOPROMOCAO'
      Origin = '"TBESTOQUE"."DTINICIOPROMOCAO"'
    end
    object TBESTOQUEDTFIMPROMOCAO: TDateField
      FieldName = 'DTFIMPROMOCAO'
      Origin = '"TBESTOQUE"."DTFIMPROMOCAO"'
    end
    object TBESTOQUEVLRVENDA: TIBBCDField
      FieldName = 'VLRVENDA'
      Origin = '"TBESTOQUE"."VLRVENDA"'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object TBESTOQUEPRECOCUSTO: TIBBCDField
      FieldName = 'PRECOCUSTO'
      Origin = '"TBESTOQUE"."PRECOCUSTO"'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object TBESTOQUEVLRCOMPRA: TIBBCDField
      FieldName = 'VLRCOMPRA'
      Origin = '"TBESTOQUE"."VLRCOMPRA"'
      Precision = 18
      Size = 2
    end
    object TBESTOQUELUCRO: TIBBCDField
      FieldName = 'LUCRO'
      Origin = '"TBESTOQUE"."LUCRO"'
      Precision = 18
      Size = 2
    end
    object TBESTOQUEDESCONTOINDIVIDUAL: TIBBCDField
      FieldName = 'DESCONTOINDIVIDUAL'
      Origin = '"TBESTOQUE"."DESCONTOINDIVIDUAL"'
      Precision = 18
      Size = 2
    end
    object TBESTOQUEVLVENDAPROMOCAO: TIBBCDField
      FieldName = 'VLVENDAPROMOCAO'
      Origin = '"TBESTOQUE"."VLVENDAPROMOCAO"'
      Precision = 18
      Size = 2
    end
    object TBESTOQUECOLECAO: TIBStringField
      FieldName = 'COLECAO'
      Origin = '"TBESTOQUE"."COLECAO"'
      Size = 25
    end
    object TBESTOQUESECAO: TIBStringField
      FieldName = 'SECAO'
      Origin = '"TBESTOQUE"."SECAO"'
      Size = 25
    end
    object TBESTOQUESUBGRUPO: TIBStringField
      FieldName = 'SUBGRUPO'
      Origin = '"TBESTOQUE"."SUBGRUPO"'
      Size = 25
    end
    object TBESTOQUEMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"TBESTOQUE"."MARCA"'
      Size = 25
    end
    object TBESTOQUEIMPRIMIR: TIBStringField
      FieldName = 'IMPRIMIR'
      Origin = '"TBESTOQUE"."IMPRIMIR"'
      FixedChar = True
      Size = 3
    end
    object TBESTOQUENRCEST: TIBStringField
      FieldName = 'NRCEST'
      Origin = '"TBESTOQUE"."NRCEST"'
      Size = 13
    end
  end
  object TBCLIENTE: TIBDataSet
    Database = DBDATABASE
    Transaction = TSPDV
    AfterDelete = TBCLIENTEAfterDelete
    AfterPost = TBCLIENTEAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from TBCLIENTE'
      'where'
      '  CLI_CODIGO = :OLD_CLI_CODIGO')
    InsertSQL.Strings = (
      'insert into TBCLIENTE'
      
        '  (CLI_BAIRRO, CLI_CELULAR, CLI_CEP, CLI_CIDADE, CLI_CODIGO, CLI' +
        '_CODIGOMUNICIPIO, '
      
        '   CLI_COMPLEMENTO, CLI_CPF, CLI_DATACADASTRO, CLI_DATACONSULTA,' +
        ' CLI_EMAIL, '
      
        '   CLI_ENDERECO, CLI_ESTADOCIVIL, CLI_FONERECADO, CLI_FUNCAO, CL' +
        'I_INATIVIDADE, '
      
        '   CLI_NASCIMENTO, CLI_NMCONJUGE, CLI_NMTRABALHO, CLI_NOME, CLI_' +
        'NUMEROCASA, '
      
        '   CLI_PESSOA, CLI_RENDA, CLI_RG, CLI_SEXO, CLI_STSPC, CLI_TELCO' +
        'NTATO, '
      '   CLI_TELEFONE, CLI_TELTRABALHO, CLI_UF)'
      'values'
      
        '  (:CLI_BAIRRO, :CLI_CELULAR, :CLI_CEP, :CLI_CIDADE, :CLI_CODIGO' +
        ', :CLI_CODIGOMUNICIPIO, '
      
        '   :CLI_COMPLEMENTO, :CLI_CPF, :CLI_DATACADASTRO, :CLI_DATACONSU' +
        'LTA, :CLI_EMAIL, '
      
        '   :CLI_ENDERECO, :CLI_ESTADOCIVIL, :CLI_FONERECADO, :CLI_FUNCAO' +
        ', :CLI_INATIVIDADE, '
      
        '   :CLI_NASCIMENTO, :CLI_NMCONJUGE, :CLI_NMTRABALHO, :CLI_NOME, ' +
        ':CLI_NUMEROCASA, '
      
        '   :CLI_PESSOA, :CLI_RENDA, :CLI_RG, :CLI_SEXO, :CLI_STSPC, :CLI' +
        '_TELCONTATO, '
      '   :CLI_TELEFONE, :CLI_TELTRABALHO, :CLI_UF)')
    RefreshSQL.Strings = (
      'Select '
      '  CLI_CODIGO,'
      '  CLI_NOME,'
      '  CLI_SEXO,'
      '  CLI_PESSOA,'
      '  CLI_RG,'
      '  CLI_CPF,'
      '  CLI_NASCIMENTO,'
      '  CLI_ENDERECO,'
      '  CLI_BAIRRO,'
      '  CLI_NUMEROCASA,'
      '  CLI_COMPLEMENTO,'
      '  CLI_CIDADE,'
      '  CLI_CEP,'
      '  CLI_TELEFONE,'
      '  CLI_CELULAR,'
      '  CLI_FONERECADO,'
      '  CLI_ESTADOCIVIL,'
      '  CLI_NMCONJUGE,'
      '  CLI_STSPC,'
      '  CLI_DATACONSULTA,'
      '  CLI_TELCONTATO,'
      '  CLI_DATACADASTRO,'
      '  CLI_INATIVIDADE,'
      '  CLI_RENDA,'
      '  CLI_NMTRABALHO,'
      '  CLI_TELTRABALHO,'
      '  CLI_FUNCAO,'
      '  CLI_UF,'
      '  CLI_EMAIL,'
      '  CLI_CODIGOMUNICIPIO'
      'from TBCLIENTE '
      'where'
      '  CLI_CODIGO = :CLI_CODIGO')
    SelectSQL.Strings = (
      'select * from TBCLIENTE')
    ModifySQL.Strings = (
      'update TBCLIENTE'
      'set'
      '  CLI_BAIRRO = :CLI_BAIRRO,'
      '  CLI_CELULAR = :CLI_CELULAR,'
      '  CLI_CEP = :CLI_CEP,'
      '  CLI_CIDADE = :CLI_CIDADE,'
      '  CLI_CODIGO = :CLI_CODIGO,'
      '  CLI_CODIGOMUNICIPIO = :CLI_CODIGOMUNICIPIO,'
      '  CLI_COMPLEMENTO = :CLI_COMPLEMENTO,'
      '  CLI_CPF = :CLI_CPF,'
      '  CLI_DATACADASTRO = :CLI_DATACADASTRO,'
      '  CLI_DATACONSULTA = :CLI_DATACONSULTA,'
      '  CLI_EMAIL = :CLI_EMAIL,'
      '  CLI_ENDERECO = :CLI_ENDERECO,'
      '  CLI_ESTADOCIVIL = :CLI_ESTADOCIVIL,'
      '  CLI_FONERECADO = :CLI_FONERECADO,'
      '  CLI_FUNCAO = :CLI_FUNCAO,'
      '  CLI_INATIVIDADE = :CLI_INATIVIDADE,'
      '  CLI_NASCIMENTO = :CLI_NASCIMENTO,'
      '  CLI_NMCONJUGE = :CLI_NMCONJUGE,'
      '  CLI_NMTRABALHO = :CLI_NMTRABALHO,'
      '  CLI_NOME = :CLI_NOME,'
      '  CLI_NUMEROCASA = :CLI_NUMEROCASA,'
      '  CLI_PESSOA = :CLI_PESSOA,'
      '  CLI_RENDA = :CLI_RENDA,'
      '  CLI_RG = :CLI_RG,'
      '  CLI_SEXO = :CLI_SEXO,'
      '  CLI_STSPC = :CLI_STSPC,'
      '  CLI_TELCONTATO = :CLI_TELCONTATO,'
      '  CLI_TELEFONE = :CLI_TELEFONE,'
      '  CLI_TELTRABALHO = :CLI_TELTRABALHO,'
      '  CLI_UF = :CLI_UF'
      'where'
      '  CLI_CODIGO = :OLD_CLI_CODIGO')
    GeneratorField.Field = 'CLI_CODIGO'
    GeneratorField.Generator = 'TBCLIENTE_CLI_CODIGO_GEN'
    Left = 32
    Top = 280
  end
  object TBVENDEDOR: TIBDataSet
    Database = DBDATABASE
    Transaction = TSPDV
    AfterDelete = TBVENDEDORAfterDelete
    AfterPost = TBVENDEDORAfterPost
    DeleteSQL.Strings = (
      'delete from TBVENDEDOR'
      'where'
      '  CD_VENDEDOR = :OLD_CD_VENDEDOR')
    InsertSQL.Strings = (
      'insert into TBVENDEDOR'
      
        '  (BAIRRO, CD_VENDEDOR, CIDADE, DTADEMISSAO, ENDERECO, NM_VENDED' +
        'OR, SALARIO, '
      '   TELEFONE, TELEFONECELULAR, VL_COMAPRAZO, VL_COMAVISTA)'
      'values'
      
        '  (:BAIRRO, :CD_VENDEDOR, :CIDADE, :DTADEMISSAO, :ENDERECO, :NM_' +
        'VENDEDOR, '
      
        '   :SALARIO, :TELEFONE, :TELEFONECELULAR, :VL_COMAPRAZO, :VL_COM' +
        'AVISTA)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_VENDEDOR,'
      '  NM_VENDEDOR,'
      '  VL_COMAVISTA,'
      '  VL_COMAPRAZO,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  TELEFONE,'
      '  TELEFONECELULAR,'
      '  DTADEMISSAO,'
      '  SALARIO'
      'from TBVENDEDOR '
      'where'
      '  CD_VENDEDOR = :CD_VENDEDOR')
    SelectSQL.Strings = (
      'select * from TBVENDEDOR')
    ModifySQL.Strings = (
      'update TBVENDEDOR'
      'set'
      '  BAIRRO = :BAIRRO,'
      '  CD_VENDEDOR = :CD_VENDEDOR,'
      '  CIDADE = :CIDADE,'
      '  DTADEMISSAO = :DTADEMISSAO,'
      '  ENDERECO = :ENDERECO,'
      '  NM_VENDEDOR = :NM_VENDEDOR,'
      '  SALARIO = :SALARIO,'
      '  TELEFONE = :TELEFONE,'
      '  TELEFONECELULAR = :TELEFONECELULAR,'
      '  VL_COMAPRAZO = :VL_COMAPRAZO,'
      '  VL_COMAVISTA = :VL_COMAVISTA'
      'where'
      '  CD_VENDEDOR = :OLD_CD_VENDEDOR')
    GeneratorField.Field = 'CD_VENDEDOR'
    GeneratorField.Generator = 'GEN_TBVENDEDOR'
    Left = 32
    Top = 344
  end
  object TBPAGAMENTO: TIBDataSet
    Database = DBDATABASE
    Transaction = TSPDV
    AfterDelete = TBPAGAMENTOAfterDelete
    AfterPost = TBPAGAMENTOAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from TBPAGAMENTO'
      'where'
      '  CDPAGAMENTO = :OLD_CDPAGAMENTO')
    InsertSQL.Strings = (
      'insert into TBPAGAMENTO'
      
        '  (CD_CLIENTE, CDPAGAMENTO, COD_VENDEDOR, DATAVENDA, DESCONTO, F' +
        'ORMADOPAGAMENTO, '
      '   MINUTA, SUBTOTAL, VALORDESCONTO, VALORPAGO, VALORVENDA)'
      'values'
      
        '  (:CD_CLIENTE, :CDPAGAMENTO, :COD_VENDEDOR, :DATAVENDA, :DESCON' +
        'TO, :FORMADOPAGAMENTO, '
      '   :MINUTA, :SUBTOTAL, :VALORDESCONTO, :VALORPAGO, :VALORVENDA)')
    RefreshSQL.Strings = (
      'Select '
      '  CDPAGAMENTO,'
      '  MINUTA,'
      '  DATAVENDA,'
      '  FORMADOPAGAMENTO,'
      '  VALORVENDA,'
      '  VALORPAGO,'
      '  DESCONTO,'
      '  VALORDESCONTO,'
      '  SUBTOTAL,'
      '  COD_VENDEDOR,'
      '  CD_CLIENTE'
      'from TBPAGAMENTO '
      'where'
      '  CDPAGAMENTO = :CDPAGAMENTO')
    SelectSQL.Strings = (
      'select * from TBPAGAMENTO'
      'WHERE MINUTA =:MINUTA')
    ModifySQL.Strings = (
      'update TBPAGAMENTO'
      'set'
      '  CD_CLIENTE = :CD_CLIENTE,'
      '  CDPAGAMENTO = :CDPAGAMENTO,'
      '  COD_VENDEDOR = :COD_VENDEDOR,'
      '  DATAVENDA = :DATAVENDA,'
      '  DESCONTO = :DESCONTO,'
      '  FORMADOPAGAMENTO = :FORMADOPAGAMENTO,'
      '  MINUTA = :MINUTA,'
      '  SUBTOTAL = :SUBTOTAL,'
      '  VALORDESCONTO = :VALORDESCONTO,'
      '  VALORPAGO = :VALORPAGO,'
      '  VALORVENDA = :VALORVENDA'
      'where'
      '  CDPAGAMENTO = :OLD_CDPAGAMENTO')
    GeneratorField.Field = 'CDPAGAMENTO'
    GeneratorField.Generator = 'TBPAGAMENTO_CDPAGAMENTO_GEN'
    DataSource = DSTBVENDA
    Left = 248
    Top = 8
    object TBPAGAMENTOCDPAGAMENTO: TIntegerField
      FieldName = 'CDPAGAMENTO'
      Origin = '"TBPAGAMENTO"."CDPAGAMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBPAGAMENTOMINUTA: TIntegerField
      FieldName = 'MINUTA'
      Origin = '"TBPAGAMENTO"."MINUTA"'
    end
    object TBPAGAMENTODATAVENDA: TDateField
      FieldName = 'DATAVENDA'
      Origin = '"TBPAGAMENTO"."DATAVENDA"'
    end
    object TBPAGAMENTOFORMADOPAGAMENTO: TIBStringField
      FieldName = 'FORMADOPAGAMENTO'
      Origin = '"TBPAGAMENTO"."FORMADOPAGAMENTO"'
      Size = 25
    end
    object TBPAGAMENTOVALORVENDA: TFloatField
      FieldName = 'VALORVENDA'
      Origin = '"TBPAGAMENTO"."VALORVENDA"'
    end
    object TBPAGAMENTOVALORPAGO: TFloatField
      FieldName = 'VALORPAGO'
      Origin = '"TBPAGAMENTO"."VALORPAGO"'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
    end
    object TBPAGAMENTODESCONTO: TIBStringField
      FieldName = 'DESCONTO'
      Origin = '"TBPAGAMENTO"."DESCONTO"'
      FixedChar = True
      Size = 2
    end
    object TBPAGAMENTOVALORDESCONTO: TFloatField
      FieldName = 'VALORDESCONTO'
      Origin = '"TBPAGAMENTO"."VALORDESCONTO"'
    end
    object TBPAGAMENTOSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      Origin = '"TBPAGAMENTO"."SUBTOTAL"'
    end
    object TBPAGAMENTOCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = '"TBPAGAMENTO"."COD_VENDEDOR"'
    end
    object TBPAGAMENTOCD_CLIENTE: TIntegerField
      FieldName = 'CD_CLIENTE'
      Origin = '"TBPAGAMENTO"."CD_CLIENTE"'
    end
  end
  object TBCONFIG: TIBDataSet
    Database = DBDATABASE
    Transaction = TSPDV
    AfterDelete = TBCONFIGAfterDelete
    AfterPost = TBCONFIGAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from TBCONFIG'
      'where'
      '  CD_CONFIG = :OLD_CD_CONFIG')
    InsertSQL.Strings = (
      'insert into TBCONFIG'
      
        '  (BAIRRO, CD_CONFIG, CEP, CIMPRESSORA, CODIGOAREAMUNICIPIO, COD' +
        'IGOMUNICIPIO, '
      
        '   COMICAO, CONTROLARESTOQUE, CONTROLEESTOQUENFC, CONVENIO, CPF,' +
        ' CRT, CTRNCM, '
      
        '   DTINSTALACAO, DTVENCCONTRATO, DTVENCIMENTOCERT, DTVENCIMENTOM' +
        'ENSA, MINICIPIO, '
      
        '   NM_CIDADE, NM_ENDERECO, NM_FANTASIA, NM_RAZAOSOCIAL, NOMEA1, ' +
        'NR_CNPJ, '
      
        '   NR_INSCRIEM, NR_TELEFONE, NUMERO, NUMEROSISTEMA, SENHAA1, TIP' +
        'OPDV, TP_IPMPRESSORA, '
      '   UF, XMUNICIPIO)'
      'values'
      
        '  (:BAIRRO, :CD_CONFIG, :CEP, :CIMPRESSORA, :CODIGOAREAMUNICIPIO' +
        ', :CODIGOMUNICIPIO, '
      
        '   :COMICAO, :CONTROLARESTOQUE, :CONTROLEESTOQUENFC, :CONVENIO, ' +
        ':CPF, :CRT, '
      
        '   :CTRNCM, :DTINSTALACAO, :DTVENCCONTRATO, :DTVENCIMENTOCERT, :' +
        'DTVENCIMENTOMENSA, '
      
        '   :MINICIPIO, :NM_CIDADE, :NM_ENDERECO, :NM_FANTASIA, :NM_RAZAO' +
        'SOCIAL, '
      
        '   :NOMEA1, :NR_CNPJ, :NR_INSCRIEM, :NR_TELEFONE, :NUMERO, :NUME' +
        'ROSISTEMA, '
      '   :SENHAA1, :TIPOPDV, :TP_IPMPRESSORA, :UF, :XMUNICIPIO)')
    RefreshSQL.Strings = (
      'Select '
      '  CD_CONFIG,'
      '  NM_FANTASIA,'
      '  NM_RAZAOSOCIAL,'
      '  NM_ENDERECO,'
      '  NR_CNPJ,'
      '  NR_INSCRIEM,'
      '  TP_IPMPRESSORA,'
      '  NR_TELEFONE,'
      '  NM_CIDADE,'
      '  CONVENIO,'
      '  COMICAO,'
      '  CRT,'
      '  CPF,'
      '  CODIGOAREAMUNICIPIO,'
      '  CODIGOMUNICIPIO,'
      '  BAIRRO,'
      '  NUMERO,'
      '  MINICIPIO,'
      '  XMUNICIPIO,'
      '  UF,'
      '  CEP,'
      '  DTVENCIMENTOCERT,'
      '  NOMEA1,'
      '  SENHAA1,'
      '  NUMEROSISTEMA,'
      '  DTINSTALACAO,'
      '  DTVENCIMENTOMENSA,'
      '  DTVENCCONTRATO,'
      '  TIPOPDV,'
      '  CONTROLARESTOQUE,'
      '  CIMPRESSORA,'
      '  CONTROLEESTOQUENFC,'
      '  CTRNCM'
      'from TBCONFIG '
      'where'
      '  CD_CONFIG = :CD_CONFIG')
    SelectSQL.Strings = (
      'select * from TBCONFIG')
    ModifySQL.Strings = (
      'update TBCONFIG'
      'set'
      '  BAIRRO = :BAIRRO,'
      '  CD_CONFIG = :CD_CONFIG,'
      '  CEP = :CEP,'
      '  CIMPRESSORA = :CIMPRESSORA,'
      '  CODIGOAREAMUNICIPIO = :CODIGOAREAMUNICIPIO,'
      '  CODIGOMUNICIPIO = :CODIGOMUNICIPIO,'
      '  COMICAO = :COMICAO,'
      '  CONTROLARESTOQUE = :CONTROLARESTOQUE,'
      '  CONTROLEESTOQUENFC = :CONTROLEESTOQUENFC,'
      '  CONVENIO = :CONVENIO,'
      '  CPF = :CPF,'
      '  CRT = :CRT,'
      '  CTRNCM = :CTRNCM,'
      '  DTINSTALACAO = :DTINSTALACAO,'
      '  DTVENCCONTRATO = :DTVENCCONTRATO,'
      '  DTVENCIMENTOCERT = :DTVENCIMENTOCERT,'
      '  DTVENCIMENTOMENSA = :DTVENCIMENTOMENSA,'
      '  MINICIPIO = :MINICIPIO,'
      '  NM_CIDADE = :NM_CIDADE,'
      '  NM_ENDERECO = :NM_ENDERECO,'
      '  NM_FANTASIA = :NM_FANTASIA,'
      '  NM_RAZAOSOCIAL = :NM_RAZAOSOCIAL,'
      '  NOMEA1 = :NOMEA1,'
      '  NR_CNPJ = :NR_CNPJ,'
      '  NR_INSCRIEM = :NR_INSCRIEM,'
      '  NR_TELEFONE = :NR_TELEFONE,'
      '  NUMERO = :NUMERO,'
      '  NUMEROSISTEMA = :NUMEROSISTEMA,'
      '  SENHAA1 = :SENHAA1,'
      '  TIPOPDV = :TIPOPDV,'
      '  TP_IPMPRESSORA = :TP_IPMPRESSORA,'
      '  UF = :UF,'
      '  XMUNICIPIO = :XMUNICIPIO'
      'where'
      '  CD_CONFIG = :OLD_CD_CONFIG')
    Left = 248
    Top = 64
    object TBCONFIGCD_CONFIG: TIntegerField
      FieldName = 'CD_CONFIG'
      Origin = '"TBCONFIG"."CD_CONFIG"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCONFIGNM_FANTASIA: TIBStringField
      FieldName = 'NM_FANTASIA'
      Origin = '"TBCONFIG"."NM_FANTASIA"'
      Size = 40
    end
    object TBCONFIGNM_RAZAOSOCIAL: TIBStringField
      FieldName = 'NM_RAZAOSOCIAL'
      Origin = '"TBCONFIG"."NM_RAZAOSOCIAL"'
      Size = 40
    end
    object TBCONFIGNM_ENDERECO: TIBStringField
      FieldName = 'NM_ENDERECO'
      Origin = '"TBCONFIG"."NM_ENDERECO"'
      Size = 40
    end
    object TBCONFIGNR_CNPJ: TIBStringField
      FieldName = 'NR_CNPJ'
      Origin = '"TBCONFIG"."NR_CNPJ"'
      FixedChar = True
    end
    object TBCONFIGNR_INSCRIEM: TIBStringField
      FieldName = 'NR_INSCRIEM'
      Origin = '"TBCONFIG"."NR_INSCRIEM"'
    end
    object TBCONFIGTP_IPMPRESSORA: TIBStringField
      FieldName = 'TP_IPMPRESSORA'
      Origin = '"TBCONFIG"."TP_IPMPRESSORA"'
    end
    object TBCONFIGNR_TELEFONE: TIBStringField
      FieldName = 'NR_TELEFONE'
      Origin = '"TBCONFIG"."NR_TELEFONE"'
      Size = 14
    end
    object TBCONFIGNM_CIDADE: TIBStringField
      FieldName = 'NM_CIDADE'
      Origin = '"TBCONFIG"."NM_CIDADE"'
      Size = 25
    end
    object TBCONFIGCONVENIO: TIBStringField
      FieldName = 'CONVENIO'
      Origin = '"TBCONFIG"."CONVENIO"'
    end
    object TBCONFIGCOMICAO: TIBStringField
      FieldName = 'COMICAO'
      Origin = '"TBCONFIG"."COMICAO"'
      FixedChar = True
      Size = 3
    end
    object TBCONFIGCRT: TIBStringField
      FieldName = 'CRT'
      Origin = '"TBCONFIG"."CRT"'
      FixedChar = True
      Size = 1
    end
    object TBCONFIGCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"TBCONFIG"."CPF"'
      Size = 14
    end
    object TBCONFIGCODIGOAREAMUNICIPIO: TIBStringField
      FieldName = 'CODIGOAREAMUNICIPIO'
      Origin = '"TBCONFIG"."CODIGOAREAMUNICIPIO"'
      FixedChar = True
      Size = 2
    end
    object TBCONFIGCODIGOMUNICIPIO: TIBStringField
      FieldName = 'CODIGOMUNICIPIO'
      Origin = '"TBCONFIG"."CODIGOMUNICIPIO"'
      Size = 11
    end
    object TBCONFIGBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"TBCONFIG"."BAIRRO"'
      Size = 30
    end
    object TBCONFIGNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"TBCONFIG"."NUMERO"'
      Size = 8
    end
    object TBCONFIGMINICIPIO: TIBStringField
      FieldName = 'MINICIPIO'
      Origin = '"TBCONFIG"."MINICIPIO"'
    end
    object TBCONFIGXMUNICIPIO: TIBStringField
      FieldName = 'XMUNICIPIO'
      Origin = '"TBCONFIG"."XMUNICIPIO"'
    end
    object TBCONFIGUF: TIBStringField
      FieldName = 'UF'
      Origin = '"TBCONFIG"."UF"'
      FixedChar = True
      Size = 2
    end
    object TBCONFIGCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"TBCONFIG"."CEP"'
      Size = 10
    end
    object TBCONFIGDTVENCIMENTOCERT: TDateField
      FieldName = 'DTVENCIMENTOCERT'
      Origin = '"TBCONFIG"."DTVENCIMENTOCERT"'
    end
    object TBCONFIGNOMEA1: TIBStringField
      FieldName = 'NOMEA1'
      Origin = '"TBCONFIG"."NOMEA1"'
    end
    object TBCONFIGSENHAA1: TIBStringField
      FieldName = 'SENHAA1'
      Origin = '"TBCONFIG"."SENHAA1"'
    end
    object TBCONFIGNUMEROSISTEMA: TIntegerField
      FieldName = 'NUMEROSISTEMA'
      Origin = '"TBCONFIG"."NUMEROSISTEMA"'
    end
    object TBCONFIGDTINSTALACAO: TDateField
      FieldName = 'DTINSTALACAO'
      Origin = '"TBCONFIG"."DTINSTALACAO"'
    end
    object TBCONFIGDTVENCIMENTOMENSA: TDateField
      FieldName = 'DTVENCIMENTOMENSA'
      Origin = '"TBCONFIG"."DTVENCIMENTOMENSA"'
    end
    object TBCONFIGDTVENCCONTRATO: TDateField
      FieldName = 'DTVENCCONTRATO'
      Origin = '"TBCONFIG"."DTVENCCONTRATO"'
    end
    object TBCONFIGTIPOPDV: TIBStringField
      FieldName = 'TIPOPDV'
      Origin = '"TBCONFIG"."TIPOPDV"'
      Size = 4
    end
    object TBCONFIGCONTROLARESTOQUE: TIBStringField
      FieldName = 'CONTROLARESTOQUE'
      Origin = '"TBCONFIG"."CONTROLARESTOQUE"'
      FixedChar = True
      Size = 3
    end
    object TBCONFIGCIMPRESSORA: TIBStringField
      FieldName = 'CIMPRESSORA'
      Origin = '"TBCONFIG"."CIMPRESSORA"'
      Size = 30
    end
    object TBCONFIGCONTROLEESTOQUENFC: TIBStringField
      FieldName = 'CONTROLEESTOQUENFC'
      Origin = '"TBCONFIG"."CONTROLEESTOQUENFC"'
      FixedChar = True
      Size = 3
    end
    object TBCONFIGCTRNCM: TIBStringField
      FieldName = 'CTRNCM'
      Origin = '"TBCONFIG"."CTRNCM"'
      FixedChar = True
      Size = 3
    end
  end
  object TBDEBITO: TIBDataSet
    Database = DBDATABASE
    Transaction = TSPDV
    AfterDelete = TBDEBITOAfterDelete
    AfterPost = TBDEBITOAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from TBDEBITO'
      'where'
      '  NR_DEBITO = :OLD_NR_DEBITO')
    InsertSQL.Strings = (
      'insert into TBDEBITO'
      
        '  (CD_CLIENTE, CD_VENDEDOR, DT_EMISAO, DT_VENCIMENTO, MINUTA, NM' +
        '_CLIENTE, '
      
        '   NM_CONVENIO, NM_VENDEDOR, NR_CONVENIO, NR_CPF, NR_DEBITO, NR_' +
        'DIAS, NR_PARCELA, '
      
        '   PLANO, RF_REFERENTE, VL_COMIAPRAZOVENDEDOR, VL_COMICAOAPRAZO,' +
        ' VL_COMPRA, '
      '   VL_ENTRADA, VL_FCOMPRA, VL_JURO, VL_PORPARC)'
      'values'
      
        '  (:CD_CLIENTE, :CD_VENDEDOR, :DT_EMISAO, :DT_VENCIMENTO, :MINUT' +
        'A, :NM_CLIENTE, '
      
        '   :NM_CONVENIO, :NM_VENDEDOR, :NR_CONVENIO, :NR_CPF, :NR_DEBITO' +
        ', :NR_DIAS, '
      
        '   :NR_PARCELA, :PLANO, :RF_REFERENTE, :VL_COMIAPRAZOVENDEDOR, :' +
        'VL_COMICAOAPRAZO, '
      '   :VL_COMPRA, :VL_ENTRADA, :VL_FCOMPRA, :VL_JURO, :VL_PORPARC)')
    RefreshSQL.Strings = (
      'Select '
      '  NR_DEBITO,'
      '  CD_CLIENTE,'
      '  NM_CLIENTE,'
      '  DT_EMISAO,'
      '  DT_VENCIMENTO,'
      '  NR_PARCELA,'
      '  VL_COMPRA,'
      '  VL_JURO,'
      '  VL_FCOMPRA,'
      '  RF_REFERENTE,'
      '  NR_DIAS,'
      '  CD_VENDEDOR,'
      '  NM_VENDEDOR,'
      '  VL_COMIAPRAZOVENDEDOR,'
      '  VL_ENTRADA,'
      '  VL_PORPARC,'
      '  PLANO,'
      '  MINUTA,'
      '  NR_CPF,'
      '  VL_COMICAOAPRAZO,'
      '  NR_CONVENIO,'
      '  NM_CONVENIO'
      'from TBDEBITO '
      'where'
      '  NR_DEBITO = :NR_DEBITO')
    SelectSQL.Strings = (
      'select * from TBDEBITO')
    ModifySQL.Strings = (
      'update TBDEBITO'
      'set'
      '  CD_CLIENTE = :CD_CLIENTE,'
      '  CD_VENDEDOR = :CD_VENDEDOR,'
      '  DT_EMISAO = :DT_EMISAO,'
      '  DT_VENCIMENTO = :DT_VENCIMENTO,'
      '  MINUTA = :MINUTA,'
      '  NM_CLIENTE = :NM_CLIENTE,'
      '  NM_CONVENIO = :NM_CONVENIO,'
      '  NM_VENDEDOR = :NM_VENDEDOR,'
      '  NR_CONVENIO = :NR_CONVENIO,'
      '  NR_CPF = :NR_CPF,'
      '  NR_DEBITO = :NR_DEBITO,'
      '  NR_DIAS = :NR_DIAS,'
      '  NR_PARCELA = :NR_PARCELA,'
      '  PLANO = :PLANO,'
      '  RF_REFERENTE = :RF_REFERENTE,'
      '  VL_COMIAPRAZOVENDEDOR = :VL_COMIAPRAZOVENDEDOR,'
      '  VL_COMICAOAPRAZO = :VL_COMICAOAPRAZO,'
      '  VL_COMPRA = :VL_COMPRA,'
      '  VL_ENTRADA = :VL_ENTRADA,'
      '  VL_FCOMPRA = :VL_FCOMPRA,'
      '  VL_JURO = :VL_JURO,'
      '  VL_PORPARC = :VL_PORPARC'
      'where'
      '  NR_DEBITO = :OLD_NR_DEBITO')
    GeneratorField.Field = 'NR_DEBITO'
    GeneratorField.Generator = 'GEN_TBDEBITO'
    Left = 256
    Top = 160
    object TBDEBITONR_DEBITO: TIntegerField
      FieldName = 'NR_DEBITO'
      Origin = '"TBDEBITO"."NR_DEBITO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBDEBITOCD_CLIENTE: TIntegerField
      FieldName = 'CD_CLIENTE'
      Origin = '"TBDEBITO"."CD_CLIENTE"'
    end
    object TBDEBITONM_CLIENTE: TIBStringField
      FieldName = 'NM_CLIENTE'
      Origin = '"TBDEBITO"."NM_CLIENTE"'
      Size = 40
    end
    object TBDEBITODT_EMISAO: TDateField
      FieldName = 'DT_EMISAO'
      Origin = '"TBDEBITO"."DT_EMISAO"'
    end
    object TBDEBITODT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = '"TBDEBITO"."DT_VENCIMENTO"'
    end
    object TBDEBITONR_PARCELA: TIntegerField
      FieldName = 'NR_PARCELA'
      Origin = '"TBDEBITO"."NR_PARCELA"'
    end
    object TBDEBITOVL_COMPRA: TIBBCDField
      FieldName = 'VL_COMPRA'
      Origin = '"TBDEBITO"."VL_COMPRA"'
      Precision = 18
      Size = 2
    end
    object TBDEBITOVL_JURO: TIBBCDField
      FieldName = 'VL_JURO'
      Origin = '"TBDEBITO"."VL_JURO"'
      Precision = 18
      Size = 2
    end
    object TBDEBITOVL_FCOMPRA: TIBBCDField
      FieldName = 'VL_FCOMPRA'
      Origin = '"TBDEBITO"."VL_FCOMPRA"'
      Precision = 18
      Size = 2
    end
    object TBDEBITORF_REFERENTE: TIBStringField
      FieldName = 'RF_REFERENTE'
      Origin = '"TBDEBITO"."RF_REFERENTE"'
      Size = 40
    end
    object TBDEBITONR_DIAS: TIntegerField
      FieldName = 'NR_DIAS'
      Origin = '"TBDEBITO"."NR_DIAS"'
    end
    object TBDEBITOCD_VENDEDOR: TIntegerField
      FieldName = 'CD_VENDEDOR'
      Origin = '"TBDEBITO"."CD_VENDEDOR"'
    end
    object TBDEBITONM_VENDEDOR: TIBStringField
      FieldName = 'NM_VENDEDOR'
      Origin = '"TBDEBITO"."NM_VENDEDOR"'
      Size = 40
    end
    object TBDEBITOVL_COMIAPRAZOVENDEDOR: TIBBCDField
      FieldName = 'VL_COMIAPRAZOVENDEDOR'
      Origin = '"TBDEBITO"."VL_COMIAPRAZOVENDEDOR"'
      Precision = 18
      Size = 2
    end
    object TBDEBITOVL_ENTRADA: TIBBCDField
      FieldName = 'VL_ENTRADA'
      Origin = '"TBDEBITO"."VL_ENTRADA"'
      Precision = 18
      Size = 2
    end
    object TBDEBITOVL_PORPARC: TIBBCDField
      FieldName = 'VL_PORPARC'
      Origin = '"TBDEBITO"."VL_PORPARC"'
      Precision = 18
      Size = 2
    end
    object TBDEBITOPLANO: TIntegerField
      FieldName = 'PLANO'
      Origin = '"TBDEBITO"."PLANO"'
    end
    object TBDEBITOMINUTA: TIntegerField
      FieldName = 'MINUTA'
      Origin = '"TBDEBITO"."MINUTA"'
    end
    object TBDEBITONR_CPF: TIBStringField
      FieldName = 'NR_CPF'
      Origin = '"TBDEBITO"."NR_CPF"'
      Size = 14
    end
    object TBDEBITOVL_COMICAOAPRAZO: TIBBCDField
      FieldName = 'VL_COMICAOAPRAZO'
      Origin = '"TBDEBITO"."VL_COMICAOAPRAZO"'
      Precision = 18
      Size = 2
    end
    object TBDEBITONR_CONVENIO: TIntegerField
      FieldName = 'NR_CONVENIO'
      Origin = '"TBDEBITO"."NR_CONVENIO"'
    end
    object TBDEBITONM_CONVENIO: TIBStringField
      FieldName = 'NM_CONVENIO'
      Origin = '"TBDEBITO"."NM_CONVENIO"'
      Size = 30
    end
  end
  object TBDETDEBITO: TIBDataSet
    Database = DBDATABASE
    Transaction = TSPDV
    AfterDelete = TBDETDEBITOAfterDelete
    AfterPost = TBDETDEBITOAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from TBDETDEBITO'
      'where'
      '  COD_PARCELA = :OLD_COD_PARCELA')
    InsertSQL.Strings = (
      'insert into TBDETDEBITO'
      
        '  (CD_CLIENTE, CD_VENDEDOR, COD_PARCELA, DT_ATUAL, DT_EMISAO, DT' +
        '_VENCIMENTO, '
      
        '   MINUTA, NM_CLIENTE, NM_CONVENIO, NM_VENDEDOR, NR_CONVENIO, NR' +
        '_CPF, NR_DEBITO, '
      
        '   NR_DIAS, NR_PARCELA, RF_REFERENTE, VL_COMIAPRAZO, VL_PARCELA,' +
        ' VL_PARCJURO)'
      'values'
      
        '  (:CD_CLIENTE, :CD_VENDEDOR, :COD_PARCELA, :DT_ATUAL, :DT_EMISA' +
        'O, :DT_VENCIMENTO, '
      
        '   :MINUTA, :NM_CLIENTE, :NM_CONVENIO, :NM_VENDEDOR, :NR_CONVENI' +
        'O, :NR_CPF, '
      
        '   :NR_DEBITO, :NR_DIAS, :NR_PARCELA, :RF_REFERENTE, :VL_COMIAPR' +
        'AZO, :VL_PARCELA, '
      '   :VL_PARCJURO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_PARCELA,'
      '  CD_CLIENTE,'
      '  NR_PARCELA,'
      '  NM_CLIENTE,'
      '  RF_REFERENTE,'
      '  DT_EMISAO,'
      '  DT_VENCIMENTO,'
      '  VL_PARCELA,'
      '  NR_DEBITO,'
      '  CD_VENDEDOR,'
      '  NM_VENDEDOR,'
      '  NR_DIAS,'
      '  DT_ATUAL,'
      '  VL_PARCJURO,'
      '  MINUTA,'
      '  NR_CPF,'
      '  VL_COMIAPRAZO,'
      '  NR_CONVENIO,'
      '  NM_CONVENIO'
      'from TBDETDEBITO '
      'where'
      '  COD_PARCELA = :COD_PARCELA')
    SelectSQL.Strings = (
      'select * from TBDETDEBITO'
      'where nr_debito=:nr_debito')
    ModifySQL.Strings = (
      'update TBDETDEBITO'
      'set'
      '  CD_CLIENTE = :CD_CLIENTE,'
      '  CD_VENDEDOR = :CD_VENDEDOR,'
      '  COD_PARCELA = :COD_PARCELA,'
      '  DT_ATUAL = :DT_ATUAL,'
      '  DT_EMISAO = :DT_EMISAO,'
      '  DT_VENCIMENTO = :DT_VENCIMENTO,'
      '  MINUTA = :MINUTA,'
      '  NM_CLIENTE = :NM_CLIENTE,'
      '  NM_CONVENIO = :NM_CONVENIO,'
      '  NM_VENDEDOR = :NM_VENDEDOR,'
      '  NR_CONVENIO = :NR_CONVENIO,'
      '  NR_CPF = :NR_CPF,'
      '  NR_DEBITO = :NR_DEBITO,'
      '  NR_DIAS = :NR_DIAS,'
      '  NR_PARCELA = :NR_PARCELA,'
      '  RF_REFERENTE = :RF_REFERENTE,'
      '  VL_COMIAPRAZO = :VL_COMIAPRAZO,'
      '  VL_PARCELA = :VL_PARCELA,'
      '  VL_PARCJURO = :VL_PARCJURO'
      'where'
      '  COD_PARCELA = :OLD_COD_PARCELA')
    GeneratorField.Field = 'COD_PARCELA'
    GeneratorField.Generator = 'GEN_TBDETDEBITO'
    DataSource = DSTBDEBITO
    Left = 256
    Top = 224
    object TBDETDEBITOCOD_PARCELA: TIntegerField
      FieldName = 'COD_PARCELA'
      Origin = '"TBDETDEBITO"."COD_PARCELA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBDETDEBITOCD_CLIENTE: TIntegerField
      FieldName = 'CD_CLIENTE'
      Origin = '"TBDETDEBITO"."CD_CLIENTE"'
    end
    object TBDETDEBITONR_PARCELA: TIntegerField
      FieldName = 'NR_PARCELA'
      Origin = '"TBDETDEBITO"."NR_PARCELA"'
    end
    object TBDETDEBITONM_CLIENTE: TIBStringField
      FieldName = 'NM_CLIENTE'
      Origin = '"TBDETDEBITO"."NM_CLIENTE"'
      Size = 40
    end
    object TBDETDEBITORF_REFERENTE: TIBStringField
      FieldName = 'RF_REFERENTE'
      Origin = '"TBDETDEBITO"."RF_REFERENTE"'
      Size = 80
    end
    object TBDETDEBITODT_EMISAO: TDateField
      FieldName = 'DT_EMISAO'
      Origin = '"TBDETDEBITO"."DT_EMISAO"'
    end
    object TBDETDEBITODT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = '"TBDETDEBITO"."DT_VENCIMENTO"'
    end
    object TBDETDEBITOVL_PARCELA: TIBBCDField
      FieldName = 'VL_PARCELA'
      Origin = '"TBDETDEBITO"."VL_PARCELA"'
      Precision = 18
      Size = 2
    end
    object TBDETDEBITONR_DEBITO: TIntegerField
      FieldName = 'NR_DEBITO'
      Origin = '"TBDETDEBITO"."NR_DEBITO"'
    end
    object TBDETDEBITOCD_VENDEDOR: TIntegerField
      FieldName = 'CD_VENDEDOR'
      Origin = '"TBDETDEBITO"."CD_VENDEDOR"'
    end
    object TBDETDEBITONM_VENDEDOR: TIBStringField
      FieldName = 'NM_VENDEDOR'
      Origin = '"TBDETDEBITO"."NM_VENDEDOR"'
      Size = 40
    end
    object TBDETDEBITONR_DIAS: TIntegerField
      FieldName = 'NR_DIAS'
      Origin = '"TBDETDEBITO"."NR_DIAS"'
    end
    object TBDETDEBITODT_ATUAL: TDateField
      FieldName = 'DT_ATUAL'
      Origin = '"TBDETDEBITO"."DT_ATUAL"'
    end
    object TBDETDEBITOVL_PARCJURO: TIBBCDField
      FieldName = 'VL_PARCJURO'
      Origin = '"TBDETDEBITO"."VL_PARCJURO"'
      Precision = 18
      Size = 2
    end
    object TBDETDEBITOMINUTA: TIntegerField
      FieldName = 'MINUTA'
      Origin = '"TBDETDEBITO"."MINUTA"'
    end
    object TBDETDEBITONR_CPF: TIBStringField
      FieldName = 'NR_CPF'
      Origin = '"TBDETDEBITO"."NR_CPF"'
      Size = 14
    end
    object TBDETDEBITOVL_COMIAPRAZO: TIBBCDField
      FieldName = 'VL_COMIAPRAZO'
      Origin = '"TBDETDEBITO"."VL_COMIAPRAZO"'
      Precision = 18
      Size = 2
    end
    object TBDETDEBITONR_CONVENIO: TIntegerField
      FieldName = 'NR_CONVENIO'
      Origin = '"TBDETDEBITO"."NR_CONVENIO"'
    end
    object TBDETDEBITONM_CONVENIO: TIBStringField
      FieldName = 'NM_CONVENIO'
      Origin = '"TBDETDEBITO"."NM_CONVENIO"'
      Size = 40
    end
  end
  object DSTBVENDA: TDataSource
    DataSet = TBVENDA
    Left = 96
    Top = 96
  end
  object DSTBDETVENDA: TDataSource
    DataSet = TBDETVENDA
    Left = 120
    Top = 160
  end
  object DSTBESTOQUE: TDataSource
    DataSet = TBESTOQUE
    Left = 112
    Top = 224
  end
  object DSTBCLIENTE: TDataSource
    DataSet = TBCLIENTE
    Left = 128
    Top = 280
  end
  object DSTBVENDEDOR: TDataSource
    DataSet = TBVENDEDOR
    Left = 120
    Top = 336
  end
  object DSTBPAGAMENTO: TDataSource
    DataSet = TBPAGAMENTO
    Left = 320
    Top = 8
  end
  object DSTBCONFIG: TDataSource
    DataSet = TBCONFIG
    Left = 320
    Top = 64
  end
  object DSTBDEBITO: TDataSource
    DataSet = TBDEBITO
    Left = 320
    Top = 160
  end
  object DSTBDETDEBITO: TDataSource
    DataSet = TBDETDEBITO
    Left = 328
    Top = 224
  end
  object TBCAIXA: TIBDataSet
    Database = DBDATABASE
    Transaction = TSPDV
    AfterDelete = TBCAIXAAfterDelete
    AfterPost = TBCAIXAAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from TBCAIXA'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into TBCAIXA'
      
        '  (CD_CLIENTE, COD_VENDEDOR, CODIGO, DO_TIPO, DT_ENTRADA, MINUTA' +
        ', NRCONTROLE, '
      
        '   REFERENTE, SOMA, VL_DESCONTO, VL_ENTRADA, VL_RECEBIDO, VL_TAX' +
        'A)'
      'values'
      
        '  (:CD_CLIENTE, :COD_VENDEDOR, :CODIGO, :DO_TIPO, :DT_ENTRADA, :' +
        'MINUTA, '
      
        '   :NRCONTROLE, :REFERENTE, :SOMA, :VL_DESCONTO, :VL_ENTRADA, :V' +
        'L_RECEBIDO, '
      '   :VL_TAXA)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  VL_ENTRADA,'
      '  DT_ENTRADA,'
      '  COD_VENDEDOR,'
      '  DO_TIPO,'
      '  VL_RECEBIDO,'
      '  CD_CLIENTE,'
      '  VL_TAXA,'
      '  VL_DESCONTO,'
      '  REFERENTE,'
      '  SOMA,'
      '  MINUTA,'
      '  NRCONTROLE'
      'from TBCAIXA '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from TBCAIXA')
    ModifySQL.Strings = (
      'update TBCAIXA'
      'set'
      '  CD_CLIENTE = :CD_CLIENTE,'
      '  COD_VENDEDOR = :COD_VENDEDOR,'
      '  CODIGO = :CODIGO,'
      '  DO_TIPO = :DO_TIPO,'
      '  DT_ENTRADA = :DT_ENTRADA,'
      '  MINUTA = :MINUTA,'
      '  NRCONTROLE = :NRCONTROLE,'
      '  REFERENTE = :REFERENTE,'
      '  SOMA = :SOMA,'
      '  VL_DESCONTO = :VL_DESCONTO,'
      '  VL_ENTRADA = :VL_ENTRADA,'
      '  VL_RECEBIDO = :VL_RECEBIDO,'
      '  VL_TAXA = :VL_TAXA'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_TBCAIXA'
    Left = 256
    Top = 296
    object TBCAIXACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"TBCAIXA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCAIXAVL_ENTRADA: TIBBCDField
      FieldName = 'VL_ENTRADA'
      Origin = '"TBCAIXA"."VL_ENTRADA"'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object TBCAIXADT_ENTRADA: TDateField
      FieldName = 'DT_ENTRADA'
      Origin = '"TBCAIXA"."DT_ENTRADA"'
    end
    object TBCAIXACOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = '"TBCAIXA"."COD_VENDEDOR"'
    end
    object TBCAIXADO_TIPO: TIBStringField
      FieldName = 'DO_TIPO'
      Origin = '"TBCAIXA"."DO_TIPO"'
      Size = 50
    end
    object TBCAIXAVL_RECEBIDO: TIBBCDField
      FieldName = 'VL_RECEBIDO'
      Origin = '"TBCAIXA"."VL_RECEBIDO"'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object TBCAIXACD_CLIENTE: TIntegerField
      FieldName = 'CD_CLIENTE'
      Origin = '"TBCAIXA"."CD_CLIENTE"'
    end
    object TBCAIXAVL_TAXA: TIBBCDField
      FieldName = 'VL_TAXA'
      Origin = '"TBCAIXA"."VL_TAXA"'
      DisplayFormat = '###,##0.00'
      EditFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object TBCAIXAVL_DESCONTO: TIBBCDField
      FieldName = 'VL_DESCONTO'
      Origin = '"TBCAIXA"."VL_DESCONTO"'
      Precision = 18
      Size = 2
    end
    object TBCAIXAREFERENTE: TIBStringField
      FieldName = 'REFERENTE'
      Origin = '"TBCAIXA"."REFERENTE"'
    end
    object TBCAIXASOMA: TIBBCDField
      FieldName = 'SOMA'
      Origin = '"TBCAIXA"."SOMA"'
      Precision = 18
      Size = 2
    end
    object TBCAIXAMINUTA: TIntegerField
      FieldName = 'MINUTA'
      Origin = '"TBCAIXA"."MINUTA"'
    end
    object TBCAIXANRCONTROLE: TIntegerField
      FieldName = 'NRCONTROLE'
      Origin = '"TBCAIXA"."NRCONTROLE"'
    end
  end
  object DSTBCAIXA: TDataSource
    DataSet = TBCAIXA
    Left = 328
    Top = 296
  end
  object TBUSUARIO: TIBDataSet
    Database = DBDATABASE
    Transaction = TSPDV
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from TBUSUARIO'
      'where'
      '  ID_USUARIO = :OLD_ID_USUARIO')
    InsertSQL.Strings = (
      'insert into TBUSUARIO'
      '  (ID_USUARIO, NIVEL, SENHA, USUARIO)'
      'values'
      '  (:ID_USUARIO, :NIVEL, :SENHA, :USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID_USUARIO,'
      '  USUARIO,'
      '  SENHA,'
      '  NIVEL'
      'from TBUSUARIO '
      'where'
      '  ID_USUARIO = :ID_USUARIO')
    SelectSQL.Strings = (
      'select * from TBUSUARIO')
    ModifySQL.Strings = (
      'update TBUSUARIO'
      'set'
      '  ID_USUARIO = :ID_USUARIO,'
      '  NIVEL = :NIVEL,'
      '  SENHA = :SENHA,'
      '  USUARIO = :USUARIO'
      'where'
      '  ID_USUARIO = :OLD_ID_USUARIO')
    GeneratorField.Field = 'ID_USUARIO'
    GeneratorField.Generator = 'GEN_USUARIO'
    Left = 256
    Top = 352
  end
  object TBCOMICAO: TIBDataSet
    Database = DBDATABASE
    Transaction = TSPDV
    AfterDelete = TBCOMICAOAfterDelete
    AfterPost = TBCOMICAOAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from TBCOMICAO'
      'where'
      '  COD_COMICAO = :OLD_COD_COMICAO')
    InsertSQL.Strings = (
      'insert into TBCOMICAO'
      
        '  (COD_COMICAO, COM_COD_VENDEDOR, COM_DO_TIPO, COM_DTA_ENTRADA, ' +
        'COM_NM_VENDEDOR, '
      
        '   COM_VL_COMICAO, MINUTA, NM_CLIENTE, NR_CPF, NR_PEDIDO, VL_ENT' +
        'RADA)'
      'values'
      
        '  (:COD_COMICAO, :COM_COD_VENDEDOR, :COM_DO_TIPO, :COM_DTA_ENTRA' +
        'DA, :COM_NM_VENDEDOR, '
      
        '   :COM_VL_COMICAO, :MINUTA, :NM_CLIENTE, :NR_CPF, :NR_PEDIDO, :' +
        'VL_ENTRADA)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_COMICAO,'
      '  COM_COD_VENDEDOR,'
      '  COM_NM_VENDEDOR,'
      '  COM_DTA_ENTRADA,'
      '  COM_DO_TIPO,'
      '  COM_VL_COMICAO,'
      '  VL_ENTRADA,'
      '  NM_CLIENTE,'
      '  NR_PEDIDO,'
      '  NR_CPF,'
      '  MINUTA'
      'from TBCOMICAO '
      'where'
      '  COD_COMICAO = :COD_COMICAO')
    SelectSQL.Strings = (
      'select * from TBCOMICAO')
    ModifySQL.Strings = (
      'update TBCOMICAO'
      'set'
      '  COD_COMICAO = :COD_COMICAO,'
      '  COM_COD_VENDEDOR = :COM_COD_VENDEDOR,'
      '  COM_DO_TIPO = :COM_DO_TIPO,'
      '  COM_DTA_ENTRADA = :COM_DTA_ENTRADA,'
      '  COM_NM_VENDEDOR = :COM_NM_VENDEDOR,'
      '  COM_VL_COMICAO = :COM_VL_COMICAO,'
      '  MINUTA = :MINUTA,'
      '  NM_CLIENTE = :NM_CLIENTE,'
      '  NR_CPF = :NR_CPF,'
      '  NR_PEDIDO = :NR_PEDIDO,'
      '  VL_ENTRADA = :VL_ENTRADA'
      'where'
      '  COD_COMICAO = :OLD_COD_COMICAO')
    GeneratorField.Field = 'COD_COMICAO'
    GeneratorField.Generator = 'GEN_TBCOMICAO'
    Left = 256
    Top = 408
    object TBCOMICAOCOD_COMICAO: TIntegerField
      FieldName = 'COD_COMICAO'
      Origin = '"TBCOMICAO"."COD_COMICAO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCOMICAOCOM_COD_VENDEDOR: TIntegerField
      FieldName = 'COM_COD_VENDEDOR'
      Origin = '"TBCOMICAO"."COM_COD_VENDEDOR"'
    end
    object TBCOMICAOCOM_NM_VENDEDOR: TIBStringField
      FieldName = 'COM_NM_VENDEDOR'
      Origin = '"TBCOMICAO"."COM_NM_VENDEDOR"'
      Size = 30
    end
    object TBCOMICAOCOM_DTA_ENTRADA: TDateField
      FieldName = 'COM_DTA_ENTRADA'
      Origin = '"TBCOMICAO"."COM_DTA_ENTRADA"'
    end
    object TBCOMICAOCOM_DO_TIPO: TIBStringField
      FieldName = 'COM_DO_TIPO'
      Origin = '"TBCOMICAO"."COM_DO_TIPO"'
    end
    object TBCOMICAOCOM_VL_COMICAO: TIBBCDField
      FieldName = 'COM_VL_COMICAO'
      Origin = '"TBCOMICAO"."COM_VL_COMICAO"'
      Precision = 18
      Size = 2
    end
    object TBCOMICAOVL_ENTRADA: TIBBCDField
      FieldName = 'VL_ENTRADA'
      Origin = '"TBCOMICAO"."VL_ENTRADA"'
      Precision = 18
      Size = 2
    end
    object TBCOMICAONM_CLIENTE: TIBStringField
      FieldName = 'NM_CLIENTE'
      Origin = '"TBCOMICAO"."NM_CLIENTE"'
      Size = 35
    end
    object TBCOMICAONR_PEDIDO: TIntegerField
      FieldName = 'NR_PEDIDO'
      Origin = '"TBCOMICAO"."NR_PEDIDO"'
    end
    object TBCOMICAONR_CPF: TIBStringField
      FieldName = 'NR_CPF'
      Origin = '"TBCOMICAO"."NR_CPF"'
      Size = 14
    end
    object TBCOMICAOMINUTA: TIntegerField
      FieldName = 'MINUTA'
      Origin = '"TBCOMICAO"."MINUTA"'
    end
  end
  object DSTBUSUARIO: TDataSource
    DataSet = TBCAIXA
    Left = 328
    Top = 352
  end
  object DSTBCOMICAO: TDataSource
    DataSet = TBCAIXA
    Left = 328
    Top = 400
  end
  object TBRETORNO: TIBDataSet
    Database = DBDATABASE
    Transaction = TSPDV
    AfterDelete = TBRETORNOAfterDelete
    AfterPost = TBRETORNOAfterPost
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from TBRETORNO'
      'where'
      '  MINUTA = :OLD_MINUTA')
    InsertSQL.Strings = (
      'insert into TBRETORNO'
      '  (CODIGO, DATA, HORA, INFORETORNO, MINUTA, NRNOTA)'
      'values'
      '  (:CODIGO, :DATA, :HORA, :INFORETORNO, :MINUTA, :NRNOTA)')
    RefreshSQL.Strings = (
      'Select '
      '  MINUTA,'
      '  CODIGO,'
      '  INFORETORNO,'
      '  DATA,'
      '  HORA,'
      '  NRNOTA'
      'from TBRETORNO '
      'where'
      '  MINUTA = :MINUTA')
    SelectSQL.Strings = (
      'select * from TBRETORNO')
    ModifySQL.Strings = (
      'update TBRETORNO'
      'set'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  HORA = :HORA,'
      '  INFORETORNO = :INFORETORNO,'
      '  MINUTA = :MINUTA,'
      '  NRNOTA = :NRNOTA'
      'where'
      '  MINUTA = :OLD_MINUTA')
    GeneratorField.Field = 'MINUTA'
    GeneratorField.Generator = 'TBRETORNO_MINUTA_GEN'
    Left = 24
    Top = 408
    object TBRETORNOMINUTA: TIntegerField
      FieldName = 'MINUTA'
      Origin = '"TBRETORNO"."MINUTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBRETORNOCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"TBRETORNO"."CODIGO"'
      Size = 4
    end
    object TBRETORNOINFORETORNO: TIBStringField
      FieldName = 'INFORETORNO'
      Origin = '"TBRETORNO"."INFORETORNO"'
      Size = 50
    end
    object TBRETORNODATA: TDateField
      FieldName = 'DATA'
      Origin = '"TBRETORNO"."DATA"'
    end
    object TBRETORNOHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"TBRETORNO"."HORA"'
    end
    object TBRETORNONRNOTA: TIBStringField
      FieldName = 'NRNOTA'
      Origin = '"TBRETORNO"."NRNOTA"'
      Size = 6
    end
  end
  object IBCARNE: TIBQuery
    Database = DBDATABASE
    Transaction = TSPDV
    SQL.Strings = (
      'select * from TBDETDEBITO'
      'where nr_debito =:nr_debito ')
    Left = 424
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nr_debito'
        ParamType = ptUnknown
      end>
    object IBCARNECOD_PARCELA: TIntegerField
      FieldName = 'COD_PARCELA'
      Origin = '"TBDETDEBITO"."COD_PARCELA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBCARNECD_CLIENTE: TIntegerField
      FieldName = 'CD_CLIENTE'
      Origin = '"TBDETDEBITO"."CD_CLIENTE"'
    end
    object IBCARNENR_PARCELA: TIntegerField
      FieldName = 'NR_PARCELA'
      Origin = '"TBDETDEBITO"."NR_PARCELA"'
    end
    object IBCARNENM_CLIENTE: TIBStringField
      FieldName = 'NM_CLIENTE'
      Origin = '"TBDETDEBITO"."NM_CLIENTE"'
      Size = 40
    end
    object IBCARNERF_REFERENTE: TIBStringField
      FieldName = 'RF_REFERENTE'
      Origin = '"TBDETDEBITO"."RF_REFERENTE"'
      Size = 80
    end
    object IBCARNEDT_EMISAO: TDateField
      FieldName = 'DT_EMISAO'
      Origin = '"TBDETDEBITO"."DT_EMISAO"'
    end
    object IBCARNEDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = '"TBDETDEBITO"."DT_VENCIMENTO"'
    end
    object IBCARNEVL_PARCELA: TIBBCDField
      FieldName = 'VL_PARCELA'
      Origin = '"TBDETDEBITO"."VL_PARCELA"'
      Precision = 18
      Size = 2
    end
    object IBCARNENR_DEBITO: TIntegerField
      FieldName = 'NR_DEBITO'
      Origin = '"TBDETDEBITO"."NR_DEBITO"'
    end
    object IBCARNECD_VENDEDOR: TIntegerField
      FieldName = 'CD_VENDEDOR'
      Origin = '"TBDETDEBITO"."CD_VENDEDOR"'
    end
    object IBCARNENM_VENDEDOR: TIBStringField
      FieldName = 'NM_VENDEDOR'
      Origin = '"TBDETDEBITO"."NM_VENDEDOR"'
      Size = 40
    end
    object IBCARNENR_DIAS: TIntegerField
      FieldName = 'NR_DIAS'
      Origin = '"TBDETDEBITO"."NR_DIAS"'
    end
    object IBCARNEDT_ATUAL: TDateField
      FieldName = 'DT_ATUAL'
      Origin = '"TBDETDEBITO"."DT_ATUAL"'
    end
    object IBCARNEVL_PARCJURO: TIBBCDField
      FieldName = 'VL_PARCJURO'
      Origin = '"TBDETDEBITO"."VL_PARCJURO"'
      Precision = 18
      Size = 2
    end
    object IBCARNEMINUTA: TIntegerField
      FieldName = 'MINUTA'
      Origin = '"TBDETDEBITO"."MINUTA"'
    end
    object IBCARNENR_CPF: TIBStringField
      FieldName = 'NR_CPF'
      Origin = '"TBDETDEBITO"."NR_CPF"'
      Size = 14
    end
    object IBCARNEVL_COMIAPRAZO: TIBBCDField
      FieldName = 'VL_COMIAPRAZO'
      Origin = '"TBDETDEBITO"."VL_COMIAPRAZO"'
      Precision = 18
      Size = 2
    end
    object IBCARNENR_CONVENIO: TIntegerField
      FieldName = 'NR_CONVENIO'
      Origin = '"TBDETDEBITO"."NR_CONVENIO"'
    end
    object IBCARNENM_CONVENIO: TIBStringField
      FieldName = 'NM_CONVENIO'
      Origin = '"TBDETDEBITO"."NM_CONVENIO"'
      Size = 40
    end
  end
  object TAB_CEST: TIBDataSet
    Database = DBDATABASE
    Transaction = TSPDV
    DeleteSQL.Strings = (
      'delete from TAB_CEST'
      'where'
      '  CEST = :OLD_CEST')
    InsertSQL.Strings = (
      'insert into TAB_CEST'
      '  (CEST, DESCRICAO, NCM)'
      'values'
      '  (:CEST, :DESCRICAO, :NCM)')
    RefreshSQL.Strings = (
      'Select '
      '  CEST,'
      '  NCM,'
      '  DESCRICAO'
      'from TAB_CEST '
      'where'
      '  CEST = :CEST')
    SelectSQL.Strings = (
      'select * from TAB_CEST')
    ModifySQL.Strings = (
      'update TAB_CEST'
      'set'
      '  CEST = :CEST,'
      '  DESCRICAO = :DESCRICAO,'
      '  NCM = :NCM'
      'where'
      '  CEST = :OLD_CEST')
    Left = 424
    Top = 80
    object TAB_CESTCEST: TIBStringField
      FieldName = 'CEST'
      Origin = '"TAB_CEST"."CEST"'
      Required = True
      Size = 7
    end
    object TAB_CESTNCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"TAB_CEST"."NCM"'
      Size = 8
    end
    object TAB_CESTDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"TAB_CEST"."DESCRICAO"'
      Size = 512
    end
  end
  object DSTABCEST: TDataSource
    DataSet = TAB_CEST
    Left = 488
    Top = 88
  end
  object TBTIPI: TIBDataSet
    Database = DBDATABASE
    Transaction = TSPDV
    SelectSQL.Strings = (
      'select * from TIPI')
    Left = 440
    Top = 152
    object TBTIPINCM: TIBStringField
      FieldName = 'NCM'
      Origin = '"TIPI"."NCM"'
      Required = True
      FixedChar = True
      Size = 8
    end
    object TBTIPIDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"TIPI"."DESCRICAO"'
      Required = True
      Size = 1100
    end
  end
end
