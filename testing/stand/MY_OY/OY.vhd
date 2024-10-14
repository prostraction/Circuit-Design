-- ���� ���� �������� �������� �� � ���� ������������ ���� �����������
-- ��  � ��. �� ��������� ������� ������ y[8..0]
-- ������ ������ � ���������� ���������� ��������������� ������������� � ��

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity OY is									--  ��� ������
generic(n:integer:=4);						-- n - ��������, ������������ ����������� ����������

PORT
	(
		a		:	 in std_logic_vector(n-1 downto 0); 	--1-�� ������� (��������)
		b		:	 in std_logic_vector(n-1 downto 0); 	--2-�� ������� (���������)
		clk	:	 in std_logic; 								--������������
		set	:	 in std_logic; 								--������ ��������� ���������
		sno	:	 in std_logic; 								--������ ������ ��������
		sko	: 	 out std_logic; 								--������ ����� ��������
		rc		:	 out std_logic_vector(n*2-1 downto 0)	--��������� (������������)	
	);
END OY;

architecture struct of OY is --�������� �������������� ���� �� � �������������� ������������ �����
-- � �������� ����������� ������������� ��� ���������� - �� � ��

		
component OperationAutomat --���������� ���������� ��
generic(n:integer);											-- �������� n, ������������ ����������� ����������
PORT (y: in std_logic_vector(9 downto 0);    		--����������� �������, ������ �������������
	   x: out std_logic_vector(4 downto 0);    		--���������� �������
	   a: in std_logic_vector(n-1 downto 0);    		--1-�� ������� (��������)
	   b: in std_logic_vector(n-1 downto 0);    		--2-�� ������� (���������)
	   rc: buffer std_logic_vector(n*2-1 downto 0);	--��������� (������������)
	   clk: in std_logic										--������������
);
end component;

component ControlUnit 	 --���������� ���������� ��
Port
(
	   y: out std_logic_vector(9 downto 0);			--����������� �������
	   x: in std_logic_vector(4 downto 0);    		--���������� �������	
	   clk: in std_logic;                           --������������ 
		set: in std_logic; 									--������ ��������� ���������
	   sno: in std_logic; 									--������ ������ ��������
		sko: out std_logic									--������ ����� ��������
);
end component;

signal x_X: std_logic_vector(4 downto 0);		--���������� �������
signal y_Y: std_logic_vector(9 downto 0);		--����������� �������
		
begin
-- ���� ���������� ���������� �����������, ������ ����� ���������� �����
unit_OA: OperationAutomat							-- ��� ��������� ��
generic map(n => 4)									-- n=4
port map (y_Y,x_X,a,b,rc,clk);					-- ����� ������ ��� ��

unit_YA:ControlUnit									-- ��� ��������� ��
port map(y_Y,x_X,clk,set,sno,sko);				-- ����� ������ ��� ��
end struct ;
