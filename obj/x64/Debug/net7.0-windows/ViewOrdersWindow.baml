   M S B A M L   `   `   `  ����K  GInventory_System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:inventroy_systeminventroy_system  5   	   '    !inventroy_system.ViewOrdersWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:inventroy_system     5   	   -   5          � Title$  ViewOrdersWindow��5   	   $	��450��6"   $	��800��6/   
�������.��5	      ]� .+�5
   
   �� $��View Orders��6   $��Center=�6&   $��33��6J   $$��Bahnschrift SemiBold Condensed)�6V   $��20(�6�   $��Italic$�6�   ���#2a2e32
�������$	��Top=�6�   ]� 5   
   $��1��6   $��0��6$   $��2��61   $
��True��6E   $��
10,20,10,0q�6Z   .+�5      ��  �� Orientation$ 
Horizontal=�6   $��Center=�62   $	��Top=�6O   .+�5      �� $��Center=�6   $��10q�69   $��15(�6E   Select Customer6d   �� 5      -   5        $��chooseCustomerCB��5         ComboBoxTemplate1#���   63   $	��Top=�6b   $��Center=�6w   $	��200��6�   $��10q�6�    �� Text$ Category��6�   6�   �� 5      -   5         ��Name$ AllordersBtn��5        ButtonTemplate1#���  6/   $��Center=�6\   $��
20 10 10 5q�6y   $��39��6�   $��98��6�   .��6�   
Show All6�   5      &   System.Windows.Controls.DataGrid  5      -   5          Name$ ordersDataGrid��5      $��10q�61     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6>     DataGridCellStyle1   	CellStyle# �  6�     DataGridRowStyle1   RowStyle# �  6�     DataGridStyle#���  6�      AutoGenerateColumns$ False��6  	 �� IsTextSearchEnabled$
	 True��6Z  
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 65   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6?   �� *ID+  5      $ Product��6)   $ * 6:    6D   �� *	Product+  5      $ 	RecieptID��6)   $ * 6<    6F   �� *	RecieptID+  5      $ Quantity��6)   $ * 6;    6E   �� *
Quantity+  5      $ UPrice��6)   $ * 69    6C   �� *UPrice+  5      $ 
TotalPrice��6)   $ * 6=    6G   �� *
TotalPrice+5      5       5!      5"      