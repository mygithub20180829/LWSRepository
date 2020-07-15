function varargout = untitled(varargin)
% Begin initialization code - DO NOT EDIT
set(gcf,'Name','201711040111-����-FFT');
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
        A1=str2double(get(handles.edit1,'String'));
        A2=str2double(get(handles.edit2,'String'));
        F1=str2double(get(handles.edit3,'String'));
        F2=str2double(get(handles.edit4,'String'));
        Fs=str2double(get(handles.edit5,'String'));
        N=str2double(get(handles.edit6,'String'));
        t=[0:1/Fs:(N-1)/Fs]; 
        x=A1*sin(2*pi*F1*t)+A2*sin(2*pi*F2*t); %�ź�x����ɢֵ
        axes(handles.axes1) %��axes1����ԭʼ�ź�ͼ
        plot(x);
        grid on

        axes(handles.axes3)  %��axes3����ϵͳfft�����ķ�Ƶ����ͼ
        G=fft(x,N); %����ϵͳ��N��FFT�任�����Ա�
        Ayy1= (abs(G));  %ȡģ
        Ayy1=Ayy1/(N/2);   %�����ʵ�ʵķ��ȣ�������
        F=([1:N]-1)*Fs/N;  %�����ʵ�ʵ�Ƶ��ֵ��������
        stem(F(1:N/2),Ayy1(1:N/2));  %��ʾ������FFTģֵ���

        %����Ϊ�Զ���FFT�㷨
        m=nextpow2(length(x));
        N=2^m; % ��x�ĳ��ȶ�Ӧ��2������ݴ�m
        if length(x)<N
         x=[x,zeros(1,N-length(x))];% ��x�ĳ��Ȳ���2���ݣ����㵽2��������
        end
        nxd=bin2dec(fliplr(dec2bin([1:N]-1,m)))+1;% ��1:2^m������ŵĵ���
        y=x(nxd); %��x����������Ϊy�ĳ�ʼֵ
        for L=1:m; %��DFT��m�λ�2�ֽ�,�����ң���ÿ�ηֽ���DFT����,����m���������㣬ÿһ������2^(L-1)�����ν�
            B=2^(L-1);%���������������2^(L-1)
            for j=0:B-1 ;%J�����˲�ͬ����ת����
                p=2^(m-L)*j;
                for k=(j+1):2^L:N ;%���ε�������Ŀ�Խ���Ϊ2^L
                    WN=exp(-i*2*pi*p/N);%���㱾���������ת����
                  T=y(k)+y(k+B)*WN ;%����K��ַ�ϵ�����
                y(k+B)=y(k)-y(k+B)*WN ;%���㣨K+B����ַ�ϵĵ������Ȼ�Żأ�K+B��
              y(k)=T ;%��ԭ�������K��ַ������Ż�K��ַ��ע������Ƚ��и����ӷ�����  
            end
          end
        end

        axes(handles.axes2) %��axes2�����Ա�fft�����ķ�Ƶ����ͼ
        Ayy = (abs(y)); %ȡģ
        Ayy=Ayy/(N/2);   %�����ʵ�ʵķ���
        F=([1:N]-1)*Fs/N;  %�����ʵ�ʵ�Ƶ��ֵ
        stem(F(1:N/2),Ayy(1:N/2));   %��ʾ������FFTģֵ���


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


function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
