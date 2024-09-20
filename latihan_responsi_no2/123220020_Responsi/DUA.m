function varargout = DUA(varargin)
% DUA MATLAB code for DUA.fig
%      DUA, by itself, creates a new DUA or raises the existing
%      singleton*.
%
%      H = DUA returns the handle to a new DUA or the handle to
%      the existing singleton*.
%
%      DUA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DUA.M with the given input arguments.
%
%      DUA('Property','Value',...) creates a new DUA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DUA_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DUA_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DUA

% Last Modified by GUIDE v2.5 22-May-2024 02:34:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DUA_OpeningFcn, ...
                   'gui_OutputFcn',  @DUA_OutputFcn, ...
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


% --- Executes just before DUA is made visible.
function DUA_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DUA (see VARARGIN)

% Choose default command line output for DUA
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DUA wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DUA_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in showbtn_020.
function showbtn_020_Callback(hObject, eventdata, handles)
% hObject    handle to showbtn_020 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions('PlayerFIFA.csv');
opts.SelectedVariableNames = {'short_name', 'age', 'shooting', 'passing', 'dribbling'};
data = readtable('PlayerFIFA.csv', opts);
set(handles.tabledata_020, 'Data', table2cell(data)); 
handles.data = data;
guidata(hObject, handles); 




% --- Executes on button press in prosesbtn_020.
function prosesbtn_020_Callback(hObject, eventdata, handles)
% hObject    handle to prosesbtn_020 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Analisis bobot
bobot = [2 3 3 2];
k = [0, 1, 1, 1]; % 0 untuk cost (age), 1 untuk benefit (shooting, passing, dribbling)

% Ambil data yang diperlukan dari tabel
dataTable = handles.data;
dataMatrix = table2array(dataTable(:, {'age', 'shooting', 'passing', 'dribbling'})); % Ambil kolom age, shooting, passing, dribbling
disp('dataTable');

% Normalisasi bobot
bobot = bobot ./ sum(bobot);
disp('bobot');
disp(bobot);

% Normalisasi matrix
[m, n] = size(dataMatrix);
R = zeros(m, n);
skor = zeros(m, 1);
for j = 1:n
    if k(j) == 1
        R(:, j) = dataMatrix(:, j) ./ max(dataMatrix(:, j));
    else
        R(:, j) = min(dataMatrix(:, j)) ./ dataMatrix(:, j);
    end
end
disp('matriks hasil normalisasi');
disp(R);

% Perangkingan sum bobot
for i = 1:m
    skor(i) = sum(bobot .* R(i, :));
end
disp('skor');
disp(skor);
skor = num2cell(skor);
disp('skor');
disp(skor);

% Set new table hasil
playerNames = table2cell(dataTable(:, 'short_name')); % Ambil nama pemain

resultData = [skor, playerNames];
resultData = sortrows(resultData, -1); % Urutkan berdasarkan skor secara menurun

% Ambil 10 data teratas
resultData = resultData(1:min(10, size(resultData, 1)), :);

set(handles.tabelhasil_020, 'Data', resultData); % Tampilkan hasil dalam tabel GUI
disp('data');
disp(resultData);
