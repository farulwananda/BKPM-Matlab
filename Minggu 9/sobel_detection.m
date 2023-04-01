function varargout = sobel_detection(varargin)
% SOBEL_DETECTION MATLAB code for sobel_detection.fig
%      SOBEL_DETECTION, by itself, creates a new SOBEL_DETECTION or raises the existing
%      singleton*.
%
%      H = SOBEL_DETECTION returns the handle to a new SOBEL_DETECTION or the handle to
%      the existing singleton*.
%
%      SOBEL_DETECTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SOBEL_DETECTION.M with the given input arguments.
%
%      SOBEL_DETECTION('Property','Value',...) creates a new SOBEL_DETECTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sobel_detection_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sobel_detection_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sobel_detection

% Last Modified by GUIDE v2.5 31-Oct-2022 13:58:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sobel_detection_OpeningFcn, ...
                   'gui_OutputFcn',  @sobel_detection_OutputFcn, ...
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


% --- Executes just before sobel_detection is made visible.
function sobel_detection_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sobel_detection (see VARARGIN)

% Choose default command line output for sobel_detection
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sobel_detection wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = sobel_detection_OutputFcn(hObject, eventdata, handles) 
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
[filename, directory] = uigetfile('*.jpg;*.png;*.jpeg;*.tif'); 
handles.originalPic = imread([directory, filename]);
axes(handles.axes1);
imshow(handles.originalPic);
guidata(hObject, handles);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
getOriginal = handles.originalPic;
grayImage = rgb2gray(getOriginal);
sobelDetection = edge(grayImage, 'sobel');
axes(handles.axes2);
imshow(sobelDetection);

prewittDetection = edge(grayImage, 'prewitt');
axes(handles.axes5);
imshow(prewittDetection);

cannyDetection = edge(grayImage, 'canny');
axes(handles.axes6);
imshow(cannyDetection);

robertDetection = edge(grayImage, 'roberts');
axes(handles.axes7);
imshow(robertDetection);
