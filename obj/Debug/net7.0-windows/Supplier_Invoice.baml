   M S B A M L   `   `   `  ����K  GInventory_System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:inventroy_systeminventroy_system  5   	   '    !inventroy_system.Supplier_Invoice   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:inventroy_system     5   	   -   5          � Title$  Supplier_Invoice��5   	   $	��450��6"   $	��800��6/   .��5
      �  � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!    � RowDefinitions 5   
   �� 5      $��2* �6   6*   �� 5      $��* �6   6*   .+�5   
   �� $��10q�6   .+�5      �  5      �� 5      6)   �� 5      6)    5      �� 5      5!      �� 5"      6&   �� 5#      6&   5&      5(      �� 5)   
   $��1��6   .+�5*      �  5+      �� 5,      6)   �� 5-      6)    5/      �� 50      6&   �� 51      6&   56      57      &   System.Windows.Controls.DataGrid  58   
   -   5          Name$ BuysDataGrid��58         DataGridColumnHeaderStyle1   ColumnHeaderStyle# �   6)     DataGridCellStyle1   	CellStyle# �  6k     DataGridRowStyle1   RowStyle# �  6�     DataGridStyle#���  6�   $��10q�6�   
������ $��0��6  $��2��6(     AutoGenerateColumns$ False��6<  ���#45bd62$��1,1,1,1q�6n     GridLinesVisibility$
 None=�6�  	   Columns	 5:      0  *System.Windows.Controls.DataGridTextColumn  5;      ,  &System.Windows.Controls.DataGridColumn
   Header$
 ProductName��6%      MinWidth$ 90Q�6:      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6H   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6R   �� *ProductTitle+6u     5<      $
 Quantity��6%   $ 90Q�67   $ * 6E    6O   �� *
Quantity+6n     5=      $
 Price��6%   $ 90Q�64   $ * 6B    6L   �� *Price+6h     5>      $
 
TotalPrice��6%   $ 90Q�69   $ * 6G    6Q   �� *
TotalPrice+6r     5?      $
 Category��6%   $ 90Q�67   $ * 6E    6O   �� *
category+6n     5@      $
 Supplier��6%   $ 90Q�67   $ * 6E    6O   �� *
supplier+6n   4  .System.Windows.Controls.DataGridTemplateColumn  5A      $
 Image��6)   $ * 68      CellTemplate 5B      �� 5C      .R�5D      �� $��25��6$   $��50��60   ��6;   �� *Image+5E      5H       � 	Resources 5M      =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� 
TargetType �� Property �� Value��%�   '        �� 5N      "  6   .�5O      ��  � ��
 �/kU�63   �� 5P       � ��
 �����63   �� 5Q       � ��$
 Bold"�63   5T      5U         RowHeaderStyle 5V      �� 5W      5]      �� 5^   
   $��2��6   $��1��6"   .+�5_      �  5`      �� 5a      6)   �� 5b      6)    5e      �� 5f      6&   �� 5g      6&   �� 5i      $��2* �6$   62   .+�5m      ��  �� Orientation$ 
Horizontal=�6   ���#45bd62$��2��6L   $��2��6Y   $��10q�6m   $��Center=�6y   .+�5n      �� $��10 0 0 0q�6    $��25(�63   
�������$��
Bauhaus 93)�6T   $��Center=�6l   Total6�   �� 5o      -   5        $��TotalPriceLabel��5o      $��5q�63   
�������$��
Bauhaus 93)�6Q   $��22(�6i   6y   5p      5y      5z      5~      5�      