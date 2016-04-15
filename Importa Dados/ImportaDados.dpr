program ImportaDados;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  UDM in 'UDM.pas' {DM: TDataModule},
  URodaQuery in 'URodaQuery.pas' {FormRodaQuery},
  UFrmConexao in 'UFrmConexao.pas' {FormConexao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormRodaQuery, FormRodaQuery);
  Application.CreateForm(TFormConexao, FormConexao);
  Application.Run;
end.
