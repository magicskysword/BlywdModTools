Reset_storyevent("main")

storyevent()
	.key("SkyToolsInit")
	.cmd_line([==[
    RUN_SCRIPT_FUNC*SkyTools#InitRoleToolList
	]==])

return Get_Excels_Data()