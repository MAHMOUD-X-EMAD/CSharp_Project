   M S B A M L   `   `   `  ����K  GInventory_System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:inventroy_systeminventroy_system  5   	       inventroy_system.Invoice   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:inventroy_system     5   	   -   5          � Title$  Invoice��5   	   $	��450��6   $	��800��6&   .��5	      �  � ColumnDefinitions 5
   
   �� 5      6!   �� 5      6!    � RowDefinitions 5   
   �� 5      6   �� 5      $��2* �6   6+   �� 5      6   .+�5   
   �� $��0��6   $��0��6%   .+�5      �  5      �� 5      6)   �� 5      6)    5      �� 5      5       �� 5!      6&   �� 5"      6&   .+�5$      �� 
���/kU�$��0,0,0,10q�66   ._�5%      �� $��30(�6$    �� TextAlignment$ Center=�63   $��50��6J   $��0��6V   	Invoice5'      5(      �� 5)      $��20(�6   $��1��6*   	Invoic No6B   �� 5*      $��20(�6   $��2��6*   Invoic Date6D   �� 5,      -   5        $��InvoiceNumLablel��5,      $��1��60   $��1��6=   .��6M   06P   �� 5-      -   5        $��InvoicDateLabel��5-      $��2��6/   $��1��6<   .��6L   06O   53      55      �� 56   
   $��1��6   .+�57      �  58      �� 59      6)   �� 5:      6)    5<      �� 5=      5?      �� 5@      6&   �� 5A      6&   .+�5C      �� 
���/kU�$��0,0,0,10q�66   ._�5D      �� -   5        $��CustomerNameLabel��5D      $��25(�65   $��50��6D   $��0��6P   .��6]   Customer Name5F      5G      �� 5H      $��20(�6   $��1��6*   Phone6>   �� 5I      $��20(�6   $��2��6*   	Address6@   �� 5K      -   5        $��CustomerPhoneLablel��5K      $��1��63   $��1��6@   .��6P   06S   �� 5L      -   5        $��CustomerAddressLabel��5L      $��2��64   $��1��6A   .��6Q   06T   5R      5S      &   System.Windows.Controls.DataGrid  5T   
   -   5          Name$ ordersdetailDataGrid��5T      
������ $��10q�6L   $��1��6X   $��2��6e      GridLinesVisibility$
 None=�6z      Columns 5V      0  *System.Windows.Controls.DataGridTextColumn  5W      ,  &System.Windows.Controls.DataGridColumn   Header$ Product��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 2* 66   6C     5X      $ Price��6%   $ * 64   6@     5Y      $ Quantity��6%   $ * 67   6C     5Z      $ total��6%   $ * 64   6@   	 � 	Resources	 5_      =  7System.Windows.Controls.Primitives.DataGridColumnHeader
 �� 
TargetType �� Property �� Value��%�   '        �� 5`      "
  6   .�5a      ��  � ��
 �/kU�63   �� 5b       � ��
 �����63   �� 5c       � ��$
 Bold"�63   5f      5g         RowHeaderStyle 5h      �� 5i      5o      �� 5p   
   $��2��6   $��1��6"   .+�5q      �  5r      �� 5s      6)   �� 5t      6)    5w      �� 5x      6&   �� 5y      6&   �� 5{      $��2* �6$   62   .+�5}      �� 
SubTotal6'   �� 5~      $��1��6   Tax6/   �� 5      $��1��6   Tax60   �� 5�      -   5        $��SubTotalLabel��5�      $��1��6-   .��6=   06@   �� 5�      -	   5        $��taxLabel��5�      $��1��6(   $��1��65   .��6E   06H   �� 5�       �� Orientation$ 
Horizontal=�6   
���/kU�$��2��6S   $��2��6`   $��10q�6t   .+�5�      ��  �� Padding$ 5q�6!   $��30(�6-   
�������Total6U   �� 5�      -
   5        $��
totalLabel��5�      $��10q�6.   .��6:   06>   5�      5�      5�      5�      5�      