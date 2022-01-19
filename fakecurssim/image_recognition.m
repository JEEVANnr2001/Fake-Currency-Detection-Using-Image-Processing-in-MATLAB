function varargout = image_recognition(varargin)
% IMAGE_RECOGNITION MATLAB code for image_recognition.fig
%      IMAGE_RECOGNITION, by itself, creates a new IMAGE_RECOGNITION or raises the existing
%      singleton*.
%
%      H = IMAGE_RECOGNITION returns the handle to a new IMAGE_RECOGNITION or the handle to
%      the existing singleton*.
%
%      IMAGE_RECOGNITION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMAGE_RECOGNITION.M with the given input arguments.
%
%      IMAGE_RECOGNITION('Property','Value',...) creates a new IMAGE_RECOGNITION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before image_recognition_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to image_recognition_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help image_recognition

% Last Modified by GUIDE v2.5 18-Jan-2022 21:45:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @image_recognition_OpeningFcn, ...
                   'gui_OutputFcn',  @image_recognition_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before image_recognition is made visible.
function image_recognition_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to image_recognition (see VARARGIN)

% Choose default command line output for image_recognition
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes image_recognition wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = image_recognition_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t1
t1=imread('500rs1.png');
axes(handles.axes1);

imshow(t1);
t1 = rgb2gray(imresize(t1,[256, 256]));

t1=medfilt2(t1)
t1= edge(t1,'Canny');
t1 = imhist(t1);




% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t2
global image
[path,~]=imgetfile();
t2=imread(path);
image = t2;
axes(handles.axes2);
imshow(t2);
t2 = rgb2gray(imresize(t2,[256, 256]));
t2 = medfilt2(t2);
t2 = edge(t2,"canny");
t2 = imhist(t2);


% Im=im2double(tk);
% [filename, path] = uigetfile(fullfile(folder,ext)) ;
% t2 = imread(fullfile(path, filename));
% % t2=imread('2000f.jpeg');




% --- Executes on button press in pushbutton3.
% function pushbutton3_Callback(hObject, eventdata, handles)
% % hObject    handle to pushbutton3 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% global t3
% t3=imread('500_f1.jpeg');
% axes(handles.axes3);
% imshow(t3);
% t3 = rgb2gray(imresize(t3,[256, 256]));
% t3 = medfilt2(t3);
% t3 = edge(t3,"canny");
% t3 = imhist(t3)

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t1
global t2
% global t3



J1 = t1;
J2 = t2;
% J3 = t3;


ssimval = ssim(J2,J1)
result = num2str(ssimval)
if ssimval > 0.9995
    set(handles.edit1,'String',"Real Currency ");
else
    set(handles.edit1,'String',"fake Currency");

end
% ssimval1 = ssim(J3,J1)



% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ref_validPts
global ref_features
global ref_img
ref_img = imread("500rs1.png")

ref_img_gray = rgb2gray(ref_img);
ref_pts = detectSURFFeatures(ref_img_gray);
[ref_features, ref_validPts] = extractFeatures(ref_img_gray, ref_pts);
axes(handles.axes4);
imshow(ref_img);
hold on; plot(ref_pts.selectStrongest(100));


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
global I_features
global I_validPts

I = rgb2gray(image);


I_pts = detectSURFFeatures(I);
[I_features, I_validPts] = extractFeatures(I, I_pts);
axes(handles.axes5);
imshow(image);
hold on; plot(I_pts.selectStrongest(100));


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global I_features
global I_validPts
global ref_validPts
global ref_features
global image
global ref_img
index_pairs = matchFeatures(ref_features, I_features);
ref_matched_pts = ref_validPts(index_pairs(:,1)).Location;
I_matched_pts = I_validPts(index_pairs(:,2)).Location;
axes(handles.axes6);
showMatchedFeatures(ref_img, image, ref_matched_pts, I_matched_pts, 'montage');
title('Showing all matches');
