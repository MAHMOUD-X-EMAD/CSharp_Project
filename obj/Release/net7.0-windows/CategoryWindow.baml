   M S B A M L   `   `   `  ���� K  Ginventroy system, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:inventroy_systeminventroy_system  %    inventroy_system.CategoryWindow   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     0localclr-namespace:inventroy_system       � 	Resources   �� 
TargetType �� Property �� Value �� Triggers P� Property P� Value&   System.Windows.Controls.DataGrid��%u  '��       '��     '  �    �� " �����  � ��$ 16(���  � ��$$ Bahnschrift SemiBold Condensed)���  � ��
 ��  ���  � ��
 �������  � ��$ 5q� P�  �@J�IsMouseOver$
 True��. ���  �@�Cursor$
 Hand����  � ��
 �   ���  � ��
 ������� " ��.���  � ��
 ��  ���  � ��
 �������  � ��$ 16(���  � ��$ 30����  � ��$$ Bahnschrift SemiBold Condensed)���  �@��Padding$ 5q��� "  .���  � ��
 �������  � �� �	#FF131754��  � ��$	 200����  � ��$ 10q���  � ��$ Center=�.���� .��]� .+��� $��Manage Gatogery��$��Center=�$��40��$$��Bahnschrift SemiBold Condensed)�$��25(�$��Italic$�
����  �
�������$	��Top=��  � ColumnDefinitions �� $��* ��� $��2* � � RowDefinitions �� .+��� $
��Auto=�$��0��.���� $��0��$��0,0,0,0q�$��1��.+��� $��Center=�$��10q�$��20(�Add Category]� $��Center=�$
��True��$��7q�.+��� $��Category ID��$
��Left=�$��Center=��� -   	 ��Name$	 CategoryIdTB��$��30��$	��150��]� $��Center=�$��7q�$
��True��.+��� -   
 ��Name$
 CategoryNameTB��$��Category Name��$
��Left=�$��Center=��� $��30��$	��128��� $��Center=�.+��� -    ��Name$ AddCatogeryBtn��$��Center=�$��
20 10 10 5q�$��39��$��98��.��Add�� -   $ EditCatogeryBtn��$��Center=�$��
20 10 10 5q�$��39��$��98��.��Edit�� -   $ DeleteCatogeryBtn��$��Center=�$��
20 10 10 5q�$��39��$��98��.��Delete�� $��1��$��1��.+��� $��Center=�$��10q�$��20(�Category List     Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$	 Num��   MinWidth$ 90Q�   Width5  /System.Windows.Controls.DataGridLengthConverter$ *   $ Product��$ 90Q�$ *   $ Quantity��$ 90Q�$ *   $ UPrice��$ 90Q�$ *   $ Total Price��$ 90Q�$ * 