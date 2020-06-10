
---*代表执行模式,如果该值为 ""  空字符串的话,transTool将从命令行读取参数
---*模式有三种 
---* "h" 代表导出include文件
---* "e" 代表从excel输入文件夹导出相应lua文件到excelLua
---* "l" 代表监听模式,会监听lua文件的改动,自动导出对应的excel文件
model="l"

---*
excel_input_path="Excel备份/"
---*
lua_Path="ExcelLua/"
---*
excel_out_path="Excel/"
---*
index_path="valuebundle/INDEX.xml"
---*
reg_path="PyHelper/regV2"