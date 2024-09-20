function varargout = kelilingsegi4(varargin)
% KELILINGSEGI4 MATLAB code for kelilingsegi4.fig
%      KELILINGSEGI4, by itself, creates a new KELILINGSEGI4 or raises the existing
%      singleton*.
%
%      H = KELILINGSEGI4 returns the handle to a new KELILINGSEGI4 or the handle to
%      the existing singleton*.
%
%      KELILINGSEGI4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KELILINGSEGI4.M with the given input arguments.
%
%      KELILINGSEGI4('Property','Value',...) creates a new KELILINGSEGI4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kelilingsegi4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kelilingsegi4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kelilingsegi4

% Last Modified by GUIDE v2.5 28-Feb-2024 09:51:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kelilingsegi4_OpeningFcn, ...
                   'gui_OutputFcn',  @kelilingsegi4_OutputFcn, ...
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


% --- Executes just before kelilingsegi4 is made visible.
function kelilingsegi4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kelilingsegi4 (see VARARGIN)

% Choose default command line output for kelilingsegi4
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes kelilingsegi4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = kelilingsegi4_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function SisiA_Callback(hObject, eventdata, handles)
% hObject    handle to SisiA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SisiA as text
%        str2double(get(hObject,'String')) returns contents of SisiA as a double


% --- Executes during object creation, after setting all properties.
function SisiA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SisiA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SisiB_Callback(hObject, eventdata, handles)
% hObject    handle to SisiB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SisiB as text
%        str2double(get(hObject,'String')) returns contents of SisiB as a double


% --- Executes during object creation, after setting all properties.
function SisiB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SisiB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasilKeliling_Callback(hObject, eventdata, handles)
% hObject    handle to hasilKeliling (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilKeliling as text
%        str2double(get(hObject,'String')) returns contents of hasilKeliling as a double


% --- Executes during object creation, after setting all properties.
function hasilKeliling_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilKeliling (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SisiD_Callback(hObject, eventdata, handles)
% hObject    handle to SisiD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SisiD as text
%        str2double(get(hObject,'String')) returns contents of SisiD as a double


% --- Executes during object creation, after setting all properties.
function SisiD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SisiD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SisiC_Callback(hObject, eventdata, handles)
% hObject    handle to SisiC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SisiC as text
%        str2double(get(hObject,'String')) returns contents of SisiC as a double


% --- Executes during object creation, after setting all properties.
function SisiC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SisiC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


sisiA = get(handles.SisiA, 'string');
sisiB = get(handles.SisiB, 'string');
sisiC = get(handles.SisiC, 'string');
sisiD = get(handles.SisiD, 'string');

A = str2num(sisiA);
B = str2num(sisiB);
C = str2num(sisiC);
D = str2num(sisiD);

Keliling = A + B + C + D;
hasilKeliling =  num2str(Keliling);
set(handles.hasilKeliling, 'string',(hasilKeliling))


% --- Executes on button press in Keliling.
function Keliling_Callback(hObject, eventdata, handles)
% hObject    handle to Keliling (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
