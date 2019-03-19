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
Delay delay_time		'延时
SayString "三差一"		'打字打出三差一
Delay delay_time		'延时
KeyDown "Enter", 1
Delay 169
KeyUp "Enter", 1