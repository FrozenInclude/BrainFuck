   M S B A M L   `   `   `  ���� >  :BTF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:BTFBTF      BTF.BTFTranslator   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     #localclr-namespace:BTF     -     � Title$   BTF  번역기��$��550.5��$
��1004��
������� � AllowsTransparency .  � WindowStyle$
 None=����	#FF1F1C1C$��1q�$��4q� � Icon$ resource/brainfuck.png�� J� 	AllowDrop . .���  .  � ColumnDefinitions �� $
��241* ��� $	��93* � � RowDefinitions �� $	��20* ��� $
��117* �.+�]� -   ��. $	��252��$	��Top=�$��2��$��2��.+��� -   $	��BTF�����	#FF1F1C1C$	��Top=�$��44��._��� $��	0,2,35,10q�$��16(����	#FFFDFCFC$��Noto Sans CJK KR Medium)�$��Right=�$	��957������ *Title+ �� RelativeSource �� *FindAncestor+ �� AncestorType$ WindowL�	 �� FallbackValue$	 Title������ *BTF+o� $
��Left=�$	��Top=�$
��1003��$��31��$��	0,-15,0,0q����	#FF1F1C1C���	#FF0F0F0F
 J� Effect
 3  -System.Windows.Media.Effects.DropShadowEffect     
BlurRadius$ 10Q�   	Direction$	 -90Q�   RenderingBias$ Quality=�   ShadowDepth$ 0Q�.@�m� -   $��menus��$��24��
�������$��24��$��Noto Sans CJK KR Medium)�|�.   J� RenderTransformOrigin$ 0.5243,0.348&� � Cursor$
 Hand��$��10.667(�$
��Bold"�$��14,2,0,0q� m� Icon �� $��resource\File.png��.@�m� -   $��불러오기��$��0q����	#FF040404$��맑은 고딕)�$��Normal"�$��12(�m� -   $��저장��
���   �$��Normal"�$��맑은 고딕)�$��12(�m� -   $��다른이름으로저장�����	#FF0A0A0A$��맑은 고딕)�$��Normal"�$��12(��� m� -   $��
recentFile��$��최근사용한파일�����	#FF080808$��맑은 고딕)�$��Normal"�$��12(�.@�.@�Noto Sans CJK KR Medium m� $��
ReadMe.txt��m� $��Schedule.xls���� -	    ��Name$ LineNum��$�� ��$	��458��$	��Top=�$��
0,66,682,0q����	#FF252121$��2���� -
    ��Name$ comboBox��$	��102��$��21��$��
0,33,105,0q�$	��Top=�$��Right=����	#FF080808
�������   SimpleComboBox#���   $��0q�.@��� $��인간언어���� $��인간언어(EXE)���� $
��Java���� $
��Ook!���� $��Object-c���� $	��C++���� $��C#���� $��F#���� $��
Javascript���� $��As3.0���� $	��awk���� $��Swift���� $��Scheme���� $��Python���� $��Pascal���� $	��php���� $
��Perl���� $��VB.NET���� $��Go���� $	��Lua���� $
��Rust���� $
��Ruby���� -   $��	CodeInput��$
��Left=� �� IsUndoEnabled .  $	��474��$��
41,66,0,24q���. $ �� HorizontalScrollBarVisibility$ Visible=�" �� VerticalScrollBarVisibility$ Hidden=�$��0q� �� AcceptsReturn . ���	#FF1F1C1C���	#FF0B0B0C$��	Mono sans)�
�������$��13.333(�$��2�� � 	Resources  �� 
TargetType �� Property �� Value��%3   'J�       �� " J�.���  �@��Margin$ 0q� � ContextMenu �� .@�m� $��잘라내기�� m� Command$ ApplicationCommands.Cut��m� $��복사��$ ApplicationCommands.Copy��m� -   $��붙여넣기��. �/� .T�J� �� -   $ label1��$��Brain Fuck->��$��Right=�$��
0,0,211,29q�  SimpleLabel#���  $��Bottom=�$��71��
��������� -    ��Name$ 
CodeOutput��$
��Left=�$	��487��$��515,66,0,44q���. $
 Auto=�$
 Auto=����	#FF2B2828$��0q� . $��1q� �� 
IsReadOnly . ���	#FF0B0B0C$��	Mono sans)�
�������$��13.333(�$��2��$��2��. �/� .T�J� �� -     ��Name$  image��$��17��$	��Top=�$��	260,4,4,0q�$ 12.75,2.353&�$
 Hand��$��1������ .R��� $��resource\close.png��r� -   $��mediaElement1��$��0��$��10,143,108,0q�! r� LoadedBehavior$! Manual=�$	��Top=�$��1��$y�Hidden=�$��2���� -   $��Lineinfo��$!��줄:47   열:4   문자:500��
����������	#FF0B0B0C���	#FF252121$��
0,444,0,-2q�$��맑은 고딕)�$��1��$��Right=�$
��1002��$��2���� -   $  번역��  MyButtonStyle#��[ $�� ��$
��Left=�$��
625,32,0,0q�$	��Top=�$��23��
���   �$��0q�
���   �$��23��$ 0.5,0.5&�$
 Hand������ " �� ImageSource$" resource/Run.png���� -   $  번역_Copy��#��[ $
��Left=�$	��Top=�$��
679,32,0,0q�
���   �$��23��$��23��$��0q�$
 Hand������ $" resource/copy.png���� -   $ LineNumLabel�� .  $��Center=�$��
0,0,682,44q�$��Bottom=�$��41��$��13.333(����	#FFF17648$��	Mono Sans)�$	��439��$��Center=� . $��0q�$ Hidden=�$��2����Z�  ��%3   'J�       �� " J�.���  �@��Margin$ 0q�. �/� # /� TextAlignment$# Right=�.T�J� �� -   $  중단��#��[ $�� ��$
��Left=�$��
652,32,0,0q�$	��Top=�$��23��
���   �$��0q�
���   �$��23��$ 0.5,0.5&�$
 Hand��{�.  ���� $" resource/pause.png���� -   $  설정��#��[ $
��Left=�$	��Top=�$��
706,32,0,0q�
���   �$��23��$��23��$��0q�$
 Hand��$ J� IsHitTestVisible$ . $��2������ -   optionImage��$" resource/option.png��% �� RelativeTransform% V� .~��� & �� CenterY$	& 0.5Q�' �� CenterX$	' 0.5Q��� ( �� CenterY$	( 0.5Q�) �� CenterX$	) 0.5Q��� -   rot��* �� CenterY$	* 0.5Q�+ �� CenterX$	+ 0.5Q�T� �� -   , ��Name$, Opback��$
��Left=�$	��212��$��5,60,0,0q�$	��Top=�$	��209�����	#FF1B1B1B- J� Opacity$
- 0.85Q�$��2��$��1��$y�Hidden=��� -   $ labels��$ ��인간언어 번역 설정��$��1��$
��Left=�$��9,58,0,0q�$	��Top=�$��2��$��28��$y�Hidden=�$��Malgun Gothic)�
�������$��13.333(��� -   $ 
dynamicMem��$��가변메모리:��$��1��$
��Left=�$��	41,45,0,0q�$	��Top=�$��24��$��1��$��71��
�������$y�Hidden=���Z� �� -   . ��Name$. selep��$��1��$
��Left=�$��19��$��	11,79,0,0q�$	��Top=�$	��193�����	#FFA8A4A4$��2��$y�Hidden=��� -   / ��Name$/ DynamicList��$�� ��$��1��$
��Left=�$��
114,51,0,0q�$��1��$	��Top=�0 d� 	IsChecked$
0 TrueY�$y�Hidden=��� -   $ label2��$��메모리 크기:��$��1��$
��Left=�$��8,15,0,0q�$��1��$	��Top=����	#FFFDFDFD$y�Hidden=��� -   1 ��Name$1 textBox��$��1��$
��Left=�$��19                   ��$��	85,18,0,0q�$��1��2 �� TextWrapping$
2 Wrap=�$	��Top=�$	��120��$y�Hidden=�$	��100���� -    $ labelt1��$��Instructions 표시:��$��1��$
��Left=�$��9,73,0,0q�$	��Top=�$��24��$��1��$	��103��
�������$y�Hidden=���Z� �� -!   $/ CoutingPointer��$�� ��$��1��$
��Left=�$��
114,79,0,0q�$��1��$	��Top=�$
0 TrueY�$y�Hidden=��� -"   $ labelt2��$��소요시간 표시:��$��1��$
��Left=�$��
24,103,0,0q�$	��Top=�$��24��$��1��$	��103��
�������$y�Hidden=���Z� �� -#   $/ runningTime��$�� ��$��1��$
��Left=�$��114,109,0,0q�$��1��$	��Top=�$
0 TrueY�$y�Hidden=��� -$   $	 lab��$��cell:��$��1��$
��Left=�$��	9,133,0,0q�$	��Top=�$��24��$��1��$	��103��
�������$y�Hidden=���Z� 	� -%   3 	�Name$
3 bit8��$��8 Bit��$��1��$
��Left=�$��
40,139,0,0q�$��1��$	��Top=����	#FFECECEC$
0 TrueY�$y�Hidden=�	� -&   $3 bit16��$��16 Bit��$��1��$
��Left=�$��
91,139,0,0q�$��1��$	��Top=����	#FFECECEC$0 FalseY�$y�Hidden=�	� -'   $3 bit32��$��32 Bit��$��1��$
��Left=�$��149,139,0,0q�$��1��$	��Top=����	#FFECECEC$y�Hidden=��� -(   $/ 
memoryView��$�� ��$��1��$
��Left=�$��154,164,0,0q�$��1��$	��Top=�$
0 TrueY�$y�Hidden=��� -)   $ Memorylabel��$(��"메모리뷰(퍼모먼스 저하):��$
��Left=�$��	9,158,0,0q�$��1��$	��Top=�$	��144��
�������$y�Hidden=�$��1���� -*   $  	도움말��#��[ $
��Left=�$	��Top=�$��	10,32,0,0q�
���   �$��23��$��23��$��0q�$
 Hand��$��1��$ . $��?��
�������$��16(�$��HYgsrB)��� -+   $1 InputBox��$
��Left=�$	��453��$��549,424,0,24q�$
 Auto=����	#FF1F1C1C$��0q�$��1q����	#FF0B0B0C$��	Mono sans)�
�������$��13.333(�$��2��$��1��.���� -,   $ label��$��입력��$��515,424,174,24q�$��1�����	#FF3A3838
�������$��	Mono sans)�$��10.533(��� --   $ comboBox_Copy��$	��102��$��21��$��
0,33,289,0q�$	��Top=�$��Right=����	#FF080808
�������#���   $��0q�.@��� -.   $��reverse input���� -/   $��	삼각형���� -0   $��구구단 2단���� -1   $��
TEXT TO BF���� -2   $��Hello, World!���� -3   $��Random Byte���� -4   $��피보나치 수열���� -5   $��BF to C���� -6   $��99병의 맥주���� -7   $��numwarp���� -8   $ label1_Copy��$��코드 조각->��$��Right=�$��
0,0,392,29q�#���  $��Bottom=�$��71��
�������