# 部落与弯刀 Mod工具箱
> 请使用MarkDown或在GitHub上查看本文档</br>
> GitHub地址：[https://github.com/magicskysword/BlywdModTools](https://github.com/magicskysword/BlywdModTools)

本Mod使用Lua封装了一些游戏内原本不支持或无法使用EXCEL实现的功能，以下为该Mod的使用说明：

## SkyTools.lua
函数名|函数说明|函数接口|调用方法
-----|--------|-------|-------
InitRoleToolList|初始化人物信息表||游戏开始后由触发器调用
SaveRoleToolList|储存人物信息表||对人物信息进行操作后会自动调用，一般不需要手动调用
ChangeNPCName|改变一个角色的名称，并将其储存|游戏中Str数据： SkyToolsRoleID 角色ID</br>游戏中Str数据： SkyToolsRoleName 需要替换的人物名称|EXCEL命令：</br>SETSTRVAR\*SkyToolsRoleID#角色</br>SETSTRVAR\*SkyToolsRoleName#角色名</br>RUN_SCRIPT_FUNC\*SkyTools#ChangeNPCName
RevertNPCName|还原一个角色的名称|游戏中Str数据： SkyToolsRoleID 角色ID|EXCEL命令：</br>SETSTRVAR\*SkyToolsRoleID#角色</br>RUN_SCRIPT_FUNC\*SkyTools#ChangeNPCName
ChangeNPCImg|改变一个角色的立绘，并将其储存|游戏中Str数据： SkyToolsRoleID 角色ID</br>游戏中Str数据： SkyToolsRoleImg 需要替换的人物立绘，如果是捏脸立绘，请将#替换成&|EXCEL命令：</br>SETSTRVAR\*SkyToolsRoleID#角色ID</br>SETSTRVAR\*SkyToolsRoleImg#角色立绘信息</br>RUN_SCRIPT_FUNC\*SkyTools#ChangeNPCImg
RevertNPCImg|还原一个角色的立绘|游戏中Str数据： SkyToolsRoleID 角色ID|EXCEL命令：</br>SETSTRVAR\*SkyToolsRoleID#角色</br>RUN_SCRIPT_FUNC\*SkyTools#RevertNPCImg
ChangeNPCModel|改变一个角色的模型，并将其储存</br>模型修改不会即时生效，需要进行一次装备替换或重新入队后生效。|游戏中Str数据： SkyToolsRoleID 角色ID</br>游戏中Str数据： SkyToolsRoleModel 需要替换的人物模型数据，请将#替换成&|EXCEL命令：</br>SETSTRVAR\*SkyToolsRoleID#角色</br>SETSTRVAR\*SkyToolsRoleModel#角色模型信息</br>RUN_SCRIPT_FUNC\*SkyTools#ChangeNPCModel
RevertNPCModel|还原一个角色的模型|游戏中Str数据： SkyToolsRoleID 角色ID|EXCEL命令：</br>SETSTRVAR\*SkyToolsRoleID#角色</br>RUN_SCRIPT_FUNC\*SkyTools#RevertNPCModel
DeleteNPCChangeData|删除一个角色的储存信息并还原所有修改|游戏中Str数据： SkyToolsRoleID 角色ID|EXCEL命令：</br>SETSTRVAR\*SkyToolsRoleID#角色</br>RUN_SCRIPT_FUNC\*SkyTools#DeleteNPCChangeData
DeleteALLNPCChangeData|删除所有角色的储存信息并还原所有修改||EXCEL命令：</br>RUN_SCRIPT_FUNC\*SkyTools#DeleteALLNPCChangeData
CloseAllGameUI|关闭所有界面||EXCEL命令：</br>RUN_SCRIPT_FUNC\*SkyTools#CloseAllGameUI