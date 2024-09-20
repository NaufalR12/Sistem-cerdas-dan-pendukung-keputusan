function varargout = latihankuis(varargin)
% LATIHANKUIS MATLAB code for latihankuis.fig
%      LATIHANKUIS, by itself, creates a new LATIHANKUIS or raises the existing
%      singleton*.
%
%      H = LATIHANKUIS returns the handle to a new LATIHANKUIS or the handle to
%      the existing singleton*.
%
%      LATIHANKUIS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LATIHANKUIS.M with the given input arguments.
%
%      LATIHANKUIS('Property','Value',...) creates a new LATIHANKUIS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before latihankuis_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to latihankuis_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help latihankuis

% Last Modified by GUIDE v2.5 19-Mar-2024 21:02:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @latihankuis_OpeningFcn, ...
                   'gui_OutputFcn',  @latihankuis_OutputFcn, ...
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


% --- Executes just before latihankuis is made visible.
function latihankuis_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to latihankuis (see VARARGIN)

% Choose default command line output for latihankuis
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes latihankuis wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = latihankuis_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function pb_Callback(hObject, eventdata, handles)
% hObject    handle to pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pb as text
%        str2double(get(hObject,'String')) returns contents of pb as a double


% --- Executes during object creation, after setting all properties.
function pb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kt_Callback(hObject, eventdata, handles)
% hObject    handle to kt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kt as text
%        str2double(get(hObject,'String')) returns contents of kt as a double


% --- Executes during object creation, after setting all properties.
function kt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kf_Callback(hObject, eventdata, handles)
% hObject    handle to kf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kf as text
%        str2double(get(hObject,'String')) returns contents of kf as a double


% --- Executes during object creation, after setting all properties.
function kf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%ambil dari handlenya
pb = str2num(get(handles.pb, 'string'));
kt = str2num(get(handles.kt, 'string'));

%ambil file fuzzy tadi, nama bebas
file = readfis('Latihankuis');

%evaluasi fuzzynya 
hasil = evalfis([pb, kt], file);
%tampilkan
set(handles.kf, 'string',hasil);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%tombol reset
set(handles.pb, 'string', '');
set(handles.kt, 'string', '');
set(handles.kf, 'string', '');