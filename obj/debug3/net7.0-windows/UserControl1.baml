   M S B A M L   `   `   `  ���� K  Ginventroy system, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:inventroy_systeminventroy_system  #    inventroy_system.UserControl1   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     0localclr-namespace:inventroy_system     
�������.���� .���   � ColumnDefinitions  �� $��* ��� $��2* � � RowDefinitions �� �� .+��� $��0��$��0��.+��� $��Center=�$��10q�$��20(�Customers List&   System.Windows.Controls.DataGrid  -     Name$ customerData�����	#FFFCFCFF$	��200��$��10q�$��Center=����	#FF080B33   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ CustomId��   MinWidth$ 90Q�   Width5  /System.Windows.Controls.DataGridLengthConverter$ *   $ 
CustomName��$ 90Q�$ *   $ CustomPhone��$ 90Q�$ * �� $��1��$��0��.+��� -   $��chooseProduct��$��Center=�$	��200��$��10q�  -   $ 	orderData�����	#FFFCFFFF$	��200��$��10q�$��Center=����	#FF131754"   VerticalScrollBarVisibility$ Visible=�   $ 	ProductID��$ 90Q�$ *   $ ProductName��$ 90Q�$ *   $ 
ProductQtn��$ 90Q�$ *   $ ProductPrice��$ 90Q�$ *   $ ProductDescription��$ 90Q�$ *   $ ProductCategory��$ 90Q�$ * �� $
��Auto=�$��0��$��1��.���� $��0��$��0,0,0,0q�$��1��.+��� $��Center=�$��10q�$��20(�	Add Order]� $��Center=�$
��20 5q����	#FF1F3E9E$
��True��.+��� $��Order ID��$��5q�
�������$
��Left=�$��Center=��� $��25��$	��286��]� $��Center=�$
��20 5q����	#FF1F3E9E$
��True��.+��� $��Customer ID��$��5q�
�������$
��Left=�$��Center=��� $��25��$	��286��]� $��Center=�$��20q����	#FF1F3E9E$
��True��.+��� $��Customer Name��$��5q�
�������$
��Left=�$��Center=��� $��25��$	��286��]� $��Center=�$
��20 3q����	#FF1F3E9E$
��True��.+��� $��
Order Date��$��5q�
�������$
��Left=�$��Center=�(  "System.Windows.Controls.DatePicker  $��25��$	��286��� .+��� $��Center=�$��
20 10 10 5q����	#FF1F3E9E���	#FFF1E2E2$��39��$��98��.��Insert Order�� $��Center=�$��5 10 1 5q����	#FF1F3E9E���	#FFF1E2E2$��39��$��98��.��View Orders�� $��Center=�$��
20 10 10 5q����	#FF1F3E9E���	#FFF1E2E2$��39��$��98��.��Home�� $��1��$��1��.+�]� $��Center=�$
��20 3q����	#FF1F3E9E$
��True��.+��� $��
Order Date��$��5q�
�������$
��Left=�$��Center=��� $	��100���� $��Add to order�����	#FF1F3E9E
�������  ���	#FFFBFDFF$	��200��$��10q�$��Center=�$��Center=�#��� �����	#FF181E79   $	 Num��$ 90Q�$ *   $ Product��$ 90Q�$ *   $ Quantity��$ 90Q�$ *   $ UPrice��$ 90Q�$ *   $ Total Price��$ 90Q�$ * 