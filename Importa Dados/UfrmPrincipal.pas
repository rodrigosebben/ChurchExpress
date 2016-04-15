unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Bde.DBTables, Data.DB, MemDS, DBAccess,
  MyAccess, Vcl.ToolWin, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.Menus;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    CbxTabelaMySQL: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    CbxTabelaAccess: TComboBox;
    Panel8: TPanel;
    Panel9: TPanel;
    BitBtn1: TBitBtn;
    LstBxMySql: TListBox;
    LstBxAccess: TListBox;
    ToolBar1: TToolBar;
    LstBxCruzamento: TListBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Sair: TBitBtn;
    DBGrid1: TDBGrid;
    ToolButton1: TToolButton;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    PopupMenu1: TPopupMenu;
    CarregarReferencias1: TMenuItem;
    SalvarReferencias1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    BitBtn6: TBitBtn;
    Button1: TButton;
    PopupMenu2: TPopupMenu;
    AjustaMembroDataEspecial1: TMenuItem;
    AjustaFilhosdoMembro1: TMenuItem;
    AjustaContribuies1: TMenuItem;
    AjustaCidade1: TMenuItem;
    AjustaSantaCeia1: TMenuItem;
    AjustaEndereosdemembros1: TMenuItem;
    procedure CbxTabelaMySQLSelect(Sender: TObject);
    procedure CbxTabelaAccessSelect(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure CarregarReferencias1Click(Sender: TObject);
    procedure SalvarReferencias1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AjustaMembroDataEspecial1Click(Sender: TObject);
    procedure AjustaFilhosdoMembro1Click(Sender: TObject);
    procedure AjustaContribuies1Click(Sender: TObject);
    procedure AjustaCidade1Click(Sender: TObject);
    procedure AjustaEndereosdemembros1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UDM, URodaQuery, UFrmConexao;

procedure TForm1.AjustaCidade1Click(Sender: TObject);
begin

  DM.CmdAjustaCidade.Execute;
  ShowMessage('Rotina Finalizada!');

end;

procedure TForm1.AjustaContribuies1Click(Sender: TObject);
begin

  DM.CMDAjustaContribuicoes.Execute;
  ShowMessage('Rotina Finalizada!');

end;

procedure TForm1.AjustaEndereosdemembros1Click(Sender: TObject);
begin

  with DM do
  Begin
    QryAjustaMembro.Open;

    while not QryAjustaMembro.Eof do
    Begin
      QryAjustaFamilia.Close;
      QryAjustaFamilia.ParamByName('pCodFamilia').AsInteger := QryAjustaMembro.FieldByName('CodFamilia').AsInteger;
      QryAjustaFamilia.Open;

      QryAjustaMembro.Edit;
      QryAjustaMembroendereco.Value := QryAjustaFamiliaEndereco.Value;
      QryAjustaMembroCompl.Value := QryAjustaFamiliaCompl.Value;
      QryAjustaMembroBairro.Value := QryAjustaFamiliaBairro.Value;
      QryAjustaMembroCidade.Value := QryAjustaFamiliaCidade.Value;
      QryAjustaMembroUF.Value := QryAjustaFamiliaUF.Value;
      QryAjustaMembroCEP.Value := QryAjustaFamiliaCep.Value;
      QryAjustaMembroTelefone.Value := QryAjustaFamiliaTelefone.Value;
      QryAjustaMembro.Post;

      QryAjustaMembro.Next;
    End;
    QryAjustaMembro.Close;
  End;
    ShowMessage('Rotina Finalizada!');

end;

procedure TForm1.AjustaFilhosdoMembro1Click(Sender: TObject);
begin

  DM.CMDAjustaMembroFilhos.Execute;
  ShowMessage('Rotina Finalizada!');

end;

procedure TForm1.AjustaMembroDataEspecial1Click(Sender: TObject);
begin

  DM.CmdAjustaMembroDataEspec.Execute;
  ShowMessage('Rotina Finalizada!');

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
Var
  MultiSelecao: String;
  I,GuardaIndice: Integer;
begin

  MultiSelecao := '';
  GuardaIndice := 0;
  if LstBxAccess.SelCount > 1 then
  Begin
    for I := 0 to LstBxAccess.Items.Count-1 do
    Begin
      if LstBxAccess.Selected[i] then
      Begin
        if MultiSelecao='' then
          MultiSelecao := LstBxAccess.Items.Strings[i]
        Else
          MultiSelecao := MultiSelecao + '+' + LstBxAccess.Items.Strings[i];
        GuardaIndice := i;
      End;
    End;
    LstBxCruzamento.Items.Add(LstBxMySql.Items.Strings[LstBxMySql.ItemIndex] + '-' + MultiSelecao);
    LstBxCruzamento.ItemIndex := LstBxCruzamento.items.Count-1;
  End
  Else
  Begin
    LstBxCruzamento.Items.Add(LstBxMySql.Items.Strings[LstBxMySql.ItemIndex] + '-' + LstBxAccess.Items.Strings[LstBxAccess.itemindex]);
    LstBxCruzamento.ItemIndex := LstBxCruzamento.items.Count-1;
  End;
  if GuardaIndice <> 0 then
    LstBxAccess.ItemIndex := GuardaIndice;

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin

  LstBxCruzamento.DeleteSelected;

end;

procedure TForm1.BitBtn3Click(Sender: TObject);
Var
  i: integer;
  Origem,Destino, Multi,Result1,Result2:String;
begin

{ LISTA
0 - Membro
1 - Familia
2 - Tipo de Contribuição
3 - Visitante
4 - Contribuição
5 - Controle
6 - Data Especial
7 - Departamento
8 - Filho
9 - Membro data Especial
10 - Membro Departamento
11 - Mensagem
12 - Profissão
13 - Visita
14 - Votação
15 - Municipio
16 - Santa Ceia
}

  case CbxTabelaMySQL.ItemIndex of
    0:Begin
        DM.ADOQryMembro.Close;
        DM.ADOQryMembro.Open;
        DM.ADOQryMembro.First;
        while not DM.ADOQryMembro.Eof do
        Begin
          DM.QryMembro.Open;
          DM.QryMembro.Append;
          for I := 0 to LstBxCruzamento.Items.Count-1 do
          Begin
            if ((pos(',',LstBxCruzamento.Items.Strings[i]) <> 0) or (pos('+',LstBxCruzamento.Items.Strings[i]) <> 0))then
            Begin
              if pos(',',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos(',',Multi)-1);
                Result2 := Copy(Multi,pos(',',Multi)+1,Length(Multi) - pos(',',Multi));
                DM.QryMembro.FieldByName(Destino).AsString := DM.ADOQryMembro.FieldByName(Result1).AsString + ' ' + DM.ADOQryMembro.FieldByName(Result2).AsString;
              End;
              if pos('+',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos('+',Multi)-1);
                Result2 := Copy(Multi,pos('+',Multi)+1,Length(Multi) - pos('+',Multi));
                DM.QryMembro.FieldByName(Destino).AsString := DM.ADOQryMembro.FieldByName(Result1).AsString + DM.ADOQryMembro.FieldByName(Result2).AsString;
              End;
            End
            Else
            Begin
              Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
              Origem := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
              DM.QryMembro.FieldByName(Destino).Value := DM.ADOQryMembro.FieldByName(Origem).Value;
            End;
          End;
          DM.QryMembro.Post;
          DM.ADOQryMembro.Next;
        End;
      End;
    1:Begin
        DM.ADOQryFamilia.Close;
        DM.ADOQryFamilia.Open;
        DM.ADOQryFamilia.First;
        while not DM.ADOQryFamilia.Eof do
        Begin
          DM.QryFamilia.Open;
          DM.QryFamilia.Append;
          for I := 0 to LstBxCruzamento.Items.Count-1 do
          Begin
            if ((pos(',',LstBxCruzamento.Items.Strings[i]) <> 0) or (pos('+',LstBxCruzamento.Items.Strings[i]) <> 0))then
            Begin
              if pos(',',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos(',',Multi)-1);
                Result2 := Copy(Multi,pos(',',Multi)+1,Length(Multi) - pos(',',Multi));
                DM.QryFamilia.FieldByName(Destino).AsString := DM.ADOQryFamilia.FieldByName(Result1).AsString + ' ' + DM.ADOQryFamilia.FieldByName(Result2).AsString;
              End;
              if pos('+',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos('+',Multi)-1);
                Result2 := Copy(Multi,pos('+',Multi)+1,Length(Multi) - pos('+',Multi));
                DM.QryFamilia.FieldByName(Destino).AsString := DM.ADOQryFamilia.FieldByName(Result1).AsString + DM.ADOQryFamilia.FieldByName(Result2).AsString;
              End;
            End
            Else
            Begin
              Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
              Origem := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
              DM.QryFamilia.FieldByName(Destino).Value := DM.ADOQryFamilia.FieldByName(Origem).Value;
            End;
          End;
          DM.QryFamilia.Post;
          DM.ADOQryFamilia.Next;
        End;
      End;
    2:Begin
        DM.ADOQryTipoContribuicao.Close;
        DM.ADOQryTipoContribuicao.Open;
        DM.ADOQryTipoContribuicao.First;
        while not DM.ADOQryTipoContribuicao.Eof do
        Begin
          DM.QryTipoContribuicao.Open;
          DM.QryTipoContribuicao.Append;
          for I := 0 to LstBxCruzamento.Items.Count-1 do
          Begin
            if ((pos(',',LstBxCruzamento.Items.Strings[i]) <> 0) or (pos('+',LstBxCruzamento.Items.Strings[i]) <> 0))then
            Begin
              if pos(',',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos(',',Multi)-1);
                Result2 := Copy(Multi,pos(',',Multi)+1,Length(Multi) - pos(',',Multi));
                DM.QryTipoContribuicao.FieldByName(Destino).AsString := DM.ADOQryTipoContribuicao.FieldByName(Result1).AsString + ' ' + DM.ADOQryTipoContribuicao.FieldByName(Result2).AsString;
              End;
              if pos('+',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos('+',Multi)-1);
                Result2 := Copy(Multi,pos('+',Multi)+1,Length(Multi) - pos('+',Multi));
                DM.QryTipoContribuicao.FieldByName(Destino).AsString := DM.ADOQryTipoContribuicao.FieldByName(Result1).AsString + DM.ADOQryTipoContribuicao.FieldByName(Result2).AsString;
              End;
            End
            Else
            Begin
              Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
              Origem := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
              DM.QryTipoContribuicao.FieldByName(Destino).Value := DM.ADOQryTipoContribuicao.FieldByName(Origem).Value;
            End;
          End;
          DM.QryTipoContribuicao.Post;
          DM.ADOQryTipoContribuicao.Next;
        End;
      End;
    3:Begin
        DM.ADOQryVisitante.Close;
        DM.ADOQryVisitante.Open;
        DM.ADOQryVisitante.First;
        while not DM.ADOQryVisitante.Eof do
        Begin
          DM.QryVisitante.Open;
          DM.QryVisitante.Append;
          for I := 0 to LstBxCruzamento.Items.Count-1 do
          Begin
            if ((pos(',',LstBxCruzamento.Items.Strings[i]) <> 0) or (pos('+',LstBxCruzamento.Items.Strings[i]) <> 0))then
            Begin
              if pos(',',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos(',',Multi)-1);
                Result2 := Copy(Multi,pos(',',Multi)+1,Length(Multi) - pos(',',Multi));
                DM.QryVisitante.FieldByName(Destino).AsString := DM.ADOQryVisitante.FieldByName(Result1).AsString + ' ' + DM.ADOQryVisitante.FieldByName(Result2).AsString;
              End;
              if pos('+',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos('+',Multi)-1);
                Result2 := Copy(Multi,pos('+',Multi)+1,Length(Multi) - pos('+',Multi));
                DM.QryVisitante.FieldByName(Destino).AsString := DM.ADOQryVisitante.FieldByName(Result1).AsString + DM.ADOQryVisitante.FieldByName(Result2).AsString;
              End;
            End
            Else
            Begin
              Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
              Origem := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
              DM.QryVisitante.FieldByName(Destino).Value := DM.ADOQryVisitante.FieldByName(Origem).Value;
            End;
          End;
          DM.QryVisitante.Post;
          DM.ADOQryVisitante.Next;
        End;
      End;
    4:Begin
        DM.ADOQryContribuicao.Close;
        DM.ADOQryContribuicao.Open;
        DM.ADOQryContribuicao.First;
        while not DM.ADOQryContribuicao.Eof do
        Begin
          DM.QryContribuicao.Open;
          DM.QryContribuicao.Append;
          for I := 0 to LstBxCruzamento.Items.Count-1 do
          Begin
            if ((pos(',',LstBxCruzamento.Items.Strings[i]) <> 0) or (pos('+',LstBxCruzamento.Items.Strings[i]) <> 0))then
            Begin
              if pos(',',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos(',',Multi)-1);
                Result2 := Copy(Multi,pos(',',Multi)+1,Length(Multi) - pos(',',Multi));
                DM.QryContribuicao.FieldByName(Destino).AsString := DM.ADOQryContribuicao.FieldByName(Result1).AsString + ' ' + DM.ADOQryContribuicao.FieldByName(Result2).AsString;
              End;
              if pos('+',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos('+',Multi)-1);
                Result2 := Copy(Multi,pos('+',Multi)+1,Length(Multi) - pos('+',Multi));
                DM.QryContribuicao.FieldByName(Destino).AsString := DM.ADOQryContribuicao.FieldByName(Result1).AsString + DM.ADOQryContribuicao.FieldByName(Result2).AsString;
              End;
            End
            Else
            Begin
              Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
              Origem := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
              DM.QryContribuicao.FieldByName(Destino).Value := DM.ADOQryContribuicao.FieldByName(Origem).Value;
            End;
          End;
          DM.QryContribuicao.Post;
          DM.ADOQryContribuicao.Next;
        End;
      End;
    5:Begin
        DM.ADOQryControle.Close;
        DM.ADOQryControle.Open;
        DM.ADOQryControle.First;
        while not DM.ADOQryControle.Eof do
        Begin
          DM.QryControle.Open;
          DM.QryControle.Append;
          for I := 0 to LstBxCruzamento.Items.Count-1 do
          Begin
            if ((pos(',',LstBxCruzamento.Items.Strings[i]) <> 0) or (pos('+',LstBxCruzamento.Items.Strings[i]) <> 0))then
            Begin
              if pos(',',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos(',',Multi)-1);
                Result2 := Copy(Multi,pos(',',Multi)+1,Length(Multi) - pos(',',Multi));
                DM.QryControle.FieldByName(Destino).AsString := DM.ADOQryControle.FieldByName(Result1).AsString + ' ' + DM.ADOQryControle.FieldByName(Result2).AsString;
              End;
              if pos('+',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos('+',Multi)-1);
                Result2 := Copy(Multi,pos('+',Multi)+1,Length(Multi) - pos('+',Multi));
                DM.QryControle.FieldByName(Destino).AsString := DM.ADOQryControle.FieldByName(Result1).AsString + DM.ADOQryControle.FieldByName(Result2).AsString;
              End;
            End
            Else
            Begin
              Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
              Origem := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
              DM.QryControle.FieldByName(Destino).Value := DM.ADOQryControle.FieldByName(Origem).Value;
            End;
          End;
          DM.QryControle.Post;
          DM.ADOQryControle.Next;
        End;
      End;
    6:Begin
        DM.ADOQryDataEspecial.Close;
        DM.ADOQryDataEspecial.Open;
        DM.ADOQryDataEspecial.First;
        while not DM.ADOQryDataEspecial.Eof do
        Begin
          DM.QryDataEspecial.Open;
          DM.QryDataEspecial.Append;
          for I := 0 to LstBxCruzamento.Items.Count-1 do
          Begin
            if ((pos(',',LstBxCruzamento.Items.Strings[i]) <> 0) or (pos('+',LstBxCruzamento.Items.Strings[i]) <> 0))then
            Begin
              if pos(',',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos(',',Multi)-1);
                Result2 := Copy(Multi,pos(',',Multi)+1,Length(Multi) - pos(',',Multi));
                DM.QryDataEspecial.FieldByName(Destino).AsString := DM.ADOQryDataEspecial.FieldByName(Result1).AsString + ' ' + DM.ADOQryDataEspecial.FieldByName(Result2).AsString;
              End;
              if pos('+',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos('+',Multi)-1);
                Result2 := Copy(Multi,pos('+',Multi)+1,Length(Multi) - pos('+',Multi));
                DM.QryDataEspecial.FieldByName(Destino).AsString := DM.ADOQryDataEspecial.FieldByName(Result1).AsString + DM.ADOQryDataEspecial.FieldByName(Result2).AsString;
              End;
            End
            Else
            Begin
              Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
              Origem := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
              DM.QryDataEspecial.FieldByName(Destino).Value := DM.ADOQryDataEspecial.FieldByName(Origem).Value;
            End;
          End;
          DM.QryDataEspecial.Post;
          DM.ADOQryDataEspecial.Next;
        End;
      End;
    7:Begin
        DM.ADOQryDepartamento.Close;
        DM.ADOQryDepartamento.Open;
        DM.ADOQryDepartamento.First;
        while not DM.ADOQryDepartamento.Eof do
        Begin
          DM.QryDepartamento.Open;
          DM.QryDepartamento.Append;
          for I := 0 to LstBxCruzamento.Items.Count-1 do
          Begin
            if ((pos(',',LstBxCruzamento.Items.Strings[i]) <> 0) or (pos('+',LstBxCruzamento.Items.Strings[i]) <> 0))then
            Begin
              if pos(',',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos(',',Multi)-1);
                Result2 := Copy(Multi,pos(',',Multi)+1,Length(Multi) - pos(',',Multi));
                DM.QryDepartamento.FieldByName(Destino).AsString := DM.ADOQryDepartamento.FieldByName(Result1).AsString + ' ' + DM.ADOQryDepartamento.FieldByName(Result2).AsString;
              End;
              if pos('+',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos('+',Multi)-1);
                Result2 := Copy(Multi,pos('+',Multi)+1,Length(Multi) - pos('+',Multi));
                DM.QryDepartamento.FieldByName(Destino).AsString := DM.ADOQryDepartamento.FieldByName(Result1).AsString + DM.ADOQryDepartamento.FieldByName(Result2).AsString;
              End;
            End
            Else
            Begin
              Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
              Origem := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
              DM.QryDepartamento.FieldByName(Destino).Value := DM.ADOQryDepartamento.FieldByName(Origem).Value;
            End;
          End;
          DM.QryDepartamento.Post;
          DM.ADOQryDepartamento.Next;
        End;
      End;
    8:Begin
        DM.ADOQryFilho.Close;
        DM.ADOQryFilho.Open;
        DM.ADOQryFilho.First;
        while not DM.ADOQryFilho.Eof do
        Begin
          DM.QryFilho.Open;
          DM.QryFilho.Append;
          for I := 0 to LstBxCruzamento.Items.Count-1 do
          Begin
            if ((pos(',',LstBxCruzamento.Items.Strings[i]) <> 0) or (pos('+',LstBxCruzamento.Items.Strings[i]) <> 0))then
            Begin
              if pos(',',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos(',',Multi)-1);
                Result2 := Copy(Multi,pos(',',Multi)+1,Length(Multi) - pos(',',Multi));
                DM.QryFilho.FieldByName(Destino).AsString := DM.ADOQryFilho.FieldByName(Result1).AsString + ' ' + DM.ADOQryFilho.FieldByName(Result2).AsString;
              End;
              if pos('+',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos('+',Multi)-1);
                Result2 := Copy(Multi,pos('+',Multi)+1,Length(Multi) - pos('+',Multi));
                DM.QryFilho.FieldByName(Destino).AsString := DM.ADOQryFilho.FieldByName(Result1).AsString + DM.ADOQryFilho.FieldByName(Result2).AsString;
              End;
            End
            Else
            Begin
              Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
              Origem := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
              DM.QryFilho.FieldByName(Destino).Value := DM.ADOQryFilho.FieldByName(Origem).Value;
            End;
          End;
          DM.QryFilho.Post;
          DM.ADOQryFilho.Next;
        End;
      End;
    9:Begin
        DM.ADOQryMembroDataEspec.Close;
        DM.ADOQryMembroDataEspec.Open;
        DM.ADOQryMembroDataEspec.First;
        while not DM.ADOQryMembroDataEspec.Eof do
        Begin
          DM.QryMembroDataEspec.Open;
          DM.QryMembroDataEspec.Append;
          for I := 0 to LstBxCruzamento.Items.Count-1 do
          Begin
            if ((pos(',',LstBxCruzamento.Items.Strings[i]) <> 0) or (pos('+',LstBxCruzamento.Items.Strings[i]) <> 0))then
            Begin
              if pos(',',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos(',',Multi)-1);
                Result2 := Copy(Multi,pos(',',Multi)+1,Length(Multi) - pos(',',Multi));
                DM.QryMembroDataEspec.FieldByName(Destino).AsString := DM.ADOQryMembroDataEspec.FieldByName(Result1).AsString + ' ' + DM.ADOQryMembroDataEspec.FieldByName(Result2).AsString;
              End;
              if pos('+',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos('+',Multi)-1);
                Result2 := Copy(Multi,pos('+',Multi)+1,Length(Multi) - pos('+',Multi));
                DM.QryMembroDataEspec.FieldByName(Destino).AsString := DM.ADOQryMembroDataEspec.FieldByName(Result1).AsString + DM.ADOQryMembroDataEspec.FieldByName(Result2).AsString;
              End;
            End
            Else
            Begin
              Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
              Origem := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
              DM.QryMembroDataEspec.FieldByName(Destino).Value := DM.ADOQryMembroDataEspec.FieldByName(Origem).Value;
            End;
          End;
          DM.QryMembroDataEspec.Post;
          DM.ADOQryMembroDataEspec.Next;
        End;
      End;
    10:Begin
        DM.ADOQryMembroDepto.Close;
        DM.ADOQryMembroDepto.Open;
        DM.ADOQryMembroDepto.First;
        while not DM.ADOQryMembroDepto.Eof do
        Begin
          DM.QryMembroDepto.Open;
          DM.QryMembroDepto.Append;
          for I := 0 to LstBxCruzamento.Items.Count-1 do
          Begin
            if ((pos(',',LstBxCruzamento.Items.Strings[i]) <> 0) or (pos('+',LstBxCruzamento.Items.Strings[i]) <> 0))then
            Begin
              if pos(',',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos(',',Multi)-1);
                Result2 := Copy(Multi,pos(',',Multi)+1,Length(Multi) - pos(',',Multi));
                DM.QryMembroDepto.FieldByName(Destino).AsString := DM.ADOQryMembroDepto.FieldByName(Result1).AsString + ' ' + DM.ADOQryMembroDepto.FieldByName(Result2).AsString;
              End;
              if pos('+',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos('+',Multi)-1);
                Result2 := Copy(Multi,pos('+',Multi)+1,Length(Multi) - pos('+',Multi));
                DM.QryMembroDepto.FieldByName(Destino).AsString := DM.ADOQryMembroDepto.FieldByName(Result1).AsString + DM.ADOQryMembroDepto.FieldByName(Result2).AsString;
              End;
            End
            Else
            Begin
              Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
              Origem := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
              DM.QryMembroDepto.FieldByName(Destino).Value := DM.ADOQryMembroDepto.FieldByName(Origem).Value;
            End;
          End;
          DM.QryMembroDepto.Post;
          DM.ADOQryMembroDepto.Next;
        End;
      End;
    11:Begin
        DM.ADOQryMensagem.Close;
        DM.ADOQryMensagem.Open;
        DM.ADOQryMensagem.First;
        while not DM.ADOQryMensagem.Eof do
        Begin
          DM.QryMensagem.Open;
          DM.QryMensagem.Append;
          for I := 0 to LstBxCruzamento.Items.Count-1 do
          Begin
            if ((pos(',',LstBxCruzamento.Items.Strings[i]) <> 0) or (pos('+',LstBxCruzamento.Items.Strings[i]) <> 0))then
            Begin
              if pos(',',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos(',',Multi)-1);
                Result2 := Copy(Multi,pos(',',Multi)+1,Length(Multi) - pos(',',Multi));
                DM.QryMensagem.FieldByName(Destino).AsString := DM.ADOQryMensagem.FieldByName(Result1).AsString + ' ' + DM.ADOQryMensagem.FieldByName(Result2).AsString;
              End;
              if pos('+',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos('+',Multi)-1);
                Result2 := Copy(Multi,pos('+',Multi)+1,Length(Multi) - pos('+',Multi));
                DM.QryMensagem.FieldByName(Destino).AsString := DM.ADOQryMensagem.FieldByName(Result1).AsString + DM.ADOQryMensagem.FieldByName(Result2).AsString;
              End;
            End
            Else
            Begin
              Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
              Origem := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
              DM.QryMensagem.FieldByName(Destino).Value := DM.ADOQryMensagem.FieldByName(Origem).Value;
            End;
          End;
          DM.QryMensagem.Post;
          DM.ADOQryMensagem.Next;
        End;
      End;
    12:Begin
        DM.ADOQryProfissao.Close;
        DM.ADOQryProfissao.Open;
        DM.ADOQryProfissao.First;
        while not DM.ADOQryProfissao.Eof do
        Begin
          DM.QryProfissao.Open;
          DM.QryProfissao.Append;
          for I := 0 to LstBxCruzamento.Items.Count-1 do
          Begin
            if ((pos(',',LstBxCruzamento.Items.Strings[i]) <> 0) or (pos('+',LstBxCruzamento.Items.Strings[i]) <> 0))then
            Begin
              if pos(',',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos(',',Multi)-1);
                Result2 := Copy(Multi,pos(',',Multi)+1,Length(Multi) - pos(',',Multi));
                DM.QryProfissao.FieldByName(Destino).AsString := DM.ADOQryProfissao.FieldByName(Result1).AsString + ' ' + DM.ADOQryProfissao.FieldByName(Result2).AsString;
              End;
              if pos('+',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos('+',Multi)-1);
                Result2 := Copy(Multi,pos('+',Multi)+1,Length(Multi) - pos('+',Multi));
                DM.QryProfissao.FieldByName(Destino).AsString := DM.ADOQryProfissao.FieldByName(Result1).AsString + DM.ADOQryProfissao.FieldByName(Result2).AsString;
              End;
            End
            Else
            Begin
              Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
              Origem := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
              DM.QryProfissao.FieldByName(Destino).Value := DM.ADOQryProfissao.FieldByName(Origem).Value;
            End;
          End;
          DM.QryProfissao.Post;
          DM.ADOQryProfissao.Next;
        End;
      End;
    13:Begin
        DM.ADOQryVisita.Close;
        DM.ADOQryVisita.Open;
        DM.ADOQryVisita.First;
        while not DM.ADOQryVisita.Eof do
        Begin
          DM.QryVisita.Open;
          DM.QryVisita.Append;
          for I := 0 to LstBxCruzamento.Items.Count-1 do
          Begin
            if ((pos(',',LstBxCruzamento.Items.Strings[i]) <> 0) or (pos('+',LstBxCruzamento.Items.Strings[i]) <> 0))then
            Begin
              if pos(',',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos(',',Multi)-1);
                Result2 := Copy(Multi,pos(',',Multi)+1,Length(Multi) - pos(',',Multi));
                DM.QryVisita.FieldByName(Destino).AsString := DM.ADOQryVisita.FieldByName(Result1).AsString + ' ' + DM.ADOQryVisita.FieldByName(Result2).AsString;
              End;
              if pos('+',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos('+',Multi)-1);
                Result2 := Copy(Multi,pos('+',Multi)+1,Length(Multi) - pos('+',Multi));
                DM.QryVisita.FieldByName(Destino).AsString := DM.ADOQryVisita.FieldByName(Result1).AsString + DM.ADOQryVisita.FieldByName(Result2).AsString;
              End;
            End
            Else
            Begin
              Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
              Origem := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
              DM.QryVisita.FieldByName(Destino).Value := DM.ADOQryVisita.FieldByName(Origem).Value;
            End;
          End;
          DM.QryVisita.Post;
          DM.ADOQryVisita.Next;
        End;
      End;
    14:Begin
        DM.ADOQryVotacao.Close;
        DM.ADOQryVotacao.Open;
        DM.ADOQryVotacao.First;
        while not DM.ADOQryVotacao.Eof do
        Begin
          DM.QryVotacao.Open;
          DM.QryVotacao.Append;
          for I := 0 to LstBxCruzamento.Items.Count-1 do
          Begin
            if ((pos(',',LstBxCruzamento.Items.Strings[i]) <> 0) or (pos('+',LstBxCruzamento.Items.Strings[i]) <> 0))then
            Begin
              if pos(',',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos(',',Multi)-1);
                Result2 := Copy(Multi,pos(',',Multi)+1,Length(Multi) - pos(',',Multi));
                DM.QryVotacao.FieldByName(Destino).AsString := DM.ADOQryVotacao.FieldByName(Result1).AsString + ' ' + DM.ADOQryVotacao.FieldByName(Result2).AsString;
              End;
              if pos('+',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos('+',Multi)-1);
                Result2 := Copy(Multi,pos('+',Multi)+1,Length(Multi) - pos('+',Multi));
                DM.QryVotacao.FieldByName(Destino).AsString := DM.ADOQryVotacao.FieldByName(Result1).AsString + DM.ADOQryVotacao.FieldByName(Result2).AsString;
              End;
            End
            Else
            Begin
              Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
              Origem := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
              DM.QryVotacao.FieldByName(Destino).Value := DM.ADOQryVotacao.FieldByName(Origem).Value;
            End;
          End;
          DM.QryVotacao.Post;
          DM.ADOQryVotacao.Next;
       End;
      End;
    15:Begin
        DM.ADOQryMunicipios.Close;
        DM.ADOQryMunicipios.Open;
        DM.ADOQryMunicipios.First;
        while not DM.ADOQryMunicipios.Eof do
        Begin
          DM.QryMunicipio.Open;
          DM.QryMunicipio.Append;
          for I := 0 to LstBxCruzamento.Items.Count-1 do
          Begin
            if ((pos(',',LstBxCruzamento.Items.Strings[i]) <> 0) or (pos('+',LstBxCruzamento.Items.Strings[i]) <> 0))then
            Begin
              if pos(',',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos(',',Multi)-1);
                Result2 := Copy(Multi,pos(',',Multi)+1,Length(Multi) - pos(',',Multi));
                DM.QryMunicipio.FieldByName(Destino).AsString := DM.ADOQryMunicipios.FieldByName(Result1).AsString + ' ' + DM.ADOQryMunicipios.FieldByName(Result2).AsString;
              End;
              if pos('+',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos('+',Multi)-1);
                Result2 := Copy(Multi,pos('+',Multi)+1,Length(Multi) - pos('+',Multi));
                DM.QryMunicipio.FieldByName(Destino).AsString := DM.ADOQryMunicipios.FieldByName(Result1).AsString + DM.ADOQryMunicipios.FieldByName(Result2).AsString;
              End;
            End
            Else
            Begin
              Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
              Origem := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
              DM.QryMunicipio.FieldByName(Destino).Value := DM.ADOQryMunicipios.FieldByName(Origem).Value;
            End;
          End;
          DM.QryMunicipio.Post;
          DM.ADOQryMunicipios.Next;
       End;
      End;
    16:Begin
        DM.ADOQrySanta_Ceia.Close;
        DM.ADOQrySanta_Ceia.Open;
        DM.ADOQrySanta_Ceia.First;
        while not DM.ADOQrySanta_Ceia.Eof do
        Begin
          DM.QrySanta_Ceia_Antigo.Open;
          DM.QrySanta_Ceia_Antigo.Append;
          for I := 0 to LstBxCruzamento.Items.Count-1 do
          Begin
            if ((pos(',',LstBxCruzamento.Items.Strings[i]) <> 0) or (pos('+',LstBxCruzamento.Items.Strings[i]) <> 0))then
            Begin
              if pos(',',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos(',',Multi)-1);
                Result2 := Copy(Multi,pos(',',Multi)+1,Length(Multi) - pos(',',Multi));
                DM.QrySanta_Ceia_Antigo.FieldByName(Destino).AsString := DM.ADOQrySanta_Ceia.FieldByName(Result1).AsString + ' ' + DM.ADOQrySanta_Ceia.FieldByName(Result2).AsString;
              End;
              if pos('+',LstBxCruzamento.Items.Strings[i]) <> 0 then
              Begin
                Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
                Multi := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
                Result1 := Copy(Multi,1,pos('+',Multi)-1);
                Result2 := Copy(Multi,pos('+',Multi)+1,Length(Multi) - pos('+',Multi));
                DM.QrySanta_Ceia_Antigo.FieldByName(Destino).AsString := DM.ADOQrySanta_Ceia.FieldByName(Result1).AsString + DM.ADOQrySanta_Ceia.FieldByName(Result2).AsString;
              End;
            End
            Else
            Begin
              Destino := Copy(LstBxCruzamento.Items.Strings[i],1,pos('-',LstBxCruzamento.Items.Strings[i])-1);
              Origem := Copy(LstBxCruzamento.Items.Strings[i],pos('-',LstBxCruzamento.Items.Strings[i])+1,Length(LstBxCruzamento.Items.Strings[i]) - pos('-',LstBxCruzamento.Items.Strings[i]));
              DM.QrySanta_Ceia_Antigo.FieldByName(Destino).Value := DM.ADOQrySanta_Ceia.FieldByName(Origem).Value;
            End;
          End;
          DM.QrySanta_Ceia_Antigo.Post;
          DM.ADOQrySanta_Ceia.Next;
       End;
      End;
  end;
  Showmessage('Importação Finalizada!');

end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin

  FormRodaQuery.ShowModal;

end;

procedure TForm1.BitBtn5Click(Sender: TObject);
Var
  MultiSelecao: String;
  I,GuardaIndice: Integer;
begin

  MultiSelecao := '';
  GuardaIndice := 0;
  if LstBxAccess.SelCount > 1 then
  Begin
    for I := 0 to LstBxAccess.Items.Count-1 do
    Begin
      if LstBxAccess.Selected[i] then
      Begin
        if MultiSelecao='' then
          MultiSelecao := LstBxAccess.Items.Strings[i]
        Else
          MultiSelecao := MultiSelecao + ',' + LstBxAccess.Items.Strings[i];
        GuardaIndice := i;
      End;
    End;
    LstBxCruzamento.Items.Add(LstBxMySql.Items.Strings[LstBxMySql.ItemIndex] + '-' + MultiSelecao);
    LstBxCruzamento.ItemIndex := LstBxCruzamento.items.Count-1;
  End
  Else
  Begin
    LstBxCruzamento.Items.Add(LstBxMySql.Items.Strings[LstBxMySql.ItemIndex] + '-' + LstBxAccess.Items.Strings[LstBxAccess.itemindex]);
    LstBxCruzamento.ItemIndex := LstBxCruzamento.items.Count-1;
  End;
  if GuardaIndice <> 0 then
    LstBxAccess.ItemIndex := GuardaIndice;

end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin

  FormConexao.ShowModal;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin

  PopupMenu2.Popup(Button1.Left,Button1.Top);

end;

procedure TForm1.CarregarReferencias1Click(Sender: TObject);
begin

  OpenDialog1.Execute;
  LstBxCruzamento.Items.LoadFromFile(OpenDialog1.FileName);

end;

procedure TForm1.CbxTabelaAccessSelect(Sender: TObject);
Var
  i:integer;
begin

{ LISTA
0 - Membro
1 - Familia
2 - Tipo de Contribuição
3 - Visitante
4 - Contribuição
5 - Controle
6 - Data Especial
7 - Departamento
8 - Filho
9 - Membro data Especial
10 - Membro Departamento
11 - Mensagem
12 - Profissão
13 - Visita
14 - Votação
15 - Municipio
16 - Santa Ceia
}

  LstBxCruzamento.Items.Clear;
  Case CbxTabelaAccess.ItemIndex of
    0:Begin
        LstBxAccess.Items.Clear;
        for I := 0 to  DM.DSMembro.DataSet.Fields.Count-1 do
          LstBxAccess.Items.Add( DM.DSMembro.DataSet.Fields[i].DisplayLabel);
        DBGrid1.DataSource :=  DM.DSMembro;
      End;
    1:Begin
        LstBxAccess.Items.Clear;
        for I := 0 to  DM.DSFamilia.DataSet.Fields.Count-1 do
          LstBxAccess.Items.Add( DM.DSFamilia.DataSet.Fields[i].DisplayLabel);
        DBGrid1.DataSource :=  DM.DSFamilia;
      End;
    2:Begin
        LstBxAccess.Items.Clear;
        for I := 0 to  DM.DSTipoContibuicao.DataSet.Fields.Count-1 do
          LstBxAccess.Items.Add( DM.DSTipoContibuicao.DataSet.Fields[i].DisplayLabel);
        DBGrid1.DataSource :=  DM.DSTipoContibuicao;
      End;
    3:Begin
        LstBxAccess.Items.Clear;
        for I := 0 to  DM.DSVisitante.DataSet.Fields.Count-1 do
          LstBxAccess.Items.Add(DM.DSVisitante.DataSet.Fields[i].DisplayLabel);
        DBGrid1.DataSource :=  DM.DSVisitante;
      End;
    4:Begin
        LstBxAccess.Items.Clear;
        for I := 0 to  DM.DSContribuicao.DataSet.Fields.Count-1 do
          LstBxAccess.Items.Add(DM.DSContribuicao.DataSet.Fields[i].DisplayLabel);
        DBGrid1.DataSource :=  DM.DSContribuicao;
      End;
    5:Begin
        LstBxAccess.Items.Clear;
        for I := 0 to  DM.DSControle.DataSet.Fields.Count-1 do
          LstBxAccess.Items.Add(DM.DSControle.DataSet.Fields[i].DisplayLabel);
        DBGrid1.DataSource :=  DM.DSControle;
      End;
    6:Begin
        LstBxAccess.Items.Clear;
        for I := 0 to  DM.DSDataEspecial.DataSet.Fields.Count-1 do
          LstBxAccess.Items.Add(DM.DSDataEspecial.DataSet.Fields[i].DisplayLabel);
        DBGrid1.DataSource :=  DM.DSDataEspecial;
      End;
    7:Begin
        LstBxAccess.Items.Clear;
        for I := 0 to  DM.DSDepartamento.DataSet.Fields.Count-1 do
          LstBxAccess.Items.Add(DM.DSDepartamento.DataSet.Fields[i].DisplayLabel);
        DBGrid1.DataSource :=  DM.DSDepartamento;
      End;
    8:Begin
        LstBxAccess.Items.Clear;
        for I := 0 to  DM.DSFilho.DataSet.Fields.Count-1 do
          LstBxAccess.Items.Add(DM.DSFilho.DataSet.Fields[i].DisplayLabel);
        DBGrid1.DataSource :=  DM.DSFilho;
      End;
    9:Begin
        LstBxAccess.Items.Clear;
        for I := 0 to  DM.DSMembroDataEspec.DataSet.Fields.Count-1 do
          LstBxAccess.Items.Add(DM.DSMembroDataEspec.DataSet.Fields[i].DisplayLabel);
        DBGrid1.DataSource :=  DM.DSMembroDataEspec;
      End;
    10:Begin
        LstBxAccess.Items.Clear;
        for I := 0 to  DM.DSMembroDepto.DataSet.Fields.Count-1 do
          LstBxAccess.Items.Add(DM.DSMembroDepto.DataSet.Fields[i].DisplayLabel);
        DBGrid1.DataSource :=  DM.DSMembroDepto;
      End;
    11:Begin
        LstBxAccess.Items.Clear;
        for I := 0 to  DM.DSMensagem.DataSet.Fields.Count-1 do
          LstBxAccess.Items.Add(DM.DSMensagem.DataSet.Fields[i].DisplayLabel);
        DBGrid1.DataSource :=  DM.DSMensagem;
      End;
    12:Begin
        LstBxAccess.Items.Clear;
        for I := 0 to  DM.DSProfissao.DataSet.Fields.Count-1 do
          LstBxAccess.Items.Add(DM.DSProfissao.DataSet.Fields[i].DisplayLabel);
        DBGrid1.DataSource :=  DM.DSProfissao;
      End;
    13:Begin
        LstBxAccess.Items.Clear;
        for I := 0 to  DM.DSVisita.DataSet.Fields.Count-1 do
          LstBxAccess.Items.Add(DM.DSVisita.DataSet.Fields[i].DisplayLabel);
        DBGrid1.DataSource :=  DM.DSVisita;
      End;
    14:Begin
        LstBxAccess.Items.Clear;
        for I := 0 to  DM.DSVotacao.DataSet.Fields.Count-1 do
          LstBxAccess.Items.Add(DM.DSVotacao.DataSet.Fields[i].DisplayLabel);
        DBGrid1.DataSource :=  DM.DSVotacao;
      End;
    15:Begin
        LstBxAccess.Items.Clear;
        for I := 0 to  DM.DSMunicipio.DataSet.Fields.Count-1 do
          LstBxAccess.Items.Add(DM.DSMunicipio.DataSet.Fields[i].DisplayLabel);
        DBGrid1.DataSource :=  DM.DSMunicipio;
      End;
    16:Begin
        LstBxAccess.Items.Clear;
        for I := 0 to  DM.DSSanta_Ceia.DataSet.Fields.Count-1 do
          LstBxAccess.Items.Add(DM.DSSanta_Ceia.DataSet.Fields[i].DisplayLabel);
        DBGrid1.DataSource :=  DM.DSSanta_Ceia;
      End;
  End;

end;

procedure TForm1.CbxTabelaMySQLSelect(Sender: TObject);
Var
  i:integer;
begin

{ LISTA
0 - Membro
1 - Familia
2 - Tipo de Contribuição
3 - Visitante
4 - Contribuição
5 - Controle
6 - Data Especial
7 - Departamento
8 - Filho
9 - Membro data Especial
10 - Membro Departamento
11 - Mensagem
12 - Profissão
13 - Visita
14 - Votação
15 - Municipio
16 - Santa Ceia
}

  Case CbxTabelaMySQL.ItemIndex of
    0:Begin
        LstBxMySql.Items.Clear;
        for I := 0 to  DM.DSQryMembro.DataSet.Fields.Count-1 do
          LstBxMySql.Items.Add(DM.DSQryMembro.DataSet.Fields[i].DisplayLabel);
      End;
    1:Begin
        LstBxMySql.Items.Clear;
        for I := 0 to  DM.DSQryFamilia.DataSet.Fields.Count-1 do
          LstBxMySql.Items.Add(DM.DSQryFamilia.DataSet.Fields[i].DisplayLabel);
      End;
    2:Begin
        LstBxMySql.Items.Clear;
        for I := 0 to  DM.DSQryTipoContribuicao.DataSet.Fields.Count-1 do
          LstBxMySql.Items.Add(DM.DSQryTipoContribuicao.DataSet.Fields[i].DisplayLabel);
      End;
    3:Begin
        LstBxMySql.Items.Clear;
        for I := 0 to  DM.DSQryVisitante.DataSet.Fields.Count-1 do
          LstBxMySql.Items.Add(DM.DSQryVisitante.DataSet.Fields[i].DisplayLabel);
      End;
    4:Begin
        LstBxMySql.Items.Clear;
        for I := 0 to  DM.DSQryContribuicao.DataSet.Fields.Count-1 do
          LstBxMySql.Items.Add(DM.DSQryContribuicao.DataSet.Fields[i].DisplayLabel);
      End;
    5:Begin
        LstBxMySql.Items.Clear;
        for I := 0 to  DM.DSQryControle.DataSet.Fields.Count-1 do
          LstBxMySql.Items.Add(DM.DSQryControle.DataSet.Fields[i].DisplayLabel);
      End;
    6:Begin
        LstBxMySql.Items.Clear;
        for I := 0 to  DM.DSQryDataEspecial.DataSet.Fields.Count-1 do
          LstBxMySql.Items.Add(DM.DSQryDataEspecial.DataSet.Fields[i].DisplayLabel);
      End;
    7:Begin
        LstBxMySql.Items.Clear;
        for I := 0 to  DM.DSQryDepartamento.DataSet.Fields.Count-1 do
          LstBxMySql.Items.Add(DM.DSQryDepartamento.DataSet.Fields[i].DisplayLabel);
      End;
    8:Begin
        LstBxMySql.Items.Clear;
        for I := 0 to  DM.DSQryFilho.DataSet.Fields.Count-1 do
          LstBxMySql.Items.Add(DM.DSQryFilho.DataSet.Fields[i].DisplayLabel);
      End;
    9:Begin
        LstBxMySql.Items.Clear;
        for I := 0 to  DM.DSqryMembroDataEspec.DataSet.Fields.Count-1 do
          LstBxMySql.Items.Add(DM.DSqryMembroDataEspec.DataSet.Fields[i].DisplayLabel);
      End;
    10:Begin
        LstBxMySql.Items.Clear;
        for I := 0 to  DM.DSQryMembroDepto.DataSet.Fields.Count-1 do
          LstBxMySql.Items.Add(DM.DSQryMembroDepto.DataSet.Fields[i].DisplayLabel);
      End;
    11:Begin
        LstBxMySql.Items.Clear;
        for I := 0 to  DM.DSQryMensagem.DataSet.Fields.Count-1 do
          LstBxMySql.Items.Add(DM.DSQryMensagem.DataSet.Fields[i].DisplayLabel);
      End;
    12:Begin
        LstBxMySql.Items.Clear;
        for I := 0 to  DM.DSQryProfissao.DataSet.Fields.Count-1 do
          LstBxMySql.Items.Add(DM.DSQryProfissao.DataSet.Fields[i].DisplayLabel);
      End;
    13:Begin
        LstBxMySql.Items.Clear;
        for I := 0 to  DM.DSQryVisita.DataSet.Fields.Count-1 do
          LstBxMySql.Items.Add(DM.DSQryVisita.DataSet.Fields[i].DisplayLabel);
      End;
    14:Begin
        LstBxMySql.Items.Clear;
        for I := 0 to  DM.DSQryVotacao.DataSet.Fields.Count-1 do
          LstBxMySql.Items.Add(DM.DSQryVotacao.DataSet.Fields[i].DisplayLabel);
      End;
    15:Begin
        LstBxMySql.Items.Clear;
        for I := 0 to  DM.DSQryMunicipio.DataSet.Fields.Count-1 do
          LstBxMySql.Items.Add(DM.DSQryMunicipio.DataSet.Fields[i].DisplayLabel);
      End;
    16:Begin
        LstBxMySql.Items.Clear;
        for I := 0 to  DM.DSQrySanta_Ceia_Antigo.DataSet.Fields.Count-1 do
          LstBxMySql.Items.Add(DM.DSQrySanta_Ceia_Antigo.DataSet.Fields[i].DisplayLabel);
      End;
  End;
end;

procedure TForm1.FormShow(Sender: TObject);
begin

  FormConexao.ShowModal;

end;

procedure TForm1.SairClick(Sender: TObject);
begin

  Close;

end;

procedure TForm1.SalvarReferencias1Click(Sender: TObject);
begin

  SaveDialog1.Execute;
  LstBxCruzamento.Items.SaveToFile(SaveDialog1.FileName);

end;

end.
