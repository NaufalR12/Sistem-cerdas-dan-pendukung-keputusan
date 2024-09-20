function varargout = Dea_Tugas3(varargin)
% DEA_TUGAS3 MATLAB code for Dea_Tugas3.fig
%      DEA_TUGAS3, by itself, creates a new DEA_TUGAS3 or raises the existing
%      singleton*.
%
%      H = DEA_TUGAS3 returns the handle to a new DEA_TUGAS3 or the handle to
%      the existing singleton*.
%
%      DEA_TUGAS3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DEA_TUGAS3.M with the given input arguments.
%
%      DEA_TUGAS3('Property','Value',...) creates a new DEA_TUGAS3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Dea_Tugas3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Dea_Tugas3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Dea_Tugas3

% Last Modified by GUIDE v2.5 18-Mar-2024 22:22:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Dea_Tugas3_OpeningFcn, ...
                   'gui_OutputFcn',  @Dea_Tugas3_OutputFcn, ...
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


% --- Executes just before Dea_Tugas3 is made visible.
function Dea_Tugas3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Dea_Tugas3 (see VARARGIN)

% Choose default command line output for Dea_Tugas3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Dea_Tugas3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Dea_Tugas3_OutputFcn(hObject, eventdata, handles) 
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
opts = detectImportOptions('apple_quality.csv');
opts.SelectedVariableNames=(1:7);
data = readmatrix('apple_quality.csv', opts);
set(handles.tabledata, 'data', data);


% --- Executes on button press in resetbutton.
function resetbutton_Callback(hObject, eventdata, handles)
% hObject    handle to resetbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.isize, 'String', '');
set(handles.iweight, 'String', '');
set(handles.isweetness, 'String', '');
set(handles.icrunchiness, 'String', '');
set(handles.ijuiciness, 'String', '');
set(handles.iripeness, 'String', '');
set(handles.iacidity, 'String', '');
set(handles.kinput, 'String', '');

set(handles.result, 'String', '');

% Mengosongkan tabel
data = cell(0, 0);
set(findobj('Tag', 'tabledata'), 'Data', data);

function isize_Callback(hObject, eventdata, handles)
% hObject    handle to isize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of isize as text
%        str2double(get(hObject,'String')) returns contents of isize as a double


% --- Executes during object creation, after setting all properties.
function isize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to isize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iweight_Callback(hObject, eventdata, handles)
% hObject    handle to iweight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iweight as text
%        str2double(get(hObject,'String')) returns contents of iweight as a double


% --- Executes during object creation, after setting all properties.
function iweight_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iweight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function isweetness_Callback(hObject, eventdata, handles)
% hObject    handle to isweetness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of isweetness as text
%        str2double(get(hObject,'String')) returns contents of isweetness as a double


% --- Executes during object creation, after setting all properties.
function isweetness_CreateFcn(hObject, eventdata, handles)
% hObject    handle to isweetness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function icrunchiness_Callback(hObject, eventdata, handles)
% hObject    handle to icrunchiness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of icrunchiness as text
%        str2double(get(hObject,'String')) returns contents of icrunchiness as a double


% --- Executes during object creation, after setting all properties.
function icrunchiness_CreateFcn(hObject, eventdata, handles)
% hObject    handle to icrunchiness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ijuiciness_Callback(hObject, eventdata, handles)
% hObject    handle to ijuiciness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ijuiciness as text
%        str2double(get(hObject,'String')) returns contents of ijuiciness as a double


% --- Executes during object creation, after setting all properties.
function ijuiciness_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ijuiciness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iripeness_Callback(hObject, eventdata, handles)
% hObject    handle to iripeness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iripeness as text
%        str2double(get(hObject,'String')) returns contents of iripeness as a double


% --- Executes during object creation, after setting all properties.
function iripeness_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iripeness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iacidity_Callback(hObject, eventdata, handles)
% hObject    handle to iacidity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iacidity as text
%        str2double(get(hObject,'String')) returns contents of iacidity as a double


% --- Executes during object creation, after setting all properties.
function iacidity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iacidity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kinput_Callback(hObject, eventdata, handles)
% hObject    handle to kinput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kinput as text
%        str2double(get(hObject,'String')) returns contents of kinput as a double


% --- Executes during object creation, after setting all properties.
function kinput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kinput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in klasifikasibutton.
function klasifikasibutton_Callback(hObject, eventdata, handles)
% hObject    handle to klasifikasibutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Mengambil nilai input dari GUI dan mengonversi menjadi tipe data numerik
isize = str2double(get(handles.isize, 'String'));
iweight = str2double(get(handles.iweight, 'String'));
isweetness = str2double(get(handles.isweetness, 'String'));
icrunchiness = str2double(get(handles.icrunchiness, 'String'));
ijuiciness = str2double(get(handles.ijuiciness, 'String'));
iripeness = str2double(get(handles.iripeness, 'String'));
iacidity = str2double(get(handles.iacidity, 'String'));
kinput = str2double(get(handles.kinput, 'String'));

% Menggabungkan nilai input menjadi satu sampel
sample = [isize, iweight, isweetness, icrunchiness, ijuiciness, iripeness, iacidity];

% Membaca dataset dari file 'apple_quality.csv'
opts = detectImportOptions('apple_quality.csv');
opts.SelectedVariableNames = (2:8);
training = readtable('apple_quality.csv', opts);

opts.SelectedVariableNames = (9);

group = readmatrix('apple_quality.csv',opts); %kelas yang sudah ada

% Melakukan klasifikasi dengan algoritma k-NN
class = fitcknn(training, group, 'NumNeighbors', kinput);

% Melakukan prediksi untuk sampel yang diberikan
klasifikasi = predict(class, sample);

% Menampilkan hasil klasifikasi pada GUI
set(handles.result, 'String', klasifikasi);
