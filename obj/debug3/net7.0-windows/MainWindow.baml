   M S B A M L   `   `   `  ���� K  Ginventroy system, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:inventroy_systeminventroy_system  !    inventroy_system.MainWindow   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     0localclr-namespace:inventroy_system     -     �Name$  HomeMain�� � Title$ Inventroy System��$	��500��$
��1000�� � Icon$$ SystemImages/inventroyLogo.png�� � ShowInTaskbar$ False�� � WindowState$ 	Maximized=� � 	Resources    ButtonStyle �� Property �� Value �� Triggers	 P� Property
 P� Value��%[  &	        �� ���  � ��$ 20(���  � ��$ Commercialiq)���  � ��$ 0,5,0,5q���  � ��
 �������  � ��$ 0,0,0,0q� P� 	 �@J�IsMouseOver$

 True��. ���  � ��$ 25(���  � ��$ 10,0,0,0q���  � ��
 �������  � ��
 �   ���  � ��
 �   ���  �@�Cursor$
 Hand��.��]� -   $��dcPanel��.+���  �� CornerRadius$ 10��
����  �
�������$��0,0,5,0q�$
��left=�._��� -   $��LeftRect��$	��200�����	#FF2F2BA9.+���  �� Orientation$ 
Horizontal=�$��Center=�$��70��.+��� $$��SystemImages/inventroyLogo.png��$��50��$��50���� $��Center=�$��20(�$��5,0,0,0q�	Inventroy�� -   $��Center=� �� 	ClickMode$ Press=�$��50��#��[  ���� $ 
Horizontal=�$��50��.+��� $$��SystemImages/DachBoardIcon.png��$��40��$��40��$��0,0,10,0q��� $��Center=�$��20(�	DashBoard�� -   $��Center=�$ Press=�$��50��#��[  ���� $ 
Horizontal=�$��50��.+��� $$��SystemImages/suppliersIcon.png��$��30��$��30��$��0,0,10,0q��� $��Center=�$��20(�	Suppliers�� -    ��Name$ CustomerBtn��$��Center=�$ Press=�$��50��#��[  ���� $ 
Horizontal=�$��50��.+��� $ ��SystemImages/Customers.png��$��30��$��30��$��0,0,10,0q��� -    ��Name$ CustomersBtn��$��Center=�$��20(�	Customers�� -   $��Center=�$ Press=�$��50��#��[  ���� $ 
Horizontal=�$��50��.+��� $��SystemImages/Category.png��$��30��$��30��$��0,0,10,0q��� $��Center=�$��20(�
Category�� -	   $ 
ProductBtn��$��Center=�$ Press=�$��50��#��[  ���� $ 
Horizontal=�$��50��.+��� $"��SystemImages/productIcon.png��$��30��$��30��$��0,0,10,0q��� $��Center=�$��20(�
Products�� -
   $ OrderBtn��$��Center=�$ Press=�$��50��#��[  ���� $ 
Horizontal=�$��50��.+��� $$��SystemImages/suppliersIcon.png��$��30��$��30��$��0,0,10,0q��� $��Center=�$��20(�Orders� -   $��contentWindow��
�������