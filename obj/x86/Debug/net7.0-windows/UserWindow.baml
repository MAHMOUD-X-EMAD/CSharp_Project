   M S B A M L   `   `   `  ����K  GInventory_System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:inventroy_systeminventroy_system  5      !    inventroy_system.UserWindow   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:inventroy_system     5        � 	Resources  5
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
   ]� .+�5C      �� $��Manage Users��6   $��Center=�6+   $��40��6O   $$��Bahnschrift SemiBold Condensed)�6[   $��25(�6�   $��Italic$�6�   
����  �
�������$	��Top=�6�   � 5F       � ColumnDefinitions 5G      �� 5H      $��* �6'   63   �� 5I      $��2* �6'   64    � RowDefinitions 5K      �� 5L      6&   .+�5P      �� $
��Auto=�6   $��0��6B   .��5S      �� $��0��6!   $��0,0,0,0q�61   $��1��6B   .+�5T      �� $��Center=�6$   $��10q�6A   $��20(�6M   
Add User6e   ]� 5V      $��Center=�6$   $
��True��6A   $��7q�6W   .+�5W      �� $��User ID��6(   $
��Left=�69   $��Center=�6O   �� 5X      -   5         ��Name$ UserIdTB��5X   &   $��30��68   $	��150��6D    �� 
IsReadOnly$
 True��6P   5Z      ]� 5[      $��Center=�6$   $
��True��6A   $��7q�6W   .+�5\      �� $
��Name��6(   $
��Left=�66   $��Center=�6L   �� 5]      -   5        $ Uname��5]   &   $��30��65   $	��150��6A   5_      ]� 5b      $��Center=�6$   $��7q�6B   $
��True��6M   .+�5c      �� $��	User Name��6)   $
��Left=�6;   $��Center=�6Q   �� 5d      -   5        $ 
UserNameTB��5d   &   $��30��6:   $	��128��6F   5e      ]� 5g      $��Center=�6$   $��7q�6B   $
��True��6M   .+�5h      �� $��User Password��6)   $
��Left=�6?   $��Center=�6U   �� 5i      -   5        $ userpassword��5i   &   $��30��6<   $	��110��6H   5j      ]� 5l      $��Center=�6$   $��7q�6B   $
��True��6M   .+�5m      �� $��userAge��6)   $
��Left=�69   $��Center=�6O   �� 5n      -   5        $ UserAge��5n   &   $��30��67   $	��110��6C   5o      ]� 5q      $��Center=�6$   $��7q�6B   $
��True��6M   .+�5r      �� $��
User Email��6)   $
��Left=�6<   $��Center=�6R   �� 5s      -   5        $ 	UserEmail��5s   &   $��30��69   $	��110��6E   5t      ]� 5v      $��Center=�6$   $��7q�6B   $
��True��6M   .+�5w      �� $��
User Phone��6)   $
��Left=�6<   $��Center=�6R   �� 5x      -   5        $ 	UserPhone��5x   &   $��30��69   $	��110��6E   5y      ]� 5{      $��Center=�6$   $��7q�6B   $
��True��6M   .+�5|      �� $��User Sex��6)   $
��Left=�6:   $��Center=�6P   �� 5}      -   5        $��userSex��5}   '   $	��110��66   .@�5~   "   �� .��6/   Male65   �� 5   "   .��6/   Famel66   5�      5�      � 5�      $��Center=�6$   .+�5�      �� -	   5         ��Name$ AddProductBtn��5�   %   $��Center=�6<   $��
20 10 10 5q�6Y   $��39��6n   $��98��6z   .��6�   Add6�   �� 5�      -
   5        $ EditProductBtn��5�   %   $��Center=�6=   $��
20 10 10 5q�6Z   $��39��6n   $��98��6z   .��6�   Edit6�   �� 5�      -   5        $ DeleteProductBtn��5�   &   $��Center=�6@   $��
20 10 10 5q�6]   $��39��6r   $��98��6~   .��6�   Delete6�   5�      5�      5�      �� 5�      $��1��6   $��1��6-   .+�5�      �� $��Center=�6    $��10q�6=   $��20(�6I   
Users List6c     5�      -   5          Name$ UsertDataGrid��5�          AutoGenerateColumns$ False��67      Columns 5�      0  *System.Windows.Controls.DataGridTextColumn  5�      ,  &System.Windows.Controls.DataGridColumn   Header$ UserID��61      MinWidth$ 90Q�6A      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6O   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6Y   �� *ID+6r     5�      $ UserAge��61   $ 90Q�6B   $ * 6P    6Z   �� *Age+6t     5�      $ 	UserPhone��61   $ 90Q�6D   $ * 6R    6\   �� *Phone+6y     5�      $ 	UserEmail��61   $ 90Q�6D   $ * 6R    6\   �� *Email+6z     5�      $ UserSex��61   $ 90Q�6B   $ * 6P    6[   �� *Sex+6v     5�      $
 Name��61   $ 90Q�6?   $ * 6M    6X   �� *Name+6t     5�      $ Password��61   $ 90Q�6C   $ * 6Q    6\   �� *
Password+6{     5�      $ userName��61   $ 90Q�6C   $ * 6Q    6\   �� *
UserName+6|   5�      5�      5�      5�      5�      5�      