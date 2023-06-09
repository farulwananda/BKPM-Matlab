function varargout = hello(varargin)
% HELLO MATLAB code for hello.fig
%      HELLO, by itself, creates a new HELLO or raises the existing
%      singleton*.
%
%      H = HELLO returns the handle to a new HELLO or the handle to
%      the existing singleton*.
%
%      HELLO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HELLO.M with the given input arguments.
%
%      HELLO('Property','Value',...) creates a new HELLO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before hello_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to hello_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help hello

% Last Modified by GUIDE v2.5 08-Sep-2022 08:59:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @hello_OpeningFcn, ...
                   'gui_OutputFcn',  @hello_OutputFcn, ...
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


% --- Executes just before hello is made visible.
function hello_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to hello (see VARARGIN)

% Choose default command line output for hello
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes hello wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = hello_OutputFcn(hObject, eventdata, handles) 
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
open=guidata(gcbo); 
[namafile,direktori]=uigetfile({'*.jpg;*.bmp;*.tif'}, 'OpenImage');
I=imread(namafile); 
set(open.figure1,'CurrentAxes',open.axes1); 
set(imagesc(I));colormap('gray');
set(open.axes1,'UserData',I);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

open=guidata(gcbo); 
I=get(open.axes1,'Userdata');
I = I(:,:,1);
[r,c] = size(I);
for x = 1 : r
for y = 1 : c
J(x,y) = 255 - I(x,y);
end
end
set(open.figure1,'CurrentAxes',open.axes2); 
set(imagesc(J));colormap('gray');
set(open.axes2,'UserData',J);
