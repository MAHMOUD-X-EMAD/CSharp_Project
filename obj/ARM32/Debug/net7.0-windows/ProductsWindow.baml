   M S B A M L   `   `   `  ����K  GInventory_System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:inventroy_systeminventroy_system  5      %    inventroy_system.ProductsWindow   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:inventroy_system     5      -   5        
�������  � 	Resources  5	       �� 
TargetType �� Property �� Value �� Triggers P� Property P� Value&   System.Windows.Controls.DataGrid��%$  '��       '�� �    '      �� 5
   
   " ��6   �5      �� 5       � ��$ 16(�65   6B   �� 5       � ��$$ Bahnschrift SemiBold Condensed)�67   6`   �� 5       � ��
 ��  �6J   �� 5       � ��
 �����6G   �� 5       � ��$ 5q�6,   68    5      P� 5       �@J�IsMouseOver$
 True��61   . �5      ��  �@�Cursor$
 Hand��6/   6>   �� 5       � ��
 �   �6C   �� 5       � ��
 �����6B   5      5      �� 5    
   " ��6   .�5!      ��  � ��
 ��  �6@   �� 5"       � ��
 �����6=   �� 5#       � ��$ 16(�6)   66   �� 5$       � ��$ 30��6'   64   �� 5%       � ��$$ Bahnschrift SemiBold Condensed)�6+   6T   �� 5'       �@��Padding$ 5q�6(   64   5,      �� 5-   
   "  6   .�5.      ��  � ��
 �����6?   �� 5/       � �� �	#FF1317546?   �� 50       � ��$	 200��6'   65   �� 51       � ��$ 10q�6'   64   �� 52       � ��$ Center=�64   6E   57      59      ��5:      �� 5;   
    �� EndPoint$ 0.5,1&�6    �� 
StartPoint$ 0.5,0&�6/   .��5<      � 	 � Color$	 Black��6   � 5=      $	 	#FF023FFF��6   
 � Offset$
 1Q�6-   5>      .��5@      �� .��5A   
   ]� .+�5B      �� $��Manage Products��6   $��Center=�6.   $��40��6R   $$��Bahnschrift SemiBold Condensed)�6^   $��25(�6�   $��Italic$�6�   
����  �
�������$	��Top=�6�   � 5E       � ColumnDefinitions 5F      �� 5G      $��* �6'   63   �� 5H      $��2* �6'   64    � RowDefinitions 5J      �� 5K      6&   .+�5O      �� $
��Auto=�6   $��0��6B   .��5R      �� $��0��6!   $��0,0,0,0q�61   $��1��6B   .+�5S      �� $��Center=�6$   $��10q�6A   $��20(�6M   Add Product6h   ]� 5T      $
��Left=�6$   $
��True��6?   $��7q�6U   .+�5U      �� $��
Product ID��6(   $
��Left=�6<   $��Center=�6R   �� 5V      -   5         ��Name$ ProductIdTB��5V   &   $��30��6;   $	��150��6G   5W      ]� 5X      $
��Left=�6$   $��7q�6@   $
��True��6K   .+�5Y      �� $��Product Name��6)   $
��Left=�6>   $��Center=�6T   �� 5Z      -   5        $ ProductNameTB��5Z   &   $��30��6=   $	��128��6I   5[      ]� 5\      $
��Left=�6$   $��7q�6@   $
��True��6K   .+�5]      �� $��Product Quntity��6)   $
��Left=�6A   $��Center=�6W   �� 5^      -   5        $ ProductQuntityTB��5^   &   $��30��6@   $	��128��6L   5_      ]� 5`      $
��Left=�6$   $��7q�6@   $
��True��6K   .+�5a      �� $��Product Price��6(   $
��Left=�6>   $��Center=�6T   �� 5b      -   5        $ ProductDescriptionTB��5b   &   $��30��6D   $	��100��6P   5c      ]� 5d      $
��Left=�6$   $��7q�6@   $
��True��6K   .+�5e      �� $��Product Category��6)   $
��Left=�6B   $��Center=�6X   �� 5f      -   5         ��Name$ ProductCatgoryCB��5f   '   $��30��6A   $	��100��6M   5g      ]� 5h      $
��Left=�6$   $��7q�6@   $
��True��6K   .+�5i      �� $��Product Supplier��6)   $
��Left=�6B   $��Center=�6X   �� 5j      -   5        $ ProductSupplierCB��5j   '   $��30��6B   $	��100��6N   5k      � 5n      $��Center=�6$   .+�5o      �� -   5         ��Name$ AddProductBtn��5o   %   $��Center=�6<   $��
20 10 10 5q�6Y   $��39��6n   $��98��6z   .��6�   Add6�   �� 5p      -	   5        $ EditProductBtn��5p   %   $��Center=�6=   $��
20 10 10 5q�6Z   $��39��6n   $��98��6z   .��6�   Edit6�   �� 5q      -
   5        $ DeleteProductBtn��5q   &   $��Center=�6@   $��
20 10 10 5q�6]   $��39��6r   $��98��6~   .��6�   Delete6�   5r      5y      5z      �� 5{      $��1��6   $��1��6-   .+�5|      ��  �� Orientation$ 
Horizontal=�6!   .+�5}      �� $��Center=�6    $��10q�6=   $��20(�6I   Product List6e   �� 5~      -   5        $��FilterCB��5~      $	��140��6/   $��20��6;    �� SelectedIndex$ -1��6t   5        5�      -   5          Name$ ProductDataGrid��5�          AutoGenerateColumns$ False��6m      Columns 5�      0  *System.Windows.Controls.DataGridTextColumn  5�      ,  &System.Windows.Controls.DataGridColumn   Header$ 	ProdectID��61      MinWidth$ 90Q�6D      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6R   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6\   �� *Num+6v     5�      $ ProdectName��61   $ 90Q�6F   $ * 6T    6^   �� *	Product+6|     5�      $ Quantity��61   $ 90Q�6C   $ * 6Q    6[   �� *
Quantity+6z     5�      $ UPrice��61   $ 90Q�6A   $ * 6O    6Y   �� *UPrice+6v     5�      $ 
TotalPrice��61   $ 90Q�6E   $ * 6S    6]   �� *
TotalPrice+6~   5�      5�      5�      5�      5�      5�      