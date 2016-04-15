program ChurchExpress;

uses
  Forms,
  UFrmPrincipal in 'UFrmPrincipal.pas' {FormPrincipal},
  UFrmLogon in 'UFrmLogon.pas' {FormLogon},
  UDMPrincipal in 'UDMPrincipal.pas' {DMPrincipal: TDataModule},
  UFrmConsultaProfissao in 'UFrmConsultaProfissao.pas' {FormConsultaProfissao},
  UFrmCadastroProfissao in 'UFrmCadastroProfissao.pas' {FormCadastroProfissao},
  UfrmConsultaUsuario in 'UfrmConsultaUsuario.pas' {FormConsultaUsuario},
  UFrmCadastroUsuario in 'UFrmCadastroUsuario.pas' {FormCadastroUsuario},
  UFuncoes in 'UFuncoes.pas',
  UFrmConectaBanco in 'UFrmConectaBanco.pas' {FormConectaBanco},
  UFrmConsultaUsuarioAcesso in 'UFrmConsultaUsuarioAcesso.pas' {FormConsultaUsuarioAcesso},
  UFrmCadastroUsuarioAcesso in 'UFrmCadastroUsuarioAcesso.pas' {FormCadastroUsuarioAcesso},
  UFrmConsultaGrupos in 'UFrmConsultaGrupos.pas' {FormConsultaGrupos},
  UFrmCadastroGrupos in 'UFrmCadastroGrupos.pas' {FormCadastroGrupos},
  UFrmConsultaFamilia in 'UFrmConsultaFamilia.pas' {FormConsultaFamilia},
  UFrmCadastroFamilia in 'UFrmCadastroFamilia.pas' {FormCadastroFamilia},
  UFrmConsultaMembro in 'UFrmConsultaMembro.pas' {FormConsultaMembro},
  UFrmCadastroMembro in 'UFrmCadastroMembro.pas' {FormCadastroMembro},
  UFrmSantaCeia in 'UFrmSantaCeia.pas' {FormSantaCeia},
  UFrmCadastroVisitante in 'UFrmCadastroVisitante.pas' {FormCadastroVisitante},
  UFrmConsultaVisitante in 'UFrmConsultaVisitante.pas' {FormConsultaVisitante},
  FrameCapture_ in 'FrameCapture\FrameCapture_.pas' {FormCapturaWebcam},
  UFrmCadastroMensagem in 'UFrmCadastroMensagem.pas' {FormCadastroMensagem},
  UFrmConsultaMensagem in 'UFrmConsultaMensagem.pas' {FormConsultaMensagem},
  UFrmCadastroDataEspecial in 'UFrmCadastroDataEspecial.pas' {FormCadastroDataEspecial},
  UFrmConsultaDataEspecial in 'UFrmConsultaDataEspecial.pas' {FormConsultaDataEspecial},
  UFrmCadastroDepartamento in 'UFrmCadastroDepartamento.pas' {FormCadastroDepartamento},
  UFrmConsultaDepartamento in 'UFrmConsultaDepartamento.pas' {FormConsultaDepartamento},
  UFrmCadastroTipoContribuicao in 'UFrmCadastroTipoContribuicao.pas' {FormCadastroTipoContribuicao},
  UFrmConsultaTipoContribuicao in 'UFrmConsultaTipoContribuicao.pas' {FormConsultaTipoContribuicao},
  UFrmCadastroContribuicao in 'UFrmCadastroContribuicao.pas' {FormCadastroContribuicao},
  UFrmConsultaContribuicao in 'UFrmConsultaContribuicao.pas' {FormConsultaContribuicao},
  UFrmCadastroVisita in 'UFrmCadastroVisita.pas' {FormCadastroVisita},
  UFrmConsultaVisita in 'UFrmConsultaVisita.pas' {FormConsultaVisita},
  UFrmRelatorioMembros in 'UFrmRelatorioMembros.pas' {FormRelatorioMembros},
  UFrmMalaDireta in 'UFrmMalaDireta.pas' {FormMalaDireta},
  UFrmConsultaTaxasSepultamento in 'UFrmConsultaTaxasSepultamento.pas' {FormConsultaTaxasSepultamento},
  UFrmCadastroTaxasSepultamento in 'UFrmCadastroTaxasSepultamento.pas' {FormCadastroTaxasSepultamento},
  UFrmCadastroResponsavelSepultura in 'UFrmCadastroResponsavelSepultura.pas' {FormCadastroResponsavelSepultura},
  UFrmConsultaResponsavelSepultura in 'UFrmConsultaResponsavelSepultura.pas' {FormConsultaResponsavelSepultura},
  UFrmCadastroTipoSepultura in 'UFrmCadastroTipoSepultura.pas' {FormCadastroTipoSepultura},
  UFrmConsultaTipoSepultura in 'UFrmConsultaTipoSepultura.pas' {FormConsultaTipoSepultura},
  UFrmCadastroSepultura in 'UFrmCadastroSepultura.pas' {FormCadastroSepultura},
  UFrmConsultaSepultura in 'UFrmConsultaSepultura.pas' {FormConsultaSepultura},
  UFrmCadastroFalecido in 'UFrmCadastroFalecido.pas' {FormCadastroFalecido},
  UFrmConsultaFalecido in 'UFrmConsultaFalecido.pas' {FormConsultaFalecidos},
  UFrmCadastroSepulturaPagamento in 'UFrmCadastroSepulturaPagamento.pas' {FormCadastroSepulturaPagamento},
  UFrmCadastroMembroDataEspec in 'UFrmCadastroMembroDataEspec.pas' {FormCadastroMembroDataEspec},
  UFrmCadastroMembroFilho in 'UFrmCadastroMembroFilho.pas' {FormCadastroMembroFilho},
  UFrmRelAniversariantes in 'UFrmRelAniversariantes.pas' {FormRelAniversariantes},
  UFrmRelContribuicoes in 'UFrmRelContribuicoes.pas' {FormRelContribuicoes},
  UFrmConsultaSantaCeia in 'UFrmConsultaSantaCeia.pas' {FormConsultaSantaCeia},
  UFrmCadastroSantaCeia in 'UFrmCadastroSantaCeia.pas' {FormCadastroSantaCeia},
  UFrmRelPlanilhaSantaCeia in 'UFrmRelPlanilhaSantaCeia.pas' {FormRelPlanilhaSantaCeia},
  UFrmRelRelacaoMembrosVotantes in 'UFrmRelRelacaoMembrosVotantes.pas' {FormRelRelacaoMembrosVotantes},
  UFrmRelEtiquetas in 'UFrmRelEtiquetas.pas' {FormRelEtiquetas},
  UFrmConsultaAssembleia in 'UFrmConsultaAssembleia.pas' {FormConsultaAssembleia},
  UFrmCadastroAssembleia in 'UFrmCadastroAssembleia.pas' {FormCadastroAssembleia},
  UDMCadastroAssembleia in 'UDMCadastroAssembleia.pas' {DMCadastroAssembleia: TDataModule},
  UFrmIndicaMembroVotante in 'UFrmIndicaMembroVotante.pas' {FormIndicaMembroVotante},
  UFrmSelecaoEtiqueta in 'UFrmSelecaoEtiqueta.pas' {FormSelecaoEtiqueta},
  UFrmBuscaFamilia in 'UFrmBuscaFamilia.pas' {FormBuscaFamilia},
  UFrmBuscaMembro in 'UFrmBuscaMembro.pas' {FormBuscaMembro},
  UFrmRelSantaCeia in 'UFrmRelSantaCeia.pas' {FormRelSantaCeia},
  UFrmParametros in 'UFrmParametros.pas' {FormParametros},
  UFrmConsultaSantaCeiaVisitante in 'UFrmConsultaSantaCeiaVisitante.pas' {FormConsultaSantaCeiaVisitante},
  UFrmCadastroVisitanteSantaCeia in 'UFrmCadastroVisitanteSantaCeia.pas' {FormCadastroVisitanteSantaCeia},
  UFrmRelPastoral in 'UFrmRelPastoral.pas' {FormRelPastoral},
  UDMRelPastoral in 'UDMRelPastoral.pas' {DMRelPastoral: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormLogon, FormLogon);
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.CreateForm(TFormCadastroProfissao, FormCadastroProfissao);
  Application.CreateForm(TFormCadastroUsuario, FormCadastroUsuario);
  Application.CreateForm(TFormConectaBanco, FormConectaBanco);
  Application.CreateForm(TFormCadastroUsuarioAcesso, FormCadastroUsuarioAcesso);
  Application.CreateForm(TFormCadastroGrupos, FormCadastroGrupos);
  Application.CreateForm(TFormCadastroFamilia, FormCadastroFamilia);
  Application.CreateForm(TFormCadastroMembro, FormCadastroMembro);
  Application.CreateForm(TFormCadastroVisitante, FormCadastroVisitante);
  Application.CreateForm(TFormCapturaWebcam, FormCapturaWebcam);
  Application.CreateForm(TFormCadastroMensagem, FormCadastroMensagem);
  Application.CreateForm(TFormCadastroDataEspecial, FormCadastroDataEspecial);
  Application.CreateForm(TFormCadastroDepartamento, FormCadastroDepartamento);
  Application.CreateForm(TFormCadastroTipoContribuicao, FormCadastroTipoContribuicao);
  Application.CreateForm(TFormCadastroContribuicao, FormCadastroContribuicao);
  Application.CreateForm(TFormCadastroVisita, FormCadastroVisita);
  Application.CreateForm(TFormCadastroTaxasSepultamento, FormCadastroTaxasSepultamento);
  Application.CreateForm(TFormCadastroResponsavelSepultura, FormCadastroResponsavelSepultura);
  Application.CreateForm(TFormCadastroTipoSepultura, FormCadastroTipoSepultura);
  Application.CreateForm(TFormCadastroSepultura, FormCadastroSepultura);
  Application.CreateForm(TFormCadastroFalecido, FormCadastroFalecido);
  Application.CreateForm(TFormCadastroSepulturaPagamento, FormCadastroSepulturaPagamento);
  Application.CreateForm(TFormRelPastoral, FormRelPastoral);
  Application.CreateForm(TFormCadastroMembroDataEspec, FormCadastroMembroDataEspec);
  Application.CreateForm(TFormCadastroMembroFilho, FormCadastroMembroFilho);
  Application.CreateForm(TFormRelAniversariantes, FormRelAniversariantes);
  Application.CreateForm(TFormRelContribuicoes, FormRelContribuicoes);
  Application.CreateForm(TFormCadastroSantaCeia, FormCadastroSantaCeia);
  Application.CreateForm(TFormRelPlanilhaSantaCeia, FormRelPlanilhaSantaCeia);
  Application.CreateForm(TFormRelRelacaoMembrosVotantes, FormRelRelacaoMembrosVotantes);
  Application.CreateForm(TFormRelEtiquetas, FormRelEtiquetas);
  Application.CreateForm(TFormCadastroAssembleia, FormCadastroAssembleia);
  Application.CreateForm(TDMCadastroAssembleia, DMCadastroAssembleia);
  Application.CreateForm(TFormSelecaoEtiqueta, FormSelecaoEtiqueta);
  Application.CreateForm(TFormBuscaFamilia, FormBuscaFamilia);
  Application.CreateForm(TFormBuscaMembro, FormBuscaMembro);
  Application.CreateForm(TFormRelSantaCeia, FormRelSantaCeia);
  Application.CreateForm(TFormCadastroVisitanteSantaCeia, FormCadastroVisitanteSantaCeia);
  Application.CreateForm(TDMRelPastoral, DMRelPastoral);
  Application.Run;
end.
