unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, MyAccess, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    Conn: TMyConnection;
    ADOConn: TADOConnection;
    ADOQryMembro: TADOQuery;
    ADOQryMembroCOD_MEMBRO: TIntegerField;
    ADOQryMembroCOD_FAMILIA: TIntegerField;
    ADOQryMembroTIPO: TIntegerField;
    ADOQryMembroNOME_MEMBRO: TWideStringField;
    ADOQryMembroNOME_SOLTEIRO: TWideStringField;
    ADOQryMembroSEXO: TWideStringField;
    ADOQryMembroEMAIL: TWideStringField;
    ADOQryMembroTIPO_SANGUE: TWideStringField;
    ADOQryMembroCOD_AREA_SEL: TWideStringField;
    ADOQryMembroSELULAR: TWideStringField;
    ADOQryMembroESCOLARIDADE: TWideStringField;
    ADOQryMembroPAI: TWideStringField;
    ADOQryMembroPAI_CELC: TBooleanField;
    ADOQryMembroMAE: TWideStringField;
    ADOQryMembroMAE_CELC: TBooleanField;
    ADOQryMembroDATA_NASC: TDateTimeField;
    ADOQryMembroUF_NASCI: TWideStringField;
    ADOQryMembroNATURALDE: TWideStringField;
    ADOQryMembroESTADO_CIVIL: TWideStringField;
    ADOQryMembroNOME_CONJUGUE: TWideStringField;
    ADOQryMembroDATA_NASCI_CONJ: TDateTimeField;
    ADOQryMembroCONJUGUE_FILIADO: TBooleanField;
    ADOQryMembroRELIGIAO_CONJ: TWideStringField;
    ADOQryMembroCOD_PROFISSAO: TIntegerField;
    ADOQryMembroEMPRESA: TWideStringField;
    ADOQryMembroCEP_EMP: TWideStringField;
    ADOQryMembroMUNICIPIO_EMP: TWideStringField;
    ADOQryMembroUF_EMP: TWideStringField;
    ADOQryMembroCOD_AREA_EMP: TWideStringField;
    ADOQryMembroFONE_EMP: TWideStringField;
    ADOQryMembroEMAIL_EMP: TWideStringField;
    ADOQryMembroCARGO: TWideStringField;
    ADOQryMembroRENDA: TBCDField;
    ADOQryMembroDATA_ADM_COM: TDateTimeField;
    ADOQryMembroFORMA_ADM: TWideStringField;
    ADOQryMembroPROCEDENCIA_ADM: TWideStringField;
    ADOQryMembroENVELOPE: TIntegerField;
    ADOQryMembroDATA_SAIDA: TDateTimeField;
    ADOQryMembroMOTIVO: TWideStringField;
    ADOQryMembroDESTINO: TWideStringField;
    ADOQryMembroFOTO: TWideStringField;
    ADOQryMembroRG: TWideStringField;
    ADOQryMembroCPF: TWideStringField;
    ADOQryMembroCOD_USUARIO: TWideStringField;
    ADOQryMembroDATA_CADASTRO: TDateTimeField;
    ADOQryMembroDATA_CONF: TDateTimeField;
    ADOQryMembroDATA_BATISMO: TDateTimeField;
    ADOQryMembroFILIADO: TBooleanField;
    ADOQryMembroDATA_ATIVO: TDateTimeField;
    ADOQryMembroNUM_VEZES: TIntegerField;
    ADOQryMembroVOTANTE: TDateTimeField;
    DSMembro: TDataSource;
    DSFamilia: TDataSource;
    ADOQryFamilia: TADOQuery;
    ADOQryFamiliaCOD_FAMILIA: TIntegerField;
    ADOQryFamiliaSOBRENOME: TWideStringField;
    ADOQryFamiliaAREA: TWideStringField;
    ADOQryFamiliaGRUPO: TWideStringField;
    ADOQryFamiliaCEP_MUNICIPIO: TWideStringField;
    ADOQryFamiliaRUA: TWideStringField;
    ADOQryFamiliaNUMERO: TIntegerField;
    ADOQryFamiliaAPTO: TWideStringField;
    ADOQryFamiliaBAIRRO: TWideStringField;
    ADOQryFamiliaCOD_AREA: TWideStringField;
    ADOQryFamiliaTELEFONE: TWideStringField;
    ADOQryFamiliaEMAIL: TWideStringField;
    ADOQryFamiliaCOD_AREA_SEL: TWideStringField;
    ADOQryFamiliaSELULAR: TWideStringField;
    ADOQryFamiliaCOD_AREA_FAX: TWideStringField;
    ADOQryFamiliaFAX: TWideStringField;
    ADOQryFamiliaDATA_ULT_VISITA: TDateTimeField;
    ADOQryFamiliaNOME_VISITANTE: TWideStringField;
    ADOQryTipoContribuicao: TADOQuery;
    ADOQryTipoContribuicaoCOD_TP_CONTRB: TIntegerField;
    ADOQryTipoContribuicaoDESC_TP_CONTRB: TWideStringField;
    ADOQryTipoContribuicaoCOLETIVA: TBooleanField;
    DSTipoContibuicao: TDataSource;
    QryMembro: TMyQuery;
    QryMembroCodMembro: TLargeintField;
    QryMembroCodFamilia: TLargeintField;
    QryMembroCodTipoMembro: TLargeintField;
    QryMembroNomeMembro: TStringField;
    QryMembroNomeSolteiro: TStringField;
    QryMembroSexo: TStringField;
    QryMembroEmail: TStringField;
    QryMembroTipoSangue: TStringField;
    QryMembroCelular: TStringField;
    QryMembroCodEscolaridade: TLargeintField;
    QryMembroPai: TStringField;
    QryMembroPaiCELC: TStringField;
    QryMembroMae: TStringField;
    QryMembroMaeCELC: TStringField;
    QryMembroDataNasc: TDateField;
    QryMembroNaturalidade: TStringField;
    QryMembroCodEstadoCivil: TLargeintField;
    QryMembroNomeConjuge: TStringField;
    QryMembroDataNascConj: TDateField;
    QryMembroConjugeFiliado: TStringField;
    QryMembroReligiaoConjuge: TStringField;
    QryMembroCodProfissao: TLargeintField;
    QryMembroEmpresa: TStringField;
    QryMembroCEPEmpresa: TStringField;
    QryMembroUFEmpresa: TStringField;
    QryMembroDDDEmpresa: TStringField;
    QryMembroFoneEmpresa: TStringField;
    QryMembroEmailEmpresa: TStringField;
    QryMembroCargo: TStringField;
    QryMembroRenda: TFloatField;
    QryMembroDataAdmisComunidade: TDateTimeField;
    QryMembroCodFormaAdmissao: TLargeintField;
    QryMembroProcedenciaAdmissao: TStringField;
    QryMembroEnvelope: TLargeintField;
    QryMembroDataSaida: TDateField;
    QryMembroCodMotivoSaida: TLargeintField;
    QryMembroDestinoSaida: TStringField;
    QryMembroFotoCaminho: TStringField;
    QryMembroRG: TStringField;
    QryMembroCPF: TStringField;
    QryMembroCodUsuario: TLargeintField;
    QryMembroDataCadastro: TDateTimeField;
    QryMembroDataConfirmacao: TDateField;
    QryMembroDataBatismo: TDateField;
    QryMembroFiliado: TStringField;
    QryMembroDataAtivo: TDateTimeField;
    QryMembroNumVezes: TLargeintField;
    QryMembroVotante: TDateTimeField;
    QryMembroCidadeEmpresa: TStringField;
    QryMembroEnderecoEmpresa: TStringField;
    QryMembroComplEmpresa: TStringField;
    QryMembroEndereco: TStringField;
    QryMembroCompl: TStringField;
    QryMembroCidade: TStringField;
    QryMembroBairro: TStringField;
    QryMembroCEP: TStringField;
    QryMembroUF: TStringField;
    QryMembroTelefone: TStringField;
    QryMembroEnderecoDesatualizado: TBooleanField;
    QryMembroTelefoneDesatualizado: TBooleanField;
    QryMembroCelularDesatualizado: TBooleanField;
    QryMembroEmailDesatualizado: TBooleanField;
    DSQryMembro: TDataSource;
    QryFamilia: TMyQuery;
    QryFamiliaCodFamilia: TLargeintField;
    QryFamiliaSobrenome: TStringField;
    QryFamiliaArea: TStringField;
    QryFamiliaCep: TStringField;
    QryFamiliaEndereco: TStringField;
    QryFamiliaCompl: TStringField;
    QryFamiliaBairro: TStringField;
    QryFamiliaTelefone: TStringField;
    QryFamiliaEmail: TStringField;
    QryFamiliaCelular: TStringField;
    QryFamiliaFax: TStringField;
    QryFamiliaDataUltVisita: TDateTimeField;
    QryFamiliaVisitante: TStringField;
    QryFamiliaCidade: TStringField;
    QryFamiliaUF: TStringField;
    DSQryFamilia: TDataSource;
    QryTipoContribuicao: TMyQuery;
    QryTipoContribuicaoCodTpContrb: TIntegerField;
    QryTipoContribuicaoDescTPContrb: TStringField;
    QryTipoContribuicaoColetiva: TBooleanField;
    DSQryTipoContribuicao: TDataSource;
    ADOQryVisitante: TADOQuery;
    DSVisitante: TDataSource;
    DSQryVisitante: TDataSource;
    QryVisitante: TMyQuery;
    QryVisitanteCodVisitante: TIntegerField;
    QryVisitanteNomeVisitante: TStringField;
    QryVisitanteRua: TStringField;
    QryVisitantenumero: TIntegerField;
    QryVisitanteCompl: TStringField;
    QryVisitanteBairro: TStringField;
    QryVisitanteCepMunicipio: TStringField;
    QryVisitanteSexo: TStringField;
    QryVisitanteDataNasc: TDateField;
    QryVisitanteDDD: TStringField;
    QryVisitanteTelefone: TStringField;
    QryVisitanteDDDCel: TStringField;
    QryVisitanteCelular: TStringField;
    QryVisitanteEmail: TStringField;
    QryVisitanteMotivo: TMemoField;
    QryVisitanteDataVisita: TDateField;
    ADOQryVisitanteCOD_VISITANTE: TIntegerField;
    ADOQryVisitanteNOME_VISITANTE: TWideStringField;
    ADOQryVisitanteRUA: TWideStringField;
    ADOQryVisitanteNUMERO: TIntegerField;
    ADOQryVisitanteAPTO: TIntegerField;
    ADOQryVisitanteBAIRRO: TWideStringField;
    ADOQryVisitanteCEP_MUNICIPIO: TWideStringField;
    ADOQryVisitanteSEXO: TWideStringField;
    ADOQryVisitanteDATA_NASC: TDateTimeField;
    ADOQryVisitanteCOD_AREAF: TWideStringField;
    ADOQryVisitanteTELEFONE: TWideStringField;
    ADOQryVisitanteCOD_AREAS: TWideStringField;
    ADOQryVisitanteCELULAR: TWideStringField;
    ADOQryVisitanteEMAIL: TWideStringField;
    ADOQryVisitanteMOTIVO: TWideStringField;
    ADOQryVisitanteDATA_VISITA: TDateTimeField;
    ADOQryContribuicao: TADOQuery;
    DSContribuicao: TDataSource;
    DSQryContribuicao: TDataSource;
    QryContribuicao: TMyQuery;
    ADOQryContribuicaoDATA: TDateTimeField;
    ADOQryContribuicaoHORA: TDateTimeField;
    ADOQryContribuicaoCOD_MEMBRO: TIntegerField;
    ADOQryContribuicaoCOD_FAMILIA: TIntegerField;
    ADOQryContribuicaoCOD_TP_CONTRB: TIntegerField;
    ADOQryContribuicaoVALOR: TBCDField;
    QryContribuicaoCodMembro: TLargeintField;
    QryContribuicaoCodFamilia: TLargeintField;
    QryContribuicaoCodTpContrb: TLargeintField;
    QryContribuicaoValor: TFloatField;
    QryContribuicaoCodContribuicao: TLargeintField;
    QryContribuicaoHora: TTimeField;
    ADOQryControle: TADOQuery;
    DSControle: TDataSource;
    DSQryControle: TDataSource;
    QryControle: TMyQuery;
    ADOQryControleCODIGO: TBCDField;
    ADOQryControleVALOR: TWideStringField;
    ADOQryControleDESCRICAO: TWideStringField;
    QryControleCodigo: TLargeintField;
    QryControleValor: TStringField;
    QryControleDescricao: TStringField;
    ADOQryDataEspecial: TADOQuery;
    DSDataEspecial: TDataSource;
    ADOQryDepartamento: TADOQuery;
    DSDepartamento: TDataSource;
    ADOQryFilho: TADOQuery;
    DSFilho: TDataSource;
    ADOQryMembroDataEspec: TADOQuery;
    DSMembroDataEspec: TDataSource;
    ADOQryMembroDepto: TADOQuery;
    DSMembroDepto: TDataSource;
    ADOQryMensagem: TADOQuery;
    DSMensagem: TDataSource;
    ADOQryDepartamentoCOD_DEPTO: TIntegerField;
    ADOQryDepartamentoDESC_DEPTO: TWideStringField;
    ADOQryMembroDataEspecCOD_ACONTEC: TIntegerField;
    ADOQryMembroDataEspecCOD_MEMBRO: TIntegerField;
    ADOQryMembroDataEspecCOD_FAMILIA: TIntegerField;
    ADOQryMembroDataEspecDATA: TDateTimeField;
    ADOQryMembroDataEspecUF_DT_ESP: TWideStringField;
    ADOQryMembroDataEspecMUNICIPIO_DT_ESP: TWideStringField;
    ADOQryMembroDataEspecIGREJA: TWideStringField;
    ADOQryMembroDataEspecOFICIANTE: TWideStringField;
    ADOQryMembroDataEspecTESTEMUNHA1: TWideStringField;
    ADOQryMembroDataEspecTESTEMUNHA2: TWideStringField;
    ADOQryMembroDataEspecTESTEMUNHA3: TWideStringField;
    ADOQryMembroDataEspecTESTEMUNHA4: TWideStringField;
    ADOQryMembroDataEspecTESTEMUNHA5: TWideStringField;
    ADOQryMembroDataEspecTESTEMUNHA6: TWideStringField;
    ADOQryMembroDataEspecTESTEMUNHA7: TWideStringField;
    ADOQryMembroDataEspecTESTEMUNHA8: TWideStringField;
    ADOQryMembroDataEspecTESTEMUNHA9: TWideStringField;
    ADOQryMembroDeptoCOD_DEPTO: TIntegerField;
    ADOQryMembroDeptoCOD_MEMBRO: TIntegerField;
    ADOQryMembroDeptoCOD_FAMILIA: TIntegerField;
    ADOQryMensagemCOD_MENSAGEM: TIntegerField;
    ADOQryMensagemDESC_MENSAGEM: TWideStringField;
    ADOQryMensagemCOMPL: TWideStringField;
    ADOQryProfissao: TADOQuery;
    DSProfissao: TDataSource;
    ADOQryVisita: TADOQuery;
    DSVisita: TDataSource;
    ADOQryVotacao: TADOQuery;
    DSVotacao: TDataSource;
    ADOQryProfissaoCOD_PROFISSAO: TIntegerField;
    ADOQryProfissaoDESC_PROFISSAO: TWideStringField;
    ADOQryVisitaCOD_FAMILIA: TIntegerField;
    ADOQryVisitaDATA_VISITA: TDateTimeField;
    ADOQryVisitaVISITANTE: TWideStringField;
    ADOQryVisitaASSUNTO: TWideMemoField;
    ADOQryVisitaREFERENCIA: TWideStringField;
    ADOQryVotacaoCOD_MEMBRO: TIntegerField;
    ADOQryVotacaoCOD_FAMILIA: TIntegerField;
    ADOQryVotacaoDATA: TDateTimeField;
    DSQryDataEspecial: TDataSource;
    QryDataEspecial: TMyQuery;
    DSQryDepartamento: TDataSource;
    QryDepartamento: TMyQuery;
    DSQryFilho: TDataSource;
    QryFilho: TMyQuery;
    DSqryMembroDataEspec: TDataSource;
    QryMembroDataEspec: TMyQuery;
    DSQryMembroDepto: TDataSource;
    QryMembroDepto: TMyQuery;
    DSQryMensagem: TDataSource;
    QryMensagem: TMyQuery;
    DSQryProfissao: TDataSource;
    QryProfissao: TMyQuery;
    DSQryVisita: TDataSource;
    QryVisita: TMyQuery;
    DSQryVotacao: TDataSource;
    QryVotacao: TMyQuery;
    QryDepartamentoCodDepto: TLargeintField;
    QryDepartamentoDescDepto: TStringField;
    QryMembroDataEspecCodAcontec: TLargeintField;
    QryMembroDataEspecCodMembro: TLargeintField;
    QryMembroDataEspecCodFamilia: TLargeintField;
    QryMembroDataEspecData: TDateField;
    QryMembroDataEspecUFDTEsp: TStringField;
    QryMembroDataEspecMunicipioDTEsp: TStringField;
    QryMembroDataEspecIgreja: TStringField;
    QryMembroDataEspecOficiante: TStringField;
    QryMembroDataEspecTestemunha1: TStringField;
    QryMembroDataEspecTestemunha2: TStringField;
    QryMembroDataEspecTestemunha3: TStringField;
    QryMembroDataEspecTestemunha4: TStringField;
    QryMembroDataEspecTestemunha5: TStringField;
    QryMembroDataEspecTestemunha6: TStringField;
    QryMembroDataEspecTestemunha7: TStringField;
    QryMembroDataEspecTestemunha8: TStringField;
    QryMembroDataEspecTestemunha9: TStringField;
    QryMembroDeptoCodDepto: TLargeintField;
    QryMembroDeptoCodMembro: TLargeintField;
    QryMembroDeptoCodFamilia: TLargeintField;
    QryMensagemCodMensagem: TLargeintField;
    QryMensagemDescMensagem: TMemoField;
    QryMensagemCompl: TStringField;
    QryProfissaoCodProfissao: TLargeintField;
    QryProfissaoNomeProfissao: TStringField;
    QryVisitaCodVisita: TIntegerField;
    QryVisitaCodFamilia: TIntegerField;
    QryVisitaDataVisita: TDateField;
    QryVisitaVisitante: TStringField;
    QryVisitaAssunto: TStringField;
    QryVisitaReferencia: TStringField;
    QryVotacaoCodMembro: TIntegerField;
    QryVotacaoCodFamilia: TIntegerField;
    QryVotacaoData: TDateTimeField;
    ADOQryDataEspecialCOD_DATA_ESP: TIntegerField;
    ADOQryDataEspecialDESC_DATA_ESP: TWideStringField;
    QryDataEspecialCodDataEsp: TLargeintField;
    QryDataEspecialDescDataEsp: TStringField;
    QryMembroCodMembroAntigo: TLargeintField;
    ADOQryFilhoCOD_FILHO: TIntegerField;
    ADOQryFilhoCOD_MEMBRO: TIntegerField;
    ADOQryFilhoCOD_FAMILIA: TIntegerField;
    ADOQryFilhoNOME_FILHO: TWideStringField;
    ADOQryFilhoDATA_NASC: TDateTimeField;
    ADOQryFilhoIND_COMUNIDADE: TBooleanField;
    QryContribuicaoDataContribuicao: TDateField;
    QryContribuicaoCodMembroAntigo: TLargeintField;
    QryContribuicaoEnvelope: TLargeintField;
    DSQryMunicipio: TDataSource;
    DSQrySanta_Ceia_Antigo: TDataSource;
    QryMunicipio: TMyQuery;
    QrySanta_Ceia_Antigo: TMyQuery;
    ADOQryMunicipios: TADOQuery;
    ADOQrySanta_Ceia: TADOQuery;
    DSMunicipio: TDataSource;
    ADOQryMunicipiosCEP_MUNICIPIO: TWideStringField;
    ADOQryMunicipiosDESC_MUNICIPIO: TWideStringField;
    ADOQryMunicipiosUF: TWideStringField;
    DSSanta_Ceia: TDataSource;
    ADOQrySanta_CeiaCOD_MEMBRO: TIntegerField;
    ADOQrySanta_CeiaCOD_FAMILIA: TIntegerField;
    ADOQrySanta_CeiaANO: TIntegerField;
    ADOQrySanta_CeiaJAN: TIntegerField;
    ADOQrySanta_CeiaFEV: TIntegerField;
    ADOQrySanta_CeiaMAR: TIntegerField;
    ADOQrySanta_CeiaABR: TIntegerField;
    ADOQrySanta_CeiaMAI: TIntegerField;
    ADOQrySanta_CeiaJUN: TIntegerField;
    ADOQrySanta_CeiaJUL: TIntegerField;
    ADOQrySanta_CeiaAGO: TIntegerField;
    ADOQrySanta_CeiaSET: TIntegerField;
    ADOQrySanta_CeiaOUT: TIntegerField;
    ADOQrySanta_CeiaNOV: TIntegerField;
    ADOQrySanta_CeiaDEZ: TIntegerField;
    CmdAjustaMembroDataEspec: TMyCommand;
    CMDAjustaMembroFilhos: TMyCommand;
    CMDAjustaContribuicoes: TMyCommand;
    QryAjustaMembro: TMyQuery;
    DSQryAjustaMembro: TDataSource;
    QryAjustaFamilia: TMyQuery;
    DSQryAjustaFamilia: TDataSource;
    QryAjustaMembroCodMembro: TLargeintField;
    QryAjustaMembroCodFamilia: TLargeintField;
    QryAjustaMembroendereco: TStringField;
    QryAjustaMembroCompl: TStringField;
    QryAjustaMembroBairro: TStringField;
    QryAjustaMembroCidade: TStringField;
    QryAjustaMembroUF: TStringField;
    QryAjustaMembroCEP: TStringField;
    QryAjustaMembroTelefone: TStringField;
    QryAjustaMembroEmail: TStringField;
    QryAjustaMembrocelular: TStringField;
    QryAjustaFamiliaCodFamilia: TLargeintField;
    QryAjustaFamiliaEndereco: TStringField;
    QryAjustaFamiliaCompl: TStringField;
    QryAjustaFamiliaBairro: TStringField;
    QryAjustaFamiliaCidade: TStringField;
    QryAjustaFamiliaUF: TStringField;
    QryAjustaFamiliaCep: TStringField;
    QryAjustaFamiliaTelefone: TStringField;
    QryAjustaFamiliaEmail: TStringField;
    QryAjustaFamiliaCelular: TStringField;
    CmdAjustaCidade: TMyCommand;
    QryMunicipioCEP_Municipio: TStringField;
    QryMunicipioDesc_Municipio: TStringField;
    QryMunicipioUF: TStringField;
    QryFilhoCodFilho: TLargeintField;
    QryFilhoCodMembroAntigo: TLargeintField;
    QryFilhoCodFamilia: TLargeintField;
    QryFilhoNomeFilho: TStringField;
    QryFilhoDataNasc: TDateField;
    QryFilhoIndComunidade: TLargeintField;
    QryFilhoCodMembro: TBooleanField;
    QrySanta_Ceia_AntigoCodMembro: TLargeintField;
    QrySanta_Ceia_AntigoCodMembroAntigo: TLargeintField;
    QrySanta_Ceia_AntigoCodFamilia: TLargeintField;
    QrySanta_Ceia_Antigoano: TLargeintField;
    QrySanta_Ceia_Antigojaneiro: TLargeintField;
    QrySanta_Ceia_Antigofevereiro: TLargeintField;
    QrySanta_Ceia_Antigomarco: TLargeintField;
    QrySanta_Ceia_Antigoabril: TLargeintField;
    QrySanta_Ceia_Antigomaio: TLargeintField;
    QrySanta_Ceia_Antigojunho: TLargeintField;
    QrySanta_Ceia_Antigojulho: TLargeintField;
    QrySanta_Ceia_Antigoagosto: TLargeintField;
    QrySanta_Ceia_Antigosetembro: TLargeintField;
    QrySanta_Ceia_Antigooutubro: TLargeintField;
    QrySanta_Ceia_Antigonovembro: TLargeintField;
    QrySanta_Ceia_Antigodezembro: TLargeintField;
    QrySanta_Ceia_AntigoCodSantaCeia: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
