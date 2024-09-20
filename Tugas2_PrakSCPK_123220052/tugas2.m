function varargout = tugas2(varargin)
% TUGAS2 MATLAB code for tugas2.fig
%      TUGAS2, by itself, creates a new TUGAS2 or raises the existing
%      singleton*.
%
%      H = TUGAS2 returns the handle to a new TUGAS2 or the handle to
%      the existing singleton*.
%
%      TUGAS2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TUGAS2.M with the given input arguments.
%
%      TUGAS2('Property','Value',...) creates a new TUGAS2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tugas2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tugas2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tugas2

% Last Modified by GUIDE v2.5 15-Mar-2024 12:52:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tugas2_OpeningFcn, ...
                   'gui_OutputFcn',  @tugas2_OutputFcn, ...
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


% --- Executes just before tugas2 is made visible.
function tugas2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tugas2 (see VARARGIN)

% Choose default command line output for tugas2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tugas2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tugas2_OutputFcn(hObject, eventdata, handles) 
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
opts = detectImportOptions('Merapi.csv');
opts.SelectedVariableNames = (2:8);
all_data = readmatrix('Merapi.csv', opts');
set(handles.uitable1, 'data', all_data);

% --- Executes on button press in sembunyikandata.
function sembunyikandata_Callback(hObject, eventdata, handles)
% hObject    handle to sembunyikandata (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
kosong = {}
set(handles.uitable1, 'data', kosong);


function guguran_Callback(hObject, eventdata, handles)
% hObject    handle to guguran (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of guguran as text
%        str2double(get(hObject,'String')) returns contents of guguran as a double


% --- Executes during object creation, after setting all properties.
function guguran_CreateFcn(hObject, eventdata, handles)
% hObject    handle to guguran (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lowfrequency_Callback(hObject, eventdata, handles)
% hObject    handle to lowfrequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lowfrequency as text
%        str2double(get(hObject,'String')) returns contents of lowfrequency as a double


% --- Executes during object creation, after setting all properties.
function lowfrequency_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lowfrequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hybrid_Callback(hObject, eventdata, handles)
% hObject    handle to hybrid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hybrid as text
%        str2double(get(hObject,'String')) returns contents of hybrid as a double


% --- Executes during object creation, after setting all properties.
function hybrid_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hybrid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vulkanikdangkal_Callback(hObject, eventdata, handles)
% hObject    handle to vulkanikdangkal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vulkanikdangkal as text
%        str2double(get(hObject,'String')) returns contents of vulkanikdangkal as a double


% --- Executes during object creation, after setting all properties.
function vulkanikdangkal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vulkanikdangkal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tektonik_Callback(hObject, eventdata, handles)
% hObject    handle to tektonik (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tektonik as text
%        str2double(get(hObject,'String')) returns contents of tektonik as a double


% --- Executes during object creation, after setting all properties.
function tektonik_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tektonik (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hembusan_Callback(hObject, eventdata, handles)
% hObject    handle to hembusan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hembusan as text
%        str2double(get(hObject,'String')) returns contents of hembusan as a double


% --- Executes during object creation, after setting all properties.
function hembusan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hembusan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function awanpanasguguran_Callback(hObject, eventdata, handles)
% hObject    handle to awanpanasguguran (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of awanpanasguguran as text
%        str2double(get(hObject,'String')) returns contents of awanpanasguguran as a double


% --- Executes during object creation, after setting all properties.
function awanpanasguguran_CreateFcn(hObject, eventdata, handles)
% hObject    handle to awanpanasguguran (see GCBO)
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



function status_Callback(hObject, eventdata, handles)
% hObject    handle to status (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of status as text
%        str2double(get(hObject,'String')) returns contents of status as a double


% --- Executes during object creation, after setting all properties.
function status_CreateFcn(hObject, eventdata, handles)
% hObject    handle to status (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in klasifikasi.
function klasifikasi_Callback(hObject, eventdata, handles)
% hObject    handle to klasifikasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gg = str2double(get(handles.guguran, 'string'));
lf = str2double(get(handles.lowfrequency, 'string'));
h = str2double(get(handles.hybrid, 'string'));
vd = str2double(get(handles.vulkanikdangkal, 'string'));
t = str2double(get(handles.tektonik, 'string'));
hb = str2double(get(handles.hembusan, 'string'));
apg = str2double(get(handles.awanpanasguguran, 'string'));
k = str2double(get(handles.k, 'string'));
sample = [gg lf h vd t hb apg]; %data baru yang diinput
opts = detectImportOptions('Merapi.csv');
opts.SelectedVariableNames = (2:8);
training = readmatrix('Merapi.csv',opts); %data lama untuk training
opts.SelectedVariableNames = (9);
group = readmatrix('Merapi.csv',opts); %kelas yang sudah ada
class = fitcknn(training, group, 'NumNeighbors', k);
result = predict(class, sample);
set(handles.status, 'string', result);

% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.guguran, 'String', '');
set(handles.lowfrequency, 'String', '');
set(handles.hybrid, 'String', '');
set(handles.vulkanikdangkal, 'String', '');
set(handles.tektonik, 'String', '');
set(handles.hembusan, 'String', '');
set(handles.awanpanasguguran, 'String', '');
set(handles.k, 'String', '');
set(handles.status, 'String', ''); 
