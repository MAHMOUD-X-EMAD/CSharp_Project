   M S B A M L   `   `   `  ����K  GInventory_System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:inventroy_systeminventroy_system  5      b ^PresentationFramework.Aero2, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35hKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2Microsoft.Windows.Themes 5	      %    inventroy_system.ProductsWindow   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:inventroy_system     5      ]themeKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2     5	      -   5        
������ .��5      �� .��5   
   ]� .+�5      �� $��Manage Product��6   $��Center=�6-   $��33��6Q   $$��Bahnschrift SemiBold Condensed)�6]   $��20(�6�   $��Italic$�6�   ���#2a2e32
�������$	��Top=�6�   � 5        � ColumnDefinitions  5      �� 5      $��* �6'   63   �� 5      $
��1.5* �6'   66    � RowDefinitions 5      �� 5      6&   �� 5      6&   .+�5      �� $
��Auto=�6   $��0��6B   .��5      �� $��0��6    $��0��60   $��5q�6=   ��5      �� 5       $��20(�6(   Product Details6G   .��5#      � $��0,0,0,0q�6%   $��Center=�66   .+�5$      ]� $��Center=�6(   $
��True��6E   $��7q�6[   .+�5%   "   �� -   5        $��ProductImage��5%   )   $	��128��6>   $��70��6J   $
��Left=�6W   �� 5&   "   -   5         ��Name$ SelectImageBtn��5&   )      ButtonTemplate1#���   6B   $	��7,0q�6o   $	��128��6|   $��Center=�6�   $��40��6�   .��6�   Select Image6�   5'      ]� 5(      $
��Left=�6(   $
��True��6C   $��7q�6Y   .+�5)   "   �� $��
Product ID��6,   $	��Top=�6@   $��Center=�6U   �� 5*   "   -   5         ��Name$ ProductIdTB��5*   *     TextBoxStyle1#���  6?   $��30��6g   $	��128��6s   ${�False��6   5+      ]� 5,      $
��Left=�6(   $��7q�6D   $
��True��6O   .+�5-   "   �� $��Product Name��6-   $	��Top=�6B   $��Center=�6W   �� 5.   "   -   5        $ ProductNameTB��5.   R   #���  6*   $��30��6i   $	��128��6u   5/      ]� 50      $
��Left=�6(   $��7q�6D   $
��True��6O   .+�51   "   �� $��Product Quntity��6-   $	��Top=�6E   $��Center=�6Z   �� 52   "   -   5        $ ProductQuntityTB��52   *   #���  6D   $��30��6l   $	��128��6x   53      ]� 54      $
��Left=�6(   $��7q�6D   $
��True��6O   .+�55   "   �� $��Product Price��6,   $	��Top=�6B   $��Center=�6W   �� 56   "   -   5        $ ProductDescriptionTB��56   *   #���  6H   $��30��6p   $	��128��6|   57      ]� 58      $
��Left=�6(   $��7q�6D   $
��True��6O   .+�59   "   �� $��Product Category��6-   $	��Top=�6F   $��Center=�6[   �� 5:   "   -   5         ��Name$ ProductCatgoryCB��5:   �     ComboBoxTemplate1#���  6+     ComboBoxStyle1#���  6Z   $��30��6�   $	��128��6�   5;      ]� 5<      $
��Left=�6(   $��7q�6D   $
��True��6O   .+�5=   "   �� $��Product Supplier��6-   $	��TOP=�6F   $��Center=�6[   �� 5>   "   -	   5        $ ProductSupplierCB��5>   [   #���  6,   $��30��6v   $	��128��6�   5?      � 5F      $��Center=�6(   .+�5G   "   �� -
   5        $ AddProductBtn��5G   )   #���   6@   $��Center=�6m   $��	5 10 10 5q�6�   $��39��6�   $	��128��6�   .��6�   Buy Product6�   �� 5H   "   -   5        $ EditProductBtn��5H   V   #���   6)   $��Center=�6n   $��	5 10 10 5q�6�   $��39��6�   $	��128��6�   .��6�   Edit6�   �� 5I   "   -   5        $ DeleteProductBtn��5I   *   #���   6D   $��Center=�6q   $��	5 10 10 5q�6�   $��39��6�   $	��128��6�   .��6�   Delete6�   �� 5J   "   -   5        $ ConfirmProductBtn��5J   *   #���   6E   $��Center=�6r   $��	5 10 10 5q�6�   $��39��6�   $	��128��6�   .��6�   Confirm Payment6�   5L      5S      5T      5V      �� 5W      $��1��6   $��0��6+   $��5,5,5,5q�69   $��2��6J   ��5X      �� 5Y      $��20(�6$   Product List6@   .��5[      ]� .+�5\      ��  �� Orientation$ 
Horizontal=�6%   $	��Top=�6>   .+�5]      �� $��Center=�6(   $��10q�6E   $��20(�6Q   Select Cateory6o   �� 5^      -   5        $��FilterCB��5^   '   #���  67   $	��140��6f   $��20��6r    �� SelectedIndex$ -1��6�   �� 5_      -   5        $ AllProductBtn��5_   %   #���   6<   $��Center=�6i   $��
20 10 10 5q�6�   $��39��6�   $��98��6�   .��6�   
Show All6�   5`      &   System.Windows.Controls.DataGrid  5a      -   5          Name$ ProductDataGrid��5a     "   VerticalScrollBarVisibility$
 Auto=�6#     DataGridColumnHeaderStyle1	   ColumnHeaderStyle#	 �  6G     DataGridCellStyle1
   	CellStyle#
 �  6�     DataGridRowStyle1   RowStyle# �  6�     DataGridStyle#���  6�      AutoGenerateColumns$ False��6`     
