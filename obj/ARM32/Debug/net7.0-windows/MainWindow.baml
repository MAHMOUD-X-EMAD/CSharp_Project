   M S B A M L   `   `   `  ����K  GInventory_System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:inventroy_systeminventroy_system  5   	   !    inventroy_system.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:inventroy_system     5   	   -   5          �Name$  HomeMain��5   	    � Title$ Inventroy System��5   
   $	��500��6#   $
��1000��60    � Icon$$ SystemImages/inventroyLogo.png��6=    � WindowState$ 	Maximized=�6c    � 	Resources 5
         ButtonStyle �� Property �� Value �� Triggers P� Property	 P� Value��%y  &	        �� 5   
   �5      �� 5       � ��$ 20(�65   6B   �� 5       � ��$ Commercialiq)�67   6N   �� 5       � ��$ 0,5,0,5q�6<   6N   �� 5       � ��
 ���� 6L   �� 5       � ��
 �����6H   �� 5       � ��$ 0,0,0,0q�6<   6N   �� 5       � ��
 �   �6G    5      P� 5       �@J�IsMouseOver$
	 True��68   . �5      ��  � ��$ 25(�69   6F   �� 5       � ��$ 20,0,0,0q�6@   6S   �� 5       � ��
 �����6K   �� 5        � ��
 �   �6K   �� 5!       �@�Cursor$
 Hand��67   6F   5$      5(      5*      .��5-      ]� -   5        $��dcPanel��5-      .+�5/   
   �� 
 �� CornerRadius$
 10��6   
�������
�������$��0,0,5,0q�6J   $
��left=�6d   ._�50      �� .��51      �� -   5        $��LeftRect��51      $	��200��6.   
�������.+�53      ��  �� Orientation$ 
Horizontal=�6!   $��Center=�6:   $��70��6W   .+�54      �� $$��SystemImages/inventroyLogo.png��6    $��50��6H   $��50��6S   6a   �� 55      $��Center=�6$   $��20(�6?   $��5,0,0,0q�6M   	Inventroy6i   56      �� 58      $��Center=�6    �� 	ClickMode$ Press=�68   $��50��6J   #��[  6V   ��59      �� 5:      $ 
Horizontal=�6)   $��50��6B   $	��180��6N   .+�5;   "   �� $$��SystemImages/DachBoardIcon.png��6(   $��40��6P   $��40��6[   $��0,0,10,0q�6g   6{   �� 5<   "   $��Center=�6,   $��20(�6G   	DashBoard6`   5=      5?      �� 5@      -   5         ��Name$ SupplierBtn��5@      $��Center=�62   $ Press=�6M   $��50��6_   #��[  6k   ��5A      �� 5B      $ 
Horizontal=�6)   $��50��6B   $	��180��6N   .+�5C   "   �� $$��SystemImages/suppliersIcon.png��6(   $��30��6P   $��30��6[   $��0,0,10,0q�6g   6{   �� 5D   "   $��Center=�6,   $��20(�6G   	Suppliers6`   5E      5H      �� 5I      -   5        $ CustomerBtn��5I      $��Center=�62   $ Press=�6M   $��50��6_   #��[  6k   ��5J      �� 5K      $ 
Horizontal=�6)   $��50��6B   $	��180��6O   .+�5L   "   �� $#��SystemImages/CustomerIcon.png��6(   $��30��6O   $��30��6Z   $��0,0,10,0q�6f   6z   �� 5M   "   -   5         ��Name$ CustomersBtn��5M   ,   $��Center=�6B   $��20(�6]   	Customers6v   5N      5Q      �� 5R      -   5        $ UserBtn��5R      $��Center=�6.   $ Press=�6I   $��50��6[   #��[  6g   ��5S      �� 5T      $ 
Horizontal=�6)   $��50��6B   $	��180��6N   .+�5U   "   �� $ ��SystemImages/UserIcon .png��6(   $��30��6L   $��30��6W   $��0,0,10,0q�6c   6w   �� 5V   "   $��Center=�6-   $��20(�6H   Users6]   5W      5Z      �� 5\      -   5        $ 
CatogryBtn��5\      $��Center=�61   $ Press=�6L   $��50��6^   #��[  6j   ��5]      �� 5^      $ 
Horizontal=�6)   $��50��6B   $	��180��6N   .+�5_   "   �� $��SystemImages/Category.png��6(   $��30��6K   $��30��6V   $��0,0,10,0q�6b   6v   �� 5`   "   $��Center=�6,   $��20(�6G   
Category6_   5a      5d      �� 5e      -	   5        $ 
ProductBtn��5e      $��Center=�61   $ Press=�6L   $��50��6^   #��[  6j   ��5f      �� 5g      $ 
Horizontal=�6)   $��50��6B   $	��180��6N   .+�5h   "   �� $"��SystemImages/productIcon.png��6(   $��30��6N   $��30��6Y   $��0,0,10,0q�6e   6y   �� 5i   "   $��Center=�6,   $��20(�6G   
Products6_   5j      5m      �� 5n      -
   5        $ OrderBtn��5n      $��Center=�6/   $ Press=�6J   $��50��6\   #��[  6h   ��5o      �� 5p      $ 
Horizontal=�6)   $��60��6B   $	��180��6N   .+�5q   "   �� $ ��SystemImages/orderIcon.png��6(   $��30��6L   $��30��6W   $��0,0,10,0q�6c   6w   �� 5r   "   $��Center=�6,   $��20(�6G   Orders6]   5s      5v      5{      5}      5      � 5�   
   -   5        $��contentWindow��5�      
�������6$   5�      5�      