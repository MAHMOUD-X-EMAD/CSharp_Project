   M S B A M L   `   `   `  ����K  GInventory_System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:inventroy_systeminventroy_system  5      "    inventroy_system.OrderWindow   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:inventroy_system     5      -   5          � 	Resources  5	       �� 
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
 �����6?   �� 5/       � �� �	#FF1317546?   �� 50       � ��$	 200��6'   65   �� 51       � ��$ 10q�6'   64   �� 52       � ��$ Center=�64   6E   57      59      .��5;      �� .��5<   
   ]� .+�5=      �� $��Manage Orders��6   $��Center=�6,   $��33��6P   $$��Bahnschrift SemiBold Condensed)�6\   $��18(�6�   $��Italic$�6�   
����  �
�������$	��Top=�6�   � 5A       � ColumnDefinitions 5B      �� 5C      $
��261* �6'   66   �� 5D      $	��55* �6'   65   �� 5E      $
��378* �6'   �� 5F      $	��53* �6'   �� 5G      $	��36* �6'    � RowDefinitions 5I      �� 5J      6&   �� 5K      6&   .+�5O      �� $��0��6   $��0��6.   .+�5P      �� $��Center=�6    $��10q�6=   $��20(�6I   Customers List6g     5Q      -   5        	  Name$	 customerDataGrid��5Q   +   $	��265��6   $
   HorizontalScrollBarVisibility$

 Auto=�6G   "   VerticalScrollBarVisibility$
 Auto=�6l      SelectionMode$ Single=�6�      
IsReadOnly$
 True��6�   5T      5U      �� 5V      $��1��6   $��0��6-   $��4��6:   .+�5W      �� -   5        $��chooseCategoryCB��5W      $��Center=�67   $	��200��6T   $��10q�6`    �� Text$ Category��6�   6�     5X      -   5        $	 ProductDataGrid��5X         AutoGenerateColumns$ False��68   $ Single=�6U   $	��500��6l   $
 True��6x      Columns 5Y      4  .System.Windows.Controls.DataGridTemplateColumn  5Z      ,  &System.Windows.Controls.DataGridColumn   Header$ Image��65      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6D      CellTemplate 5[   "   �� 5\   &   .R�5]   *   �� $��25��60   $��50��6<   ��6G   �� *Image+5^   '   5a      0  *System.Windows.Controls.DataGridTextColumn  5b      $ ID��61   $ * 6=   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6G   �� *Id+  5c      $ Title��61   $ * 6@    6J   �� *Title+  5d      $ Price��61   $ * 6@    6J   �� *Price+  5e      $ Quantity��61   $ * 6C    6M   �� *
Quantity+5l      5m      �� 5o      $��0��6   $��1��6-   .+�5p      �� $��Center=�6    $��10q�6=   $��20(�6I   	Add Order6b   ]� 5r      $��Center=�6    $
��20 5q�6=   $
��True��6L   $
��Auto��6a   .+�5s      �� $��Customer ID��6$   
�������$
��Left=�5t      $��Center=�6)   �� 5u      -   5         ��Name$ CustomerIdTB��5u   "   $	��100��68    �� 
IsReadOnly$
 True��6D   5v      ]� 5w      $��Center=�6    $��20q�6=   $
��True��6J   .+�5x      �� $��Customer Name��6$   $
��Left=�5y      $��Center=�6)   �� 5z      -   5        $ CustomerNameTB��5z   "   $��30��6:   $	��100��6F   $
 True��6R   5{      ]� 5|      $��Center=�6    $��20q�6=   $
��True��6J   .+�5}      �� $��Quantity��6$   $
��Left=�5      $��Center=�6/   �� 5�      -   5        $ orderQuantityTB��5�   "   $��30��6;   $	��100��6G   5�      � 5�      $��Center=�6    .+�5�      �� -   5         ��Name$ ConfirmOrdersBtn��5�   !   $��Center=�6;   $��5 10 1 5q�6X   $��39��6j   $��90��6v   .��6�   Confirm Orders6�   �� 5�      -	   5        $ EditOrdersBtn��5�   !   $��Center=�68   $��5 10 1 5q�6U   $��39��6g   $��90��6s   .��6�   Confirm Orders6�   �� 5�      -
   5        $ RemoveOrders��5�   !   $��Center=�67   $��5 10 1 5q�6T   $��39��6f   $��90��6r   .��6�   Confirm Orders6�   �� 5�      -   5        $ viewOrdersBtn��5�   !   $��Center=�68   $��5 10 1 5q�6U   $��39��6g   $��90��6s   .��6�   View Orders6�   5�      5�      �� 5�      $��1��6   $��1��6-   $��4��6:   .+�5�      ]� $��Center=�6    $
��20 3q�6=   $
��True��6N   .+�5�      �� $��Quantity��6$   $
��Left=�65   $��Center=�6K   �� 5�      -   5        $ ProductQuantity��5�   "   $	��100��6;   6I   �� 5�      -   5        $ AddOrderBtn��5�   !   $��Add to order��66   6j   5�        5�      -   5        $	 ordersDataGrid��5�       $	��500��68   $ False��6E    5�        5�      $	 Num��61   $ * 6>    6H   �� *Num+  5�      $ Product��61   $ * 6B    6L   �� *	Product+  5�      $ Quantity��61   $ * 6C    6M   �� *
Quantity+  5�      $ UPrice��61   $ * 6A    6K   �� *UPrice+  5�      $ 
TotalPrice��61   $ * 6E    6O   �� *
TotalPrice+5�      5�      5�      5�      5�      5�      