function varargout = Proses(varargin)
% PROSES MATLAB code for Proses.fig
%      PROSES, by itself, creates a new PROSES or raises the existing
%      singleton*.
%
%      H = PROSES returns the handle to a new PROSES or the handle to
%      the existing singleton*.
%
%      PROSES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROSES.M with the given input arguments.
%
%      PROSES('Property','Value',...) creates a new PROSES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Proses_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Proses_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Proses

% Last Modified by GUIDE v2.5 28-May-2024 22:31:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Proses_OpeningFcn, ...
                   'gui_OutputFcn',  @Proses_OutputFcn, ...
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


% --- Executes just before Proses is made visible.
function Proses_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Proses (see VARARGIN)

% Pilih keluaran default command line untuk Proses
handles.output = hObject;

% Periksa apakah bobot diberikan sebagai argumen
if ~isempty(varargin)
    for index = 1:2:length(varargin)
        switch lower(varargin{index})
            case 'w'
                handles.w = varargin{index+1};
        end
    end
end

% Perbarui struktur handles
guidata(hObject, handles);


% --- Outputs from this function are returned to the command line.
function varargout = Proses_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnTampil.
function btnTampil_Callback(hObject, eventdata, handles)
% hObject    handle to btnTampil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Deteksi opsi impor untuk file CSV
opts = detectImportOptions('food_order.csv');

% Baca data dari file CSV menggunakan opsi impor
data = readtable('food_order.csv', opts);

% Setel data ke tabel dalam GUI
set(handles.tabelsatu, 'Data', table2cell(data)); 

% Simpan data ke dalam struktur handles
handles.data = data;

% Perbarui data GUI
guidata(hObject, handles);




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


% --- Executes on button press in btnResetTabel1.
function btnResetTabel1_Callback(hObject, eventdata, handles)
% hObject    handle to btnResetTabel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Read the data from the CSV file using the import options
% Setel data ke dalam array sel kosong untuk menghapus tabel
set(handles.tabelsatu, 'Data', {});

% Simpan data sel kosong ke dalam struktur handles
handles.data = {};

% Perbarui data GUI
guidata(hObject, handles);


% --- Executes on button press in btnProses.
function btnProses_Callback(hObject, eventdata, handles)
% hObject    handle to btnProses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Membaca data dari file CSV
opts = detectImportOptions('food_order.csv');
data = readtable('food_order.csv', opts);

% Mengekstrak kolom yang relevan: restaurant_name, cost, rating, food_preparation_time, delivery_time
restaurant_names = data.restaurant_name;
x = [data.cost_of_the_order, data.rating, data.food_preparation_time, data.delivery_time];

% Manfaat = 1, biaya = 0
k = [0, 1, 0, 0];

% Normalisasi matriks keputusan
[m, n] = size(x);
R = zeros(m, n);

for j = 1:n
    if k(j) == 1
        R(:, j) = x(:, j) ./ max(x(:, j));
    else
        R(:, j) = min(x(:, j)) ./ x(:, j);
    end
end

% Gunakan bobot dari handles
w = handles.w;

% Hitung jumlah tertimbang untuk setiap alternatif
V = R * w;

% Konversi hasil ke dalam tabel dengan nama restoran dan tampilkan di tabeldua
result = table(restaurant_names, V, 'VariableNames', {'Restaurant_Name', 'Score'});
set(handles.tabeldua, 'Data', table2cell(result));

% Simpan hasil dalam struktur handles
handles.result = result;

% Perbarui data GUI
guidata(hObject, handles);

% Panggil updateSortedTable untuk mengurutkan dan menampilkan hasil berdasarkan pemilihan tombol radio saat ini
updateSortedTable(handles);


% --- Executes on button press in Terbesar.
function Terbesar_Callback(hObject, eventdata, handles)
% hObject    handle to Terbesar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

updateSortedTable(handles);

% --- Executes on button press in terkecil.
function terkecil_Callback(hObject, eventdata, handles)
% hObject    handle to terkecil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

updateSortedTable(handles);




% --- Executes on button press in NaN.
function NaN_Callback(hObject, eventdata, handles)
% hObject    handle to NaN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    updateSortedTable(handles);


% --- Executes on button press in tanpaNaN.
function tanpaNaN_Callback(hObject, eventdata, handles)
% hObject    handle to tanpaNaN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    updateSortedTable(handles);
    

function updateSortedTable(handles)
    % Mendapatkan data hasil saat ini
    result = handles.result;
    
    % Mendapatkan nilai tombol radio
    terbesarSelected = get(handles.Terbesar, 'Value');
    terkecilSelected = get(handles.terkecil, 'Value');
    nanSelected = get(handles.NaN, 'Value');
    tanpaNanSelected = get(handles.tanpaNaN, 'Value');
    
    % Mengurutkan hasil berdasarkan tombol radio yang dipilih
    if terbesarSelected
        % Mengurutkan berdasarkan Nilai (Score) secara menurun
        sortedResult = sortrows(result, 'Score', 'descend');
    elseif terkecilSelected
        % Mengurutkan berdasarkan Nilai (Score) secara menaik
        sortedResult = sortrows(result, 'Score', 'ascend');
    else
        % Default ke urutan menurun jika tidak ada yang dipilih (seharusnya tidak terjadi)
        sortedResult = result;
    end
    
    % Memfilter hasil berdasarkan pilihan NaN
    if tanpaNanSelected
        % Menghapus baris di mana Score adalah NaN
        sortedResult = sortedResult(~isnan(sortedResult.Score), :);
    elseif nanSelected
        % Menyimpan hanya baris di mana Score adalah NaN
        sortedResult = sortedResult(isnan(sortedResult.Score), :);
    end
    
    % Mendapatkan batas dari bidang rangeData
    rangeLimit = str2double(get(handles.rangeData, 'String'));
    
    % Jika rangeLimit adalah angka yang valid, menerapkannya
    if ~isnan(rangeLimit) && rangeLimit > 0
        sortedResult = sortedResult(1:min(rangeLimit, height(sortedResult)), :);
    end
    
    % Memperbarui tabeldua dengan hasil yang diurutkan
    set(handles.tabeldua, 'Data', table2cell(sortedResult));




% --- Executes on button press in btnResetTabel2.
function btnResetTabel2_Callback(hObject, eventdata, handles)
% hObject    handle to btnResetTabel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.tabeldua, 'Data', {});

guidata(hObject, handles);



function rangeData_Callback(hObject, eventdata, handles)
% hObject    handle to rangeData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rangeData as text
%        str2double(get(hObject,'String')) returns contents of rangeData as a double

updateSortedTable(handles);

% --- Executes during object creation, after setting all properties.
function rangeData_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rangeData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnkeluar.
function btnkeluar_Callback(hObject, eventdata, handles)
% hObject    handle to btnkeluar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close('Proses');

% --- Executes on button press in btnKembali.
function btnKembali_Callback(hObject, eventdata, handles)
% hObject    handle to btnKembali (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA
kriteria;
close('Proses');
