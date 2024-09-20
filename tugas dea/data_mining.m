function varargout = data_mining(varargin)
% DATA_MINING MATLAB code for data_mining.fig
%      DATA_MINING, by itself, creates a new DATA_MINING or raises the existing
%      singleton*.
%
%      H = DATA_MINING returns the handle to a new DATA_MINING or the handle to
%      the existing singleton*.
%
%      DATA_MINING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATA_MINING.M with the given input arguments.
%
%      DATA_MINING('Property','Value',...) creates a new DATA_MINING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before data_mining_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to data_mining_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help data_mining

% Last Modified by GUIDE v2.5 18-Mar-2024 15:18:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @data_mining_OpeningFcn, ...
                   'gui_OutputFcn',  @data_mining_OutputFcn, ...
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


% --- Executes just before data_mining is made visible.
function data_mining_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to data_mining (see VARARGIN)

% Choose default command line output for data_mining
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes data_mining wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = data_mining_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in showbutton.
function showbutton_Callback(hObject, eventdata, handles)
% hObject    handle to showbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions('iris.csv');
opts.SelectedVariableNames=(1:4);
%misalkan ga satu folder, nntipas di file explorer di copy path
% misalnya C:\Users\HP\Downloads\iris.csv
data = readmatrix('iris.csv', opts);
% biar nnti data di file iris bisa masuk di tabel
set(handles.tabledata, 'data', data);


% --- Executes on button press in hasilbutton.
function hasilbutton_Callback(hObject, eventdata, handles)
% hObject    handle to hasilbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sl = str2double(get(handles.sl, 'String'));
sw = str2double(get(handles.sw, 'String'));
pl = str2double(get(handles.pl, 'String'));
pw = str2double(get(handles.pw, 'String'));

sample = [sl, sw, pl, pw];
opts = detectImportOptions('iris.csv');
opts.SelectedVariableNames=(1:4);
training = readmatrix('iris.csv', opts);

opts = detectImportOptions('iris.csv');
opts.SelectedVariableNames=(5);
group = readmatrix('iris.csv', opts);

class = fitcknn(training, group, 'NumNeighbors', 3);
klasifikasi = predict(class, sample);

set(handles.hasil, 'String', klasifikasi);
 

function sl_Callback(hObject, eventdata, handles)
% hObject    handle to sl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sl as text
%        str2double(get(hObject,'String')) returns contents of sl as a double


% --- Executes during object creation, after setting all properties.
function sl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sw_Callback(hObject, eventdata, handles)
% hObject    handle to sw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sw as text
%        str2double(get(hObject,'String')) returns contents of sw as a double


% --- Executes during object creation, after setting all properties.
function sw_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pl_Callback(hObject, eventdata, handles)
% hObject    handle to pl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pl as text
%        str2double(get(hObject,'String')) returns contents of pl as a double


% --- Executes during object creation, after setting all properties.
function pl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pw_Callback(hObject, eventdata, handles)
% hObject    handle to pw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pw as text
%        str2double(get(hObject,'String')) returns contents of pw as a double


% --- Executes during object creation, after setting all properties.
function pw_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when entered data in editable cell(s) in tabledata.
function tabledata_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to tabledata (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
