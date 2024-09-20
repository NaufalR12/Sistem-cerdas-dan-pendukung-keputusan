function varargout = latihan(varargin)
% LATIHAN MATLAB code for latihan.fig
%      LATIHAN, by itself, creates a new LATIHAN or raises the existing
%      singleton*.
%
%      H = LATIHAN returns the handle to a new LATIHAN or the handle to
%      the existing singleton*.
%
%      LATIHAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LATIHAN.M with the given input arguments.
%
%      LATIHAN('Property','Value',...) creates a new LATIHAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before latihan_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to latihan_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help latihan

% Last Modified by GUIDE v2.5 24-May-2024 12:22:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @latihan_OpeningFcn, ...
                   'gui_OutputFcn',  @latihan_OutputFcn, ...
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


% --- Executes just before latihan is made visible.
function latihan_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to latihan (see VARARGIN)

% Choose default command line output for latihan
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

%ah = axes('unit', 'normalized','position',[0 0 1 1]);
%bg = imread('bg.png'); imagesc(bg);
%set(ah,'handlevisibility','off','visible','off')

% UIWAIT makes latihan wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = latihan_OutputFcn(hObject, eventdata, handles) 
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
% Detect import options for the CSV file
opts = detectImportOptions('food_order.csv');

% Read the data from the CSV file using the import options
data = readtable('food_order.csv', opts);

% Set the data to the table in the GUI
set(handles.tabelsatu, 'Data', table2cell(data)); 

% Store the data in the handles structure
handles.data = data;

% Update the GUI data
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
% Set the data to an empty cell array to clear the table
set(handles.tabelsatu, 'Data', {});

% Store the empty data in the handles structure
handles.data = {};

% Update the GUI data
guidata(hObject, handles);

% --- Executes on button press in btnResetBobot.
function btnResetBobot_Callback(hObject, eventdata, handles)
% hObject    handle to btnResetBobot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Clear the contents of the edit text boxes for bbC, bbR, bbFPT, and bbDT
set(handles.bbC, 'String', '');
set(handles.bbR, 'String', '');
set(handles.bbFPT, 'String', '');
set(handles.bbDT, 'String', '');

% Update handles structure
guidata(hObject, handles);


% --- Executes on button press in btnProses.
function btnProses_Callback(hObject, eventdata, handles)
% hObject    handle to btnProses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Read the data from the CSV file
opts = detectImportOptions('food_order.csv');
data = readtable('food_order.csv', opts);

% Extract relevant columns: restaurant_name, cost, rating, food_preparation_time, delivery_time
restaurant_names = data.restaurant_name;
x = [data.cost_of_the_order, data.rating, data.food_preparation_time, data.delivery_time];

% benefit = 1, cost = 0
k = [0, 1, 0, 0];

% Retrieve weights from input fields
wC = str2double(get(handles.bbC, 'String'));
wR = str2double(get(handles.bbR, 'String'));
wFPT = str2double(get(handles.bbFPT, 'String'));
wDT = str2double(get(handles.bbDT, 'String'));

% Combine weights into a column vector
w = [wC; wR; wFPT; wDT];

% Normalize the weights to sum to 1
w = w / sum(w);

% Normalize the decision matrix
[m, n] = size(x);
R = zeros(m, n);

for j = 1:n
    if k(j) == 1
        R(:, j) = x(:, j) ./ max(x(:, j));
    else
        R(:, j) = min(x(:, j)) ./ x(:, j);
    end
end

% Calculate the weighted sum for each alternative
V = R * w;

% Convert the result to a table with restaurant names and display in tabeldua
result = table(restaurant_names, V, 'VariableNames', {'Restaurant_Name', 'Score'});
set(handles.tabeldua, 'Data', table2cell(result));

% Store the result in the handles structure
handles.result = result;

% Update the GUI data
guidata(hObject, handles);

% Call updateSortedTable to sort and display the result based on current radio button selection
updateSortedTable(handles);

% --- Executes on button press in Terbesar.
function Terbesar_Callback(hObject, eventdata, handles)
% hObject    handle to Terbesar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Update the sorted table based on the new selection
updateSortedTable(handles);

% --- Executes on button press in terkecil.
function terkecil_Callback(hObject, eventdata, handles)
% hObject    handle to terkecil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Update the sorted table based on the new selection
updateSortedTable(handles);




% --- Executes on button press in NaN.
function NaN_Callback(hObject, eventdata, handles)
% hObject    handle to NaN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    % Update the sorted table based on the new selection
    updateSortedTable(handles);


% --- Executes on button press in tanpaNaN.
function tanpaNaN_Callback(hObject, eventdata, handles)
% hObject    handle to tanpaNaN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    % Update the sorted table based on the new selection
    updateSortedTable(handles);
    

function updateSortedTable(handles)
    % Retrieve the current result data
    result = handles.result;
    
    % Get the value of the radio buttons
    terbesarSelected = get(handles.Terbesar, 'Value');
    terkecilSelected = get(handles.terkecil, 'Value');
    nanSelected = get(handles.NaN, 'Value');
    tanpaNanSelected = get(handles.tanpaNaN, 'Value');
    
    % Sort the result based on the selected radio button
    if terbesarSelected
        % Sort by Score in descending order
        sortedResult = sortrows(result, 'Score', 'descend');
    elseif terkecilSelected
        % Sort by Score in ascending order
        sortedResult = sortrows(result, 'Score', 'ascend');
    else
        % Default to descending if neither is selected (should not happen)
        sortedResult = result;
    end
    
    % Filter the result based on NaN selection
    if tanpaNanSelected
        % Remove rows where Score is NaN
        sortedResult = sortedResult(~isnan(sortedResult.Score), :);
    elseif nanSelected
        % Keep only rows where Score is NaN
        sortedResult = sortedResult(isnan(sortedResult.Score), :);
    end
    
    % Get the limit from the rangeData field
    rangeLimit = str2double(get(handles.rangeData, 'String'));
    
    % If rangeLimit is a valid number, apply it
    if ~isnan(rangeLimit) && rangeLimit > 0
        sortedResult = sortedResult(1:min(rangeLimit, height(sortedResult)), :);
    end
    
    % Update the tabeldua with the sorted result
    set(handles.tabeldua, 'Data', table2cell(sortedResult));




% --- Executes on button press in btnResetTabel2.
function btnResetTabel2_Callback(hObject, eventdata, handles)
% hObject    handle to btnResetTabel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Clear the data in the table named 'tabeldua'
set(handles.tabeldua, 'Data', {});

% Update handles structure
guidata(hObject, handles);



function rangeData_Callback(hObject, eventdata, handles)
% hObject    handle to rangeData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rangeData as text
%        str2double(get(hObject,'String')) returns contents of rangeData as a double
% Update the sorted table based on the new range data
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
