unit UFrmSelecaoEtiqueta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids;

type
  TFormSelecaoEtiqueta = class(TForm)
    DBGrdMembros: TDBGrid;
    CDSSelecao: TClientDataSet;
    CDSSelecaoCodMembro: TIntegerField;
    CDSSelecaoSelecao: TBooleanField;
    CDSSelecaoNomeMembro: TStringField;
    DSSelecao: TDataSource;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    EdtBusca: TEdit;
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtBuscaChange(Sender: TObject);
    procedure DBGrdMembrosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrdMembrosCellClick(Column: TColumn);
    procedure EdtBuscaClick(Sender: TObject);
  private
    { Private declarations }
  public
    ConsultaPadrao: String;
    { Public declarations }
  end;

var
  FormSelecaoEtiqueta: TFormSelecaoEtiqueta;

implementation

{$R *.dfm}

uses UFrmRelEtiquetas, UDMPrincipal;

procedure TFormSelecaoEtiqueta.BitBtn1Click(Sender: TObject);
begin

  CDSSelecao.First;
  while not CDSSelecao.Eof do
  Begin
    CDSSelecao.Edit;
    if CDSSelecaoSelecao.Value = True then
      CDSSelecaoSelecao.Value := False
    Else
      CDSSelecaoSelecao.Value := True;
    CDSSelecao.Post;

    CDSSelecao.Next;
  End;
  CDSSelecao.First;

end;

procedure TFormSelecaoEtiqueta.BitBtn2Click(Sender: TObject);
begin

  CDSSelecao.First;
  while not CDSSelecao.Eof do
  Begin
    CDSSelecao.Edit;
    CDSSelecaoSelecao.Value := False;
    CDSSelecao.Post;

    CDSSelecao.Next;
  End;
  CDSSelecao.First;

end;

procedure TFormSelecaoEtiqueta.BitBtn3Click(Sender: TObject);
begin

  CDSSelecao.First;
  while not CDSSelecao.Eof do
  Begin
    CDSSelecao.Edit;
    CDSSelecaoSelecao.Value := True;
    CDSSelecao.Post;

    CDSSelecao.Next;
  End;
  CDSSelecao.First;

end;

procedure TFormSelecaoEtiqueta.BtnCancelarClick(Sender: TObject);
begin

  Close;

end;

procedure TFormSelecaoEtiqueta.BtnSalvarClick(Sender: TObject);
Var
  i:integer;
  Selecionados:String;
begin

  // PERCORRE TODO O GRID A PROCURA DE ITEMS MARCADOS
  Selecionados := '';
  CDSSelecao.First;
  while not CDSSelecao.Eof do
  Begin
    if CDSSelecaoSelecao.Value = True then
    Begin
      if Selecionados = '' then
        Selecionados := CDSSelecaoCodMembro.AsString
      Else
        Selecionados := Selecionados + ',' + CDSSelecaoCodMembro.AsString
    End;
    CDSSelecao.Next;
  End;
  CDSSelecao.First;

  with FormRelEtiquetas do
  Begin
    case CbxTipoEtiqueta.ItemIndex of
      0:Begin
          if Selecionados='' then
          Begin
            QryRelExternas.Close;
            QryRelExternas.SQL.Clear;
            QryRelExternas.SQL.Text := ConsultaPadrao;
            QryRelExternas.SQL.Add(' Order by f.sobrenome, m.CodFamilia, m.codmembroantigo');
            QryRelExternas.Open;
          End
          Else
          Begin
            QryRelExternas.Close;
            QryRelExternas.SQL.Clear;
            QryRelExternas.SQL.Text := ConsultaPadrao;
            QryRelExternas.SQL.Add(' And m.CodMembro in('+ Selecionados +')');
            QryRelExternas.SQL.Add(' Order by f.sobrenome, m.CodFamilia, m.codmembroantigo');
            QryRelExternas.Open;
          End;

          frxRPTEtiquetaExterna.ShowReport;
        End;
      1:Begin

          if Selecionados='' then
          Begin
            QryRelExternas.Close;
            QryRelExternas.SQL.Clear;
            QryRelExternas.SQL.Text := ConsultaPadrao;
            QryRelExternas.SQL.Add(' Order by f.sobrenome, m.CodFamilia, m.codmembroantigo');
            QryRelExternas.Open;
          End
          Else
          Begin
            QryRelExternas.Close;
            QryRelExternas.SQL.Clear;
            QryRelExternas.SQL.Text := ConsultaPadrao;
            QryRelExternas.SQL.Add(' And m.CodMembro in('+ Selecionados +')');
            QryRelExternas.SQL.Add(' Order by f.sobrenome, m.CodFamilia, m.codmembroantigo');
            QryRelExternas.Open;
          End;

          CMDDeletaEtiquetasTEMP.Execute;
          QryRelInternas.Close;
          QryRelInternas.Open;

          // Apartir da consulta externa lista os membros que deve ser mostrados na lista interna
          while not QryRelExternas.Eof do
          Begin
            // com base na competencia, inclui os membros repetidas vezes, mantendo a ordem da consulta externa
            for I := MesInicioCompet to MesfimCompet do
            Begin
              QryRelInternas.Append;
              QryRelInternasCodMembro.Value := QryRelExternascodMembro.Value;
              QryRelInternasCodMembroAntigo.Value := QryRelExternascodmembroantigo.Value;
              QryRelInternasCodFamilia.Value := QryRelExternascodfamilia.Value;
              QryRelInternasNomeMembro.Value := QryRelExternasNomeMembro.Value;
              QryRelInternasDataNasc.Value := QryRelExternasDataNasc.Value;
              QryRelInternasAnoMensagem.Value := StrToInt(EdtAnoInicial.Text);
              QryRelInternasMesMensagem.Value := RetornaMes(i);
              QryRelInternasMes.Value := i;
              QryRelInternasEnvelope.Value := QryRelExternasEnvelope.Value;

              QryTemp.Close;
              QryTemp.SQL.Clear;
              QryTemp.SQL.Add('SELECT DescMensagem FROM mensagem WHERE Mes = ' + QuotedStr(RetornaMes(i)) + ' AND Ano = ' + EdtAnoInicial.Text);
              QryTemp.Open;

              QryRelInternasMensagem.Value := QryTemp.FieldByName('DescMensagem').Text;
              QryRelInternas.Post;
            End;
            QryRelExternas.Next;
          End;

          QryRelInternas.Close;
          QryRelInternas.Open;
          frxRptEtiquetaInterna.ShowReport();
        End;
    end;
  End;

