unit FrameCapture_;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Menus, VidGrab, Vcl.Buttons;

type
  TFormCapturaWebcam = class(TForm)
    Image1: TImage;
    VideoGrabber1: TVideoGrabber;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    Image2: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure VideoGrabber1ResizeVideo(Sender: TObject; SourceWidth,
      SourceHeight: Integer);
    procedure VideoGrabber1VideoDeviceSelected(Sender: TObject);
    procedure VideoGrabber1FrameCaptureCompleted(Sender: TObject;
      FrameBitmap: TBitmap; BitmapWidth, BitmapHeight: Integer;
      FrameNumber: Cardinal; FrameTime: Int64; DestType: TFrameCaptureDest;
      FileName: String; Success: Boolean; FrameId: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
  public
  end;

var
  FormCapturaWebcam: TFormCapturaWebcam;

implementation

{$R *.DFM}

uses UFrmCadastroMembro;


procedure TFormCapturaWebcam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   VideoGrabber1.StopPreview;
end;

procedure TFormCapturaWebcam.FormCreate(Sender: TObject);
begin

   ComboBox1.Items.Text := VideoGrabber1.VideoDevices;
   ComboBox1.ItemIndex := VideoGrabber1.VideoDevice;

end;
procedure TFormCapturaWebcam.FormShow(Sender: TObject);
begin

  ComboBox1.SetFocus;

end;


procedure TFormCapturaWebcam.VideoGrabber1FrameCaptureCompleted(Sender: TObject;
  FrameBitmap: TBitmap; BitmapWidth, BitmapHeight: Integer;
  FrameNumber: Cardinal; FrameTime: Int64; DestType: TFrameCaptureDest;
  FileName: String; Success: Boolean; FrameId: Integer);
begin
   case DestType of
      fc_BmpFile:
      begin
//        Memo1.Lines.add (FileName + ' created');
      end;
      fc_TBitmap:
      begin
        Image1.Picture.Bitmap.Assign (FrameBitmap);
         //Image1.Picture.Bitmap.Handle := FrameBitmap.Handle;
         //FrameBitmap.ReleaseHandle;
      end;
   end;
end;

procedure TFormCapturaWebcam.VideoGrabber1VideoDeviceSelected(Sender: TObject);
begin
   ComboBox1.ItemIndex := VideoGrabber1.VideoDevice;
end;

procedure TFormCapturaWebcam.VideoGrabber1ResizeVideo(Sender: TObject; SourceWidth,
  SourceHeight: Integer);
var
   NewWidth: longint;
begin
   Image1.Picture.Assign (nil);
   Image1.Left := VideoGrabber1.Left + VideoGrabber1.Width + 20;
   Image1.Width := VideoGrabber1.VideoWidth;
   Image1.Height := VideoGrabber1.VideoHeight;
   NewWidth := Image1.Left + VideoGrabber1.Width + 20;
   Height := VideoGrabber1.Top + VideoGrabber1.Height + 75;
   Width := NewWidth;
end;

procedure TFormCapturaWebcam.BitBtn1Click(Sender: TObject);
begin

  VideoGrabber1.StartPreview;

end;

procedure TFormCapturaWebcam.BitBtn2Click(Sender: TObject);
begin

  VideoGrabber1.ShowDialog (dlg_VideoDevice);

end;

procedure TFormCapturaWebcam.BitBtn3Click(Sender: TObject);
begin

  VideoGrabber1.CaptureFrameTo (fc_TBitmap, '');

end;

procedure TFormCapturaWebcam.BitBtn4Click(Sender: TObject);
begin

  FormCadastroMembro.ImgFotoMembro.Picture := Image1.Picture;
  FormCadastroMembro.LocalFoto := 'BMP';
  Close;

end;

procedure TFormCapturaWebcam.ComboBox1Change(Sender: TObject);
begin

   VideoGrabber1.VideoDevice := ComboBox1.ItemIndex;

end;

end.
