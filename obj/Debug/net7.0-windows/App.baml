   M S B A M L   `   `   `  ����K  GInventory_System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:inventroy_systeminventroy_system  5      b ^PresentationFramework.Aero2, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35hKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2Microsoft.Windows.Themes 5          inventroy_system.App   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      0localclr-namespace:inventroy_system     5      _ [MaterialDesignThemes.Wpf, Version=4.7.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      WthemeKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2  5        �� 	Resources  5       �� 
TargetType �� 
ResourceId �� TypeInTargetAssembly&   System.Windows.Controls.DataGrid �� Property �� Value �� 
TargetType ��Name J� SnapsToDevicePixels	 �Name
 J� Opacity � Points �� Stretch �� Triggers P� Property P� Value �� 
TargetName   ColumnHeaderGripperStyle �� Padding  TextBoxStyle1-  'System.Windows.Input.KeyboardNavigation ��Name �� CornerRadius ��Name �� Triggers ]� 
Conditions �� Property �� Value  ComboBox.Static.Background �� EndPoint �� 
StartPoint � Color � Offset  ComboBox.Static.Border �� Color  ComboBox.Static.Glyph ' #ComboBox.Static.Editable.Background # ComboBox.Static.Editable.Border . *ComboBox.Static.Editable.Button.Background * &ComboBox.Static.Editable.Button.Border !	 ComboBox.MouseOver.Background 
 ComboBox.MouseOver.Border  ComboBox.MouseOver.Glyph * &ComboBox.MouseOver.Editable.Background & "ComboBox.MouseOver.Editable.Border 1 -ComboBox.MouseOver.Editable.Button.Background - )ComboBox.MouseOver.Editable.Button.Border  ComboBox.Pressed.Background  ComboBox.Pressed.Border  ComboBox.Pressed.Glyph ( $ComboBox.Pressed.Editable.Background $  ComboBox.Pressed.Editable.Border / +ComboBox.Pressed.Editable.Button.Background + 'ComboBox.Pressed.Editable.Button.Border   ComboBox.Disabled.Background  ComboBox.Disabled.Border  ComboBox.Disabled.Glyph ) %ComboBox.Disabled.Editable.Background % !ComboBox.Disabled.Editable.Border 0 ,ComboBox.Disabled.Editable.Button.Background , (ComboBox.Disabled.Editable.Button.Border  Menu.Static.Background  ComboBoxToggleButton F�Name ^� 
Conditions  �� Binding! �� RelativeSource" �� AncestorType   ComboBoxTemplate1# �Name$ � ColumnDefinitions% �Name& � AllowsTransparency' �� Mode5  /Microsoft.Windows.Themes.SystemDropShadowChrome(  Name)   Color* �� MaxDropDownHeight+ �� ElementName, �� ClearTypeHint- ��Name. ��Name/   DirectionalNavigation0 d�Name1 d� 	IsChecked2 ��Name#3 �� SelectionBoxItemStringFormat4 �� ContentStringFormat5 �� SelectionBoxItemTemplate6 �� SelectionBoxItem7 J� IsHitTestVisible8 P� 
SourceName ! DataGridColumnHeaderStyle1=  7System.Windows.Controls.Primitives.DataGridColumnHeader3  -Microsoft.Windows.Themes.DataGridHeaderBorder9   	IsPressed: J� IsMouseOver;   	IsHovered<   CanUserSort=   IsClickable>   SortDirection?   SortDirection@   SeparatorVisibilityA   SeparatorVisibilityB   SeparatorBrushC   SeparatorBrushD n�Name " Button.MouseOver.Background # Button.MouseOver.Border $ Button.Pressed.Background % Button.Pressed.Border & Button.Disabled.Background ' Button.Disabled.Border ( Button.Disabled.Foreground ) ButtonTemplate1 * DataGridStyleE � RowDefinitionsF   SelectAllCommand7  1System.Windows.Controls.DataGridHeadersVisibility
G   AllH �� ConverterParameter!I   HeadersVisibilityConverterJ �� 	ConverterG  ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenterK  NameL   ColumnM ��NameN �� CanContentScrollO ��NameP �� ScrollableHeightQ � MaximumR �� OrientationS �� ViewportHeightT �� ViewportSize*U �� #ComputedVerticalScrollBarVisibilityV � ValueW �� ScrollableWidthX �� ViewportWidth,Y �� %ComputedHorizontalScrollBarVisibility + DataGridRowStyle1)  #System.Windows.Controls.DataGridRow?	  9System.Windows.Controls.Primitives.SelectiveScrollingGrid?
  9System.Windows.Controls.Primitives.DataGridCellsPresenterZ   
ItemsPanelA  ;System.Windows.Controls.Primitives.DataGridDetailsPresenter[   DetailsVisibility$\ 	  SelectiveScrollingOrientation;  5System.Windows.Controls.SelectiveScrollingOrientation]   Vertical#^   RowDetailsScrollingConverter:  4System.Windows.Controls.Primitives.DataGridRowHeader
_   Row , DataGridCellStyle1*  $System.Windows.Controls.DataGridCell`   FocusBorderBrushKey��%J  (��       5      $" DataGridSelectAllButtonStyle��"  )&	  �    &	 �    &	 �	    &	 !
    &	 D
    &	 g
    &	 �
    &	 �
    &	 �
    &		 �
    &	
 �    &	 �    &	 �    &	 �    &	     &	 �    &	 �    &	 x    &	 �    &	 �    &	 �    &	     &	 �    &	 �    &	 �    &	 	    &	 ,    &	 O    &	 r    &	 �    &	 �    &	 �    7  7  7  7  7  7  7  7  7 	 7 
 7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  &	  9    7  &	! �&    7   7   &	" (*    &	# L*    &	$ p*    &	% �*    &	& �*    &	' �*    &	( �*    &	) +    7 " 7 # 7 $ 7 % 7 & 7 ' 7 ( &	* /    &	+ 19    (�� >@    5�     *DataGrid.FocusBorderBrushKey+)&	, a@    '�� �E    �� 5   
   " ��6   .�5      ��  � �� 5      �� 5      " ��6&   .R�5      � .+�5      �� $ Border��6(   
������$
 True��6J   � 5      $	 Arrow��6&   
���  ��$��Right=�6@   $��8,8,3,3q�6\   $

 0.15Q�6m    �   ��� ��� ��� ��� $ Uniform=�6�   $��Bottom=�6�   5       5      P� 5       �@J�IsMouseOver$
 True��6=   . �5   "   �� $ Border��6;    � ��
 � ���6O   5      P� 5       � ��$
 True��6;   . �5   "   �� $ Border��69   # � ��6M    � ��5      P� 5       � {�$ False��6;   . �5   "   �� $ Arrow��6?    � y�$ 	Collapsed=�6R   5      5!      5#      5$      �� 5%   
   " n�61   .�5&      ��  � ��$ 8��6&   �� 5'       � ��
 ���� 6+   �� 5(       �@�Cursor$ SizeWE��6'   �� 5)       � �� 5*      �� 5+      " n�6&   .R�5,      �� #��z��6!   # z��6K   5-      5/      50      �� 52   
   " ��6&   .�53      ��  � ��# � ��6+   �� 54       � ��
 �����6,   �� 55       � ��
 �   �6+   �� 56       � ��$ 1q�60   �� 57       �@ TabNavigation$
 None=�6A   �� 58       � ��$
 Left=�6;   �� 59       �@�FocusVisualStyle 61   Z� �� 5:       �@J�	AllowDrop$
 true��6*   �� 5;       �@��PanningMode$ VerticalFirst=�69   �� 5<       �@��IsFlicksEnabled$ False��67   �� 5=       � �� 5>      �� 5?      " ��6&   .R�5@      �� $ border��6!   
������ 
�������$��2q�6]   $
 True��6q   $ 5��6�   ._�5A      �� $ PART_ContentHost��6+   $|�false��6E   $��Hidden=�6W   $��Hidden=�6~   5B       5C      P� 5D       � {�$ false��6;   . �5E   "   �� $ border��6<    �@J�Opacity$
 0.56Q�6P   5F      P� 5G       �@J�IsMouseOver$
 true��6=   . �5H   "   �� $ border��6@    � �� �#3792376T   �� 5I   "    � ��
 �   �6O   5J      P� 5K       �@J�IsKeyboardFocused$
 true��6C   . �5L   "   �� $ border��6@    � �� �#3792376T   �� 5M   "    � ��
 �   �6O   5O      5Q      5S       5T      ]� 5U       5V      �� 5W      + �@��#IsInactiveSelectionHighlightEnabled$
 true��6S   �� 5X       �@��IsSelectionActive$ false��6A   ./�5Z      ��  �@��SelectionBrush# � /�67   5[      5]      �� 5^   
   $	 0,1&�6A   $	 0,0&�6P   .��5_      � $ 	#FFF0F0F0��6   $	 0.0Q�6-   � 5`      $ 	#FFE5E5E5��6   $	 1.0Q�6-   5a      �� 5b   
   $ 	#FFACACAC��69   �� 5c   
   $ 	#FF606060��68   �� 5d   
   $ 	#FFFFFFFF��6F   �� 5e   
   $ 	#FFABADB3��6B   �� 5f   
   $ Transparent��6M   �� 5g   
   $ Transparent��6I   �� 5h   
   $	 0,1&�6D   $	 0,0&�6S   .��5i      � $ 	#FFECF4FC��6   $	 0.0Q�6-   � 5j      $ 	#FFDCECFC��6   $	 1.0Q�6-   5k      �� 5l   
   $ #379237��6<   �� 5m   
   $ 	#FF000000��6;   �� 5n   
   $ 	#FFFFFFFF��6I   �� 5o   
   $ 	#FF7EB4EA��6E   �� 5p   
   $	 0,1&�6T   $	 0,0&�6c   .��5q      � $ 	#FFEBF4FC��6   $	 0.0Q�6-   � 5r      $ 	#FFDCECFC��6   $	 1.0Q�6-   5s      �� 5t   
   $ 	#FF7EB4EA��6L   �� 5u   
   $	 0,1&�6B   $	 0,0&�6Q   .��5v      � $ 	#FFDAECFC��6   $	 0.0Q�6-   � 5w      $ 	#FFC4E0FC��6   $	 1.0Q�6-   5x      �� 5y   
   $ 	#FF569DE5��6:   �� 5z   
   $ 	#FF000000��69   �� 5{   
   $ 	#FFFFFFFF��6G   �� 5|   
   $ 	#FF569DE5��6C   �� 5}   
   $	 0,1&�6R   $	 0,0&�6a   .��5~      � $ 	#FFDAEBFC��6   $	 0.0Q�6-   � 5      $ 	#FFC4E0FC��6   $	 1.0Q�6-   5�      �� 5�   
   $ 	#FF569DE5��6J   �� 5�   
   $ 	#FFF0F0F0��6?   �� 5�   
   $ 	#FFD9D9D9��6;   �� 5�   
   $ 	#FFBFBFBF��6:   �� 5�   
   $ 	#FFFFFFFF��6H   �� 5�   
   $ 	#FFBFBFBF��6D   �� 5�   
   $ Transparent��6O   �� 5�   
   $ Transparent��6K   �� 5�   
   $ 	#FFF0F0F0��69   �� 5�   
   " d�6-   .�5�      ��  �@�OverridesDefaultStyle$
 true��66   �� 5�       � ��$ false��6*   �� 5�       � |�$ false��6*   �� 5�       �@��	ClickMode$ Press=�6*   �� 5�       � �� 5�      �� 5�      " d�6&   .R�5�      �� $ templateRoot��6!   8��  8�� #��z��6�   $
 true��6�   ._�5�      �� $ splitBorder��6%   
������ $��1q�6T   $��Right=�6h   $��0q�6�   $
 true��6�   #��� r�6�   ._�5�   "   F� $ arrow��6'   F����        ���( ��( јaQ     јaQ P����̰( � �    P����        8�� $��Center=�6�   $��0q�6�   $��Center=�6�   5�      5�       5�      ^� 5�       5�   "   �� 5�   &     60   �� *
IsEditable+! �� "" �� true6�   �� 5�   &     60   �� *IsMouseOver+! �� *Self+	 false6v   �� 5�   &     60   �� *	IsPressed+! �� *Self+	 false6t   �� 5�   &     60   �� *	IsEnabled+! �� *Self+ true6t   .0�5�   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   �� 5�   "   $ splitBorder��6?   8   � ��6X   �� 5�   "   $ splitBorder��6@   8   � ��6Y   5�      P� 5�       �@J�IsMouseOver$
 true��6=   . �5�   "   �� $ arrow��69   8   � ��6L   5�      ^� 5�       5�   "   �� 5�   &     60   �� *IsMouseOver+! �� *Self+ true6v   �� 5�   &     60   �� *
IsEditable+! �� "" ��	 false6�   .0�5�   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8 	  � ��6Z   5�      ^� 5�       5�   "   �� 5�   &     60   �� *IsMouseOver+! �� *Self+ true6v   �� 5�   &     60   �� *
IsEditable+! �� "" �� true6�   .0�5�   "   �� $ templateRoot��6?   8 
  � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   �� 5�   "   $ splitBorder��6?   8   � ��6X   �� 5�   "   $ splitBorder��6@   8   � ��6Y   5�      P� 5�       � ��$
 true��6;   . �5�   "   �� $ arrow��69   8   � ��6L   5�      ^� 5�       5�   "   �� 5�   &     60   �� *	IsPressed+! �� *Self+ true6t   �� 5�   &     60   �� *
IsEditable+! �� "" ��	 false6�   .0�5�   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   5�      ^� 5�       5�   "   �� 5�   &     60   �� *	IsPressed+! �� *Self+ true6t   �� 5�   &     60   �� *
IsEditable+! �� "" �� true6�   .0�5�   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   �� 5�   "   $ splitBorder��6?   8   � ��6X   �� 5�   "   $ splitBorder��6@   8   � ��6Y   5�      P� 5�       � {�$ false��6;   . �5�   "   �� $ arrow��69   8   � ��6L   5�      ^� 5�       5�   "   �� 5�   &     60   �� *	IsEnabled+! �� *Self+	 false6t   �� 5�   &     60   �� *
IsEditable+! �� "" ��	 false6�   .0�5�   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   5�      ^� 5�       5�   "   �� 5�   &     60   �� *	IsEnabled+! �� *Self+	 false6t   �� 5�   &     60   �� *
IsEditable+! �� "" �� true6�   .0�5�   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   �� 5�   "   $ splitBorder��6?   8   � ��6X   �� 5�   "   $ splitBorder��6@   8   � ��6Y   5�      5�      5�      5�      �� 5�   
   " ��64   .R�5�      � $# templateRoot��6   $
 true��6)   $ 5�      �� 5�      $��* �6'   �� 5�      #��� r�6'   $��0 �6z   .+�5�      � $% 
PART_Popup��6   $
& true��6,   $��2��6F   $��1q�6�   $��Bottom=�6�   #��� .�6�   ��6Z   �� *IsDropDownOpen+$' TwoWay=�! �� *TemplatedParent+.��5�        $( shadow��63   $) Transparent��6C   #��z* 6�   ��6W   �� *ActualWidth+$+ templateRoot��._�5�      �� $ dropDownBorder��6!   #��� ��69   #��� ��6   $��1q�6�   ._�5�      �� $ DropDownScrollViewer��6+   .��5�   "   � $
# grid��6'   $, Enabled=�65   .+�5�   &   �� $- canvas��6-   $
��Left=�6=   $��0��6X   $	��Top=�6c   $��0��6{   .+�5�   *   �� $ 
opaqueRect��64   ��6H   �� *
Background+$+ dropDownBorder����6�   �� *ActualHeight+$+ dropDownBorder����6�   �� *ActualWidth+$+ dropDownBorder��5�   '   �� 5�   &   $. ItemsPresenter��65   $/ 	Contained=�6M   # z 6�   5�   #   5�      5�      5�      5�      d� 5�      $0 toggleButton��6   #��z��65   #��z��6_   #��z��6�   $��2��6�   8��  1 6�   �� *IsDropDownOpen+$' TwoWay=�! �� *TemplatedParent+66  �� 5�      $2 contentPresenter��6#   #4 z3 6=   #��z5 6�   #��z6 6�   #��z��6�   #��z��6-  $7 false��6p  #��z��6�  # z 6�  #��z��6�  5�       5      P� 5     $8 
PART_Popup��63    �@�HasDropShadow$
 true��6K   . �5     �� $ shadow��6/    � ��$ 0,0,5,5q�6C   �� 5     $ shadow��6.    �@ Color$ 	#71000000��6B   5     P� 5      �@��HasItems$ false��6.   . �5     �� $ dropDownBorder��6/    � ��$ 95��6K   5     ]� 5      5	     �� 5
      �@��
IsGrouping$
 true��6:   �� 5     " �@%�IsVirtualizingWhenGrouping$ false��6\   ./�5     ��  � ��$ false��6F   5     P� 5     $8 DropDownScrollViewer��6C    � ��$ false��6e   . �5     �� $ 
opaqueRect��63    6K   �� *VerticalOffset+$+ DropDownScrollViewer�� �@��Top�� 5     $ 
opaqueRect��64    6L   �� *HorizontalOffset+$+ DropDownScrollViewer�� �@��Left5     5     �� 5  
   "  63   .�5     ��  � ��$ Center=�69   �� 5      � ��
 �����6;   �� 5      � ��
 �����6+   �� 5      � ��$ 15(�6)   �� 5      � ��$ 30��6'   �� 5      � ��$ 0,0,0,5q�6'   �� 5      � ��$ 5q�6(   �� 5       � ��$
 Bold"�6+   6:   �� 5#      � �� 5$     �� 5%     "  6&   .R�5&     � .+�5'       #��z��69   #��z��6c   #��z��6�   #9 z��6�   #; z: 6�   #= z< 6  # z��6A  #? z> 6e  #A z@ 6�  #C zB 6�  ._�5(  "   �� #��z��63   $
��True��6v   # z 6�   #��z��6�   5)     n� 5*     $D PART_LeftHeaderGripper��6$   $
��Left=�6D   8��  6_   n� 5+     $D PART_RightHeaderGripper��6$   $��Right=�6E   8�� 6a   5,     5-     5/     50     �� 51  
   $ 
LightGreen��6>   �� 52  
   $ 
LightGreen��6:   �� 53  
   $ #379237��6<   �� 54  
   $ #379237��68   �� 55  
   $ 	#FFF4F4F4��6=   �� 56  
   $ 	#FFADB2B5��69   �� 57  
   $ 	#FF838383��6=   �� 59  
   " ��62   .R�5:     �� $ border��6   ���#379237���#379237$��5q�6P   $
 true��6d   $ 20��5;     ._�5<     �� $2 contentPresenter��6#   $|�False��6=   #��z��6O   #��z��6�   $
��True��6�   # z 6�   #��z��6  5=      5>     P� 5?      �@��IsDefaulted$
 true��68   . �5@     �� $ border��64   # � ��6H    � ��5A     P� 5B      �@J�IsMouseOver$
 true��61   . �5C     �� $ border��63   8    � ��6G   �� 5D     $ border��64   8   � ��6H   �� 5F     $ border��6/    �@�Cursor$
 Hand��6C   6R   5G     P� 5H      � ��$
 true��6/   . �5I     �� $ border��63   8   � ��6G   �� 5J     $ border��64   8   � ��6H   5K     P� 5L      � {�$ false��6/   . �5M     �� $ border��63   8   � ��6G   �� 5N     $ border��64   8   � ��6H   �� 5O     $ contentPresenter��6?   8   � ��6]   5P     5R     �� 5S  
   "  6&   .�5T     ��  � ��
 �����6+   �� 5U      � ��
 �   �6+   �� 5V      � ��$
 auto��6'   66   �� 5W      � ��$ 0,10,0,0q�6'   6:   �� 5X      �@ 
IsReadOnly$
 True��6+   6:   �� 5Z       �@ RowDetailsVisibilityMode$ VisibleWhenSelected=�69   �� 5[      � ��$
 true��6>   �� 5\      �@��PanningMode$
 Both=�69   �� 5]      �@��IsFlicksEnabled$ False��67   �� 5^      �@ SelectionMode$ Single=�6.   6?   �� 5_      �@ SelectionUnit$ FullRow=�6.   6@   �� 5`      �@ HeadersVisibility$ Column=�62   6C   �� 5a      � ��$ 0q�60   6<   �� 5b      �@ CanUserAddRows$ False��6/   6?   �� 5c      �@ GridLinesVisibility$
 None=�64   6C   �� 5f      � �� 5g     �� 5h     "  6&   .R�5j     �� #��z��6!   #��z��6K   #��z��6w   # z��6�   $
 True��6�   ._�5k     �� $ DG_ScrollViewer��6+   $|�false��6D   ��5l  "   �� 5m  &   " ��66   .R�5n  *   � $ 5o  .   �� 5p  2   $
��Auto �6C   �� 5q  2   $��* �6C   �� 5r  2   $
��Auto �6C   E 5t  .   �� 5u  2   $
��Auto �6@   �� 5v  2   $��* �6@   �� 5w  2   $
��Auto �6@   .+�5y  .   �� #��ZF 65   $|�false��6d   ��6v   C� *�� $" DataGridSelectAllButtonStyle��"  +y�6�   �� *HeadersVisibility+#H ZG #J ZI ! �� ""  ��6�  �� *CellsPanelHorizontalOffset+! �� ""    5z  .   $!K PART_ColumnHeadersPresenter��6M   $��1��6r   y�6�   �� *HeadersVisibility+#H ZL #J ZI ! �� ""  �� 5{  .   $!M PART_ScrollContentPresenter��6E   #N z��6j   $��2��6�   $��1��6�   �� 5|  .   $O PART_VerticalScrollBar��68   $��2��6X   #Q zP 6h   $R Vertical=�6�   $��1��6�   #T zS 6  #y�zU 6H  V 6�   �� *VerticalOffset+$' OneWay=�! �� *TemplatedParent+6H  � 5}  .   $��1��63   $��2��6C   $ 5~  2   �� 5  6   ��6G   �� **(NonFrozenColumnsViewportHorizontalOffset+! �� ""  �� 5�  6   $��* �6G   .+�5�  2   �� $O PART_HorizontalScrollBar��6<   $��1��6^   #Q zW 6n   $R 
Horizontal=�6�   #T zX 6  #y�zY 6C  V 6�   �� *HorizontalOffset+$' OneWay=�! �� *TemplatedParent+6C  5�  /   5�  +   5�  '   .��5�  "   �� # z 61   5�     5�     5�     5�      5�     ]� 5�      5�     �� 5�      �@��
IsGrouping$
 true��6:   �� 5�     " �@%�IsVirtualizingWhenGrouping$ false��6\   ./�5�     ��  � ��$ false��6F   5�     5�     �� 5�  
   "  6*   .�5�     ��  � ��
 �����6+   �� 5�      �@J�SnapsToDevicePixels$
 true��64   �� 5�      � ��
 �   �6;   �� 5�      � ��$	 0,3q�6'   65   �� 5�      �@=�ErrorTemplate 69   Z� �� 5�      �@ ValidationErrorTemplate 5�     �� 5�     .R�5�     �� 
���  ��$��2,0,0,0q�65   $��!��6F   $��Center=�6O   5�     5�     �� 5�      � �� 5�     �� 5�     "  6&   .R�5�     �� $ 
DGR_Border��6!   #��z��65   #��z��6_   #��z��6�   $
 True��6�   ._�5�     	  $ 5�  "   �� 5�  &   $
��Auto �67   �� 5�  &   $��* �67   E 5�  "   �� 5�  &   $��* �64   �� 5�  &   $
��Auto �64   .+�5�  "   
  $��1��69   #��zZ 6I   # z 6s     5�  "   $��1��6;   $��1��6K   #y�z[ 6o  \ 6X   �� *AreRowDetailsFrozen+#H Z] #J Z^ ! �� ""  6o    5�  "   $��2��64   $\ Vertical=�6E   y�6�   �� *HeadersVisibility+#H Z_ #J ZI ! �� ""  5�     5�      5�     ]� 5�      5�  "   �� 5�  &    �@J�IsMouseOver$
 True��6G   ./�5�  "   �� $ 
DGR_Border��6?    � ��
 ����6W   �� 5�  "   $ 
DGR_Border��6@    � ��
 � � �6X   �� 5�  "   $ 
DGR_Border��6;    �@�Cursor$
 Hand��6S   5�     5�     5�      5�     ]� 5�      5�     �� 5�      �@��IsSelectionActive$
 true��6J   �� 5�      �@ 
IsSelected$
 True��6:   ./�5�     ��  � ��
 ����64   �� 5�      � ��
 ����65   5�     ]� 5�      5�     �� 5�      �@��IsSelectionActive$ false��6J   �� 5�      �@ 
IsSelected$
 True��6:   ./�5�     ��  � ��
 ����64   �� 5�      � ��
 ����65   5�     5�     �� 5�  
   $ 	#FF000000��6J   �� 5�  
   "  6+   .�5�     ��  � ��
 ���� 6+   �� 5�      � ��
 ���� 6,   �� 5�      � ��$ 1q�60   �� 5�      � ��
 �   �6;   �� 5�      �@�FocusVisualStyle 61   Z� 6D   �� 5�      � ��$ 5q�6'   �� 5�      � �� 5�     �� 5�     "  6&   .R�5�     �� 
������ 
������$��0q�6S   $
 True��6g   ._�5�     �� # z 6/   5�     5�     5�      5�     P� 5�      �@ 
IsSelected$
 True��60   . �5�     ��  � ��# � ��63   �� 5�      � ��
 �   �63   �� 5�      � ��# � ��64   5�     P� 5�      �@J�IsKeyboardFocusWithin$
 True��6;   . �5�     ��  � ��# � ` 64   5�     ]� 5�      5�     �� 5�      �@ 
IsSelected$
 true��6:   �� 5�      �@��IsSelectionActive$ false��6J   ./�5      ��  � ��# � /�63   �� 5      � ��# � /�64   �� 5      � ��# � .�63   5     ]� 5      5     �� 5      �@ 
IsSelected$
 true��6:   �� 5      �@��IsSelectionActive$
 true��6J   ./�5	     ��  � ��# � /�63   �� 5
      � ��# � /�64   �� 5      � ��
 �   �63   5     P� 5      � {�$ false��6/   . �5     ��  � ��# � ��63   5     5     �� 5  
   " ��6   �5     �� 5      � ��$ 16(�65   6B   �� 5      � ��$$ Bahnschrift SemiBold Condensed)�67   6`   �� 5      � ��
 �����6G   �� 5      � ��$ 5q�6,   68    5     P� 5      �@J�IsMouseOver$
 True��61   . �5      ��  �@�Cursor$
 Hand��6/   6>   �� 5!      � ��
 �   �6C   �� 5"      � ��
 �����6B   5#     5&     5/     50     