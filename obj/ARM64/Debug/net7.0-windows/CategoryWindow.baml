   M S B A M L   `   `   `  ����K  Ginventroy system, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:inventroy_systeminventroy_system  5      %    inventroy_system.CategoryWindow   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:inventroy_system     5        � 	Resources  5
       �� 
TargetType �� Property �� Value �� Triggers P� Property P� Value&   System.Windows.Controls.DataGrid��%$  '��       '�� �    '      �� 5   
   " ��6   �5      �� 5       � ��$ 16(�65   6B   �� 5       � ��$$ Bahnschrift SemiBold Condensed)�67   6`   �� 5       � ��
 ��  �6J   �� 5       � ��
 �����6G   �� 5       � ��$ 5q�6,   68    5      P� 5       �@J�IsMouseOver$
 True��61   . �5      ��  �@�Cursor$
 Hand��6/   6>   �� 5       � ��
 �   �6C   �� 5       � ��
 �����6B   5      5       �� 5!   
   " ��6   .�5"      ��  � ��
 ��  �6@   �� 5#       � ��
 �����6=   �� 5$       � ��$ 16(�6)   66   �� 5%       � ��$ 30��6'   64   �� 5&       � ��$$ Bahnschrift SemiBold Condensed)�6+   6T   �� 5(       �@��Padding$ 5q�6(   64   5-      �� 5.   
   "  6   .�5/      ��  � ��
 �����6?   �� 50       � �� �	#FF1317546?   �� 51       � ��$	 200��6'   65   �� 52       � ��$ 10q�6'   64   �� 53       � ��$ Center=�64   6E   58      5:      ��5;      �� 5<   
    �� EndPoint$ 0.5,1&�6    �� 
StartPoint$ 0.5,0&�6/   .��5=      � 	 � Color$	 Black��6   � 5>      $	 White��6   
 � Offset$
 1Q�6)   5?      .��5A      �� .��5B   
   ]� .+�5C      �� $��Manage Gatogery��6   $��Center=�6.   $��40��6R   $$��Bahnschrift SemiBold Condensed)�6^   $��25(�6�   $��Italic$�6�   
����  �
�������$	��Top=�6�   � 5F       � ColumnDefinitions 5G      �� 5H      $��* �6'   63   �� 5I      $��2* �6'   64    � RowDefinitions 5K      �� 5L      6&   .+�5P      �� $
��Auto=�6   $��0��6B   .��5S      �� $��0��6!   $��0,0,0,0q�61   $��1��6B   .+�5T      �� $��Center=�6$   $��10q�6A   $��20(�6M   Add Category6i   ]� 5U      $��Center=�6$   $
��True��6A   $��7q�6W   .+�5V      �� $��Category ID��6(   $
��Left=�5W      $��Center=�6)   �� 5X      -   5         ��Name$ CategoryIdTB��5X   &   $��30��6<   $	��150��6H   5Y      ]� 5Z      $��Center=�6$   $��7q�6B   $
��True��6M   .+�5[      �� -   5         ��Name$ CategoryNameTB��5[   (   $��Category Name��6@   $
��Left=�5\      $��Center=�6)   �� 5]      $��30��6&   $	��128��62   5^      � 5`      $��Center=�6$   .+�5a      �� -   5         ��Name$ AddCatogeryBtn��5a   %   $��Center=�6=   $��
20 10 10 5q�6Z   $��39��6o   $��98��6{   .��6�   Add6�   �� 5b      -   5        $ EditCatogeryBtn��5b   %   $��Center=�6>   $��
20 10 10 5q�6[   $��39��6o   $��98��6{   .��6�   Edit6�   �� 5c      -   5        $ DeleteCatogeryBtn��5c   &   $��Center=�6A   $��
20 10 10 5q�6^   $��39��6s   $��98��6   .��6�   Delete6�   5d      5k      5l      �� 5m      $��1��6   $��1��6-   .+�5n      �� $��Center=�6    $��10q�6=   $��20(�6I   Category List6f     5o         Columns 5p      0  *System.Windows.Controls.DataGridTextColumn  5q      ,  &System.Windows.Controls.DataGridColumn   Header$	 Num��61      MinWidth$ 90Q�6>      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6L   6X     5r      $ Product��61   $ 90Q�6B   $ * 6P   6\     5s      $ Quantity��61   $ 90Q�6C   $ * 6Q   6]     5t      $ UPrice��61   $ 90Q�6A   $ * 6O   6[     5u      $ Total Price��61   $ 90Q�6F   $ * 6T   6`   5z      5{      5~      5�      5�      5�      