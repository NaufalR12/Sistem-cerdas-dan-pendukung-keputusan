function varargout = inputan(varargin)
% inputan MATLAB code for inputan.fig
%      inputan, by itself, creates a new inputan or raises the existing
%      singleton*.
%
%      H = inputan returns the handle to a new inputan or the handle to
%      the existing singleton*.
%
%      inputan('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in inputan.M with the given input arguments.
%
%      inputan('Property','Value',...) creates a new inputan or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the inputan before inputan_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to inputan_OpeningFcn via varargin.
%
%      *See inputan Options on GUIDE's Tools menu.  Choose "inputan allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help inputan

% Last Modified by GUIDE v2.5 13-Jun-2024 21:47:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @inputan_OpeningFcn, ...
                   'gui_OutputFcn',  @inputan_OutputFcn, ...
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



% --- Executes just before inputan is made visible.
function inputan_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to inputan (see VARARGIN)

% Choose default command line output for inputan
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes inputan wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = inputan_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function pendapatanSlider_Callback(hObject, eventdata, handles)
% hObject    handle to pendapatanSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(hObject, 'Value');

% Mengupdate text samping slider
set(handles.pendapatanText, 'String', num2str(sliderValue));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function pendapatanSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pendapatanSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function tanggunganSlider_Callback(hObject, eventdata, handles)
% hObject    handle to tanggunganSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = round(get(hObject, 'Value'));

% Mengupdate text samping slider
set(handles.tanggunganTextt, 'String', num2str(sliderValue));
set(hObject, 'Value', sliderValue);  % Ensure the slider value is an integer
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function tanggunganSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tanggunganSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function rumahSlider_Callback(hObject, eventdata, handles)
% hObject    handle to tanggunganText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderValue = get(hObject, 'Value');


% Mengupdate text samping slider
set(handles.rumahText, 'String', num2str(sliderValue));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function rumahText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tanggunganText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function pendapatanText_Callback(hObject, eventdata, handles)
% hObject    handle to pendapatanText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pendapatanText as text
%        str2double(get(hObject,'String')) returns contents of pendapatanText as a double

textValue = str2double(get(hObject, 'String'));
 if textValue < 0
        textValue = 0;
    elseif textValue > 5000000
        textValue = 5000000;
    end
    set(handles.pendapatanText, 'String', num2str(textValue));
    set(handles.pendapatanSlider, 'Value', textValue);

% --- Executes during object creation, after setting all properties.
function pendapatanText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pendapatanText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tanggunganTextt_Callback(hObject, eventdata, handles)
% hObject    handle to tanggunganTextt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tanggunganTextt as text
%        str2double(get(hObject,'String')) returns contents of tanggunganTextt as a double
textValue = str2double(get(hObject, 'String'));

    if textValue < 0
        textValue = 0;
    elseif textValue > 10
        textValue = 10;
    end
    set(handles.tanggunganTextt, 'String', num2str(textValue));
    set(handles.tanggunganSlider, 'Value', textValue);

% --- Executes during object creation, after setting all properties.
function tanggunganTextt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tanggunganTextt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rumahText_Callback(hObject, eventdata, handles)
% hObject    handle to rumahText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rumahText as text
%        str2double(get(hObject,'String')) returns contents of rumahText as a double
textValue = str2double(get(hObject, 'String'));

    if textValue < 0
        textValue = 0;
    elseif textValue > 10
        textValue = 10;
    end
    set(handles.rumahText, 'String', num2str(textValue));
    set(handles.rumahSlider, 'Value', textValue);


% --- Executes on button press in resultButton.
function resultButton_Callback(hObject, eventdata, handles)
% hObject    handle to resultButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global hasill;

% Get and validate jumlah tanggungan
jumlah_tanggungan = get(handles.tanggunganTextt, 'string');
jumlah_tanggungan = str2double(jumlah_tanggungan);
if isnan(jumlah_tanggungan) || mod(jumlah_tanggungan, 1) ~= 0 || jumlah_tanggungan < 0 || jumlah_tanggungan > 10
    errordlg('Jumlah tanggungan harus angka bulat tanpa koma dan berada dalam rentang 0 hingga 10, silahkan inputkan ulang di ', 'Input Error');
    return;
end

a = readfis('seleksi_bansos');
pendapatan = get(handles.pendapatanText, 'string');
pendapatan = str2double(pendapatan);
jumlah_tanggungan = get(handles.tanggunganTextt, 'string');
jumlah_tanggungan = str2double(jumlah_tanggungan);
kondisi_rumah = get(handles.rumahText, 'string');
kondisi_rumah = str2double(kondisi_rumah);
out = evalfis([pendapatan jumlah_tanggungan kondisi_rumah],a);
if(out >= 0 && out <= 4.5)
    hasill = "Tidak diterima";
elseif(out >= 4.5 && out <= 6.5     
    hasill = "Dipertimbangkan";
else
    hasill = "Diterima";
end


hasil;
close('inputan');

function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of result as text
%        str2double(get(hObject,'String')) returns contents of result as a double


% --- Executes during object creation, after setting all properties.
function result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on mouse press over figure background.
function figure1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)





% --- Executes during object creation, after setting all properties.
function rumahSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rumahSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in btnreset.
function btnreset_Callback(hObject, eventdata, handles)
% hObject    handle to btnreset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.pendapatanText, 'String', '');
    set(handles.tanggunganTextt, 'String', '');
    set(handles.rumahText, 'String', '');
    guidata(hObject, handles);
    

% --- Executes on button press in btnback.
function btnback_Callback(hObject, eventdata, handles)
% hObject    handle to btnback (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
index;
close('inputan');



% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rumahText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
