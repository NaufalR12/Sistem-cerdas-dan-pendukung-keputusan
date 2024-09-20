function varargout = datamining(varargin)
% DATAMINING MATLAB code for datamining.fig
%      DATAMINING, by itself, creates a new DATAMINING or raises the existing
%      singleton*.
%
%      H = DATAMINING returns the handle to a new DATAMINING or the handle to
%      the existing singleton*.
%
%      DATAMINING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATAMINING.M with the given input arguments.
%
%      DATAMINING('Property','Value',...) creates a new DATAMINING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before datamining_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to datamining_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help datamining

% Last Modified by GUIDE v2.5 13-Mar-2024 08:44:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @datamining_OpeningFcn, ...
                   'gui_OutputFcn',  @datamining_OutputFcn, ...
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


% --- Executes just before datamining is made visible.
function datamining_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to datamining (see VARARGIN)

% Choose default command line output for datamining
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes datamining wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = datamining_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in ShowData.
function ShowData_Callback(hObject, eventdata, handles)
% hObject    handle to ShowData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions('Iris.csv');
opts.SelectedVariableNames = (2:5);
all_data = readmatrix('Iris.csv', opts');
set(handles.uitable1, 'data', all_data);

function SepalLength_Callback(hObject, eventdata, handles)
% hObject    handle to SepalLength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SepalLength as text
%        str2double(get(hObject,'String')) returns contents of SepalLength as a double


% --- Executes during object creation, after setting all properties.
function SepalLength_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SepalLength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SepalWidth_Callback(hObject, eventdata, handles)
% hObject    handle to SepalWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SepalWidth as text
%        str2double(get(hObject,'String')) returns contents of SepalWidth as a double


% --- Executes during object creation, after setting all properties.
function SepalWidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SepalWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PetalLength_Callback(hObject, eventdata, handles)
% hObject    handle to PetalLength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PetalLength as text
%        str2double(get(hObject,'String')) returns contents of PetalLength as a double


% --- Executes during object creation, after setting all properties.
function PetalLength_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PetalLength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PetalWidth_Callback(hObject, eventdata, handles)
% hObject    handle to PetalWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PetalWidth as text
%        str2double(get(hObject,'String')) returns contents of PetalWidth as a double


% --- Executes during object creation, after setting all properties.
function PetalWidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PetalWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function KValue_Callback(hObject, eventdata, handles)
% hObject    handle to KValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of KValue as text
%        str2double(get(hObject,'String')) returns contents of KValue as a double


% --- Executes during object creation, after setting all properties.
function KValue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to KValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Classify_Callback(hObject, eventdata, handles)
% hObject    handle to Classify (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Classify as text
%        str2double(get(hObject,'String')) returns contents of Classify as a double


% --- Executes during object creation, after setting all properties.
function Classify_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Classify (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sl = str2double(get(handles.SepalLength, 'string'));
sw = str2double(get(handles.SepalWidth, 'string'));
pl = str2double(get(handles.PetalLength, 'string'));
pw = str2double(get(handles.PetalWidth, 'string'));
k = str2double(get(handles.KValue, 'string'));
sample = [sl sw pl pw]; %data baru yang diinput
opts = detectImportOptions('Iris.csv');
opts.SelectedVariableNames = (2:5);
training = readmatrix('Iris.csv',opts); %data lama untuk training
opts.SelectedVariableNames = (6);
group = readmatrix('Iris.csv',opts); %kelas yang sudah ada
class = fitcknn(training, group, 'NumNeighbors', k);
result = predict(class, sample);
set(handles.Classify, 'string', result);