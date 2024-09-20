function varargout = sawgui(varargin)
% SAWGUI MATLAB code for sawgui.fig
%      SAWGUI, by itself, creates a new SAWGUI or raises the existing
%      singleton*.
%
%      H = SAWGUI returns the handle to a new SAWGUI or the handle to
%      the existing singleton*.
%
%      SAWGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SAWGUI.M with the given input arguments.
%
%      SAWGUI('Property','Value',...) creates a new SAWGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sawgui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sawgui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sawgui

% Last Modified by GUIDE v2.5 22-May-2024 04:06:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sawgui_OpeningFcn, ...
                   'gui_OutputFcn',  @sawgui_OutputFcn, ...
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


% --- Executes just before sawgui is made visible.
function sawgui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sawgui (see VARARGIN)

% Choose default command line output for sawgui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sawgui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = sawgui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btn1_052.
function btn1_052_Callback(hObject, eventdata, handles)
% hObject    handle to btn1_052 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions('PlayerFIFA.csv');
opts.SelectedVariableNames = [2, 3, 7, 8, 9];

% Membaca data menggunakan readtable
data = readtable('PlayerFIFA.csv', opts);

% Konversi data menjadi cell array
data = table2cell(data);

% Set data ke dalam uitable
set(handles.tabelsatu_052, 'Data', data);

% --- Executes on button press in btn2_052.
function btn2_052_Callback(hObject, eventdata, handles)
% hObject    handle to btn2_052 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%analisis bobot
%analisis bobot
bobot = [0.25 0.15 0.20 0.40];
k=[1, 1, 1, -1];
dataTable = get(handles.tabelsatu_052, 'Data');
dataTable = dataTable(:, 4:7)
dataTable = cell2mat(dataTable);
disp('dataTable');

%normalisasi bobot
bobot = bobot./sum(bobot);
disp('bobot');
disp(bobot);

%normalisasi matrix
[m n] = size(dataTable);
R = zeros(m,n);
skor = zeros (m,1);
for j=1:n,
    if k(j)==1
        
R(:,j)=dataTable(:,j)./max(dataTable(:,j));
    else
        R(:,j)=min(dataTable(:,j))./dataTable(:,j);
    end
end
disp('matriks hasil normalisasi');
disp(R);

%perangkingan sum bobot
for i=1:m
    skor(i)=sum(bobot.*R(i,:));
end
disp('skor');
disp(skor);
skor = num2cell(skor);
disp('skor');
disp(skor);

%set new table hasil
data = readtable('PlayerFIFA.csv');
data = table2cell(data);
data = data(:,8);
data = [skor, data];
data = sortrows(data, 2, 'descend');
set(handles.tabeldua_052, 'data', data);
disp('data');
disp(data);
