[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=d52cc0e7-0d3b-4a03-a058-c6dc33ecfe44
Description=我的脚本1
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
delay_time = 10			'设置按完按键的缓冲时间
MoveTo 507, 941			'将鼠标移动到聊天窗口
Delay delay_time		'延时
LeftClick 1				'左键单击以聚焦	
i = 1					'定义循环变量并且赋初值
group_number = 28		'定义群人员的人数上限		
While i <= group_number	'开始循环			
	Delay delay_time	'延时
	KeyDown "Shift", 1	'模拟按下shift键
	Delay delay_time	'延时
	KeyDown "2", 1		'模拟按下2键，这个组合键打出来的就是@
	Delay delay_time	'延时
	KeyUp "Shift", 1	'模拟松开shift键
	Delay delay_time	'延时
	KeyUp "2", 1		'模拟松开2键
	Delay delay_time	'延时
	j = 1				'定义循环变量并且赋初值
	While j < i			'循环i-1次，因为@第i个人需要往上按Up键i-1下
		KeyDown "Up", 1	'模拟按下up键
		Delay delay_time'延时	
		KeyUp "Up", 1	'模拟松开up键
		Delay delay_time'延时
		j = j + 1		'循环变量自增
	Wend				'循环结束标志
	KeyDown "Enter", 1	'模拟按下回车键
	Delay delay_time	'延时
	KeyUp "Enter", 1	'模拟松开回车键
	i = i + 1			'循环变量自增
Wend					'循环结束标志
Delay delay_time'延时
'以下是打字打出三差一
KeyDown "S", 1
Delay delay_time
KeyUp "S", 1
Delay delay_time
KeyDown "A", 1
Delay delay_time
KeyUp "A", 1
Delay delay_time
KeyDown "N", 1
Delay delay_time
KeyUp "N", 1
Delay delay_time
KeyDown "C", 1
Delay delay_time
KeyUp "C", 1
Delay delay_time
KeyDown "H", 1
Delay delay_time
KeyUp "H", 1
KeyDown "A", 1
KeyDown "Y", 1
Delay delay_time
KeyUp "A", 1
KeyUp "Y", 1
Delay delay_time
KeyDown "I", 1
Delay delay_time
KeyUp "I", 1
Delay delay_time
KeyDown "Space", 1
Delay delay_time
KeyUp "Space", 1
Delay delay_time
KeyDown "Enter", 1
Delay delay_time
KeyUp "Enter", 1
