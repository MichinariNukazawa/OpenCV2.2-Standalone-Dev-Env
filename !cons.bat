::
::���̃t�@�C���Ɠ����f�B���N�g������OpenCV2.2�����MinGW�����݂��Ȃ��ꍇ�A
::c:\����(�f�t�H���g�C���X�g�[����)�ɂ���t�@�C�����g�p����B
::


:: GCC���w�b�_�t�@�C����T�����邽�߂̊��ϐ��ݒ�
:: &�w�b�_�t�@�C���̃C���N���[�h�p�X
set C_INCLUDE_PATH=OpenCV2.2\include\opencv;c:\OpenCV2.2\include\opencv;%C_INCLUDE_PATH%
:: opencv2�ւ̃p�X�ǉ�
set C_INCLUDE_PATH=OpenCV2.2\include;c:\OpenCV2.2\include;%C_INCLUDE_PATH%
:: C++�Ή�(���m�F)
set CPULS_INCLUDE_PATH=%C_INCLUDE_PATH%;%CPULS_INCLUDE_PATH%


::GCC���ÓI���C�u������T�����邽�߂̊��ϐ�&�p�X�w��
set LIBRARY_PATH=OpenCV2.2\lib;c:\OpenCV2.2\lib;%LIBRARY_PATH%

::GCC�����I���C�u������T�����邽�߂̊��ϐ�&�p�X�w��
set PATH=OpenCV2.2\bin;c:\OpenCV2.2\bin;%PATH%


::MinGW(gcc, make)���g�p���邽�߂̊��ϐ�&�p�X�w��
set PATH=MinGW\bin;c:\MinGW\bin;%PATH%


:: "�G�C���A�X�̒ǉ�(make run�ł���悤�ɂȂ�B)"
doskey make = mingw32-make $*
doskey rm = del $*


cmd.exe
