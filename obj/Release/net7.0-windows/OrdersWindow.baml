   M S B A M L   `   `   `  ���� K  Ginventroy system, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:inventroy_systeminventroy_system  #    inventroy_system.OrdersWindow   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     0localclr-namespace:inventroy_system       � 	Resources   �� 
TargetType �� Property �� Value �� Triggers P� Property P� Value&   System.Windows.Controls.DataGrid��%u  '��       '��     '  �    �� " �����  � ��$ 16(���  � ��$$ Bahnschrift SemiBold Condensed)���  � ��
 ��  ���  � ��
 �������  � ��$ 5q� P�  �@J�IsMouseOver$
 True��. ���  �@�Cursor$
 Hand����  � ��
 �   ���  � ��
 ������� " ��.���  � ��
 ��  ���  � ��
 �������  � ��$ 16(���  � ��$ 30����  � ��$$ Bahnschrift SemiBold Condensed)���  �@��Padding$ 5q��� "  .���  � ��
 �������  � �� �	#FF131754��  � ��$	 200����  � ��$ 10q���  � ��$ Center=�.���� .��]� .+��� $��Manage Orders��$��Center=�$��33��$$��Bahnschrift SemiBold Condensed)�$��18(�$��Italic$�
����  �
�������$	��Top=��  � ColumnDefinitions �� $��* ��� $��2* � � RowDefinitions �� �� .+��� $��0��$��0��.+��� $��Center=�$��10q�$��20(�Customers List  -   	  Name$	 customerData��
   Columns
 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ CustomId��   MinWidth$ 90Q�   Width5  /System.Windows.Controls.DataGridLengthConverter$ *   $ 
CustomName��$ 90Q�$ *   $ CustomPhone��$ 90Q�$ * �� $��1��$��0��.+��� -   $��chooseProduct��$��Center=�$	��200��$��10q�  -   $	 	orderData��
   $ 	ProductID��$ 90Q�$ *   $ ProductName��$ 90Q�$ *   $ 
ProductQtn��$ 90Q�$ *   $ ProductPrice��$ 90Q�$ *   $ ProductDescription��$ 90Q�$ *   $ ProductCategory��$ 90Q�$ * �� $��0��$��0,0,0,0q�$��1��.+��� $��Center=�$��10q�$��20(�	Add Order]� $��Center=�$
��20 5q�$
��True��.+��� $��Order ID��$
��Left=�$��Center=� �� Padding$ 5q��� $��30��$	��150��]� $��Center=�$
��20 5q�$
��True��$
��Auto��.+��� $��Customer ID��
�������$
��Left=�$��Center=��� $��30��$	��130��]� $��Center=�$��20q�$
��True��.+��� $��Customer Name��$
��Left=�$��Center=��� $��30��$	��100��]� $��Center=�$
��20 3q�$
��True��.+��� $��
Order Date��$
��Left=�$��Center=�(  "System.Windows.Controls.DatePicker  $��30��$	��140��� .+��� $��Center=�$��
20 10 10 5q�$��39��$��90��.��Insert Order�� $��Center=�$��5 10 1 5q�$��39��$��90��.��View Orders�� $��Center=�$��
20 10 10 5q�$��39��$��90��.��Home�� $��1��$��1��.+�]� $��Center=�$
��20 3q�$
��True��.+��� $��
Order Date��$
��Left=�$��Center=��� $	��100���� $��Add to order��  
   $	 Num��$ 90Q�$ *   $ Product��$ 90Q�$ *   $ Quantity��$ 90Q�$ *   $ UPrice��$ 90Q�$ *   $ Total Price��$ 90Q�$ * 