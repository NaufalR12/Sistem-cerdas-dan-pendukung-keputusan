function varargout = latihankuismining(varargin)
% LATIHANKUISMINING MATLAB code for latihankuismining.fig
%      LATIHANKUISMINING, by itself, creates a new LATIHANKUISMINING or raises the existing
%      singleton*.
%
%      H = LATIHANKUISMINING returns the handle to a new LATIHANKUISMINING or the handle to
%      the existing singleton*.
%
%      LATIHANKUISMINING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LATIHANKUISMINING.M with the given input arguments.
%
%      LATIHANKUISMINING('Property','Value',...) creates a new LATIHANKUISMINING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before latihankuismining_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to latihankuismining_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help latihankuismining

% Last Modified by GUIDE v2.5 19-Mar-2024 22:07:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @latihankuismining_OpeningFcn, ...
                   'gui_OutputFcn',  @latihankuismining_OutputFcn, ...
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


% --- Executes just before latihankuismining is made visible.
function latihankuismining_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to latihankuismining (see VARARGIN)

% Choose default command line output for latihankuismining
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes latihankuismining wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = latihankuismining_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in tampilkandata.
function tampilkandata_Callback(hObject, eventdata, handles)
% hObject    handle to tampilkandata (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%untuk menampilkan data ke tabel
%misalkan ga satu folder, nntipas di file explorer di copy path
% misalnya C:\Users\HP\Downloads\iris.csv
opts = detectImportOptions('milk.csv');
opts.SelectedVariableNames = (1:7);
all_data = readmatrix('milk.csv', opts);
%memasukkan data di csv ke dalam tabel
set(handles.tabeldata, 'data', all_data);



% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%mengosongkan data pada tabel
kosong = {}
set(handles.tabeldata, 'data', kosong);
set(handles.ph, 'string','');
set(handles.temperature, 'string','');
set(handles.taste, 'string','');
set(handles.odor, 'string','');
set(handles.fat, 'string','');
set(handles.turbidity, 'string','');
set(handles.colour, 'string','');
set(handles.k, 'string','');
set(handles.grade, 'string','');

function ph_Callback(hObject, eventdata, handles)
% hObject    handle to ph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ph as text
%        str2double(get(hObject,'String')) returns contents of ph as a double


% --- Executes during object creation, after setting all properties.
function ph_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function temperature_Callback(hObject, eventdata, handles)
% hObject    handle to temperature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of temperature as text
%        str2double(get(hObject,'String')) returns contents of temperature as a double


% --- Executes during object creation, after setting all properties.
function temperature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to temperature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function taste_Callback(hObject, eventdata, handles)
% hObject    handle to taste (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of taste as text
%        str2double(get(hObject,'String')) returns contents of taste as a double


% --- Executes during object creation, after setting all properties.
function taste_CreateFcn(hObject, eventdata, handles)
% hObject    handle to taste (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function odor_Callback(hObject, eventdata, handles)
% hObject    handle to odor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of odor as text
%        str2double(get(hObject,'String')) returns contents of odor as a double


% --- Executes during object creation, after setting all properties.
function odor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to odor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fat_Callback(hObject, eventdata, handles)
% hObject    handle to fat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fat as text
%        str2double(get(hObject,'String')) returns contents of fat as a double


% --- Executes during object creation, after setting all properties.
function fat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function turbidity_Callback(hObject, eventdata, handles)
% hObject    handle to turbidity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of turbidity as text
%        str2double(get(hObject,'String')) returns contents of turbidity as a double


% --- Executes during object creation, after setting all properties.
function turbidity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to turbidity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function colour_Callback(hObject, eventdata, handles)
% hObject    handle to colour (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of colour as text
%        str2double(get(hObject,'String')) returns contents of colour as a double


% --- Executes during object creation, after setting all properties.
function colour_CreateFcn(hObject, eventdata, handles)
% hObject    handle to colour (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k_Callback(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k as text
%        str2double(get(hObject,'String')) returns contents of k as a double


% --- Executes during object creation, after setting all properties.
function k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function grade_Callback(hObject, eventdata, handles)
% hObject    handle to grade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of grade as text
%        str2double(get(hObject,'String')) returns contents of grade as a double


% --- Executes during object creation, after setting all properties.
function grade_CreateFcn(hObject, eventdata, handles)
% hObject    handle to grade (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in classify.
function classify_Callback(hObject, eventdata, handles)
% hObject    handle to classify (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%proses klasifikasi
ph = str2double(get(handles.ph, 'string'));
tmp = str2double(get(handles.temperature, 'string'));
ts = str2double(get(handles.taste, 'string'));
odor = str2double(get(handles.odor, 'string'));
fat = str2double(get(handles.fat, 'string'));
tr = str2double(get(handles.turbidity, 'string'));
cr = str2double(get(handles.colour, 'string'));
k = str2double(get(handles.k, 'string'));
sample = [ph tmp ts odor fat tr cr];%data baru yang diinput
opts = detectImportOptions('milk.csv');
opts.SelectedVariableNames=(1:7);
training = readmatrix('milk.csv',opts); %data lama untuk training

opts.SelectedVariableNames=(8); %baris yang akan di classify %kelas yang sudah ada
group = readmatrix('milk', opts);%kelas yang sudah ada
class = fitcknn(training, group, 'NumNeighbors', k);
result = predict(class, sample);
set(handles.grade, 'string', result);