unit Reportsend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, shellapi;

type
  TForm1 = class(TForm)
    IdHTTP1: TIdHTTP;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
//function PostExample: string;
//var
//  lHTTP: TIdHTTP;
//  lParamList: TStringList;
//begin
//  lParamList := TStringList.Create;
//  lParamList.Add('');
//
//  lHTTP := TIdHTTP.Create(nil);
//  try
//    Result := lHTTP.Post('https://docs.google.com/forms/d/e/1FAIpQLSeQ0eesLUv8i1tXwDlCoeTSCiZOqj2khNewjJPOpR2g_e8B8Q/viewform?entry.1177752927=4&entry.216155859=hello', lParamList);
//  finally
//    lHTTP.Free;
//    lParamList.Free;
//  end;
//end;
procedure TForm1.FormCreate(Sender: TObject);
//var
//  Http1: TIdHTTP;
//begin
//  Http1 := TIdHTTP.Create (nil);
//  try
//    Http1.Request.UserAgent := 'User-Agent: mozilla';
//    Http1.ProtocolVersion:=pv1_0;
//    Http1.Get ('https://docs.google.com/forms/d/UNIQUE_IDENTIFICATOR/formResponse?hl=en_US&formkey=dFRjT0hwYXNXbVRfUU9KN1hDSkk3MlE6MQ&submit=Submit&ifq&entry.1000000=Test');
//  finally
//    Http1.Free;
//  end;
//end;
  var
  lHTTP: TIdHTTP;
  lParamList: TStringList;
  Result: string;
begin
  lParamList := TStringList.Create;
  lParamList.Add('');

  lHTTP := TIdHTTP.Create(nil);
  try
    try
     Result :=lHTTP.Get('https://docs.google.com/forms/d/e/UNIQUE_IDENTIFICATOR/formResponse?entry.750461711=null&entry.2078020227=BolgenOS&entry.555925212=2&entry.1779644686=void&submit=Submit');
    except
       Result := '';
        Exit;
    end;
  finally
    lHTTP.Free;
    lParamList.Free;
  end;
//  //ShellExecute(handle, 'open', 'http://ru.wikipedia.org/wiki/Snake_(%D0%B8%D0%B3%D1%80%D0%B0)', nil, nil, SW_SHOW);
//https://docs.google.com/forms/d/e/1FAIpQLSeQ0eesLUv8i1tXwDlCoeTSCiZOqj2khNewjJPOpR2g_e8B8Q/viewform
end;

end.
