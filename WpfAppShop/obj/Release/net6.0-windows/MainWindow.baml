   M S B A M L   `   `   `  ���� E  AWpfAppShop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:WpfAppShop
WpfAppShop      WpfAppShop.MainWindow   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:WpfAppShop       � Title$  Продукты��$	��450��$	��800�� � WindowStartupLocation$ CenterScreen=�.����  �� Padding$ 10q�._��  � ColumnDefinitions �� -    ��Name$ ColumnAdmin��$
��0.2* ��� $��* � � RowDefinitions �� $
��0.1* ��� $��* �.+��� -    ��Name$ 
ButtonExit��$��
Выйти��$
��Left=�$	��Top=�$��0��$��0��$��25��$��60���� -    ��Name$ TBlockFullName��$��Center=� �� TextAlignment$ Right=�$��1��$��0���� $��0��$��1��.+��� -   $ 	ButtonAdd��$��Добавить��$��30��$��0 0 5 10q��� -   $ ButtonRemove��$��Удалить��$��30��$��0 0 5 10q��� -   $ 
ButtonEdit��$ ��Редактировать��$��30��$��0 0 5 10q�&   System.Windows.Controls.DataGrid  -   	  Name$	 DGridProducts��$��1��$��1��
   
IsReadOnly$

 True��   SelectionMode$ Single=