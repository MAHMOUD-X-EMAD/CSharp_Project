   M S B A M L   `   `   `  ���� K  Ginventroy system, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:inventroy_systeminventroy_system  %    inventroy_system.ProductsWindow   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     0localclr-namespace:inventroy_system     .���� .���   J� RenderTransformOrigin$  1.026,0.643&�����  �� EndPoint$ 1.5,0&� �� 
StartPoint$ 1,1.5&� � SpreadMethod$	 Pad=�.���  � Color$ Black�� � Offset$ 1Q�� $ 	#FFF5E8E8�� � ColumnDefinitions �� $��2* ��� $��3* � � RowDefinitions �� $��* ��� $��6* �.+��� $	��Top=�$��0��$��0��$��3��$��68��.+��� $!��Inventory Management System��$��Center=�$��35��$$��Bahnschrift SemiBold Condensed)�$��24(�$
��Bold"�$��Italic$����	#FF941C1C
�������$  0.498,-1.644&��� $��Manage Products��$��Center=�$��33��$$��Bahnschrift SemiBold Condensed)�$��18(�$��Italic$����	#FF941C1C
��������� $��1�� �� Orientation$ Vertical=�$��Center=�$	��Top=�.+��� $ Vertical=�$��10q�.+��� $��
Product ID��$
��Left=�$��0 0 10 0q��� -   	 ��Name$		 PID�����	#FFB71900$	��150��$��15���� $ Vertical=�$��10q�.+��� $
��Name��$
��Left=�$��0 0 10 0q��� -   $	 PName�����	#FFB71900$	��150��$��15���� $ Vertical=�$��10q�.+��� $��Description��$
��Left=�$��0 0 10 0q��� -   $	 PDesc�����	#FFB71900$	��150��$��15���� $ Vertical=�$��10q�.+��� $��Quantity��$
��Left=�$��0 0 10 0q��� -   $	 	PQuantity�����	#FFB71900$	��150��$��15���� $ Vertical=�$��10q�.+��� $��Price��$
��Left=�$��0 0 10 0q��� -   $	 PPrice�����	#FFB71900$	��150��$��15���� -   
 ��Name$
 Category��$
��Left=�$��0 15 0 0q�$	��150��$��15���� $ 
Horizontal=�$��Center=�.+��� $	��Add��$��Center=�$	��Top=����	#FF941C1C
�������$  0.109,0.561&�$ ��Barlow Condensed ExtraBold)�$��46��$��18�� �� Left$	 110��
 �� Top$	 254���� $
��Edit��$
��Left=�$	��Top=����	#FF941C1C$  0.109,0.561&�
�������$ ��Barlow Condensed ExtraBold)�$��48��$��18��$ 38��$	 254���� $��Delete��$
��Left=�$	��Top=����	#FF941C1C
�������$  0.109,0.561&�$ ��Barlow Condensed ExtraBold)�$��50��$��18��$	 179��$	 254���� $
��Home��$��Center=�$
��0 10q����	#FF941C1C
�������$ ��Barlow Condensed ExtraBold)�$��83��$��17���� $��1��$��1��$ Vertical=�$	��Top=�.+��� -    ��Name$ ProductList_Label��$��Center=�$��Products List��$��17�����	#FF040F6B$
��Bold"�$��Bahnschrift Condensed)�$��90��$��18(��� $ 
Horizontal=�$��Center=�.+��� -   $
 Category_Search��$��Center=�$
��0 20q�$	��150��$��15���� $��Search��$��Center=����	#FF941C1C
�������$ ��Barlow Condensed ExtraBold)�$��48��$��19���� $��Refresh��$��Center=����	#FF941C1C
�������$ ��Barlow Condensed ExtraBold)�$��48��$��19���� .+�&   System.Windows.Controls.DataGrid  -	     Name$ ProductsGrid��$	��300��$��Barlow Condensed Black)�$��10(����	#FFF56A40 J� OpacityMask �� $ 0.5,1&�$ 0.5,0&�.��� $ Black��� $ White��$ 1Q����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFFF9999��� $ White��$ 1Q