function varargout = kriteria(varargin)
% KRITERIA MATLAB code for kriteria.fig
%      KRITERIA, by itself, creates a new KRITERIA or raises the existing
%      singleton*.
%
%      H = KRITERIA returns the handle to a new KRITERIA or the handle to
%      the existing singleton*.
%
%      KRITERIA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KRITERIA.M with the given input arguments.
%
%      KRITERIA('Property','Value',...) creates a new KRITERIA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kriteria_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kriteria_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kriteria

% Last Modified by GUIDE v2.5 28-May-2024 21:53:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kriteria_OpeningFcn, ...
                   'gui_OutputFcn',  @kriteria_OutputFcn, ...
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


% --- Executes just before kriteria is made visible.
function kriteria_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kriteria (see VARARGIN)

% Choose default command line output for kriteria
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes kriteria wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = kriteria_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function bbC_Callback(hObject, eventdata, handles)
% hObject    handle to bbC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bbC as text
%        str2double(get(hObject,'String')) returns contents of bbC as a double


% --- Executes during object creation, after setting all properties.
function bbC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bbC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bbR_Callback(hObject, eventdata, handles)
% hObject    handle to bbR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bbR as text
%        str2double(get(hObject,'String')) returns contents of bbR as a double


% --- Executes during object creation, after setting all properties.
function bbR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bbR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bbDT_Callback(hObject, eventdata, handles)
% hObject    handle to bbDT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bbDT as text
%        str2double(get(hObject,'String')) returns contents of bbDT as a double


% --- Executes during object creation, after setting all properties.
function bbDT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bbDT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bbFPT_Callback(hObject, eventdata, handles)
% hObject    handle to bbFPT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bbFPT as text
%        str2double(get(hObject,'String')) returns contents of bbFPT as a double


% --- Executes during object creation, after setting all properties.
function bbFPT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bbFPT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnReset.
function btnReset_Callback(hObject, eventdata, handles)
% hObject    handle to btnReset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%mengosongkan isi
set(handles.bbC, 'String', '');
set(handles.bbR, 'String', '');
set(handles.bbFPT, 'String', '');
set(handles.bbDT, 'String', '');

% --- Executes on button press in btnKembali.
function btnKembali_Callback(hObject, eventdata, handles)
% hObject    handle to btnKembali (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Beranda;
close('kriteria');

% --- Executes on button press in btnLanjut.
function btnLanjut_Callback(hObject, eventdata, handles)
% hObject    handle to btnLanjut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Ambil bobot dari bidang input
wC = str2double(get(handles.bbC, 'String'));
wR = str2double(get(handles.bbR, 'String'));
wFPT = str2double(get(handles.bbFPT, 'String'));
wDT = str2double(get(handles.bbDT, 'String'));

% Gabungkan bobot menjadi vektor kolom
w = [wC; wR; wFPT; wDT];

% Normalisasi bobot agar jumlahnya menjadi 1
w = w / sum(w);

% Berikan bobot ke Proses
Proses('w', w);

% Tutup figure kriteria
close('kriteria');
