unit URodaQuery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, MemDS, DBAccess, MyAccess, Vcl.Grids, Vcl.DBGrids;

type
  TFormRodaQuery = class(TForm)
    ToolBar1: TToolBar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGridResultado: TDBGrid;
    MyQuery: TMyQuery;
    ADOQuery: TADOQuery;
    ADO: TDataSource;
    MySql: TDataSource;
    RadioGroup1: TRadioGroup;
    RichEdit1: TRichEdit;
    RadioGroup2: TRadioGroup;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRodaQuery: TFormRodaQuery;

implementation

{$R *.dfm}

uses UDM;

procedure TFormRodaQuery.BitBtn1Click(Sender: TObject);
begin

  RichEdit1.Lines.Clear;

end;

procedure TFormRodaQuery.BitBtn2Click(Sender: TObject);
begin

  case RadioGroup1.ItemIndex of
  0:Begin
      ADOQuery.Close;
      ADOQuery.SQL.Clear;
      ADOQuery.SQL.Text := RichEdit1.Text;
      if RadioGroup2.ItemIndex=0 then
        ADOQuery.Open
      Else
        ADOQuery.ExecSQL;
      DBGridResultado.DataSource := ADO;
    End;
  1:Begin
      MyQuery.Close;
      MyQuery.SQL.Clear;
      MyQuery.SQL.Text := RichEdit1.Text;
      if RadioGroup2.ItemIndex=0 then
        MyQuery.Open
      Else
        MyQuery.ExecSQL;
      DBGridResultado.DataSource := MySql;
    End;
  end;


end;

procedure TFormRodaQuery.BitBtn3Click(Sender: TObject);
begin

  RadioGroup1.ItemIndex:=0;
  RadioGroup2.ItemIndex:=0;
  RichEdit1.Lines.Clear;
  Close;

end;

end.
