   M S B A M L   `   `   `  ����K  GInventory_System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:inventroy_systeminventroy_system  5      +    %inventroy_system.ManageInvoicesWindow   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:inventroy_system     5      .��5	      � .+�5
   
   �� .@�5      �� $	��160��6   $��30��5      ���#2a2e32
�������$��20(�6J   $��Customer Invoice��6Y   .��5      ]� .+�5      �� $��View Orders��6   $��Center=�62   $��33��6V   $$��Bahnschrift SemiBold Condensed)�6b   $��20(�6�   $��Italic$�6�   ���#2a2e32
�������$	��Top=�6�   ]� 5      $��1��6    $��0��60   $��2��6=   $
��True��6Q   $��
10,20,10,0q�6f   .+�5      ��   �� Orientation$  
Horizontal=�6%   $��Center=�6>   $	��Top=�6[   .+�5      �� $��Center=�6(   $��10q�6E   $��15(�6Q   Select Customer6p   �� 5      -   5        $��FilterCustomerCB��5   '      ComboBoxTemplate1#���   6?   $	��Top=�6n   $��Center=�6�   $	��200��6�   $��10q�6�    �� Text$ Category��6�   6�   �� 5      -   5         ��Name$ AllCustomerInvoiceBtn��5   %     ButtonTemplate1#���  6D   $��Center=�6q   $��
20 10 10 5q�6�   $��39��6�   $��98��6�   .��6�   
Show All6�   5      &   System.Windows.Controls.DataGrid  5      -   5          Name$ CustomerInvoiceDataGrid��5   $      AutoGenerateColumns$ False��6E   $��10q�6b     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6o     DataGridCellStyle1   	CellStyle# �  6�     DataGridRowStyle1   RowStyle# �  6�     DataGridStyle#���  6   �� IsTextSearchEnabled$
 True��6>  	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5   "   ,  &System.Windows.Controls.DataGridColumn
   Header$
 ID��65      MinWidth$ 90Q�6B      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6P   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6Z   �� *ID+  5   "   $

 Date��65   $ 90Q�6D   $ * 6R    6\   �� *date+  5   "   $
 Total Price��65   $ 90Q�6K   $ * 6Y    6c   �� *
totalprice+5      5      5      5       �� 5!      $	��160��6   $��30��5"      ���#2a2e32
�������$��20(�6J   $��Product Invoice��6Y   .��5#      ]� .+�5$      �� $��Product Invoices��6   $��Center=�67   $��33��6[   $$��Bahnschrift SemiBold Condensed)�6g   $��20(�6�   $��Italic$�6�   ���#2a2e32
�������$	��Top=�6�   ]� 5&      $��1��6    $��0��60   $��2��6=   $
��True��6Q   $��
10,20,10,0q�6f   .+�5'      �� $  
Horizontal=�6%   $��Center=�6>   $	��Top=�6[   .+�5(      �� $��Center=�6(   $��10q�6E   $��15(�6Q   Select Customer6p   �� 5)      -   5        $��ProductCustomerFilterCB��5)   (   #���   6G   $	��Top=�6v   $��Center=�6�   $	��200��6�   $��10q�6�   $ Category��6�   6  �� 5*      -   5        $ ShowALLProduct��5*   &   #���  6>   $��Center=�6k   $��
20 10 10 5q�6�   $��39��6�   $��98��6�   .��6�   
Show All6�   5+        5,      -   5        $ ProductInvoiceDataGrid��5,   %   $��10q�6E   # �  6R   # �  6�   # �  6�   #���  6�   $ False��6  $
 True��6<  	 5.        5/   "   $
 ID��65   $ 90Q�6B   $ * 6P    6Z   �� *Id+  50   "   $

 Date��65   $ 90Q�6D   $ * 6R    6\   �� *Date+  51   "   $
 Total Price��65   $ 90Q�6K   $ * 6Y    6c   �� *BillTotalPrice+53      54      55      56      57      58      59      