IsReadOnly$
 True��6�     Columns 5b      0  *System.Windows.Controls.DataGridTextColumn  5d   "   ,  &System.Windows.Controls.DataGridColumn   Header$ 	ProductID��65      MinWidth$ 90Q�6H      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6V   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6`   �� *Num+6z     5e   "   $ ProductName��65   $ 90Q�6J   $ * 6X    6b   �� *	Product+6�     5f   "   $ Quantity��65   $ 90Q�6G   $ * 6U    6_   �� *
Quantity+6~     5g   "   $ Price��65   $ 90Q�6D   $ * 6R    6\   �� *UPrice+6y     5h   "   $ Category��65   $ 90Q�6G   $ * 6U    6_   �� *
Category+6~   4  .System.Windows.Controls.DataGridTemplateColumn  5i   "   $ Image��69   $	 100Q�6H   $ * 6W      CellTemplate 5j   &   �� 5k   *   .R�5l   .   �� $��30��64   ��6A   �� *Image+5m   +   5p   #   5u      5v      5w      �� 5y      $��1��6   $��3��6(   $��5,5,5,5q�6<   ��5z      �� 5{      $��20(�6$   
Purchase6<   .��5~      ]� .+�5�      �� $��Bottom=�6%   $ 
Horizontal=�6=   $��Center=�6V   .+�5�      �� -   5        $ ClearBuysBtn��5�   &   #���   6<   $��Center=�6i   $��
20 10 10 5q�6�   $��39��6�   $	��110��6�   .��6�   Clear6�   �� 5�      -   5        $ DeleteBuysBtn��5�   &   #���   6=   $��Center=�6j   $��
20 10 10 5q�6�   $��39��6�   $	��110��6�   .��6�   Delete Item6�   5�        5�      -   5        $ BuysDataGrid��5�   %   #	 �  6;   #
 �  6}   # �  6�   #���  6�   $ False��6:   5�        5�   "   $ ProductName��65   $ 90Q�6J   $ * 6X    6b   �� *ProductTitle+6�     5�   "   $ Quantity��65   $ 90Q�6G   $ * 6U    6_   �� *
Quantity+6~     5�   "   $ Price��65   $ 90Q�6D   $ * 6R    6\   �� *Price+6x     5�   "   $ 
TotalPrice��65   $ 90Q�6I   $ * 6W    6a   �� *
TotalPrice+6�     5�   "   $ Category��65   $ 90Q�6G   $ * 6U    6_   �� *
category+6~     5�   "   $ Supplier��65   $ 90Q�6G   $ * 6U    6_   �� *
supplier+6~     5�   "   $ Image��69   $ * 6H    5�   &   �� 5�   *   .R�5�   .   �� $��25��64   $��50��6@   ��6K   �� *Image+5�   +   5�   #   5�      5�      5�      5�      5�      5�      5�      