end;

procedure TFormSelecaoEtiqueta.DBGrdMembrosCellClick(Column: TColumn);
begin

  //é a unica coluna que deve ser marcada e desmarcada (Se tiver mais coluna tem que mostrar aqui)
  if Column.FieldName = 'Selecao' then
    begin
      CDSSelecao.Edit;
      if CDSSelecao.FindField('Selecao').AsString = 'True' then
        CDSSelecao.FindField('Selecao').AsString := 'False'
      else
        CDSSelecao.FindField('Selecao').AsString := 'True';
      CDSSelecao.Post;
      DBGrdMembros.Refresh;
  end;
end;

procedure TFormSelecaoEtiqueta.DBGrdMembrosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin

  {Desenha um checkbox no dbgrid}
  if Column.FieldName = 'Selecao' then
  begin
    DBGrdMembros.Canvas.FillRect(Rect);
    Check := 0;
    if CDSSelecao.FindField('Selecao').AsString = 'True' then
      Check := DFCS_CHECKED;
    R:=Rect;
    InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
    DrawFrameControl(DBGrdMembros.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;

end;

procedure TFormSelecaoEtiqueta.EdtBuscaChange(Sender: TObject);
begin

  CDSSelecao.Locate('NomeMembro',EdtBusca.Text,[lopartialkey,loCaseInsensitive]);

end;

procedure TFormSelecaoEtiqueta.EdtBuscaClick(Sender: TObject);
begin

  EdtBusca.Clear;

end;

procedure TFormSelecaoEtiqueta.FormClose(Sender: TObject; var Action: TCloseAction);
begin

//  FormSelecaoEtiqueta.Release;

end;

procedure TFormSelecaoEtiqueta.FormShow(Sender: TObject);
begin

  CDSSelecao.Close;
  CDSSelecao.Open;
  CDSSelecao.EmptyDataSet;

  with FormRelEtiquetas do
  Begin
    // Salva a Consulta padrão que foi previamente selecionada.
    ConsultaPadrao := QryRelExternas.SQL.Text;

    while not QryRelExternas.Eof do
    Begin
      CDSSelecao.Insert;
      CDSSelecaoCodMembro.Value := QryRelExternascodMembro.Value;
      CDSSelecaoNomeMembro.Value := QryRelExternasNomeMembro.Value;
      CDSSelecao.Post;

      QryRelExternas.Next;
    End;

    CDSSelecao.IndexFieldNames := 'NomeMembro';
    //CDSSelecao.Refresh;
  End;

end;

end.
