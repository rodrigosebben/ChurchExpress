unit UDMPrincipal;

interface

uses
  SysUtils, Classes, Data.DB, MemDS, DBAccess, MyAccess,dialogs,IdIcmpClient;
// Teste do GitHub
type
  TDMPrincipal = class(TDataModule)
    Conn: TMyConnection;
    QryTemp: TMyQuery;
    DSTemp: TDataSource;
    QryMembro: TMyQuery;
    DSMembro: TDataSource;
    QryFamilia: TMyQuery;
    DSFamilia: TDataSource;
    QryLkpProfissao: TMyQuery;
    DSLkpProfissional: TDataSource;
    QryLkpProfissaoCodProfissao: TLargeintField;
    QryLkpProfissaoProfissao: TStringField;
    QryLkpUsuario: TMyQuery;
    DSLkpUsuario: TDataSource;
    QryLkpUsuarioCodUsuario: TLargeintField;
    QryLkpUsuarioNomeUsuario: TStringField;
    QryLkpUsuarioSenha: TStringField;
    QryLkpUsuarioAtivo: TBooleanField;
    QryLkpUsuarioPastor: TBooleanField;
    QryLkpModulo: TMyQuery;
    DSLkModulo: TDataSource;
    QryMembroCodMembro: TLargeintField;
    QryMembroCodFamilia: TLargeintField;
    QryMembroendereco: TStringField;
    QryMembroCompl: TStringField;
    QryMembroBairro: TStringField;
    QryMembroCidade: TStringField;
    QryMembroUF: TStringField;
    QryMembroCEP: TStringField;
    QryMembroTelefone: TStringField;
    QryMembroEmail: TStringField;
    QryMembrocelular: TStringField;
    QryFamiliaCodFamilia: TLargeintField;
    QryFamiliaEndereco: TStringField;
    QryFamiliaCompl: TStringField;
    QryFamiliaBairro: TStringField;
    QryFamiliaCidade: TStringField;
    QryFamiliaUF: TStringField;
    QryFamiliaCep: TStringField;
    QryFamiliaTelefone: TStringField;
    QryFamiliaEmail: TStringField;
    QryFamiliaCelular: TStringField;
    CmdAjustaMembroDataEspec: TMyCommand;
    CMDAjustaMembroFilhos: TMyCommand;
    CMDAjustaContribuicoes: TMyCommand;
    CMDAjustaUF: TMyCommand;
    CMDAjustaCidade: TMyCommand;
    QrySantaCeiaAntigoAjuste: TMyQuery;
    QrySantaCeiaAntigoAjusteCodSantaCeia: TLargeintField;
    QrySantaCeiaAntigoAjusteCodMembro: TLargeintField;
    QrySantaCeiaAntigoAjusteCodMembroAntigo: TLargeintField;
    QrySantaCeiaAntigoAjusteCodFamilia: TLargeintField;
    QrySantaCeiaAntigoAjusteAno: TLargeintField;
    QrySantaCeiaAntigoAjustejaneiro: TLargeintField;
    QrySantaCeiaAntigoAjustefevereiro: TLargeintField;
    QrySantaCeiaAntigoAjustemarco: TLargeintField;
    QrySantaCeiaAntigoAjusteabril: TLargeintField;
    QrySantaCeiaAntigoAjustemaio: TLargeintField;
    QrySantaCeiaAntigoAjustejunho: TLargeintField;
    QrySantaCeiaAntigoAjustejulho: TLargeintField;
    QrySantaCeiaAntigoAjusteagosto: TLargeintField;
    QrySantaCeiaAntigoAjustesetembro: TLargeintField;
    QrySantaCeiaAntigoAjusteoutubro: TLargeintField;
    QrySantaCeiaAntigoAjustenovembro: TLargeintField;
    QrySantaCeiaAntigoAjustedezembro: TLargeintField;
    function pingIp(host: String): Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPrincipal: TDMPrincipal;

implementation

{$R *.dfm}

uses UFrmRelatorioMembros, UFrmLogon;

function TDMPrincipal.pingIp(host: String): Boolean;
var
  IdICMPClient: TIdICMPClient;
begin

  try
    IdICMPClient := TIdICMPClient.Create( nil );
    IdIcmpClient.Host := host;
    IdICMPClient.ReceiveTimeout := 500;
    IdICMPClient.Ping;
  except
    if IdICMPClient.ReplyStatus.BytesReceived > 0 then
      result := True
    Else
      result := False;
  end;
  IdICMPClient.Free;
end;

end.
