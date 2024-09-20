function varargout = kalkulator_bangun_ruang(varargin)
% KALKULATOR_BANGUN_RUANG MATLAB code for kalkulator_bangun_ruang.fig
%      KALKULATOR_BANGUN_RUANG, by itself, creates a new KALKULATOR_BANGUN_RUANG or raises the existing
%      singleton*.
%
%      H = KALKULATOR_BANGUN_RUANG returns the handle to a new KALKULATOR_BANGUN_RUANG or the handle to
%      the existing singleton*.
%
%      KALKULATOR_BANGUN_RUANG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KALKULATOR_BANGUN_RUANG.M with the given input arguments.
%
%      KALKULATOR_BANGUN_RUANG('Property','Value',...) creates a new KALKULATOR_BANGUN_RUANG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kalkulator_bangun_ruang_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kalkulator_bangun_ruang_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kalkulator_bangun_ruang

% Last Modified by GUIDE v2.5 03-Mar-2024 21:26:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kalkulator_bangun_ruang_OpeningFcn, ...
                   'gui_OutputFcn',  @kalkulator_bangun_ruang_OutputFcn, ...
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


% --- Executes just before kalkulator_bangun_ruang is made visible.
function kalkulator_bangun_ruang_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kalkulator_bangun_ruang (see VARARGIN)

% Choose default command line output for kalkulator_bangun_ruang
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes kalkulator_bangun_ruang wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = kalkulator_bangun_ruang_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
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

% Ambil nilai dari input panjang, lebar, dan tinggi
panjang = str2double(get(handles.edit1, 'String'));
lebar = str2double(get(handles.edit2, 'String'));
tinggi = str2double(get(handles.edit3, 'String'));

% Cek jenis bangun ruang yang dipilih
if get(handles.radiobutton1, 'Value') % Balok
    luas_permukaan = 2 * (panjang * lebar + panjang * tinggi + lebar * tinggi);
    volume = panjang * lebar * tinggi;
elseif get(handles.radiobutton2, 'Value') % Prisma Segitiga
    %jika panjang = lebar diasumsikan alas prisma ini adalah segitiga sama sisi 
    %dengan panjang sebagai alas segitiga dan lebar sebagai tinggi segitiga
    %dan tinggi sebagai tinggi prisma
    if panjang == lebar     
        sisi_segitiga = panjang;
        tinggi_prisma = tinggi;

        % Menghitung luas alas segitiga
        luas_alas = 0.25 * sisi_segitiga^2 * sqrt(3);

        % Menghitung luas sisi tegak prisma segitiga
        luas_selimut = 3 * sisi_segitiga * tinggi_prisma;

        % Menghitung luas permukaan prisma
        luas_permukaan = 2 * luas_alas + luas_selimut;

        % Menghitung volume prisma
        volume = luas_alas * tinggi_prisma;
        
    else %jika panjang tidak sama dengan lebar maka dianggap segitiga siku-siku
        tinggi_segitiga = panjang;
        sisi_alas = lebar;
        tinggi_prisma = tinggi;

        sisi_miring = sqrt (tinggi_segitiga^2 + sisi_alas^2);
        luas_alas = 0.5 * sisi_alas * tinggi_segitiga;

        luas_selimut = tinggi_prisma * (sisi_miring + tinggi_segitiga + sisi_alas);
        luas_permukaan = luas_selimut + (2 * luas_alas);
        volume = luas_alas * tinggi_prisma;
    end
    
elseif get(handles.radiobutton3, 'Value') % Limas Segiempat
    %jika panjang = lebar maka alasnya persegi
    if panjang == lebar
        sisi_alas = panjang;
        tinggi_limas = tinggi;
        sisi_miring_segitiga = sqrt (tinggi_limas^2 + (0.5 * sisi_alas)^2);
        luas_selimut = 4 * (0.5 * sisi_miring_segitiga * sisi_alas); 
        luas_alas =  sisi_alas * sisi_alas;
        luas_permukaan = luas_alas + luas_selimut;
        volume = (1/3) * luas_alas * tinggi_limas;
    else % jika panjang dan lebar tidak sama maka alas di anggap persegi panjang
        luas_alas = panjang * lebar;
        tinggi_limas = tinggi;
        %mencari tinggi segitiga yang alasnya adalah sisi lebar
        tinggi_segitiga_l = sqrt ( (0.5 * panjang)^2 + tinggi_limas^2);
        %mencari tinggi segitiga yang alasnya adalah sisi panjang
        tinggi_segitiga_p = sqrt ( (0.5 * lebar)^2 + tinggi_limas^2);
        %luas segitiga di sisi lebar
        luas_segitiga_l = 0.5 * lebar * tinggi_segitiga_l;
        %luas segitiga di sisi panjang
        luas_segitiga_p = 0.5 * lebar * tinggi_segitiga_p;
        luas_selimut = 2 * luas_segitiga_l + 2 * luas_segitiga_p;
        luas_permukaan = luas_alas + luas_selimut;
        volume = (1/3) * luas_alas * tinggi_limas;
    end
    
else
    % Default jika tidak ada radiobutton yang dipilih
    luas_permukaan = 0;
    volume = 0;
end

% Tampilkan hasil perhitungan
set(handles.edit4, 'String', num2str(luas_permukaan));
set(handles.edit5, 'String', num2str(volume));
% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
