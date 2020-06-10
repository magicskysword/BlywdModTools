
local excels={ }
local classTable={ }

function Get_Excels_Data()
    local oldexcels=excels
    excels={ }
    for _,excelData in pairs(oldexcels) do
        local cls=classTable[excelData[3]]
        cls._exceldata=nil
        cls._sheetName=nil
    end
    return oldexcels
end

 
---@class soldierunit
local class_soldierunit={ }
---@private
class_soldierunit._header={ "备注","备注等级","单位ID","显示名称","定位","显示星级","等级","类型","武器","攻击类型","基础攻速","可招募","捕捉概率","单位模型","模型动作","替换模型","技能表","护甲","配点模板","固有属性","单位头像","所需统御度","工资","可升级单位","初始势力","招募基础价格","掉落","战斗力评分基数","远程特效","地城技能","招募价格计算","击杀经验计算","sp计算","","工资计算","升级经验计算" }

classTable.soldierunit=class_soldierunit

---@param sheetName string
function Reset_soldierunit(sheetName)
    ---@private
    class_soldierunit._exceldata={ class_soldierunit._header }
    ---@private
    class_soldierunit._sheetName=sheetName
    table.insert(excels,{ class_soldierunit._exceldata,sheetName, "soldierunit" })
end


---@return soldierunit
function soldierunit()
    local data={ "","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","" }
    ---@private
    class_soldierunit._data=data
    table.insert(class_soldierunit._exceldata,data)
    return class_soldierunit
end
    

---@param value string @备注
---@return soldierunit
function class_soldierunit.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[36]=value
    return class_soldierunit
end
    

---@param value string @备注等级
---@return soldierunit
function class_soldierunit.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[36]=value
    return class_soldierunit
end
    

---@param value string @单位ID
---@return soldierunit
function class_soldierunit.unit_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[3]=value
    return class_soldierunit
end
    

---@param value string @显示名称
---@return soldierunit
function class_soldierunit.unit_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[4]=value
    return class_soldierunit
end
    

---@param value string @定位
---@return soldierunit
function class_soldierunit.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[36]=value
    return class_soldierunit
end
    

---@param value int @显示星级
---@return soldierunit
function class_soldierunit.unit_star(value)
    
    class_soldierunit._data[6]=value
    return class_soldierunit
end
    

---@param value int @等级
---@return soldierunit
function class_soldierunit.level(value)
    
    class_soldierunit._data[7]=value
    return class_soldierunit
end
    
---* 可支持的类型有:
---* 
---@param value string @类型
---@return soldierunit
function class_soldierunit.unit_type(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[8]=value
    return class_soldierunit
end
    
---* 武器代码:
---* 0：拳套
---* 1：剑
---* 2：刀
---* 3：锤
---* 4：长杆武器（枪/戟）
---* 5：持盾武器
---* 6：双手武器（双手剑/斧）
---* 7：弓类
---* 8：暗器类
---* 9：琴类
---@param value int @武器
---@return soldierunit
function class_soldierunit.weapon(value)
    
    class_soldierunit._data[9]=value
    return class_soldierunit
end
    

---@param value int @攻击类型
---@return soldierunit
function class_soldierunit.attack_type(value)
    
    class_soldierunit._data[10]=value
    return class_soldierunit
end
    

---@param value float @基础攻速
---@return soldierunit
function class_soldierunit.weapon_speed(value)
    
    class_soldierunit._data[11]=value
    return class_soldierunit
end
    
---* 是否可招募:
---* 0：否
---* 1：是
---@param value int @可招募
---@return soldierunit
function class_soldierunit.is_recruit(value)
    
    class_soldierunit._data[12]=value
    return class_soldierunit
end
    

---@param value float @捕捉概率
---@return soldierunit
function class_soldierunit.cap_prob(value)
    
    class_soldierunit._data[13]=value
    return class_soldierunit
end
    

---@param value string @单位模型
---@return soldierunit
function class_soldierunit.model_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[14]=value
    return class_soldierunit
end
    

---@param value string @模型动作
---@return soldierunit
function class_soldierunit.model_act(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[15]=value
    return class_soldierunit
end
    

---@param value string @替换模型
---@return soldierunit
function class_soldierunit.replace_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[16]=value
    return class_soldierunit
end
    

---@param value string @技能表
---@return soldierunit
function class_soldierunit.skill_list(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[17]=value
    return class_soldierunit
end
    
---* Administrator:
---* 
---* 0：轻甲（默认)
---* 1：中甲
---* 2：重甲
---* 3：轻骑兵甲
---* 4：重骑兵甲
---* 9：城甲
---* 
---@param value int @护甲
---@return soldierunit
function class_soldierunit.armor_type(value)
    
    class_soldierunit._data[18]=value
    return class_soldierunit
end
    

---@param value string @配点模板
---@return soldierunit
function class_soldierunit.distrib_tpt(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[19]=value
    return class_soldierunit
end
    

---@param value string @固有属性
---@return soldierunit
function class_soldierunit.base_stat(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[20]=value
    return class_soldierunit
end
    

---@param value string @单位头像
---@return soldierunit
function class_soldierunit.head_image(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[21]=value
    return class_soldierunit
end
    

---@param value int @所需统御度
---@return soldierunit
function class_soldierunit.ctrl_cost(value)
    
    class_soldierunit._data[22]=value
    return class_soldierunit
end
    

---@param value int @工资
---@return soldierunit
function class_soldierunit.salary(value)
    
    class_soldierunit._data[23]=value
    return class_soldierunit
end
    
---* 可升级兵种单位表:
---* 可升级ID#材料1,50|材料2,1#所需势力天赋
---* 所需材料为空则自动升级
---* 所需势力天赋为空则不需要
---@param value string @可升级单位
---@return soldierunit
function class_soldierunit.upgrade_list(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[24]=value
    return class_soldierunit
end
    
---* Administrator:
---* 属于某个初始势力的野怪会在该势力与玩家好感高时更有概率加入玩家队伍
---@param value string @初始势力
---@return soldierunit
function class_soldierunit.original_camp(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[25]=value
    return class_soldierunit
end
    

---@param value string @招募基础价格
---@return soldierunit
function class_soldierunit.recruit_cost(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[26]=value
    return class_soldierunit
end
    

---@param value string @掉落
---@return soldierunit
function class_soldierunit.loot(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[27]=value
    return class_soldierunit
end
    

---@param value int @战斗力评分基数
---@return soldierunit
function class_soldierunit.score_base(value)
    
    class_soldierunit._data[28]=value
    return class_soldierunit
end
    
---* 远程单位的弹道设置:
---* 格式为：特效ID,弹道参数[可选，默认为0],命中特效[可选]
---* 弹道参数的类型如下：
---* 0：指向型射击，弹道特效中必须设置碰撞参数
---* 1：指定位置射击(适用投掷爆破手型单位)
---* 2：必中型射击，弹道特效中的碰撞参数将被忽略
---* 3：喷射攻击（以攻击范围为半径的锥形区域内）
---@param value string @远程特效
---@return soldierunit
function class_soldierunit.remote_eft(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[29]=value
    return class_soldierunit
end
    

---@param value string @地城技能
---@return soldierunit
function class_soldierunit.dungeon_skill(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[30]=value
    return class_soldierunit
end
    

---@param value string @招募价格计算
---@return soldierunit
function class_soldierunit.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[36]=value
    return class_soldierunit
end
    

---@param value string @击杀经验计算
---@return soldierunit
function class_soldierunit.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[36]=value
    return class_soldierunit
end
    

---@param value string @sp计算
---@return soldierunit
function class_soldierunit.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[36]=value
    return class_soldierunit
end
    

---@param value string @工资计算
---@return soldierunit
function class_soldierunit.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[36]=value
    return class_soldierunit
end
    

---@param value string @升级经验计算
---@return soldierunit
function class_soldierunit.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_soldierunit._data[36]=value
    return class_soldierunit
end
    

 
---@class chest_info
local class_chest_info={ }
---@private
class_chest_info._header={ "宝箱信息ID","普通状态模型","开启状态模型","普通状态特效","交互图标","提示道具图标","出现条件","无限开启","可开启次数","刷新方式","刷新时间","损毁时间","宝箱基础描述","开启条件","开启失败脚本","还未刷新脚本","守卫信息提示","守卫列表","开启用时","消耗物品列表","玩家消耗物品提示","地图标记图标","获取物品列表","开启消耗饱食度","玩家成功脚本","开启后处理方式" }

classTable.chest_info=class_chest_info

---@param sheetName string
function Reset_chest_info(sheetName)
    ---@private
    class_chest_info._exceldata={ class_chest_info._header }
    ---@private
    class_chest_info._sheetName=sheetName
    table.insert(excels,{ class_chest_info._exceldata,sheetName, "chest_info" })
end


---@return chest_info
function chest_info()
    local data={ "","","","","","","","","","","","","","","","","","","","","","","","","","" }
    ---@private
    class_chest_info._data=data
    table.insert(class_chest_info._exceldata,data)
    return class_chest_info
end
    

---@param value string @宝箱信息ID
---@return chest_info
function class_chest_info.info_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_chest_info._data[1]=value
    return class_chest_info
end
    

---@param value string @普通状态模型
---@return chest_info
function class_chest_info.map_model(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_chest_info._data[2]=value
    return class_chest_info
end
    

---@param value string @开启状态模型
---@return chest_info
function class_chest_info.map_model_open(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_chest_info._data[3]=value
    return class_chest_info
end
    
---* 普通状态下的宝箱粒子效果：
---* 效果名称ID,偏移x,偏移y
---@param value string @普通状态特效
---@return chest_info
function class_chest_info.eft_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_chest_info._data[4]=value
    return class_chest_info
end
    

---@param value string @交互图标
---@return chest_info
function class_chest_info.op_icon(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_chest_info._data[5]=value
    return class_chest_info
end
    

---@param value string @提示道具图标
---@return chest_info
function class_chest_info.tip_item_icon(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_chest_info._data[6]=value
    return class_chest_info
end
    

---@param value string @出现条件
---@return chest_info
function class_chest_info.appear_condition(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_chest_info._data[7]=value
    return class_chest_info
end
    

---@param value int @无限开启
---@return chest_info
function class_chest_info.unlimited_open_time(value)
    
    class_chest_info._data[8]=value
    return class_chest_info
end
    
---* Administrator:
---* 默认为1次，如果为多次则多次后才会执行开启后操作
---* 
---* 注意：如果是无限开启的宝箱，可以通过将可开启次数设为-1来强制关闭其无限开启状态
---@param value int @可开启次数
---@return chest_info
function class_chest_info.open_times(value)
    
    class_chest_info._data[9]=value
    return class_chest_info
end
    
---* 刷新方式:
---* 0：被动刷新（脚本命令）
---* 1：自动刷新
---* -1：不可刷新
---* 
---* 默认方式为0
---@param value int @刷新方式
---@return chest_info
function class_chest_info.spawn_type(value)
    
    class_chest_info._data[10]=value
    return class_chest_info
end
    
---* Administrator:
---* 按天数计算，默认30天
---@param value float @刷新时间
---@return chest_info
function class_chest_info.respawn_time(value)
    
    class_chest_info._data[11]=value
    return class_chest_info
end
    
---* Administrator:
---* 自定义宝箱才会损毁
---@param value float @损毁时间
---@return chest_info
function class_chest_info.decay_time(value)
    
    class_chest_info._data[12]=value
    return class_chest_info
end
    

---@param value string @宝箱基础描述
---@return chest_info
function class_chest_info.desc(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_chest_info._data[13]=value
    return class_chest_info
end
    

---@param value string @开启条件
---@return chest_info
function class_chest_info.open_condition(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_chest_info._data[14]=value
    return class_chest_info
end
    

---@param value string @开启失败脚本
---@return chest_info
function class_chest_info.open_failed_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_chest_info._data[15]=value
    return class_chest_info
end
    

---@param value string @还未刷新脚本
---@return chest_info
function class_chest_info.cd_failed_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_chest_info._data[16]=value
    return class_chest_info
end
    

---@param value string @守卫信息提示
---@return chest_info
function class_chest_info.guard_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_chest_info._data[17]=value
    return class_chest_info
end
    
---* Administrator:
---* 格式与野怪格式相同
---@param value string @守卫列表
---@return chest_info
function class_chest_info.guard_list(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_chest_info._data[18]=value
    return class_chest_info
end
    
---* Administrator:
---* 按小时计算，默认3小时
---@param value float @开启用时
---@return chest_info
function class_chest_info.open_cost_time(value)
    
    class_chest_info._data[19]=value
    return class_chest_info
end
    

---@param value string @消耗物品列表
---@return chest_info
function class_chest_info.open_cost_mat(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_chest_info._data[20]=value
    return class_chest_info
end
    

---@param value string @玩家消耗物品提示
---@return chest_info
function class_chest_info.open_cost_mat_hint(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_chest_info._data[21]=value
    return class_chest_info
end
    
---* DDD:
---* 参数1是图标名称，参数2是0代表小地图不显示，1显示，参数3是区域地图，参数4是世界地图，可以为空，#分割
---@param value string @地图标记图标
---@return chest_info
function class_chest_info.map_mark_icon(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_chest_info._data[22]=value
    return class_chest_info
end
    

---@param value string @获取物品列表
---@return chest_info
function class_chest_info.bonus_list(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_chest_info._data[23]=value
    return class_chest_info
end
    

---@param value int @开启消耗饱食度
---@return chest_info
function class_chest_info.food_cost(value)
    
    class_chest_info._data[24]=value
    return class_chest_info
end
    

---@param value string @玩家成功脚本
---@return chest_info
function class_chest_info.player_open_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_chest_info._data[25]=value
    return class_chest_info
end
    
---* Administrator:
---* 0. 消失
---* 1. 不消失
---* 默认为0
---@param value int @开启后处理方式
---@return chest_info
function class_chest_info.post_open(value)
    
    class_chest_info._data[26]=value
    return class_chest_info
end
    

 
---@class legacy
local class_legacy={ }
---@private
class_legacy._header={ "传承ID","显示名称","类型","消耗点数","叠加上限","命令内容","描述","图标","条件","启用","备注" }

classTable.legacy=class_legacy

---@param sheetName string
function Reset_legacy(sheetName)
    ---@private
    class_legacy._exceldata={ class_legacy._header }
    ---@private
    class_legacy._sheetName=sheetName
    table.insert(excels,{ class_legacy._exceldata,sheetName, "legacy" })
end


---@return legacy
function legacy()
    local data={ "","","","","","","","","","","" }
    ---@private
    class_legacy._data=data
    table.insert(class_legacy._exceldata,data)
    return class_legacy
end
    

---@param value string @传承ID
---@return legacy
function class_legacy.legacy_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_legacy._data[1]=value
    return class_legacy
end
    

---@param value string @显示名称
---@return legacy
function class_legacy.show_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_legacy._data[2]=value
    return class_legacy
end
    
---* User:
---* 0：技能
---* 1：天赋
---* 2：部队
---* 3：物品
---* 4：设定
---* 5：剧情
---@param value int @类型
---@return legacy
function class_legacy.type(value)
    
    class_legacy._data[3]=value
    return class_legacy
end
    

---@param value int @消耗点数
---@return legacy
function class_legacy.cost_point(value)
    
    class_legacy._data[4]=value
    return class_legacy
end
    

---@param value string @叠加上限
---@return legacy
function class_legacy.max_level(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_legacy._data[5]=value
    return class_legacy
end
    

---@param value string @命令内容
---@return legacy
function class_legacy.command(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_legacy._data[6]=value
    return class_legacy
end
    

---@param value string @描述
---@return legacy
function class_legacy.desc(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_legacy._data[7]=value
    return class_legacy
end
    

---@param value string @图标
---@return legacy
function class_legacy.icon(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_legacy._data[8]=value
    return class_legacy
end
    

---@param value string @条件
---@return legacy
function class_legacy.condition(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_legacy._data[9]=value
    return class_legacy
end
    

---@param value int @启用
---@return legacy
function class_legacy.enable(value)
    
    class_legacy._data[10]=value
    return class_legacy
end
    

---@param value string @备注
---@return legacy
function class_legacy.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_legacy._data[11]=value
    return class_legacy
end
    

 
---@class legacy_formula
local class_legacy_formula={ }
---@private
class_legacy_formula._header={ "公式ID","显示名称","公式","无数值限制","上限","游戏中解释","备注" }

classTable.legacy_formula=class_legacy_formula

---@param sheetName string
function Reset_legacy_formula(sheetName)
    ---@private
    class_legacy_formula._exceldata={ class_legacy_formula._header }
    ---@private
    class_legacy_formula._sheetName=sheetName
    table.insert(excels,{ class_legacy_formula._exceldata,sheetName, "legacy_formula" })
end


---@return legacy_formula
function legacy_formula()
    local data={ "","","","","","","" }
    ---@private
    class_legacy_formula._data=data
    table.insert(class_legacy_formula._exceldata,data)
    return class_legacy_formula
end
    

---@param value string @公式ID
---@return legacy_formula
function class_legacy_formula.legacy_formula_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_legacy_formula._data[1]=value
    return class_legacy_formula
end
    

---@param value string @显示名称
---@return legacy_formula
function class_legacy_formula.show_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_legacy_formula._data[2]=value
    return class_legacy_formula
end
    

---@param value string @公式
---@return legacy_formula
function class_legacy_formula.formula(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_legacy_formula._data[3]=value
    return class_legacy_formula
end
    

---@param value int @无数值限制
---@return legacy_formula
function class_legacy_formula.noMaxLimit(value)
    
    class_legacy_formula._data[4]=value
    return class_legacy_formula
end
    

---@param value string @上限
---@return legacy_formula
function class_legacy_formula.max(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_legacy_formula._data[5]=value
    return class_legacy_formula
end
    

---@param value string @游戏中解释
---@return legacy_formula
function class_legacy_formula.detail(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_legacy_formula._data[6]=value
    return class_legacy_formula
end
    

---@param value string @备注
---@return legacy_formula
function class_legacy_formula.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_legacy_formula._data[7]=value
    return class_legacy_formula
end
    

 
---@class initinfo
local class_initinfo={ }
---@private
class_initinfo._header={ "KEY","备注","VALUE" }

classTable.initinfo=class_initinfo

---@param sheetName string
function Reset_initinfo(sheetName)
    ---@private
    class_initinfo._exceldata={ class_initinfo._header }
    ---@private
    class_initinfo._sheetName=sheetName
    table.insert(excels,{ class_initinfo._exceldata,sheetName, "initinfo" })
end


---@return initinfo
function initinfo()
    local data={ "","","" }
    ---@private
    class_initinfo._data=data
    table.insert(class_initinfo._exceldata,data)
    return class_initinfo
end
    

---@param value string @KEY
---@return initinfo
function class_initinfo.key(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_initinfo._data[1]=value
    return class_initinfo
end
    

---@param value string @备注
---@return initinfo
function class_initinfo.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_initinfo._data[2]=value
    return class_initinfo
end
    

---@param value string @VALUE
---@return initinfo
function class_initinfo.value(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_initinfo._data[3]=value
    return class_initinfo
end
    

 
---@class achievement_point_bonus
local class_achievement_point_bonus={ }
---@private
class_achievement_point_bonus._header={ "成就点数","奖励1","名称1","奖励2","名称2","奖励3","名称3","奖励次数" }

classTable.achievement_point_bonus=class_achievement_point_bonus

---@param sheetName string
function Reset_achievement_point_bonus(sheetName)
    ---@private
    class_achievement_point_bonus._exceldata={ class_achievement_point_bonus._header }
    ---@private
    class_achievement_point_bonus._sheetName=sheetName
    table.insert(excels,{ class_achievement_point_bonus._exceldata,sheetName, "achievement_point_bonus" })
end


---@return achievement_point_bonus
function achievement_point_bonus()
    local data={ "","","","","","","","" }
    ---@private
    class_achievement_point_bonus._data=data
    table.insert(class_achievement_point_bonus._exceldata,data)
    return class_achievement_point_bonus
end
    

---@param value string @成就点数
---@return achievement_point_bonus
function class_achievement_point_bonus.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_achievement_point_bonus._data[1]=value
    return class_achievement_point_bonus
end
    

---@param value string @奖励1
---@return achievement_point_bonus
function class_achievement_point_bonus.bonus1(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_achievement_point_bonus._data[2]=value
    return class_achievement_point_bonus
end
    

---@param value string @名称1
---@return achievement_point_bonus
function class_achievement_point_bonus.desc1(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_achievement_point_bonus._data[3]=value
    return class_achievement_point_bonus
end
    

---@param value string @奖励2
---@return achievement_point_bonus
function class_achievement_point_bonus.bonus2(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_achievement_point_bonus._data[4]=value
    return class_achievement_point_bonus
end
    

---@param value string @名称2
---@return achievement_point_bonus
function class_achievement_point_bonus.desc2(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_achievement_point_bonus._data[5]=value
    return class_achievement_point_bonus
end
    

---@param value string @奖励3
---@return achievement_point_bonus
function class_achievement_point_bonus.bonus3(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_achievement_point_bonus._data[6]=value
    return class_achievement_point_bonus
end
    

---@param value string @名称3
---@return achievement_point_bonus
function class_achievement_point_bonus.desc3(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_achievement_point_bonus._data[7]=value
    return class_achievement_point_bonus
end
    

---@param value int @奖励次数
---@return achievement_point_bonus
function class_achievement_point_bonus.count(value)
    
    class_achievement_point_bonus._data[8]=value
    return class_achievement_point_bonus
end
    

 
---@class nick_by_count
local class_nick_by_count={ }
---@private
class_nick_by_count._header={ "类别ID" }

classTable.nick_by_count=class_nick_by_count

---@param sheetName string
function Reset_nick_by_count(sheetName)
    ---@private
    class_nick_by_count._exceldata={ class_nick_by_count._header }
    ---@private
    class_nick_by_count._sheetName=sheetName
    table.insert(excels,{ class_nick_by_count._exceldata,sheetName, "nick_by_count" })
end


---@return nick_by_count
function nick_by_count()
    local data={ "" }
    ---@private
    class_nick_by_count._data=data
    table.insert(class_nick_by_count._exceldata,data)
    return class_nick_by_count
end
    

---@param value string @类别ID
---@return nick_by_count
function class_nick_by_count.group_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_nick_by_count._data[1]=value
    return class_nick_by_count
end
    

 
---@class NickDetail
local class_NickDetail={ }
---@private
class_NickDetail._header={ "类别","称号ID","显示名称","计数","描述" }

classTable.NickDetail=class_NickDetail

---@param sheetName string
function Reset_NickDetail(sheetName)
    ---@private
    class_NickDetail._exceldata={ class_NickDetail._header }
    ---@private
    class_NickDetail._sheetName=sheetName
    table.insert(excels,{ class_NickDetail._exceldata,sheetName, "NickDetail" })
end


---@return NickDetail
function NickDetail()
    local data={ "","","","","" }
    ---@private
    class_NickDetail._data=data
    table.insert(class_NickDetail._exceldata,data)
    return class_NickDetail
end
    

---@param value string @类别
---@return NickDetail
function class_NickDetail.nick_group(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_NickDetail._data[1]=value
    return class_NickDetail
end
    

---@param value string @称号ID
---@return NickDetail
function class_NickDetail.nick_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_NickDetail._data[2]=value
    return class_NickDetail
end
    

---@param value string @显示名称
---@return NickDetail
function class_NickDetail.show_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_NickDetail._data[3]=value
    return class_NickDetail
end
    

---@param value int @计数
---@return NickDetail
function class_NickDetail.count(value)
    
    class_NickDetail._data[4]=value
    return class_NickDetail
end
    

---@param value string @描述
---@return NickDetail
function class_NickDetail.desc(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_NickDetail._data[5]=value
    return class_NickDetail
end
    

 
---@class event_trigger
local class_event_trigger={ }
---@private
class_event_trigger._header={ "触发器ID","触发类型","触发对象类型","触发对象ID","优先级","初始状态","提示","触发条件表达式组","触发事件ID","绑定选项","提示条件" }

classTable.event_trigger=class_event_trigger

---@param sheetName string
function Reset_event_trigger(sheetName)
    ---@private
    class_event_trigger._exceldata={ class_event_trigger._header }
    ---@private
    class_event_trigger._sheetName=sheetName
    table.insert(excels,{ class_event_trigger._exceldata,sheetName, "event_trigger" })
end


---@return event_trigger
function event_trigger()
    local data={ "","","","","","","","","","","" }
    ---@private
    class_event_trigger._data=data
    table.insert(class_event_trigger._exceldata,data)
    return class_event_trigger
end
    

---@param value string @触发器ID
---@return event_trigger
function class_event_trigger.key(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_event_trigger._data[1]=value
    return class_event_trigger
end
    
---* 可支持的触发类型：（带***的为全部触发类型）
---* passive:被动触发
---* talk:与NPC交互时触发
---* first_in:第一次进入游戏
---* encounter:地图上进行交互时
---* before_enter_map:进入目标地图触发(打断进入)
---* enter_map:进入地图触发
---* before_leave_map:离开目标地图触发(打断离开)
---* leave_map:离开地图触发
---* enter_place:进入地点触发
---* leave_place:离开地点触发(不打断离开)
---* before_leave_place:离开地点触发(打断离开)
---* enter_building:进入建筑触发
---* leave_building:离开建筑触发(不打断离开)
---* before_leave_building:离开建筑触发(打断离开)
---* battle_start:战斗开始时触发
---* battle_over:战斗结束时触发
---* set_lord:设置玩家为城主
---* job_cmd:对玩家下达工作指令
---* reach_place:大地图上进入地点前触发（打断进入）
---* reach_building:进入设施前触发（打断进入）
---* see_warband:大地图遭遇其他队伍战斗时
---* curplace_inwar:当前城池被攻击
---* quest_done:任务所有条件达到时触发（还未交）
---* ***on_end_work:结束在某地点的任务时触发
---* ***occupy_place:玩家成功占领地点时触发
---* ***new_day:当新的一天时触发（对象ID为目标天数）
---* after_budget:账单结算结束后触发
---* reward_follower:奖赏玩家手下时触发
---* reward_player:玩家受到奖赏时触发
---* dip_event:当玩家势力遇到外交事件时(对象类型为当外交类型)
---* dip_ret_success:当玩家势力请求的外交活动返回成功时
---* dip_ret_fail:当玩家势力请求的外交活动返回失败时
---* on_riot:当玩家手下的领地发生暴乱时触发
---* player_failed:当玩家遭遇战失败时触发
---* failed_bleed:失血过多失败时触发
---* failed_food:饥饿导致血量为空时触发
---* failed_mood:心情值为零时触发
---* reinforce_request:与玩家相关的支援事件
---* is_fall:势力垮台的时候触发
---* is_to_fall：势力失去所有据点，即将垮台时触发
---* before_cash_present:褒奖前触发（打断褒奖）
---* before_present:送礼物前触发（打断送礼）
---* on_present:送礼物时触发
---* on_beg:向他人乞讨时触发
---* encounter_role:遇到一名character触发通用对话之前触发
---* helped_camp:遭遇双方战斗时帮助了其中一方时触发，触发id为相应队伍的leadrole的所在阵营
---* on_saodang:扫荡完野外地点后触发
---* on_place_rep_up:当地点贡献度提升时触发，最新的贡献度存储在arg_int_val1中。
---* on_place_rep_down:当地点贡献度下降时触发，最新的贡献度存储在arg_int_val1中。
---* 
---@param value string @触发类型
---@return event_trigger
function class_event_trigger.trigger_type(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_event_trigger._data[2]=value
    return class_event_trigger
end
    
---* 根据触发类型不同设置触发对象类型，如不指定对象类型则表示所有该类型都会触发
---* 一般为此类事件对象类型
---* 当触发类型为外交事件类型时，该字段表示外交事件的类型 1：赎回 2：友善 3：宣战 4：结盟 5：解盟 6：停战
---* 当触发类型为送礼时，该字段表示以下人物的好感增益，有0\5\10\15\20五档
---* 
---@param value string @触发对象类型
---@return event_trigger
function class_event_trigger.obj_type(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_event_trigger._data[3]=value
    return class_event_trigger
end
    
---* 根据触发对象类型不同绑定不同的触发对象ID。
---* 如：触发类型为talk，触发对象类型为Npc时表示对象的Npc ID
---* 当不绑定触发对象ID时表示任意此类对象都会触发
---@param value string @触发对象ID
---@return event_trigger
function class_event_trigger.obj_tag(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_event_trigger._data[4]=value
    return class_event_trigger
end
    
---* 为一整数，优先级高的触发器将会优先被触发
---@param value int @优先级
---@return event_trigger
function class_event_trigger.trig_priority(value)
    
    class_event_trigger._data[5]=value
    return class_event_trigger
end
    
---* 初始状态:
---* 0：正常
---* 1：已关闭
---@param value int @初始状态
---@return event_trigger
function class_event_trigger.init_state(value)
    
    class_event_trigger._data[6]=value
    return class_event_trigger
end
    
---* 提示标志:
---* 0：无
---* 1：普通提示
---* 2：完成提示
---* 
---@param value int @提示
---@return event_trigger
function class_event_trigger.tip_type(value)
    
    class_event_trigger._data[7]=value
    return class_event_trigger
end
    

---@param value string @触发条件表达式组
---@return event_trigger
function class_event_trigger.condition_group(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_event_trigger._data[8]=value
    return class_event_trigger
end
    

---@param value string @触发事件ID
---@return event_trigger
function class_event_trigger.bind_event(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_event_trigger._data[9]=value
    return class_event_trigger
end
    
---* 该项用以绑定触发选项。
---* 例如：和NPC对话时多出的选项框显示文字。
---@param value string @绑定选项
---@return event_trigger
function class_event_trigger.bind_option(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_event_trigger._data[10]=value
    return class_event_trigger
end
    

---@param value string @提示条件
---@return event_trigger
function class_event_trigger.hint_conditions(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_event_trigger._data[11]=value
    return class_event_trigger
end
    

 
---@class gamemap
local class_gamemap={ }
---@private
class_gamemap._header={ "map_id","display_name","map_file_name","背景音乐","所属区块","探索模式","镜头大小","map_type","map_icon","is_hide","探索地图信息" }

classTable.gamemap=class_gamemap

---@param sheetName string
function Reset_gamemap(sheetName)
    ---@private
    class_gamemap._exceldata={ class_gamemap._header }
    ---@private
    class_gamemap._sheetName=sheetName
    table.insert(excels,{ class_gamemap._exceldata,sheetName, "gamemap" })
end


---@return gamemap
function gamemap()
    local data={ "","","","","","","","","","","" }
    ---@private
    class_gamemap._data=data
    table.insert(class_gamemap._exceldata,data)
    return class_gamemap
end
    

---@param value string @map_id
---@return gamemap
function class_gamemap.map_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamemap._data[1]=value
    return class_gamemap
end
    

---@param value string @display_name
---@return gamemap
function class_gamemap.display_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamemap._data[2]=value
    return class_gamemap
end
    

---@param value string @map_file_name
---@return gamemap
function class_gamemap.map_file_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamemap._data[3]=value
    return class_gamemap
end
    

---@param value string @背景音乐
---@return gamemap
function class_gamemap.bgm(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamemap._data[4]=value
    return class_gamemap
end
    

---@param value string @所属区块
---@return gamemap
function class_gamemap.block_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamemap._data[5]=value
    return class_gamemap
end
    

---@param value int @探索模式
---@return gamemap
function class_gamemap.explore_mode(value)
    
    class_gamemap._data[6]=value
    return class_gamemap
end
    

---@param value int @镜头大小
---@return gamemap
function class_gamemap.camera_size(value)
    
    class_gamemap._data[7]=value
    return class_gamemap
end
    
---* 地图类型:
---* 0：活动地图
---* 1：副本地图
---@param value string @map_type
---@return gamemap
function class_gamemap.map_type(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamemap._data[8]=value
    return class_gamemap
end
    

---@param value string @map_icon
---@return gamemap
function class_gamemap.map_icon(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamemap._data[9]=value
    return class_gamemap
end
    

---@param value int @is_hide
---@return gamemap
function class_gamemap.is_hide(value)
    
    class_gamemap._data[10]=value
    return class_gamemap
end
    

---@param value string @探索地图信息
---@return gamemap
function class_gamemap.explore_map_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamemap._data[11]=value
    return class_gamemap
end
    

 
---@class gamemapblock
local class_gamemapblock={ }
---@private
class_gamemapblock._header={ "block_id","display_name","底图","largemap_pos","is_hide" }

classTable.gamemapblock=class_gamemapblock

---@param sheetName string
function Reset_gamemapblock(sheetName)
    ---@private
    class_gamemapblock._exceldata={ class_gamemapblock._header }
    ---@private
    class_gamemapblock._sheetName=sheetName
    table.insert(excels,{ class_gamemapblock._exceldata,sheetName, "gamemapblock" })
end


---@return gamemapblock
function gamemapblock()
    local data={ "","","","","" }
    ---@private
    class_gamemapblock._data=data
    table.insert(class_gamemapblock._exceldata,data)
    return class_gamemapblock
end
    

---@param value string @block_id
---@return gamemapblock
function class_gamemapblock.block_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamemapblock._data[1]=value
    return class_gamemapblock
end
    

---@param value string @display_name
---@return gamemapblock
function class_gamemapblock.display_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamemapblock._data[2]=value
    return class_gamemapblock
end
    

---@param value string @底图
---@return gamemapblock
function class_gamemapblock.shape(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamemapblock._data[3]=value
    return class_gamemapblock
end
    

---@param value string @largemap_pos
---@return gamemapblock
function class_gamemapblock.largemap_pos(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamemapblock._data[4]=value
    return class_gamemapblock
end
    

---@param value int @is_hide
---@return gamemapblock
function class_gamemapblock.is_hide(value)
    
    class_gamemapblock._data[5]=value
    return class_gamemapblock
end
    

 
---@class terrain_info
local class_terrain_info={ }
---@private
class_terrain_info._header={ "索引值","地形","移速加成","对象限制","对应战场","脚步声","备注" }

classTable.terrain_info=class_terrain_info

---@param sheetName string
function Reset_terrain_info(sheetName)
    ---@private
    class_terrain_info._exceldata={ class_terrain_info._header }
    ---@private
    class_terrain_info._sheetName=sheetName
    table.insert(excels,{ class_terrain_info._exceldata,sheetName, "terrain_info" })
end


---@return terrain_info
function terrain_info()
    local data={ "","","","","","","" }
    ---@private
    class_terrain_info._data=data
    table.insert(class_terrain_info._exceldata,data)
    return class_terrain_info
end
    
---* 索引值必须从0开始顺序增加，不能跳
---* 
---@param value string @索引值
---@return terrain_info
function class_terrain_info.index_key(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_terrain_info._data[1]=value
    return class_terrain_info
end
    

---@param value string @地形
---@return terrain_info
function class_terrain_info.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_terrain_info._data[7]=value
    return class_terrain_info
end
    

---@param value float @移速加成
---@return terrain_info
function class_terrain_info.move_affect(value)
    
    class_terrain_info._data[3]=value
    return class_terrain_info
end
    
---* 为0时无限制
---* 当为1时只有玩家可通过，NPC不可通
---* 过
---* 当为2时只有NPC可通过，玩家不可通过
---@param value int @对象限制
---@return terrain_info
function class_terrain_info.tag_limit(value)
    
    class_terrain_info._data[4]=value
    return class_terrain_info
end
    

---@param value string @对应战场
---@return terrain_info
function class_terrain_info.battle_field(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_terrain_info._data[5]=value
    return class_terrain_info
end
    

---@param value string @脚步声
---@return terrain_info
function class_terrain_info.walk_sound(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_terrain_info._data[6]=value
    return class_terrain_info
end
    

---@param value string @备注
---@return terrain_info
function class_terrain_info.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_terrain_info._data[7]=value
    return class_terrain_info
end
    

 
---@class place
local class_place={ }
---@private
class_place._header={ "地点ID","显示别名","显示名称","是否模板","类型","附属与","内部设施","可建设设施组","指令事件映射表","规模","基础繁荣度","基础城防","默认状态","大地图坐标","大地图隐藏","初始守军","战场地图","基础状态","Tags","初始自定义字段值","外观模型","绑定项目" }

classTable.place=class_place

---@param sheetName string
function Reset_place(sheetName)
    ---@private
    class_place._exceldata={ class_place._header }
    ---@private
    class_place._sheetName=sheetName
    table.insert(excels,{ class_place._exceldata,sheetName, "place" })
end


---@return place
function place()
    local data={ "","","","","","","","","","","","","","","","","","","","","","" }
    ---@private
    class_place._data=data
    table.insert(class_place._exceldata,data)
    return class_place
end
    

---@param value string @地点ID
---@return place
function class_place.place_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_place._data[1]=value
    return class_place
end
    

---@param value string @显示别名
---@return place
function class_place.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_place._data[2]=value
    return class_place
end
    

---@param value string @显示名称
---@return place
function class_place.display_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_place._data[3]=value
    return class_place
end
    

---@param value int @是否模板
---@return place
function class_place.is_template(value)
    
    class_place._data[4]=value
    return class_place
end
    

---@param value string @类型
---@return place
function class_place.place_type(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_place._data[5]=value
    return class_place
end
    

---@param value string @附属与
---@return place
function class_place.belong_to(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_place._data[6]=value
    return class_place
end
    

---@param value string @内部设施
---@return place
function class_place.buildings(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_place._data[7]=value
    return class_place
end
    

---@param value string @可建设设施组
---@return place
function class_place.construction_list(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_place._data[8]=value
    return class_place
end
    

---@param value string @指令事件映射表
---@return place
function class_place.function_event_mapping(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_place._data[9]=value
    return class_place
end
    

---@param value int @规模
---@return place
function class_place.place_size(value)
    
    class_place._data[10]=value
    return class_place
end
    

---@param value int @基础繁荣度
---@return place
function class_place.def_prosp(value)
    
    class_place._data[11]=value
    return class_place
end
    

---@param value int @基础城防
---@return place
function class_place.def_defend(value)
    
    class_place._data[12]=value
    return class_place
end
    
---* 状态值说明:
---* 0：正常
---* 1：被摧毁
---* -1：隐藏
---@param value int @默认状态
---@return place
function class_place.def_state(value)
    
    class_place._data[13]=value
    return class_place
end
    

---@param value string @大地图坐标
---@return place
function class_place.largemap_pos(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_place._data[14]=value
    return class_place
end
    

---@param value int @大地图隐藏
---@return place
function class_place.hide_on_largemap(value)
    
    class_place._data[15]=value
    return class_place
end
    

---@param value string @初始守军
---@return place
function class_place.init_soldier_cards_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_place._data[16]=value
    return class_place
end
    
---* 普通城镇：攻城战的战场地图设置，不填将采用默认的攻城地图
---* 野外可扫荡营地：该值表示进入的副本ID【测试阶段时临时用来表示战斗ID】
---@param value string @战场地图
---@return place
function class_place.battle_map(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_place._data[17]=value
    return class_place
end
    
---* 扩展信息:
---* 编辑格式为
---* 字段1,值1|字段2,值2|……
---* 
---* 
---@param value string @基础状态
---@return place
function class_place.base_stat(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_place._data[18]=value
    return class_place
end
    
---* 扩展信息:
---* 编辑格式为
---* 字段1#值1
---* 字段2#值2
---* ……
---* 字段N#值N
---@param value string @Tags
---@return place
function class_place.tags_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_place._data[19]=value
    return class_place
end
    
---* 自定义字段(同custom_int):
---* 编辑格式为
---* 字段1#值1
---* 字段2#值2
---* ……
---* 字段N#值N
---@param value string @初始自定义字段值
---@return place
function class_place.init_custom_vals(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_place._data[20]=value
    return class_place
end
    

---@param value string @外观模型
---@return place
function class_place.model_view(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_place._data[21]=value
    return class_place
end
    

---@param value string @绑定项目
---@return place
function class_place.bind_project(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_place._data[22]=value
    return class_place
end
    

 
---@class place_statu_field
local class_place_statu_field={ }
---@private
class_place_statu_field._header={ "代码","字段名称","排序权值","标识属性","隐藏","额外描述" }

classTable.place_statu_field=class_place_statu_field

---@param sheetName string
function Reset_place_statu_field(sheetName)
    ---@private
    class_place_statu_field._exceldata={ class_place_statu_field._header }
    ---@private
    class_place_statu_field._sheetName=sheetName
    table.insert(excels,{ class_place_statu_field._exceldata,sheetName, "place_statu_field" })
end


---@return place_statu_field
function place_statu_field()
    local data={ "","","","","","" }
    ---@private
    class_place_statu_field._data=data
    table.insert(class_place_statu_field._exceldata,data)
    return class_place_statu_field
end
    

---@param value string @代码
---@return place_statu_field
function class_place_statu_field.field_code(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_place_statu_field._data[1]=value
    return class_place_statu_field
end
    

---@param value string @字段名称
---@return place_statu_field
function class_place_statu_field.field_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_place_statu_field._data[2]=value
    return class_place_statu_field
end
    

---@param value int @排序权值
---@return place_statu_field
function class_place_statu_field.sort_order(value)
    
    class_place_statu_field._data[3]=value
    return class_place_statu_field
end
    
---* 当此属性为1时表示该字段为一个标记字段，值只有0与非0
---* 
---@param value int @标识属性
---@return place_statu_field
function class_place_statu_field.is_markfield(value)
    
    class_place_statu_field._data[4]=value
    return class_place_statu_field
end
    

---@param value int @隐藏
---@return place_statu_field
function class_place_statu_field.is_hide(value)
    
    class_place_statu_field._data[5]=value
    return class_place_statu_field
end
    

---@param value string @额外描述
---@return place_statu_field
function class_place_statu_field.ext_describ(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_place_statu_field._data[6]=value
    return class_place_statu_field
end
    

 
---@class mu_model
local class_mu_model={ }
---@private
class_mu_model._header={ "模型ID","备注","预置模型文件","半径","高度","上色层","比例","中心偏移","参考" }

classTable.mu_model=class_mu_model

---@param sheetName string
function Reset_mu_model(sheetName)
    ---@private
    class_mu_model._exceldata={ class_mu_model._header }
    ---@private
    class_mu_model._sheetName=sheetName
    table.insert(excels,{ class_mu_model._exceldata,sheetName, "mu_model" })
end


---@return mu_model
function mu_model()
    local data={ "","","","","","","","","" }
    ---@private
    class_mu_model._data=data
    table.insert(class_mu_model._exceldata,data)
    return class_mu_model
end
    

---@param value string @模型ID
---@return mu_model
function class_mu_model.model_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_mu_model._data[1]=value
    return class_mu_model
end
    

---@param value string @备注
---@return mu_model
function class_mu_model.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_mu_model._data[9]=value
    return class_mu_model
end
    
---* 当该字段以”3D#”字符串开头时，程序将按照之后的模型信息组合成3D模型及动作；
---* 否则直接由定义在Assets\BuildSource\map_res\Prefabs路径下的Prefab文件生成。
---* 以下为3D模型的信息格式：
---* 3D#模型ID#模型动作ID#动态模型信息
---@param value string @预置模型文件
---@return mu_model
function class_mu_model.model_prefab(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_mu_model._data[3]=value
    return class_mu_model
end
    

---@param value float @半径
---@return mu_model
function class_mu_model.radius(value)
    
    class_mu_model._data[4]=value
    return class_mu_model
end
    

---@param value float @高度
---@return mu_model
function class_mu_model.height(value)
    
    class_mu_model._data[5]=value
    return class_mu_model
end
    

---@param value int @上色层
---@return mu_model
function class_mu_model.is_color(value)
    
    class_mu_model._data[6]=value
    return class_mu_model
end
    

---@param value float @比例
---@return mu_model
function class_mu_model.model_scale(value)
    
    class_mu_model._data[7]=value
    return class_mu_model
end
    

---@param value string @中心偏移
---@return mu_model
function class_mu_model.ac_offset_str(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_mu_model._data[8]=value
    return class_mu_model
end
    

---@param value string @参考
---@return mu_model
function class_mu_model.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_mu_model._data[9]=value
    return class_mu_model
end
    

 
---@class level_factor
local class_level_factor={ }
---@private
class_level_factor._header={ "等级","英雄升级所需经验","技能升级所需经验","兵种升级所需经验","单个敌人经验","自身标准血量","英雄基础血量","自身标准攻击力","兵牌战斗力","战斗力比例","英雄基础攻击力","技能标准攻击力","自身标准气力","自身标准防御","自身标准魔法攻击","英雄基础魔法攻击力","技能标准魔法攻击","自身标准魔法防御" }

classTable.level_factor=class_level_factor

---@param sheetName string
function Reset_level_factor(sheetName)
    ---@private
    class_level_factor._exceldata={ class_level_factor._header }
    ---@private
    class_level_factor._sheetName=sheetName
    table.insert(excels,{ class_level_factor._exceldata,sheetName, "level_factor" })
end


---@return level_factor
function level_factor()
    local data={ "","","","","","","","","","","","","","","","","","" }
    ---@private
    class_level_factor._data=data
    table.insert(class_level_factor._exceldata,data)
    return class_level_factor
end
    

---@param value int @等级
---@return level_factor
function class_level_factor.level(value)
    
    class_level_factor._data[1]=value
    return class_level_factor
end
    

---@param value int @英雄升级所需经验
---@return level_factor
function class_level_factor.hero_levelup_exp(value)
    
    class_level_factor._data[2]=value
    return class_level_factor
end
    

---@param value int @技能升级所需经验
---@return level_factor
function class_level_factor.skill_levelup_exp(value)
    
    class_level_factor._data[3]=value
    return class_level_factor
end
    

---@param value int @兵种升级所需经验
---@return level_factor
function class_level_factor.soldier_levelup_exp(value)
    
    class_level_factor._data[4]=value
    return class_level_factor
end
    

---@param value int @单个敌人经验
---@return level_factor
function class_level_factor.enemy_exp(value)
    
    class_level_factor._data[5]=value
    return class_level_factor
end
    

---@param value int @自身标准血量
---@return level_factor
function class_level_factor.base_hp(value)
    
    class_level_factor._data[6]=value
    return class_level_factor
end
    

---@param value int @英雄基础血量
---@return level_factor
function class_level_factor.hero_base_hp(value)
    
    class_level_factor._data[7]=value
    return class_level_factor
end
    

---@param value int @自身标准攻击力
---@return level_factor
function class_level_factor.base_attack(value)
    
    class_level_factor._data[8]=value
    return class_level_factor
end
    

---@param value string @兵牌战斗力
---@return level_factor
function class_level_factor.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_level_factor._data[10]=value
    return class_level_factor
end
    

---@param value string @战斗力比例
---@return level_factor
function class_level_factor.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_level_factor._data[10]=value
    return class_level_factor
end
    

---@param value int @英雄基础攻击力
---@return level_factor
function class_level_factor.hero_base_attack(value)
    
    class_level_factor._data[11]=value
    return class_level_factor
end
    

---@param value int @技能标准攻击力
---@return level_factor
function class_level_factor.skill_base_attack(value)
    
    class_level_factor._data[12]=value
    return class_level_factor
end
    

---@param value int @自身标准气力
---@return level_factor
function class_level_factor.base_mp(value)
    
    class_level_factor._data[13]=value
    return class_level_factor
end
    

---@param value int @自身标准防御
---@return level_factor
function class_level_factor.base_defence(value)
    
    class_level_factor._data[14]=value
    return class_level_factor
end
    

---@param value int @自身标准魔法攻击
---@return level_factor
function class_level_factor.base_magicAtk(value)
    
    class_level_factor._data[15]=value
    return class_level_factor
end
    

---@param value int @英雄基础魔法攻击力
---@return level_factor
function class_level_factor.hero_base_magicAtk(value)
    
    class_level_factor._data[16]=value
    return class_level_factor
end
    

---@param value int @技能标准魔法攻击
---@return level_factor
function class_level_factor.skill_base_magicAtk(value)
    
    class_level_factor._data[17]=value
    return class_level_factor
end
    

---@param value int @自身标准魔法防御
---@return level_factor
function class_level_factor.base_magicDef(value)
    
    class_level_factor._data[18]=value
    return class_level_factor
end
    

 
---@class game_item
local class_game_item={ }
---@private
class_game_item._header={ "道具ID","显示名称","物品类型","子类型","装备类别","攻击类型","使用类型","堆叠数量","物品等级","基础价格","基础耐久度","修复一点耐久消耗","基础保存天数","出词条概率","图标","需求","武器速度","定位","基础效果","扩展效果","道具描述","模型信息","远程特效","TAG","备注" }

classTable.game_item=class_game_item

---@param sheetName string
function Reset_game_item(sheetName)
    ---@private
    class_game_item._exceldata={ class_game_item._header }
    ---@private
    class_game_item._sheetName=sheetName
    table.insert(excels,{ class_game_item._exceldata,sheetName, "game_item" })
end


---@return game_item
function game_item()
    local data={ "","","","","","","","","","","","","","","","","","","","","","","","","" }
    ---@private
    class_game_item._data=data
    table.insert(class_game_item._exceldata,data)
    return class_game_item
end
    

---@param value string @道具ID
---@return game_item
function class_game_item.item_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item._data[1]=value
    return class_game_item
end
    

---@param value string @显示名称
---@return game_item
function class_game_item.item_name(value)
    --value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item._data[2]=value
    return class_game_item
end
    
---* 物品类型:
---* 0：杂物
---* 1：装备
---* 2：消耗品（此类别时武器速度表示其战斗中使用的公共CD）
---* 3：商品
---* 4：贵重物品（该类型物品将自动加入一个getitem_XXX的flag)
---* 5：任务道具（该类型物品将自动加入一个getitem_XXX的flag)
---* 6：游戏内资源
---* 7：自动使用的特殊物品（获得的时候就自动消耗掉了）
---* 8：战斗道具
---* 9:补给品
---@param value int @物品类型
---@return game_item
function class_game_item.item_type(value)
    
    class_game_item._data[3]=value
    return class_game_item
end
    
---* 当物品类型不同时该字段代表不同含义:
---* 当物品类型为1装备时：
---* 0：武器
---* 1：盔甲
---* 2：其他
---* 3：坐骑（待定）
---* 
---* 当物品类型为2消耗品时：
---* 0：未分类
---* 1：药物
---* 2：钥匙
---* 
---* 
---@param value int @子类型
---@return game_item
function class_game_item.sub_type(value)
    
    class_game_item._data[4]=value
    return class_game_item
end
    
---* 当物品类型不同时该字段代表不同含义:
---* 当物品类型为装备且装备类型为武器时：
---* 0：拳套
---* 1：剑
---* 2：刀
---* 3：锤
---* 4：长杆武器（枪/戟）
---* 5：持盾武器
---* 6：双手武器（双手剑/斧）
---* 7：弓类
---* 8：暗器类
---* 9：琴类
---* 
---* 防具：
---* 0：轻甲
---* 1：重甲
---* 9：城甲
---@param value int @装备类别
---@return game_item
function class_game_item.equip_type(value)
    
    class_game_item._data[5]=value
    return class_game_item
end
    
---* Administrator:
---* 对于武器而言，装备类型与攻击类型不一样。攻击类型要更多一些：
---* 0空手攻击
---* 100小刀攻击
---* 1单手剑攻击
---* 2单手刀攻击
---* 3单手锤攻击
---* 300单手斧攻击
---* 301杖攻击
---* 4长柄攻击
---* 5木盾攻击
---* 500金属盾攻击
---* 6双手斧攻击
---* 600双手刀剑攻击
---* 7弓攻击
---* 700十字弓攻击
---* 8暗器攻击
---* 9琴攻击
---* 
---@param value int @攻击类型
---@return game_item
function class_game_item.attack_type(value)
    
    class_game_item._data[6]=value
    return class_game_item
end
    
---* 使用类型:
---* 0：不可使用
---* 1：仅大地图使用
---* 2：仅战斗中使用
---* 3：战斗中和大地图均可使用
---@param value int @使用类型
---@return game_item
function class_game_item.use_type(value)
    
    class_game_item._data[7]=value
    return class_game_item
end
    

---@param value int @堆叠数量
---@return game_item
function class_game_item.group_num(value)
    
    class_game_item._data[8]=value
    return class_game_item
end
    

---@param value int @物品等级
---@return game_item
function class_game_item.item_level(value)
    
    class_game_item._data[9]=value
    return class_game_item
end
    

---@param value int @基础价格
---@return game_item
function class_game_item.base_price(value)
    
    class_game_item._data[10]=value
    return class_game_item
end
    

---@param value int @基础耐久度
---@return game_item
function class_game_item.base_durability(value)
    
    class_game_item._data[11]=value
    return class_game_item
end
    
---* Administrator:
---* 格式为物品ID,物品数量|ID2,数量2...
---@param value string @修复一点耐久消耗
---@return game_item
function class_game_item.per_fix_cost(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item._data[12]=value
    return class_game_item
end
    

---@param value int @基础保存天数
---@return game_item
function class_game_item.base_fresh_day(value)
    
    class_game_item._data[13]=value
    return class_game_item
end
    

---@param value float @出词条概率
---@return game_item
function class_game_item.words_prob(value)
    
    class_game_item._data[14]=value
    return class_game_item
end
    

---@param value string @图标
---@return game_item
function class_game_item.item_icon(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item._data[15]=value
    return class_game_item
end
    
---* 主要针对装备时角色需达到的需求:
---* 目前可支持的需求字段含义如下：
---* role_level:角色等级
---* [所有定义在角色属性字段表中的字段]
---* 
---@param value string @需求
---@return game_item
function class_game_item.require_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item._data[16]=value
    return class_game_item
end
    

---@param value float @武器速度
---@return game_item
function class_game_item.weapon_speed(value)
    
    class_game_item._data[17]=value
    return class_game_item
end
    

---@param value string @定位
---@return game_item
function class_game_item.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item._data[25]=value
    return class_game_item
end
    

---@param value string @基础效果
---@return game_item
function class_game_item.effect_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item._data[19]=value
    return class_game_item
end
    
---* 格式说明:
---* 所有模型替换信息由 键1:值1;键2:值2;...;键N:值N 这样的键值对组成。
---* 目前支持的键值如下(当值为null表示不替换)：
---* sex:替换角色性别(0:男 1：女)
---* male_head:男性角色的头部模型
---* female_head:女性角色的头部模型
---* male_body:男性角色的身体模型
---* female_body:女性角色的身体模型
---* r_weapon:右手武器
---* l_weapon:左右武器
---* 
---@param value string @扩展效果
---@return game_item
function class_game_item.ext_effect_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item._data[20]=value
    return class_game_item
end
    
---* 主要针对装备时角色需达到的需求:
---* 目前可支持的需求字段含义如下：
---* role_level:角色等级
---* [所有定义在角色属性字段表中的字段]
---* 
---@param value string @道具描述
---@return game_item
function class_game_item.describ_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item._data[21]=value
    return class_game_item
end
    
---* 格式说明:
---* 所有模型替换信息由 键1:值1;键2:值2;...;键N:值N 这样的键值对组成。
---* 目前支持的键值如下(当值为null表示不替换)：
---* sex:替换角色性别(0:男 1：女)
---* male_head:男性角色的头部模型
---* female_head:女性角色的头部模型
---* male_body:男性角色的身体模型
---* female_body:女性角色的身体模型
---* r_weapon:右手武器
---* l_weapon:左右武器
---* 
---@param value string @模型信息
---@return game_item
function class_game_item.tex_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item._data[22]=value
    return class_game_item
end
    
---* 远程单位的弹道设置:
---* 格式为：特效ID,弹道参数[可选，默认为0]
---* 弹道参数的类型如下：
---* 0：指向型射击，弹道特效中必须设置碰撞参数
---* 1：指定位置射击(适用投掷爆破手型单位)
---* 2：必中型射击，弹道特效中的碰撞参数将被忽略
---* 
---* 
---@param value string @远程特效
---@return game_item
function class_game_item.remote_eft(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item._data[23]=value
    return class_game_item
end
    

---@param value string @TAG
---@return game_item
function class_game_item.tag(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item._data[24]=value
    return class_game_item
end
    

---@param value string @备注
---@return game_item
function class_game_item.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item._data[25]=value
    return class_game_item
end
    

 
---@class game_item_synth_class
local class_game_item_synth_class={ }
---@private
class_game_item_synth_class._header={ "ID","显示名称","所属父类","排序索引","是否隐藏" }

classTable.game_item_synth_class=class_game_item_synth_class

---@param sheetName string
function Reset_game_item_synth_class(sheetName)
    ---@private
    class_game_item_synth_class._exceldata={ class_game_item_synth_class._header }
    ---@private
    class_game_item_synth_class._sheetName=sheetName
    table.insert(excels,{ class_game_item_synth_class._exceldata,sheetName, "game_item_synth_class" })
end


---@return game_item_synth_class
function game_item_synth_class()
    local data={ "","","","","" }
    ---@private
    class_game_item_synth_class._data=data
    table.insert(class_game_item_synth_class._exceldata,data)
    return class_game_item_synth_class
end
    

---@param value string @ID
---@return game_item_synth_class
function class_game_item_synth_class.id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_synth_class._data[1]=value
    return class_game_item_synth_class
end
    

---@param value string @显示名称
---@return game_item_synth_class
function class_game_item_synth_class.display_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_synth_class._data[2]=value
    return class_game_item_synth_class
end
    

---@param value string @所属父类
---@return game_item_synth_class
function class_game_item_synth_class.parent_class(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_synth_class._data[3]=value
    return class_game_item_synth_class
end
    

---@param value int @排序索引
---@return game_item_synth_class
function class_game_item_synth_class.sort_index(value)
    
    class_game_item_synth_class._data[4]=value
    return class_game_item_synth_class
end
    

---@param value int @是否隐藏
---@return game_item_synth_class
function class_game_item_synth_class.is_hide(value)
    
    class_game_item_synth_class._data[5]=value
    return class_game_item_synth_class
end
    

 
---@class game_item_synth
local class_game_item_synth={ }
---@private
class_game_item_synth._header={ "ID","所属主类","所属子类","排序索引","显示名称","默认开启","合成目标","显示替代","描述信息","配方","合成所需条件","合成所需条件描述" }

classTable.game_item_synth=class_game_item_synth

---@param sheetName string
function Reset_game_item_synth(sheetName)
    ---@private
    class_game_item_synth._exceldata={ class_game_item_synth._header }
    ---@private
    class_game_item_synth._sheetName=sheetName
    table.insert(excels,{ class_game_item_synth._exceldata,sheetName, "game_item_synth" })
end


---@return game_item_synth
function game_item_synth()
    local data={ "","","","","","","","","","","","" }
    ---@private
    class_game_item_synth._data=data
    table.insert(class_game_item_synth._exceldata,data)
    return class_game_item_synth
end
    

---@param value string @ID
---@return game_item_synth
function class_game_item_synth.id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_synth._data[1]=value
    return class_game_item_synth
end
    

---@param value string @所属主类
---@return game_item_synth
function class_game_item_synth.main_class(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_synth._data[2]=value
    return class_game_item_synth
end
    

---@param value string @所属子类
---@return game_item_synth
function class_game_item_synth.sub_class(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_synth._data[3]=value
    return class_game_item_synth
end
    

---@param value int @排序索引
---@return game_item_synth
function class_game_item_synth.sort_index(value)
    
    class_game_item_synth._data[4]=value
    return class_game_item_synth
end
    

---@param value string @显示名称
---@return game_item_synth
function class_game_item_synth.display_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_synth._data[5]=value
    return class_game_item_synth
end
    

---@param value int @默认开启
---@return game_item_synth
function class_game_item_synth.def_state(value)
    
    class_game_item_synth._data[6]=value
    return class_game_item_synth
end
    

---@param value string @合成目标
---@return game_item_synth
function class_game_item_synth.target_item(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_synth._data[7]=value
    return class_game_item_synth
end
    
---* 此项不为空时按照该项描述的信息显示合成目标的图标和品质。
---* 格式：显示图标#显示品质
---@param value string @显示替代
---@return game_item_synth
function class_game_item_synth.alt_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_synth._data[8]=value
    return class_game_item_synth
end
    

---@param value string @描述信息
---@return game_item_synth
function class_game_item_synth.target_describ(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_synth._data[9]=value
    return class_game_item_synth
end
    
---* 合成配方材料表:
---* 多个材料以换行符分隔，材料信息支持以下两种格式：
---* 物品ID,数量
---* 物品图标文件名#筛选条件表达式#筛选条件文字信息
---* 
---@param value string @配方
---@return game_item_synth
function class_game_item_synth.mat_infos(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_synth._data[10]=value
    return class_game_item_synth
end
    

---@param value string @合成所需条件
---@return game_item_synth
function class_game_item_synth.condition_str(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_synth._data[11]=value
    return class_game_item_synth
end
    

---@param value string @合成所需条件描述
---@return game_item_synth
function class_game_item_synth.condition_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_synth._data[12]=value
    return class_game_item_synth
end
    

 
---@class game_item_words
local class_game_item_words={ }
---@private
class_game_item_words._header={ "词条ID","显示词缀","覆盖名称","词条品质","最低物等","最高物等","限定装备类型","限定子类型表","限定道具ID","指定方式生成","TAG","概率权值","覆盖武器速度","附加需求","词条效果","附加价格","覆盖模型","覆盖特效","覆盖描述","备注" }

classTable.game_item_words=class_game_item_words

---@param sheetName string
function Reset_game_item_words(sheetName)
    ---@private
    class_game_item_words._exceldata={ class_game_item_words._header }
    ---@private
    class_game_item_words._sheetName=sheetName
    table.insert(excels,{ class_game_item_words._exceldata,sheetName, "game_item_words" })
end


---@return game_item_words
function game_item_words()
    local data={ "","","","","","","","","","","","","","","","","","","","" }
    ---@private
    class_game_item_words._data=data
    table.insert(class_game_item_words._exceldata,data)
    return class_game_item_words
end
    

---@param value string @词条ID
---@return game_item_words
function class_game_item_words.word_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_words._data[1]=value
    return class_game_item_words
end
    

---@param value string @显示词缀
---@return game_item_words
function class_game_item_words.word_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_words._data[2]=value
    return class_game_item_words
end
    
---* 词条品质:
---* 1：优秀
---* 2：精良
---* 3：宝物
---@param value int @覆盖名称
---@return game_item_words
function class_game_item_words.is_cover_name(value)
    
    class_game_item_words._data[3]=value
    return class_game_item_words
end
    
---* 词条品质:
---* 1：优秀
---* 2：精良
---* 3：宝物
---@param value int @词条品质
---@return game_item_words
function class_game_item_words.quality(value)
    
    class_game_item_words._data[4]=value
    return class_game_item_words
end
    
---* 包括该值
---* 0为不限制
---@param value int @最低物等
---@return game_item_words
function class_game_item_words.min_item_level(value)
    
    class_game_item_words._data[5]=value
    return class_game_item_words
end
    
---* 包括该值
---* 0为不限制
---@param value int @最高物等
---@return game_item_words
function class_game_item_words.max_item_level(value)
    
    class_game_item_words._data[6]=value
    return class_game_item_words
end
    
---* 限定的装备类型:
---* -1：不限
---* 0：武器
---* 1：防具
---@param value int @限定装备类型
---@return game_item_words
function class_game_item_words.equip_type(value)
    
    class_game_item_words._data[7]=value
    return class_game_item_words
end
    
---* 限定的装备类型:
---* 0：武器
---* 1：防具
---@param value string @限定子类型表
---@return game_item_words
function class_game_item_words.sub_type_list(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_words._data[8]=value
    return class_game_item_words
end
    
---* 限定的装备类型:
---* 非别为该装备的子类型
---@param value string @限定道具ID
---@return game_item_words
function class_game_item_words.bind_item(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_words._data[9]=value
    return class_game_item_words
end
    

---@param value int @指定方式生成
---@return game_item_words
function class_game_item_words.manual_gen(value)
    
    class_game_item_words._data[10]=value
    return class_game_item_words
end
    

---@param value string @TAG
---@return game_item_words
function class_game_item_words.tagValue(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_words._data[11]=value
    return class_game_item_words
end
    
---* 该词条出现的概率权值:
---* 计算方法为该权值除以所有符合该条件类别的词条概率权值之和即为该词条出现的概率。（注意：空词条的默认概率权值为100）
---@param value float @概率权值
---@return game_item_words
function class_game_item_words.word_prob(value)
    
    class_game_item_words._data[12]=value
    return class_game_item_words
end
    

---@param value float @覆盖武器速度
---@return game_item_words
function class_game_item_words.cover_weapon_speed(value)
    
    class_game_item_words._data[13]=value
    return class_game_item_words
end
    
---* 主要针对装备时角色需达到的需求:
---* 目前可支持的需求字段含义如下：
---* role_level:角色等级
---* [所有定义在角色属性字段表中的字段]
---* 
---@param value string @附加需求
---@return game_item_words
function class_game_item_words.add_require(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_words._data[14]=value
    return class_game_item_words
end
    

---@param value string @词条效果
---@return game_item_words
function class_game_item_words.word_effects(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_words._data[15]=value
    return class_game_item_words
end
    

---@param value int @附加价格
---@return game_item_words
function class_game_item_words.add_price(value)
    
    class_game_item_words._data[16]=value
    return class_game_item_words
end
    
---* 当此项不为空时将替换原有装备的贴图信息
---* 
---@param value string @覆盖模型
---@return game_item_words
function class_game_item_words.cover_tex_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_words._data[17]=value
    return class_game_item_words
end
    
---* 当此项不为空时将替换原有装备的远程特效
---* 
---@param value string @覆盖特效
---@return game_item_words
function class_game_item_words.cover_eft(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_words._data[18]=value
    return class_game_item_words
end
    
---* 主要针对装备时角色需达到的需求:
---* 目前可支持的需求字段含义如下：
---* role_level:角色等级
---* [所有定义在角色属性字段表中的字段]
---* 
---@param value string @覆盖描述
---@return game_item_words
function class_game_item_words.cover_describ(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_words._data[19]=value
    return class_game_item_words
end
    

---@param value string @备注
---@return game_item_words
function class_game_item_words.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_game_item_words._data[20]=value
    return class_game_item_words
end
    

 
---@class dungeon_info
local class_dungeon_info={ }
---@private
class_dungeon_info._header={ "ID","类型","显示名称","入口地城地图","入口坐标","定制天气","附加人物属性","胜利奖励","胜利额外奖励" }

classTable.dungeon_info=class_dungeon_info

---@param sheetName string
function Reset_dungeon_info(sheetName)
    ---@private
    class_dungeon_info._exceldata={ class_dungeon_info._header }
    ---@private
    class_dungeon_info._sheetName=sheetName
    table.insert(excels,{ class_dungeon_info._exceldata,sheetName, "dungeon_info" })
end


---@return dungeon_info
function dungeon_info()
    local data={ "","","","","","","","","" }
    ---@private
    class_dungeon_info._data=data
    table.insert(class_dungeon_info._exceldata,data)
    return class_dungeon_info
end
    

---@param value string @ID
---@return dungeon_info
function class_dungeon_info.dungeon_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_dungeon_info._data[1]=value
    return class_dungeon_info
end
    
---* 类型:
---* 0：默认
---@param value int @类型
---@return dungeon_info
function class_dungeon_info.dungeon_type(value)
    
    class_dungeon_info._data[2]=value
    return class_dungeon_info
end
    

---@param value string @显示名称
---@return dungeon_info
function class_dungeon_info.display_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_dungeon_info._data[3]=value
    return class_dungeon_info
end
    

---@param value string @入口地城地图
---@return dungeon_info
function class_dungeon_info.enter_map(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_dungeon_info._data[4]=value
    return class_dungeon_info
end
    

---@param value string @入口坐标
---@return dungeon_info
function class_dungeon_info.enter_pos(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_dungeon_info._data[5]=value
    return class_dungeon_info
end
    

---@param value string @定制天气
---@return dungeon_info
function class_dungeon_info.def_weather(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_dungeon_info._data[6]=value
    return class_dungeon_info
end
    

---@param value string @附加人物属性
---@return dungeon_info
function class_dungeon_info.add_rolestat(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_dungeon_info._data[7]=value
    return class_dungeon_info
end
    

---@param value string @胜利奖励
---@return dungeon_info
function class_dungeon_info.win_rewards(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_dungeon_info._data[8]=value
    return class_dungeon_info
end
    

---@param value string @胜利额外奖励
---@return dungeon_info
function class_dungeon_info.firstwin_extra(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_dungeon_info._data[9]=value
    return class_dungeon_info
end
    

 
---@class dungeon_map
local class_dungeon_map={ }
---@private
class_dungeon_map._header={ "ID","显示名称","地图文件ID","备注","替换传送点信息","替换刷新单位信息","替换触发器信息","替换发射器信息" }

classTable.dungeon_map=class_dungeon_map

---@param sheetName string
function Reset_dungeon_map(sheetName)
    ---@private
    class_dungeon_map._exceldata={ class_dungeon_map._header }
    ---@private
    class_dungeon_map._sheetName=sheetName
    table.insert(excels,{ class_dungeon_map._exceldata,sheetName, "dungeon_map" })
end


---@return dungeon_map
function dungeon_map()
    local data={ "","","","","","","","" }
    ---@private
    class_dungeon_map._data=data
    table.insert(class_dungeon_map._exceldata,data)
    return class_dungeon_map
end
    

---@param value string @ID
---@return dungeon_map
function class_dungeon_map.map_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_dungeon_map._data[1]=value
    return class_dungeon_map
end
    

---@param value string @显示名称
---@return dungeon_map
function class_dungeon_map.display_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_dungeon_map._data[2]=value
    return class_dungeon_map
end
    

---@param value string @地图文件ID
---@return dungeon_map
function class_dungeon_map.map_file_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_dungeon_map._data[3]=value
    return class_dungeon_map
end
    

---@param value string @备注
---@return dungeon_map
function class_dungeon_map.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_dungeon_map._data[4]=value
    return class_dungeon_map
end
    
---* 替换指定的传送点信息(所有可替换字段见Assets\BuildSource\WorldEditorRes\custom_area_info.xml 中地城区域相关的字段信息):
---* 替换格式如下：
---* 目标填充ID1#{填充概率1:[信息字段1=目标替换值],[信息字段2=目标替换值],[...]},{填充概率2:[信息字段1=目标替换值],[信息字段2=目标替换值],[...]},{...}
---* 目标填充ID2#{填充概率1:[信息字段1=目标替换值],[信息字段2=目标替换值],[...]},{填充概率2:[信息字段1=目标替换值],[信息字段2=目标替换值],[...]},{...}
---@param value string @替换传送点信息
---@return dungeon_map
function class_dungeon_map.replace_tp(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_dungeon_map._data[5]=value
    return class_dungeon_map
end
    

---@param value string @替换刷新单位信息
---@return dungeon_map
function class_dungeon_map.replace_spawn(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_dungeon_map._data[6]=value
    return class_dungeon_map
end
    

---@param value string @替换触发器信息
---@return dungeon_map
function class_dungeon_map.replace_trigger(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_dungeon_map._data[7]=value
    return class_dungeon_map
end
    

---@param value string @替换发射器信息
---@return dungeon_map
function class_dungeon_map.replace_emitter(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_dungeon_map._data[8]=value
    return class_dungeon_map
end
    

 
---@class storyevent
local class_storyevent={ }
---@private
class_storyevent._header={ "剧情事件ID","备注","命令内容","结果" }

classTable.storyevent=class_storyevent

---@param sheetName string
function Reset_storyevent(sheetName)
    ---@private
    class_storyevent._exceldata={ class_storyevent._header }
    ---@private
    class_storyevent._sheetName=sheetName
    table.insert(excels,{ class_storyevent._exceldata,sheetName, "storyevent" })
end


---@return storyevent
function storyevent()
    local data={ "","","","" }
    ---@private
    class_storyevent._data=data
    table.insert(class_storyevent._exceldata,data)
    return class_storyevent
end
    

---@param value string @剧情事件ID
---@return storyevent
function class_storyevent.key(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_storyevent._data[1]=value
    return class_storyevent
end
    

---@param value string @备注
---@return storyevent
function class_storyevent.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_storyevent._data[2]=value
    return class_storyevent
end
    

---@param value string @命令内容
---@return storyevent
function class_storyevent.cmd_line(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_storyevent._data[3]=value
    return class_storyevent
end
    

---@param value string @结果
---@return storyevent
function class_storyevent.result_line(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_storyevent._data[4]=value
    return class_storyevent
end
    

 
---@class story_mode
local class_story_mode={ }
---@private
class_story_mode._header={ "剧本ID","显示名称","默认立绘","默认模型","剧本描述","初始指令","性别限制","条件","启用","开局后执行指令","备注" }

classTable.story_mode=class_story_mode

---@param sheetName string
function Reset_story_mode(sheetName)
    ---@private
    class_story_mode._exceldata={ class_story_mode._header }
    ---@private
    class_story_mode._sheetName=sheetName
    table.insert(excels,{ class_story_mode._exceldata,sheetName, "story_mode" })
end


---@return story_mode
function story_mode()
    local data={ "","","","","","","","","","","" }
    ---@private
    class_story_mode._data=data
    table.insert(class_story_mode._exceldata,data)
    return class_story_mode
end
    

---@param value string @剧本ID
---@return story_mode
function class_story_mode.ModeId(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_story_mode._data[1]=value
    return class_story_mode
end
    

---@param value string @显示名称
---@return story_mode
function class_story_mode.Name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_story_mode._data[2]=value
    return class_story_mode
end
    

---@param value string @默认立绘
---@return story_mode
function class_story_mode.DefaultHeadAvataInfo(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_story_mode._data[3]=value
    return class_story_mode
end
    

---@param value string @默认模型
---@return story_mode
function class_story_mode.DefaultModelInfo(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_story_mode._data[4]=value
    return class_story_mode
end
    

---@param value string @剧本描述
---@return story_mode
function class_story_mode.Desc(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_story_mode._data[5]=value
    return class_story_mode
end
    

---@param value string @初始指令
---@return story_mode
function class_story_mode.DefaultCommand(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_story_mode._data[6]=value
    return class_story_mode
end
    
---* User:
---* -1：不限制
---* 0：限制为男性
---* 1：限制为女性
---@param value int @性别限制
---@return story_mode
function class_story_mode.SexLimit(value)
    
    class_story_mode._data[7]=value
    return class_story_mode
end
    

---@param value string @条件
---@return story_mode
function class_story_mode.Condition(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_story_mode._data[8]=value
    return class_story_mode
end
    

---@param value int @启用
---@return story_mode
function class_story_mode.Enable(value)
    
    class_story_mode._data[9]=value
    return class_story_mode
end
    

---@param value string @开局后执行指令
---@return story_mode
function class_story_mode.GameStartCmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_story_mode._data[10]=value
    return class_story_mode
end
    

---@param value string @备注
---@return story_mode
function class_story_mode.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_story_mode._data[11]=value
    return class_story_mode
end
    

 
---@class skill_info
local class_skill_info={ }
---@private
class_skill_info._header={ "ID","技能名称","对应插槽","被动","等级信息","技能描述","使用情况","技能描述备注","技能图标","技能系","增幅系数","技能页","气力消耗","吟唱时间","技能分类","目标类型","目标查询参数","选择参数","冷却时间","公共CD","施放距离","吟唱动作","吟唱特效","施放动作","限定武器类型","被动增加属性","成功判断条件表达式","开始吟唱时命令","发动成功时命令","发动失败时命令","命中时命令" }

classTable.skill_info=class_skill_info

---@param sheetName string
function Reset_skill_info(sheetName)
    ---@private
    class_skill_info._exceldata={ class_skill_info._header }
    ---@private
    class_skill_info._sheetName=sheetName
    table.insert(excels,{ class_skill_info._exceldata,sheetName, "skill_info" })
end


---@return skill_info
function skill_info()
    local data={ "","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","" }
    ---@private
    class_skill_info._data=data
    table.insert(class_skill_info._exceldata,data)
    return class_skill_info
end
    

---@param value string @ID
---@return skill_info
function class_skill_info.skill_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[1]=value
    return class_skill_info
end
    

---@param value string @技能名称
---@return skill_info
function class_skill_info.skill_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[2]=value
    return class_skill_info
end
    
---* Administrator:
---* 填数字0,1,2...
---* 
---* 比如填：1,3
---* 那么该技能可以放在1、3这两个槽
---@param value string @对应插槽
---@return skill_info
function class_skill_info.card_slot(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[3]=value
    return class_skill_info
end
    
---* 技能类型:
---* 0：主动技能（主动施放但可拥有被动效果）
---* 1：被动技能（不能主动施放）
---* 2：
---* 3：战斗开始时被动触发
---@param value int @被动
---@return skill_info
function class_skill_info.skill_type(value)
    
    class_skill_info._data[4]=value
    return class_skill_info
end
    
---* Administrator:
---* 格式：
---* 最低等级-最高等级（可省略）:对应等级系数表的起始等级#步长（可省略，默认为1）
---* 
---* 有多个等级信息时，将从上至下进行综合，下面的信息会覆盖上面的信息
---* 
---* 策划必须保证等级信息是从1开始连续的，即不会出现 1-10级，忽然接个15级，这种情况
---* 
---* 等级范围为1~40级，不能超过等级系数表所定义的等级上限
---* 
---* 例子1：
---* 1-8:10#2
---* 9-10:36
---* 
---* 例子2:
---* 1:1
---* 
---* 例子3:
---* 1-40:1
---@param value string @等级信息
---@return skill_info
function class_skill_info.level_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[5]=value
    return class_skill_info
end
    

---@param value string @技能描述
---@return skill_info
function class_skill_info.skill_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[6]=value
    return class_skill_info
end
    

---@param value string @使用情况
---@return skill_info
function class_skill_info.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[8]=value
    return class_skill_info
end
    

---@param value string @技能描述备注
---@return skill_info
function class_skill_info.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[8]=value
    return class_skill_info
end
    

---@param value string @技能图标
---@return skill_info
function class_skill_info.skill_icon(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[9]=value
    return class_skill_info
end
    

---@param value string @技能系
---@return skill_info
function class_skill_info.skill_series(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[10]=value
    return class_skill_info
end
    

---@param value string @增幅系数
---@return skill_info
function class_skill_info.multiple_by(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[11]=value
    return class_skill_info
end
    

---@param value string @技能页
---@return skill_info
function class_skill_info.skill_page(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[12]=value
    return class_skill_info
end
    

---@param value int @气力消耗
---@return skill_info
function class_skill_info.mp_cost(value)
    
    class_skill_info._data[13]=value
    return class_skill_info
end
    

---@param value float @吟唱时间
---@return skill_info
function class_skill_info.cast_time(value)
    
    class_skill_info._data[14]=value
    return class_skill_info
end
    
---* 技能分类:
---* 0：被动技能
---* 1：伤害技能
---* 2：减益技能
---* 3：治疗技能
---* 4：增益技能
---* 5：DEBUFF技能
---* 6：位移技能
---* 7：嘲讽技能
---* 8：救命技能
---@param value int @技能分类
---@return skill_info
function class_skill_info.skill_class(value)
    
    class_skill_info._data[15]=value
    return class_skill_info
end
    
---* 主动技能目标类型:
---* 0：自己（无需选择）
---* 1：敌方单体
---* 2：目标位置
---* 3：目标方向
---* 4：我方单体
---* 
---* 当技能类型为光环时：
---* 0：影响我方单位
---* 1：影响敌方单位
---* 2：影响敌我双方单位
---* 3：共鸣类型（必须在附近有友方目标受光环影响时自身才会享受光环增益）
---@param value int @目标类型
---@return skill_info
function class_skill_info.target_type(value)
    
    class_skill_info._data[16]=value
    return class_skill_info
end
    
---* 根据目标类型不同查找不同的目标结果:
---* 当目标类型为1敌方单体时：
---* 当参数为空时默认返回最近的敌人或当前目标
---* only_hero：仅寻找英雄类型的单位
---* only_soldier：仅寻找小兵类型的敌人
---* min_hp：优先寻找血量最低的敌人
---@param value string @目标查询参数
---@return skill_info
function class_skill_info.target_args(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[17]=value
    return class_skill_info
end
    
---* 仅在几种目标类型时生效:
---* 当目标类型为2目标位置时表示选择指示器半径；
---* 当目标类型为3目标方向时表示选择指示器长度；
---@param value float @选择参数
---@return skill_info
function class_skill_info.sel_arg(value)
    
    class_skill_info._data[18]=value
    return class_skill_info
end
    

---@param value float @冷却时间
---@return skill_info
function class_skill_info.cd_time(value)
    
    class_skill_info._data[19]=value
    return class_skill_info
end
    

---@param value float @公共CD
---@return skill_info
function class_skill_info.global_cd(value)
    
    class_skill_info._data[20]=value
    return class_skill_info
end
    
---* 释放距离:
---* 当该值不为0时单位只有移动到目标该半径范围内时方可施放
---@param value float @施放距离
---@return skill_info
function class_skill_info.cast_range(value)
    
    class_skill_info._data[21]=value
    return class_skill_info
end
    
---* 动作ID,播放速率（默认1，小于1为变慢）
---* 
---@param value string @吟唱动作
---@return skill_info
function class_skill_info.casting_act(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[22]=value
    return class_skill_info
end
    

---@param value string @吟唱特效
---@return skill_info
function class_skill_info.casting_eft(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[23]=value
    return class_skill_info
end
    
---* 动作ID,播放速率（默认1，小于1为变慢）
---@param value string @施放动作
---@return skill_info
function class_skill_info.cast_out_act(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[24]=value
    return class_skill_info
end
    
---* 当技能为主动技能时只有在装备指定类型的武器时才能发动。
---* 为空时不限定
---* 武器类型表多个以“,”进行分隔
---* 当物品类型不同时该字段代表不同含义:
---* 当物品类型为装备且装备类型为武器时：
---* 0：拳套
---* 1：剑
---* 2：刀
---* 3：锤
---* 4：长杆武器（枪/戟）
---* 5：持盾武器
---* 6：双手武器（双手剑/斧）
---* 7：弓类
---* 8：暗器类
---* 9：琴类
---* 
---* 防具：
---* 0：轻甲
---* 1：重甲
---* 9：城甲
---* 
---@param value string @限定武器类型
---@return skill_info
function class_skill_info.weapon_limit(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[25]=value
    return class_skill_info
end
    

---@param value string @被动增加属性
---@return skill_info
function class_skill_info.add_status(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[26]=value
    return class_skill_info
end
    

---@param value string @成功判断条件表达式
---@return skill_info
function class_skill_info.check_condition(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[27]=value
    return class_skill_info
end
    

---@param value string @开始吟唱时命令
---@return skill_info
function class_skill_info.start_casting_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[28]=value
    return class_skill_info
end
    

---@param value string @发动成功时命令
---@return skill_info
function class_skill_info.cast_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[29]=value
    return class_skill_info
end
    

---@param value string @发动失败时命令
---@return skill_info
function class_skill_info.failed_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[30]=value
    return class_skill_info
end
    

---@param value string @命中时命令
---@return skill_info
function class_skill_info.hittag_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_info._data[31]=value
    return class_skill_info
end
    

 
---@class skill_page
local class_skill_page={ }
---@private
class_skill_page._header={ "技能页ID","显示名称","技能树","资源名称","备注" }

classTable.skill_page=class_skill_page

---@param sheetName string
function Reset_skill_page(sheetName)
    ---@private
    class_skill_page._exceldata={ class_skill_page._header }
    ---@private
    class_skill_page._sheetName=sheetName
    table.insert(excels,{ class_skill_page._exceldata,sheetName, "skill_page" })
end


---@return skill_page
function skill_page()
    local data={ "","","","","" }
    ---@private
    class_skill_page._data=data
    table.insert(class_skill_page._exceldata,data)
    return class_skill_page
end
    

---@param value string @技能页ID
---@return skill_page
function class_skill_page.page_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_page._data[1]=value
    return class_skill_page
end
    

---@param value string @显示名称
---@return skill_page
function class_skill_page.display_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_page._data[2]=value
    return class_skill_page
end
    
---* 技能树:
---* 排列顺序对应UNITY界面内对应技能树的编号
---* 格式：技能ID#前置技能1,等级|前置技能2,等级|...#学习要求条件表达式#条件表达式对应描述说明（可选）
---@param value string @技能树
---@return skill_page
function class_skill_page.tree_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_page._data[3]=value
    return class_skill_page
end
    

---@param value string @资源名称
---@return skill_page
function class_skill_page.res_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_page._data[4]=value
    return class_skill_page
end
    

---@param value string @备注
---@return skill_page
function class_skill_page.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_skill_page._data[5]=value
    return class_skill_page
end
    

 
---@class statu_field
local class_statu_field={ }
---@private
class_statu_field._header={ "代码","字段名称","字段格式名称","字段类型","排序权值","面板隐藏","周目成长百分比","额外描述","限定武器","触发方式","触发条件","对象参数","触发时命令","说明" }

classTable.statu_field=class_statu_field

---@param sheetName string
function Reset_statu_field(sheetName)
    ---@private
    class_statu_field._exceldata={ class_statu_field._header }
    ---@private
    class_statu_field._sheetName=sheetName
    table.insert(excels,{ class_statu_field._exceldata,sheetName, "statu_field" })
end


---@return statu_field
function statu_field()
    local data={ "","","","","","","","","","","","","","" }
    ---@private
    class_statu_field._data=data
    table.insert(class_statu_field._exceldata,data)
    return class_statu_field
end
    

---@param value string @代码
---@return statu_field
function class_statu_field.field_code(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_statu_field._data[1]=value
    return class_statu_field
end
    

---@param value string @字段名称
---@return statu_field
function class_statu_field.field_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_statu_field._data[2]=value
    return class_statu_field
end
    

---@param value string @字段格式名称
---@return statu_field
function class_statu_field.field_format_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_statu_field._data[3]=value
    return class_statu_field
end
    
---* 0:战斗中属性
---* 1：非战斗中属性
---* 
---* 
---@param value int @字段类型
---@return statu_field
function class_statu_field.field_type(value)
    
    class_statu_field._data[4]=value
    return class_statu_field
end
    

---@param value int @排序权值
---@return statu_field
function class_statu_field.sort_order(value)
    
    class_statu_field._data[5]=value
    return class_statu_field
end
    
---* 为1时该字段不会再属性面板中显示
---* 
---@param value int @面板隐藏
---@return statu_field
function class_statu_field.is_hide(value)
    
    class_statu_field._data[6]=value
    return class_statu_field
end
    
---* Administrator:
---* 打出来的装备如果有标记过的词条，则根据周目会百分比增长
---@param value int @周目成长百分比
---@return statu_field
function class_statu_field.round_pct_change(value)
    
    class_statu_field._data[7]=value
    return class_statu_field
end
    

---@param value string @额外描述
---@return statu_field
function class_statu_field.ext_describ(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_statu_field._data[8]=value
    return class_statu_field
end
    
---* 限定的武器类型
---* 当该字段不为空时只有装备此类武器时方可生效
---@param value string @限定武器
---@return statu_field
function class_statu_field.weapon_limit(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_statu_field._data[9]=value
    return class_statu_field
end
    
---* 词条效果的触发方式:
---* 默认为内部代码实现，支持以下自定义触发效果类型：
---* by_code：由内部代码实现
---* global_by_code：一个全局生效的词条，由内部代码实现（会加入战场全局表中）
---* halo：光环类效果
---* hit_chance：当命中目标时以该字段值为触发概率进行触发
---* every_5hits：每5次攻击时以字段值为概率进行触发判断
---* hit_by：被目标攻击时触发
---* on_dead：单位死亡时触发
---* polymorph：单位变身效果
---* terrain：地形效果
---* 
---* on_dodge：角色闪避时触发命令
---* on_crit：角色被暴击时触发命令
---* on_skill：角色使用技能时触发命令 对象参数为技能系，不指定为所有
---* in_abnormal：角色进入异常状态时触发
---* out_abnormal：角色摆脱异常状态时触发
---* buff_weaken：根据目标身上特定BUFF层数来增强对其的伤害效果
---* buff_dmgadd：增加自己对来自特定BUFF所受到持续伤害的影响
---* on_frienddown：友军被击倒时触发
---* on_enemydown：敌军被击倒时触发
---* 
---* global_add_stat：战斗前根据条件为指定对象范围增加属性
---* week_getitem:每周获得物资
---@param value string @触发方式
---@return statu_field
function class_statu_field.trig_type(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_statu_field._data[10]=value
    return class_statu_field
end
    
---* 触发的条件参数
---* 当触发方式为hit_chance时该参数表示限定的攻击类型，为空为不限制，否则以“,”分隔
---* 攻击类型分为 0：普通近战攻击 1：普通远程攻击 2：技能攻击
---* 
---* 当触发方式为global_add_stat 时表示目标单位类型及攻击方式类型，以#分隔，目标单位类型0为全体，1为仅小兵 2为仅英雄  攻击方式类型0为所有 1：为近战 2为远程
---* 
---@param value string @触发条件
---@return statu_field
function class_statu_field.trig_conditions(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_statu_field._data[11]=value
    return class_statu_field
end
    
---* 对象参数:
---* 当触发方式为halo光环类型时格式为： 对象类型#距离
---* 对象类型分为 0：友方 1：敌方  2：双方  3：共鸣方式
---* 
---* 当触发方式为hit_by、on_dodge、on_crit时该参数表示攻击方式：
---* 0：所有类型 1：近战攻击 2：远程攻击
---* 
---* 当触发方式为hit_chance时。该参数特殊参数表，可支持如下特殊参数
---* swallow_dmg*[条件表达式]：消除本次判定中的伤害，一般用于实现特殊伤害公式，只有在随后的条件表达式满足时生效
---* 
---* 当触发方式为global_by_code时：
---* 该参数为词条所使用的各类型限定参数
---* 
---* 当触发方式为terrain时：
---* 该参数为目标地形的index
---* 
---* 当触发方式为on_skill时：
---* 该参数表示使用技能的技能系，为空时表示监测所有类型的技能
---* 
---* 当触发方式为in_abnormal、out_abnormal时：
---* 该参数表示该异常状态的类型枚举值：0：所有 1：昏迷  2：定身  3：嘲讽  4：沉默  5：平静  6：恐惧  7：隐身  8：控制或混乱
---* 
---* 触发方式为buff_weaken、buff_dmgadd时表示目标BUFF的ID
---* 
---* 触发方式为global_add_stat时格式为： 触发条件表达式#触发应用对象的条件表达式
---* 当两个条件表达式都满足或者为空时，将对所有满足条件的应用目标对象增加填写再触发命令的属性
---@param value string @对象参数
---@return statu_field
function class_statu_field.tag_args(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_statu_field._data[12]=value
    return class_statu_field
end
    

---@param value string @触发时命令
---@return statu_field
function class_statu_field.trig_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_statu_field._data[13]=value
    return class_statu_field
end
    

---@param value string @说明
---@return statu_field
function class_statu_field.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_statu_field._data[14]=value
    return class_statu_field
end
    

 
---@class bazzar
local class_bazzar={ }
---@private
class_bazzar._header={ "集市ID","名称","隐藏播报信息","初始化信息","商品信息表","假人信息表" }

classTable.bazzar=class_bazzar

---@param sheetName string
function Reset_bazzar(sheetName)
    ---@private
    class_bazzar._exceldata={ class_bazzar._header }
    ---@private
    class_bazzar._sheetName=sheetName
    table.insert(excels,{ class_bazzar._exceldata,sheetName, "bazzar" })
end


---@return bazzar
function bazzar()
    local data={ "","","","","","" }
    ---@private
    class_bazzar._data=data
    table.insert(class_bazzar._exceldata,data)
    return class_bazzar
end
    

---@param value string @集市ID
---@return bazzar
function class_bazzar.id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_bazzar._data[1]=value
    return class_bazzar
end
    

---@param value string @名称
---@return bazzar
function class_bazzar.name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_bazzar._data[2]=value
    return class_bazzar
end
    

---@param value int @隐藏播报信息
---@return bazzar
function class_bazzar.no_broadcast(value)
    
    class_bazzar._data[3]=value
    return class_bazzar
end
    

---@param value string @初始化信息
---@return bazzar
function class_bazzar.init_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_bazzar._data[4]=value
    return class_bazzar
end
    

---@param value string @商品信息表
---@return bazzar
function class_bazzar.merchant_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_bazzar._data[5]=value
    return class_bazzar
end
    

---@param value string @假人信息表
---@return bazzar
function class_bazzar.dummy_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_bazzar._data[6]=value
    return class_bazzar
end
    

 
---@class bazzar_items
local class_bazzar_items={ }
---@private
class_bazzar_items._header={ "集市道具组ID","具体道具信息","价格倍率","道具mf","道具mf描述" }

classTable.bazzar_items=class_bazzar_items

---@param sheetName string
function Reset_bazzar_items(sheetName)
    ---@private
    class_bazzar_items._exceldata={ class_bazzar_items._header }
    ---@private
    class_bazzar_items._sheetName=sheetName
    table.insert(excels,{ class_bazzar_items._exceldata,sheetName, "bazzar_items" })
end


---@return bazzar_items
function bazzar_items()
    local data={ "","","","","" }
    ---@private
    class_bazzar_items._data=data
    table.insert(class_bazzar_items._exceldata,data)
    return class_bazzar_items
end
    

---@param value string @集市道具组ID
---@return bazzar_items
function class_bazzar_items.id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_bazzar_items._data[1]=value
    return class_bazzar_items
end
    

---@param value string @具体道具信息
---@return bazzar_items
function class_bazzar_items.items(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_bazzar_items._data[2]=value
    return class_bazzar_items
end
    

---@param value string @价格倍率
---@return bazzar_items
function class_bazzar_items.price_ratio(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_bazzar_items._data[3]=value
    return class_bazzar_items
end
    

---@param value string @道具mf
---@return bazzar_items
function class_bazzar_items.mf(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_bazzar_items._data[4]=value
    return class_bazzar_items
end
    

---@param value string @道具mf描述
---@return bazzar_items
function class_bazzar_items.mf_desc(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_bazzar_items._data[5]=value
    return class_bazzar_items
end
    

 
---@class card_def
local class_card_def={ }
---@private
class_card_def._header={ "ID","组ID","显示名","权重","类型","绑定ID","绑定数字","品质","初始等级","等级上限","基础招募费用","掉落物资","TAG","卡牌升阶","所属种族卡池","种族卡池等级","种族卡池位置修正" }

classTable.card_def=class_card_def

---@param sheetName string
function Reset_card_def(sheetName)
    ---@private
    class_card_def._exceldata={ class_card_def._header }
    ---@private
    class_card_def._sheetName=sheetName
    table.insert(excels,{ class_card_def._exceldata,sheetName, "card_def" })
end


---@return card_def
function card_def()
    local data={ "","","","","","","","","","","","","","","","","" }
    ---@private
    class_card_def._data=data
    table.insert(class_card_def._exceldata,data)
    return class_card_def
end
    

---@param value string @ID
---@return card_def
function class_card_def.id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_card_def._data[1]=value
    return class_card_def
end
    

---@param value string @组ID
---@return card_def
function class_card_def.group_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_card_def._data[2]=value
    return class_card_def
end
    
---* Administrator:
---* 写了的话以此名称为准，不写的话以相应的逻辑自动生成的名称为准
---@param value string @显示名
---@return card_def
function class_card_def.show_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_card_def._data[3]=value
    return class_card_def
end
    

---@param value int @权重
---@return card_def
function class_card_def.weight(value)
    
    class_card_def._data[4]=value
    return class_card_def
end
    
---* Administrator:
---* 卡牌类型
---* soldier表示兵牌，绑定ID为卡牌兵牌中的ID，绑定数字为默认等级（不填为1级）
---* 
---* skill:技能类型，绑定ID为技能表中的技能ID，绑定数字为等级（不填为1级）
---* 
---* equip:装备类型，绑定ID为装备表中的装备ID
---* 
---* exp：卡牌经验，绑定数字为经验值
---* 
---* resource:资源卡，绑定ID为资源列表描述（格式为道具通用格式）
---@param value string @类型
---@return card_def
function class_card_def.type(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_card_def._data[5]=value
    return class_card_def
end
    

---@param value string @绑定ID
---@return card_def
function class_card_def.bindID(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_card_def._data[6]=value
    return class_card_def
end
    

---@param value int @绑定数字
---@return card_def
function class_card_def.bindNumber(value)
    
    class_card_def._data[7]=value
    return class_card_def
end
    

---@param value int @品质
---@return card_def
function class_card_def.quality(value)
    
    class_card_def._data[8]=value
    return class_card_def
end
    

---@param value int @初始等级
---@return card_def
function class_card_def.startLevel(value)
    
    class_card_def._data[9]=value
    return class_card_def
end
    

---@param value int @等级上限
---@return card_def
function class_card_def.maxLevel(value)
    
    class_card_def._data[10]=value
    return class_card_def
end
    
---* Administrator:
---* 1级时的招募费用，N级的招募费用为：
---* base费用*N级战斗力/1级战斗力
---@param value string @基础招募费用
---@return card_def
function class_card_def.base_recruit_cost(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_card_def._data[11]=value
    return class_card_def
end
    
---* Administrator:
---* 格式为掉落格式，参见全局掉落表
---@param value string @掉落物资
---@return card_def
function class_card_def.loot(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_card_def._data[12]=value
    return class_card_def
end
    

---@param value string @TAG
---@return card_def
function class_card_def.tagValue(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_card_def._data[13]=value
    return class_card_def
end
    

---@param value string @卡牌升阶
---@return card_def
function class_card_def.upgrade_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_card_def._data[14]=value
    return class_card_def
end
    
---* Administrator:
---* 目前可选：火魔基地、冰族基地、自然基地、通用，不填不会进入城镇抽卡卡池
---@param value string @所属种族卡池
---@return card_def
function class_card_def.class_card_pool(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_card_def._data[15]=value
    return class_card_def
end
    
---* Administrator:
---* 表明该卡牌在阵营卡池中的等级，会根据基地等级计算当前的抽卡概率
---@param value int @种族卡池等级
---@return card_def
function class_card_def.class_card_level(value)
    
    class_card_def._data[16]=value
    return class_card_def
end
    
---* Administrator:
---* 修正卡牌在升阶树的行号
---@param value int @种族卡池位置修正
---@return card_def
function class_card_def.class_card_fix_pos(value)
    
    class_card_def._data[17]=value
    return class_card_def
end
    

 
---@class card_probability
local class_card_probability={ }
---@private
class_card_probability._header={ "卡池等级","士兵卡牌抽取信息","英雄卡牌抽取信息" }

classTable.card_probability=class_card_probability

---@param sheetName string
function Reset_card_probability(sheetName)
    ---@private
    class_card_probability._exceldata={ class_card_probability._header }
    ---@private
    class_card_probability._sheetName=sheetName
    table.insert(excels,{ class_card_probability._exceldata,sheetName, "card_probability" })
end


---@return card_probability
function card_probability()
    local data={ "","","" }
    ---@private
    class_card_probability._data=data
    table.insert(class_card_probability._exceldata,data)
    return class_card_probability
end
    

---@param value int @卡池等级
---@return card_probability
function class_card_probability.level(value)
    
    class_card_probability._data[1]=value
    return class_card_probability
end
    
---* Administrator:
---* 格式：
---* 权重1:等级1
---* 权重2:等级2
---* ...
---* 
---@param value string @士兵卡牌抽取信息
---@return card_probability
function class_card_probability.soldier_card_probStr(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_card_probability._data[2]=value
    return class_card_probability
end
    
---* Administrator:
---* 格式:
---* 权重1:等级1
---* 权重2:等级2
---* ....
---* 
---* 1~4级英雄分别对应普通\乙\甲\绝
---@param value string @英雄卡牌抽取信息
---@return card_probability
function class_card_probability.role_card_probStr(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_card_probability._data[3]=value
    return class_card_probability
end
    

 
---@class global_buff
local class_global_buff={ }
---@private
class_global_buff._header={ "ID","BUFF名称","分类","BUFF描述","BUFF图标","默认持续时间","BUFF特效","BUFF效果" }

classTable.global_buff=class_global_buff

---@param sheetName string
function Reset_global_buff(sheetName)
    ---@private
    class_global_buff._exceldata={ class_global_buff._header }
    ---@private
    class_global_buff._sheetName=sheetName
    table.insert(excels,{ class_global_buff._exceldata,sheetName, "global_buff" })
end


---@return global_buff
function global_buff()
    local data={ "","","","","","","","" }
    ---@private
    class_global_buff._data=data
    table.insert(class_global_buff._exceldata,data)
    return class_global_buff
end
    

---@param value string @ID
---@return global_buff
function class_global_buff.buff_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_buff._data[1]=value
    return class_global_buff
end
    

---@param value string @BUFF名称
---@return global_buff
function class_global_buff.buff_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_buff._data[2]=value
    return class_global_buff
end
    

---@param value string @分类
---@return global_buff
function class_global_buff.buff_class(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_buff._data[3]=value
    return class_global_buff
end
    

---@param value string @BUFF描述
---@return global_buff
function class_global_buff.buff_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_buff._data[4]=value
    return class_global_buff
end
    

---@param value string @BUFF图标
---@return global_buff
function class_global_buff.buff_icon(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_buff._data[5]=value
    return class_global_buff
end
    
---* 默认持续时间:
---* 当获得BUFF时未指定持续时间以改时间为准
---* 单位为天（可为小数）
---* 如0.5表示半天
---@param value float @默认持续时间
---@return global_buff
function class_global_buff.keep_time(value)
    
    class_global_buff._data[6]=value
    return class_global_buff
end
    
---* 特效信息:
---* 特效对象名#特效位置#偏移（可选 X,Y,Z方向偏移)
---* 特效位置分为：
---* 0：默认位置
---* 1：脚下
---* 2：头顶
---* 3：效果层
---@param value string @BUFF特效
---@return global_buff
function class_global_buff.buff_effect(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_buff._data[7]=value
    return class_global_buff
end
    
---* 每层BUFF对单位影响的效果:
---* 可通过[&expression&]嵌入动态效果值
---* 表达式中[%overlay%]为BUFF层数
---@param value string @BUFF效果
---@return global_buff
function class_global_buff.buff_add(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_buff._data[8]=value
    return class_global_buff
end
    

 
---@class global_statu_field
local class_global_statu_field={ }
---@private
class_global_statu_field._header={ "代码","字段名称","排序权值","额外描述","对应角色属性","百分比提升","反转属性" }

classTable.global_statu_field=class_global_statu_field

---@param sheetName string
function Reset_global_statu_field(sheetName)
    ---@private
    class_global_statu_field._exceldata={ class_global_statu_field._header }
    ---@private
    class_global_statu_field._sheetName=sheetName
    table.insert(excels,{ class_global_statu_field._exceldata,sheetName, "global_statu_field" })
end


---@return global_statu_field
function global_statu_field()
    local data={ "","","","","","","" }
    ---@private
    class_global_statu_field._data=data
    table.insert(class_global_statu_field._exceldata,data)
    return class_global_statu_field
end
    

---@param value string @代码
---@return global_statu_field
function class_global_statu_field.field_code(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_statu_field._data[1]=value
    return class_global_statu_field
end
    

---@param value string @字段名称
---@return global_statu_field
function class_global_statu_field.field_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_statu_field._data[2]=value
    return class_global_statu_field
end
    

---@param value int @排序权值
---@return global_statu_field
function class_global_statu_field.sort_order(value)
    
    class_global_statu_field._data[3]=value
    return class_global_statu_field
end
    

---@param value string @额外描述
---@return global_statu_field
function class_global_statu_field.ext_describ(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_statu_field._data[4]=value
    return class_global_statu_field
end
    

---@param value string @对应角色属性
---@return global_statu_field
function class_global_statu_field.role_statu_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_statu_field._data[5]=value
    return class_global_statu_field
end
    

---@param value int @百分比提升
---@return global_statu_field
function class_global_statu_field.is_pct(value)
    
    class_global_statu_field._data[6]=value
    return class_global_statu_field
end
    

---@param value int @反转属性
---@return global_statu_field
function class_global_statu_field.is_reverse(value)
    
    class_global_statu_field._data[7]=value
    return class_global_statu_field
end
    

 
---@class global_talent
local class_global_talent={ }
---@private
class_global_talent._header={ "天赋ID","显示名称","类型","效果","描述","前置天赋","互斥天赋","图标","边框","树形图坐标","TAG","备注" }

classTable.global_talent=class_global_talent

---@param sheetName string
function Reset_global_talent(sheetName)
    ---@private
    class_global_talent._exceldata={ class_global_talent._header }
    ---@private
    class_global_talent._sheetName=sheetName
    table.insert(excels,{ class_global_talent._exceldata,sheetName, "global_talent" })
end


---@return global_talent
function global_talent()
    local data={ "","","","","","","","","","","","" }
    ---@private
    class_global_talent._data=data
    table.insert(class_global_talent._exceldata,data)
    return class_global_talent
end
    

---@param value string @天赋ID
---@return global_talent
function class_global_talent.talent_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_talent._data[1]=value
    return class_global_talent
end
    

---@param value string @显示名称
---@return global_talent
function class_global_talent.talent_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_talent._data[2]=value
    return class_global_talent
end
    
---* User:
---* -1为空白点
---* 0为普通天赋
---* 1为唯一天赋
---* 2为唯一可激活天赋
---@param value int @类型
---@return global_talent
function class_global_talent.talent_type(value)
    
    class_global_talent._data[3]=value
    return class_global_talent
end
    

---@param value string @效果
---@return global_talent
function class_global_talent.talent_effect(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_talent._data[4]=value
    return class_global_talent
end
    

---@param value string @描述
---@return global_talent
function class_global_talent.talent_desc(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_talent._data[5]=value
    return class_global_talent
end
    

---@param value string @前置天赋
---@return global_talent
function class_global_talent.pre_talents(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_talent._data[6]=value
    return class_global_talent
end
    

---@param value string @互斥天赋
---@return global_talent
function class_global_talent.mutex_talents(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_talent._data[7]=value
    return class_global_talent
end
    

---@param value string @图标
---@return global_talent
function class_global_talent.talent_icon(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_talent._data[8]=value
    return class_global_talent
end
    

---@param value string @边框
---@return global_talent
function class_global_talent.talent_frame(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_talent._data[9]=value
    return class_global_talent
end
    

---@param value string @树形图坐标
---@return global_talent
function class_global_talent.talent_pos(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_talent._data[10]=value
    return class_global_talent
end
    

---@param value string @TAG
---@return global_talent
function class_global_talent.talent_tag(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_talent._data[11]=value
    return class_global_talent
end
    

---@param value string @备注
---@return global_talent
function class_global_talent.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_talent._data[12]=value
    return class_global_talent
end
    

 
---@class global_loot
local class_global_loot={ }
---@private
class_global_loot._header={ "掉落ID","说明","概率权值","参与掉落","自","至","Tag1","Tag2","Tag3","目标物品表" }

classTable.global_loot=class_global_loot

---@param sheetName string
function Reset_global_loot(sheetName)
    ---@private
    class_global_loot._exceldata={ class_global_loot._header }
    ---@private
    class_global_loot._sheetName=sheetName
    table.insert(excels,{ class_global_loot._exceldata,sheetName, "global_loot" })
end


---@return global_loot
function global_loot()
    local data={ "","","","","","","","","","" }
    ---@private
    class_global_loot._data=data
    table.insert(class_global_loot._exceldata,data)
    return class_global_loot
end
    

---@param value string @掉落ID
---@return global_loot
function class_global_loot.loot_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_loot._data[1]=value
    return class_global_loot
end
    

---@param value string @说明
---@return global_loot
function class_global_loot.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_loot._data[2]=value
    return class_global_loot
end
    

---@param value float @概率权值
---@return global_loot
function class_global_loot.prob_weight(value)
    
    class_global_loot._data[3]=value
    return class_global_loot
end
    
---* 是否参与掉落查询（0否1是），当不参与掉落查询时只能通过指定ID方式进行获取
---* 
---@param value int @参与掉落
---@return global_loot
function class_global_loot.in_querylist(value)
    
    class_global_loot._data[4]=value
    return class_global_loot
end
    
---* 查询的起始等级
---@param value int @自
---@return global_loot
function class_global_loot.from_lv(value)
    
    class_global_loot._data[5]=value
    return class_global_loot
end
    
---* 查询的终止等级
---* 
---* 
---@param value int @至
---@return global_loot
function class_global_loot.to_lv(value)
    
    class_global_loot._data[6]=value
    return class_global_loot
end
    

---@param value string @Tag1
---@return global_loot
function class_global_loot.query_tag1(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_loot._data[7]=value
    return class_global_loot
end
    

---@param value string @Tag2
---@return global_loot
function class_global_loot.query_tag2(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_loot._data[8]=value
    return class_global_loot
end
    

---@param value string @Tag3
---@return global_loot
function class_global_loot.query_tag3(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_loot._data[9]=value
    return class_global_loot
end
    
---* 掉落结果:
---* 格式如下：
---* 抽取概率权值1:掉落概率1a,物品ID1a,最小数,最大数,...[参数表1a]|掉落概率1b,物品ID1b,最小数,最大数,...[参数表1b]|...
---* 抽取概率权值2:掉落概率2a,物品ID2a,最小数,最大数,...[参数表2a]|掉落概率2b,物品ID2b,最小数,最大数,...[参数表2b]|...
---* ......
---* 
---* 抽取算法为：抽取概率权值/抽取概率权值总数
---@param value string @目标物品表
---@return global_loot
function class_global_loot.loot_items(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_global_loot._data[10]=value
    return class_global_loot
end
    

 
---@class role_template
local class_role_template={ }
---@private
class_role_template._header={ "人物ID","显示名称","类型","人物标记","可否招募","不可离队","男女","初始等级","武器","模型组","星级","初始属性","技能表","升级技能页","初始装备","初始名望","初始活跃","人物形象","所属势力","忠诚度","功勋值","初始位置","招募价格","在野活动范围","对话","指点","委托","TAG","关系影响因子","备注" }

classTable.role_template=class_role_template

---@param sheetName string
function Reset_role_template(sheetName)
    ---@private
    class_role_template._exceldata={ class_role_template._header }
    ---@private
    class_role_template._sheetName=sheetName
    table.insert(excels,{ class_role_template._exceldata,sheetName, "role_template" })
end


---@return role_template
function role_template()
    local data={ "","","","","","","","","","","","","","","","","","","","","","","","","","","","","","" }
    ---@private
    class_role_template._data=data
    table.insert(class_role_template._exceldata,data)
    return class_role_template
end
    

---@param value string @人物ID
---@return role_template
function class_role_template.role_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[1]=value
    return class_role_template
end
    

---@param value string @显示名称
---@return role_template
function class_role_template.display_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[2]=value
    return class_role_template
end
    
---* 可支持的人物类型有:
---* NPC：游戏中的NPC
---* PLAYER：玩家
---* CHAR：其他角色
---@param value string @类型
---@return role_template
function class_role_template.role_type(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[3]=value
    return class_role_template
end
    

---@param value string @人物标记
---@return role_template
function class_role_template.role_tag(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[4]=value
    return class_role_template
end
    
---* Administrator:
---* 0：不可招募
---* 1：可招募
---* -1：不可招募，但会跟可招募角色一样被不断调整出现位置
---@param value int @可否招募
---@return role_template
function class_role_template.is_recruit(value)
    
    class_role_template._data[5]=value
    return class_role_template
end
    
---* cg:
---* 是否可以离开主角队伍
---*     
---@param value int @不可离队
---@return role_template
function class_role_template.can_not_leave(value)
    
    class_role_template._data[6]=value
    return class_role_template
end
    

---@param value int @男女
---@return role_template
function class_role_template.is_female(value)
    
    class_role_template._data[7]=value
    return class_role_template
end
    

---@param value int @初始等级
---@return role_template
function class_role_template.def_level(value)
    
    class_role_template._data[8]=value
    return class_role_template
end
    
---* 0：拳套
---* 1：剑
---* 2：刀
---* 3：锤
---* 4：长杆武器（枪/戟）
---* 5：持盾武器
---* 6：双手武器（双手剑/斧）
---* 7：弓类
---* 8：暗器类
---* 9：琴类
---* 
---* 
---@param value int @武器
---@return role_template
function class_role_template.use_weapon(value)
    
    class_role_template._data[9]=value
    return class_role_template
end
    
---* 指定角色的模型:
---* 如非特殊模型时留空
---@param value string @模型组
---@return role_template
function class_role_template.model_group(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[10]=value
    return class_role_template
end
    

---@param value int @星级
---@return role_template
function class_role_template.star(value)
    
    class_role_template._data[11]=value
    return class_role_template
end
    

---@param value string @初始属性
---@return role_template
function class_role_template.init_statu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[12]=value
    return class_role_template
end
    

---@param value string @技能表
---@return role_template
function class_role_template.init_skills(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[13]=value
    return class_role_template
end
    
---* 多个技能页之间以
---* “,”分隔
---@param value string @升级技能页
---@return role_template
function class_role_template.skill_pages(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[14]=value
    return class_role_template
end
    

---@param value string @初始装备
---@return role_template
function class_role_template.init_equips(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[15]=value
    return class_role_template
end
    

---@param value int @初始名望
---@return role_template
function class_role_template.init_fame(value)
    
    class_role_template._data[16]=value
    return class_role_template
end
    
---* 默认初始的活跃状态:
---* 0：活跃
---* -1：不活跃
---@param value int @初始活跃
---@return role_template
function class_role_template.init_active_state(value)
    
    class_role_template._data[17]=value
    return class_role_template
end
    

---@param value string @人物形象
---@return role_template
function class_role_template.role_img(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[18]=value
    return class_role_template
end
    
---* 人物初始所属的势力ID:
---* 
---@param value string @所属势力
---@return role_template
function class_role_template.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[30]=value
    return class_role_template
end
    
---* 人物在所属阵营的初始忠诚度:
---* 0~100
---* -1为锁定忠诚度，表示忠诚度不受游戏过程影响
---* 
---@param value int @忠诚度
---@return role_template
function class_role_template.init_loyal(value)
    
    class_role_template._data[20]=value
    return class_role_template
end
    

---@param value int @功勋值
---@return role_template
function class_role_template.init_exploit(value)
    
    class_role_template._data[21]=value
    return class_role_template
end
    

---@param value string @初始位置
---@return role_template
function class_role_template.init_pos(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[22]=value
    return class_role_template
end
    
---* Administrator:
---* 对于招募方式为Resource的：
---* 材料1,1级所需数目,20级所需数目
---* 材料2,1级所需数目,20级所需数目
---* 材料3......
---* 
---* 其他招募方式都用触发器实现
---@param value string @招募价格
---@return role_template
function class_role_template.recruit_cost_val(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[23]=value
    return class_role_template
end
    
---* 可招募型人物在在野时可能出现的地点:
---* 为空时可在地图任意有酒馆类建筑的地点出现
---* 否则为地点列表，如 地点1,地点2....
---* 注：人物在野时出现必须满足下列条件：
---* 人物状态必须为在野，人物可招募类型必须为可招募，目标地点必须存在类型为“酒馆”的建筑
---@param value string @在野活动范围
---@return role_template
function class_role_template.showup_area(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[24]=value
    return class_role_template
end
    

---@param value string @对话
---@return role_template
function class_role_template.wordsStr(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[25]=value
    return class_role_template
end
    
---* Administrator:
---* 如果没有特殊指定，默认需要对方超过自身1.5倍的技能等级才能被指点。指点每次获得的经验值取决于双方的技能差。
---@param value string @指点
---@return role_template
function class_role_template.learn_list(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[26]=value
    return class_role_template
end
    
---* Administrator:
---* 格式：可接受委托的条件#委托执行的脚本
---* 多个委托的话会随机选择，用回车分割
---@param value string @委托
---@return role_template
function class_role_template.quest(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[27]=value
    return class_role_template
end
    

---@param value string @TAG
---@return role_template
function class_role_template.tagValue(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[28]=value
    return class_role_template
end
    

---@param value string @关系影响因子
---@return role_template
function class_role_template.relation_factor(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[29]=value
    return class_role_template
end
    

---@param value string @备注
---@return role_template
function class_role_template.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_role_template._data[30]=value
    return class_role_template
end
    

 
---@class character
local class_character={ }
---@private
class_character._header={ "ID","长","宽","X","Y","小头像" }

classTable.character=class_character

---@param sheetName string
function Reset_character(sheetName)
    ---@private
    class_character._exceldata={ class_character._header }
    ---@private
    class_character._sheetName=sheetName
    table.insert(excels,{ class_character._exceldata,sheetName, "character" })
end


---@return character
function character()
    local data={ "","","","","","" }
    ---@private
    class_character._data=data
    table.insert(class_character._exceldata,data)
    return class_character
end
    

---@param value string @ID
---@return character
function class_character.id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_character._data[1]=value
    return class_character
end
    

---@param value float @长
---@return character
function class_character.w(value)
    
    class_character._data[2]=value
    return class_character
end
    

---@param value float @宽
---@return character
function class_character.h(value)
    
    class_character._data[3]=value
    return class_character
end
    

---@param value float @X
---@return character
function class_character.x(value)
    
    class_character._data[4]=value
    return class_character
end
    

---@param value float @Y
---@return character
function class_character.y(value)
    
    class_character._data[5]=value
    return class_character
end
    

---@param value string @小头像
---@return character
function class_character.minihead(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_character._data[6]=value
    return class_character
end
    

 
---@class quest
local class_quest={ }
---@private
class_quest._header={ "任务ID","覆盖任务","显示名称","类型","子类型","命令随机池","任务描述","任务子项","时限","任务开始执行脚本","任务奖励","超时惩罚","完成追踪","系列名","前置条件","接收目标","完成目标","到时间自动领奖","奖励脚本","超时脚本","可打听选项" }

classTable.quest=class_quest

---@param sheetName string
function Reset_quest(sheetName)
    ---@private
    class_quest._exceldata={ class_quest._header }
    ---@private
    class_quest._sheetName=sheetName
    table.insert(excels,{ class_quest._exceldata,sheetName, "quest" })
end


---@return quest
function quest()
    local data={ "","","","","","","","","","","","","","","","","","","","","" }
    ---@private
    class_quest._data=data
    table.insert(class_quest._exceldata,data)
    return class_quest
end
    

---@param value string @任务ID
---@return quest
function class_quest.quest_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest._data[1]=value
    return class_quest
end
    
---* 覆盖任务:
---* 当此项不为空时领取次任务会覆盖掉该项对应的任务。
---@param value string @覆盖任务
---@return quest
function class_quest.cover_quest(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest._data[2]=value
    return class_quest
end
    

---@param value string @显示名称
---@return quest
function class_quest.display_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest._data[3]=value
    return class_quest
end
    
---* 类型:
---* 0：支线任务
---* 1：主线任务
---* 2：委托（sourceID为人物，一次只能接一个委托）
---* 3：工作（sourceID为地点）
---* 9：命令
---@param value string @类型
---@return quest
function class_quest.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest._data[6]=value
    return class_quest
end
    
---* user:
---* 当类型为2或者9时，子类型：
---* 
---* 1：贸易
---* 2：招募
---* 3：攻占，在此情况下第一个参数固定为攻占地点ID 【委托模式下不可用，仅命令模式可用】
---* 4：比武，在此情况下第一个参数固定为比武地点ID
---* 5：一般收集
---* 11:木材收集
---* 
---@param value string @子类型
---@return quest
function class_quest.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest._data[6]=value
    return class_quest
end
    

---@param value string @命令随机池
---@return quest
function class_quest.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest._data[6]=value
    return class_quest
end
    

---@param value string @任务描述
---@return quest
function class_quest.quest_describ(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest._data[7]=value
    return class_quest
end
    
---* 任务子项格式说明:
---* 子项1类型#描述文字#数目#绑定目标#追踪位置
---* 子项2类型#描述文字#数目#绑定目标#追踪位置
---* ...
---* 子项N类型#描述文字#数目#绑定目标#追踪位置
---* 
---* 支持的子项类型及含义：
---* 0：被动子项（该子项不绑定目标，由脚本控制完成数量）
---* 1：消灭地图刷新目标（绑定大地图刷新单位ID）
---* 2：击败人物（绑定人物模板）
---* 3：击败兵种单位（绑定兵种单位ID）
---* 4：收集物品（绑定物品ID）
---* 5：赢得指定战斗胜利(绑定战斗ID)
---* 6：攻占地点（绑定地点ID）
---* 7：招募兵种（绑定兵种ID，多个兵种ID直接用|分隔，表示或者的关系
---* 
---* 
---* 注意：此处的表达式将在任务存续过程中每次读取时被重新解析
---@param value string @任务子项
---@return quest
function class_quest.quest_target(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest._data[8]=value
    return class_quest
end
    

---@param value int @时限
---@return quest
function class_quest.day_limit(value)
    
    class_quest._data[9]=value
    return class_quest
end
    

---@param value string @任务开始执行脚本
---@return quest
function class_quest.quest_start_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest._data[10]=value
    return class_quest
end
    

---@param value string @任务奖励
---@return quest
function class_quest.reward_list(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest._data[11]=value
    return class_quest
end
    

---@param value string @超时惩罚
---@return quest
function class_quest.overtime_punish_list(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest._data[12]=value
    return class_quest
end
    

---@param value string @完成追踪
---@return quest
function class_quest.loc_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest._data[13]=value
    return class_quest
end
    

---@param value string @系列名
---@return quest
function class_quest.quest_group(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest._data[14]=value
    return class_quest
end
    

---@param value string @前置条件
---@return quest
function class_quest.quest_condition(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest._data[15]=value
    return class_quest
end
    

---@param value string @接收目标
---@return quest
function class_quest.quest_creater(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest._data[16]=value
    return class_quest
end
    

---@param value string @完成目标
---@return quest
function class_quest.quest_finish(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest._data[17]=value
    return class_quest
end
    

---@param value int @到时间自动领奖
---@return quest
function class_quest.auto_reward(value)
    
    class_quest._data[18]=value
    return class_quest
end
    

---@param value string @奖励脚本
---@return quest
function class_quest.reward_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest._data[19]=value
    return class_quest
end
    

---@param value string @超时脚本
---@return quest
function class_quest.overtime_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest._data[20]=value
    return class_quest
end
    

---@param value string @可打听选项
---@return quest
function class_quest.quest_ask_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest._data[21]=value
    return class_quest
end
    

 
---@class camp_buff
local class_camp_buff={ }
---@private
class_camp_buff._header={ "ID","BUFF名称","分类","BUFF描述","BUFF图标","默认持续时间","BUFF效果" }

classTable.camp_buff=class_camp_buff

---@param sheetName string
function Reset_camp_buff(sheetName)
    ---@private
    class_camp_buff._exceldata={ class_camp_buff._header }
    ---@private
    class_camp_buff._sheetName=sheetName
    table.insert(excels,{ class_camp_buff._exceldata,sheetName, "camp_buff" })
end


---@return camp_buff
function camp_buff()
    local data={ "","","","","","","" }
    ---@private
    class_camp_buff._data=data
    table.insert(class_camp_buff._exceldata,data)
    return class_camp_buff
end
    

---@param value string @ID
---@return camp_buff
function class_camp_buff.buff_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_camp_buff._data[1]=value
    return class_camp_buff
end
    

---@param value string @BUFF名称
---@return camp_buff
function class_camp_buff.buff_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_camp_buff._data[2]=value
    return class_camp_buff
end
    

---@param value string @分类
---@return camp_buff
function class_camp_buff.buff_class(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_camp_buff._data[3]=value
    return class_camp_buff
end
    

---@param value string @BUFF描述
---@return camp_buff
function class_camp_buff.buff_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_camp_buff._data[4]=value
    return class_camp_buff
end
    

---@param value string @BUFF图标
---@return camp_buff
function class_camp_buff.buff_icon(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_camp_buff._data[5]=value
    return class_camp_buff
end
    
---* 默认持续时间:
---* 当获得BUFF时未指定持续时间以改时间为准
---* 单位为天（可为小数）
---* 如0.5表示半天
---@param value float @默认持续时间
---@return camp_buff
function class_camp_buff.keep_time(value)
    
    class_camp_buff._data[6]=value
    return class_camp_buff
end
    
---* 每层BUFF对单位影响的效果:
---* 可通过[&expression&]嵌入动态效果值
---* 表达式中[%overlay%]为BUFF层数
---@param value string @BUFF效果
---@return camp_buff
function class_camp_buff.buff_add(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_camp_buff._data[7]=value
    return class_camp_buff
end
    

 
---@class camp_statu_field
local class_camp_statu_field={ }
---@private
class_camp_statu_field._header={ "代码","字段名称","排序权值","标识属性","隐藏","额外描述" }

classTable.camp_statu_field=class_camp_statu_field

---@param sheetName string
function Reset_camp_statu_field(sheetName)
    ---@private
    class_camp_statu_field._exceldata={ class_camp_statu_field._header }
    ---@private
    class_camp_statu_field._sheetName=sheetName
    table.insert(excels,{ class_camp_statu_field._exceldata,sheetName, "camp_statu_field" })
end


---@return camp_statu_field
function camp_statu_field()
    local data={ "","","","","","" }
    ---@private
    class_camp_statu_field._data=data
    table.insert(class_camp_statu_field._exceldata,data)
    return class_camp_statu_field
end
    

---@param value string @代码
---@return camp_statu_field
function class_camp_statu_field.field_code(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_camp_statu_field._data[1]=value
    return class_camp_statu_field
end
    

---@param value string @字段名称
---@return camp_statu_field
function class_camp_statu_field.field_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_camp_statu_field._data[2]=value
    return class_camp_statu_field
end
    

---@param value int @排序权值
---@return camp_statu_field
function class_camp_statu_field.sort_order(value)
    
    class_camp_statu_field._data[3]=value
    return class_camp_statu_field
end
    
---* 当此属性为1时表示该字段为一个标记字段，值只有0与非0
---* 
---@param value int @标识属性
---@return camp_statu_field
function class_camp_statu_field.is_markfield(value)
    
    class_camp_statu_field._data[4]=value
    return class_camp_statu_field
end
    

---@param value int @隐藏
---@return camp_statu_field
function class_camp_statu_field.is_hide(value)
    
    class_camp_statu_field._data[5]=value
    return class_camp_statu_field
end
    

---@param value string @额外描述
---@return camp_statu_field
function class_camp_statu_field.ext_describ(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_camp_statu_field._data[6]=value
    return class_camp_statu_field
end
    

 
---@class merchant
local class_merchant={ }
---@private
class_merchant._header={ "商店ID","商店名称","类型","绑定地点","绑定NPC","优先级","基础金额","最小收益","最大收益","出售比","回收比","固定售卖物品","条件开放商品表" }

classTable.merchant=class_merchant

---@param sheetName string
function Reset_merchant(sheetName)
    ---@private
    class_merchant._exceldata={ class_merchant._header }
    ---@private
    class_merchant._sheetName=sheetName
    table.insert(excels,{ class_merchant._exceldata,sheetName, "merchant" })
end


---@return merchant
function merchant()
    local data={ "","","","","","","","","","","","","" }
    ---@private
    class_merchant._data=data
    table.insert(class_merchant._exceldata,data)
    return class_merchant
end
    

---@param value string @商店ID
---@return merchant
function class_merchant.store_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_merchant._data[1]=value
    return class_merchant
end
    

---@param value string @商店名称
---@return merchant
function class_merchant.store_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_merchant._data[2]=value
    return class_merchant
end
    

---@param value string @类型
---@return merchant
function class_merchant.type(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_merchant._data[3]=value
    return class_merchant
end
    

---@param value string @绑定地点
---@return merchant
function class_merchant.bind_place(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_merchant._data[4]=value
    return class_merchant
end
    

---@param value string @绑定NPC
---@return merchant
function class_merchant.bind_npc(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_merchant._data[5]=value
    return class_merchant
end
    

---@param value int @优先级
---@return merchant
function class_merchant.priority(value)
    
    class_merchant._data[6]=value
    return class_merchant
end
    

---@param value int @基础金额
---@return merchant
function class_merchant.init_money(value)
    
    class_merchant._data[7]=value
    return class_merchant
end
    

---@param value int @最小收益
---@return merchant
function class_merchant.revenue_min(value)
    
    class_merchant._data[8]=value
    return class_merchant
end
    

---@param value int @最大收益
---@return merchant
function class_merchant.revenue_max(value)
    
    class_merchant._data[9]=value
    return class_merchant
end
    

---@param value float @出售比
---@return merchant
function class_merchant.sell_rate(value)
    
    class_merchant._data[10]=value
    return class_merchant
end
    

---@param value float @回收比
---@return merchant
function class_merchant.buy_rate(value)
    
    class_merchant._data[11]=value
    return class_merchant
end
    

---@param value string @固定售卖物品
---@return merchant
function class_merchant.goods_list(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_merchant._data[12]=value
    return class_merchant
end
    
---* 可通过设置条件来开放的商品表:
---* 条件表达式1:概率,物品ID1,最小数量,最大数量,词缀信息
---* 条件表达式2:概率,物品ID2,最小数量,最大数量,词缀信息
---* ...
---* 
---* 
---@param value string @条件开放商品表
---@return merchant
function class_merchant.ex_goods_list(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_merchant._data[13]=value
    return class_merchant
end
    

 
---@class sp_distribute
local class_sp_distribute={ }
---@private
class_sp_distribute._header={ "ID","备注","加点方案" }

classTable.sp_distribute=class_sp_distribute

---@param sheetName string
function Reset_sp_distribute(sheetName)
    ---@private
    class_sp_distribute._exceldata={ class_sp_distribute._header }
    ---@private
    class_sp_distribute._sheetName=sheetName
    table.insert(excels,{ class_sp_distribute._exceldata,sheetName, "sp_distribute" })
end


---@return sp_distribute
function sp_distribute()
    local data={ "","","" }
    ---@private
    class_sp_distribute._data=data
    table.insert(class_sp_distribute._exceldata,data)
    return class_sp_distribute
end
    

---@param value string @ID
---@return sp_distribute
function class_sp_distribute.template_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_sp_distribute._data[1]=value
    return class_sp_distribute
end
    

---@param value string @备注
---@return sp_distribute
function class_sp_distribute.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_sp_distribute._data[2]=value
    return class_sp_distribute
end
    

---@param value string @加点方案
---@return sp_distribute
function class_sp_distribute.distribute_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_sp_distribute._data[3]=value
    return class_sp_distribute
end
    

 
---@class sp_distribute_soldier
local class_sp_distribute_soldier={ }
---@private
class_sp_distribute_soldier._header={ "ID","属性设置","备份属性设置" }

classTable.sp_distribute_soldier=class_sp_distribute_soldier

---@param sheetName string
function Reset_sp_distribute_soldier(sheetName)
    ---@private
    class_sp_distribute_soldier._exceldata={ class_sp_distribute_soldier._header }
    ---@private
    class_sp_distribute_soldier._sheetName=sheetName
    table.insert(excels,{ class_sp_distribute_soldier._exceldata,sheetName, "sp_distribute_soldier" })
end


---@return sp_distribute_soldier
function sp_distribute_soldier()
    local data={ "","","" }
    ---@private
    class_sp_distribute_soldier._data=data
    table.insert(class_sp_distribute_soldier._exceldata,data)
    return class_sp_distribute_soldier
end
    

---@param value string @ID
---@return sp_distribute_soldier
function class_sp_distribute_soldier.template_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_sp_distribute_soldier._data[1]=value
    return class_sp_distribute_soldier
end
    

---@param value string @属性设置
---@return sp_distribute_soldier
function class_sp_distribute_soldier.distribute_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_sp_distribute_soldier._data[2]=value
    return class_sp_distribute_soldier
end
    

---@param value string @备份属性设置
---@return sp_distribute_soldier
function class_sp_distribute_soldier.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_sp_distribute_soldier._data[3]=value
    return class_sp_distribute_soldier
end
    

 
---@class building
local class_building={ }
---@private
class_building._header={ "设施ID","显示名称","类型","等级","位置类型","排序","地点效果","势力效果","招募信息","守城信息","绑定信息","显示条件","设施效果描述","地图外观","Tags","玩家主动移除条件","玩家主动移除条件提示","被摧毁执行脚本","被降级执行脚本" }

classTable.building=class_building

---@param sheetName string
function Reset_building(sheetName)
    ---@private
    class_building._exceldata={ class_building._header }
    ---@private
    class_building._sheetName=sheetName
    table.insert(excels,{ class_building._exceldata,sheetName, "building" })
end


---@return building
function building()
    local data={ "","","","","","","","","","","","","","","","","","","" }
    ---@private
    class_building._data=data
    table.insert(class_building._exceldata,data)
    return class_building
end
    

---@param value string @设施ID
---@return building
function class_building.building_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_building._data[1]=value
    return class_building
end
    

---@param value string @显示名称
---@return building
function class_building.display_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_building._data[2]=value
    return class_building
end
    

---@param value string @类型
---@return building
function class_building.building_type(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_building._data[3]=value
    return class_building
end
    

---@param value int @等级
---@return building
function class_building.level(value)
    
    class_building._data[4]=value
    return class_building
end
    
---* 设施的位置类型:
---* 0：地点内
---* 1：地点外
---@param value int @位置类型
---@return building
function class_building.pos_type(value)
    
    class_building._data[5]=value
    return class_building
end
    

---@param value int @排序
---@return building
function class_building.sort_index(value)
    
    class_building._data[6]=value
    return class_building
end
    
---* 该设施为当前地点提供的效果值。
---* 当前支持的地点效果有：
---* 加速训练：所有驻扎此处的单位通过训练增加经验值的百分比
---* 恢复：所有驻扎在此地的单位hp/mp恢复速度提高百分比
---@param value string @地点效果
---@return building
function class_building.add_stat(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_building._data[7]=value
    return class_building
end
    

---@param value string @势力效果
---@return building
function class_building.add_camp_stat(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_building._data[8]=value
    return class_building
end
    
---* realplayer:
---* 格式为：
---* 招募卡牌1,单次招募用时
---* 
---* 只能唯一一张卡牌
---@param value string @招募信息
---@return building
function class_building.recruit_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_building._data[9]=value
    return class_building
end
    

---@param value string @守城信息
---@return building
function class_building.guard_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_building._data[10]=value
    return class_building
end
    
---* 该设施中的固定NPC等信息:
---* 
---* 格式为：
---* 人物模板ID 1[*出现条件]
---* 人物模板ID 2[*出现条件]
---* ...
---* 人物模板ID N[*出现条件]
---@param value string @绑定信息
---@return building
function class_building.bind_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_building._data[11]=value
    return class_building
end
    

---@param value string @显示条件
---@return building
function class_building.display_cdt(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_building._data[12]=value
    return class_building
end
    

---@param value string @设施效果描述
---@return building
function class_building.discrib_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_building._data[13]=value
    return class_building
end
    

---@param value string @地图外观
---@return building
function class_building.map_model(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_building._data[14]=value
    return class_building
end
    

---@param value string @Tags
---@return building
function class_building.tags_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_building._data[15]=value
    return class_building
end
    

---@param value string @玩家主动移除条件
---@return building
function class_building.player_remove_require(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_building._data[16]=value
    return class_building
end
    

---@param value string @玩家主动移除条件提示
---@return building
function class_building.player_remove_require_hint(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_building._data[17]=value
    return class_building
end
    

---@param value string @被摧毁执行脚本
---@return building
function class_building.remove_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_building._data[18]=value
    return class_building
end
    

---@param value string @被降级执行脚本
---@return building
function class_building.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_building._data[19]=value
    return class_building
end
    

 
---@class RandomEventPojo
local class_RandomEventPojo={ }
---@private
class_RandomEventPojo._header={ "ID","类别","显示名称","描述","开放条件","触发指令模板","时间限制","自动结束提示" }

classTable.RandomEventPojo=class_RandomEventPojo

---@param sheetName string
function Reset_RandomEventPojo(sheetName)
    ---@private
    class_RandomEventPojo._exceldata={ class_RandomEventPojo._header }
    ---@private
    class_RandomEventPojo._sheetName=sheetName
    table.insert(excels,{ class_RandomEventPojo._exceldata,sheetName, "RandomEventPojo" })
end


---@return RandomEventPojo
function RandomEventPojo()
    local data={ "","","","","","","","" }
    ---@private
    class_RandomEventPojo._data=data
    table.insert(class_RandomEventPojo._exceldata,data)
    return class_RandomEventPojo
end
    

---@param value string @ID
---@return RandomEventPojo
function class_RandomEventPojo.id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_RandomEventPojo._data[1]=value
    return class_RandomEventPojo
end
    
---* Administrator:
---* 三种类别：
---* normal每天20%概率出一个
---* rare每天10%概率出一个
---* legend每天5%概率出一个
---@param value string @类别
---@return RandomEventPojo
function class_RandomEventPojo.type(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_RandomEventPojo._data[2]=value
    return class_RandomEventPojo
end
    

---@param value string @显示名称
---@return RandomEventPojo
function class_RandomEventPojo.name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_RandomEventPojo._data[3]=value
    return class_RandomEventPojo
end
    

---@param value string @描述
---@return RandomEventPojo
function class_RandomEventPojo.desc(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_RandomEventPojo._data[4]=value
    return class_RandomEventPojo
end
    

---@param value string @开放条件
---@return RandomEventPojo
function class_RandomEventPojo.condition(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_RandomEventPojo._data[5]=value
    return class_RandomEventPojo
end
    

---@param value string @触发指令模板
---@return RandomEventPojo
function class_RandomEventPojo.cmd_template(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_RandomEventPojo._data[6]=value
    return class_RandomEventPojo
end
    

---@param value int @时间限制
---@return RandomEventPojo
function class_RandomEventPojo.day_limit(value)
    
    class_RandomEventPojo._data[7]=value
    return class_RandomEventPojo
end
    

---@param value string @自动结束提示
---@return RandomEventPojo
function class_RandomEventPojo.auto_end_hint(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_RandomEventPojo._data[8]=value
    return class_RandomEventPojo
end
    

 
---@class RandomEventArgvs
local class_RandomEventArgvs={ }
---@private
class_RandomEventArgvs._header={ "随机事件ID","参数" }

classTable.RandomEventArgvs=class_RandomEventArgvs

---@param sheetName string
function Reset_RandomEventArgvs(sheetName)
    ---@private
    class_RandomEventArgvs._exceldata={ class_RandomEventArgvs._header }
    ---@private
    class_RandomEventArgvs._sheetName=sheetName
    table.insert(excels,{ class_RandomEventArgvs._exceldata,sheetName, "RandomEventArgvs" })
end


---@return RandomEventArgvs
function RandomEventArgvs()
    local data={ "","" }
    ---@private
    class_RandomEventArgvs._data=data
    table.insert(class_RandomEventArgvs._exceldata,data)
    return class_RandomEventArgvs
end
    

---@param value string @随机事件ID
---@return RandomEventArgvs
function class_RandomEventArgvs.id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_RandomEventArgvs._data[1]=value
    return class_RandomEventArgvs
end
    

---@param value string @参数
---@return RandomEventArgvs
function class_RandomEventArgvs.argvs(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_RandomEventArgvs._data[2]=value
    return class_RandomEventArgvs
end
    

 
---@class explore_point
local class_explore_point={ }
---@private
class_explore_point._header={ "事件ID","点数" }

classTable.explore_point=class_explore_point

---@param sheetName string
function Reset_explore_point(sheetName)
    ---@private
    class_explore_point._exceldata={ class_explore_point._header }
    ---@private
    class_explore_point._sheetName=sheetName
    table.insert(excels,{ class_explore_point._exceldata,sheetName, "explore_point" })
end


---@return explore_point
function explore_point()
    local data={ "","" }
    ---@private
    class_explore_point._data=data
    table.insert(class_explore_point._exceldata,data)
    return class_explore_point
end
    

---@param value string @事件ID
---@return explore_point
function class_explore_point.id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_explore_point._data[1]=value
    return class_explore_point
end
    

---@param value int @点数
---@return explore_point
function class_explore_point.point(value)
    
    class_explore_point._data[2]=value
    return class_explore_point
end
    

 
---@class local_product
local class_local_product={ }
---@private
class_local_product._header={ "ID","对应道具ID","出产半径","产量","TAG" }

classTable.local_product=class_local_product

---@param sheetName string
function Reset_local_product(sheetName)
    ---@private
    class_local_product._exceldata={ class_local_product._header }
    ---@private
    class_local_product._sheetName=sheetName
    table.insert(excels,{ class_local_product._exceldata,sheetName, "local_product" })
end


---@return local_product
function local_product()
    local data={ "","","","","" }
    ---@private
    class_local_product._data=data
    table.insert(class_local_product._exceldata,data)
    return class_local_product
end
    

---@param value string @ID
---@return local_product
function class_local_product.id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_local_product._data[1]=value
    return class_local_product
end
    

---@param value string @对应道具ID
---@return local_product
function class_local_product.item_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_local_product._data[2]=value
    return class_local_product
end
    

---@param value int @出产半径
---@return local_product
function class_local_product.product_range(value)
    
    class_local_product._data[3]=value
    return class_local_product
end
    

---@param value int @产量
---@return local_product
function class_local_product.production_limit(value)
    
    class_local_product._data[4]=value
    return class_local_product
end
    

---@param value string @TAG
---@return local_product
function class_local_product.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_local_product._data[5]=value
    return class_local_product
end
    

 
---@class definedbattle
local class_definedbattle={ }
---@private
class_definedbattle._header={ "战斗ID","模式","参战人物","参战单位","战场地图","是否攻城战","是否守方","限制条件","额外战利品","定制天气","备注" }

classTable.definedbattle=class_definedbattle

---@param sheetName string
function Reset_definedbattle(sheetName)
    ---@private
    class_definedbattle._exceldata={ class_definedbattle._header }
    ---@private
    class_definedbattle._sheetName=sheetName
    table.insert(excels,{ class_definedbattle._exceldata,sheetName, "definedbattle" })
end


---@return definedbattle
function definedbattle()
    local data={ "","","","","","","","","","","" }
    ---@private
    class_definedbattle._data=data
    table.insert(class_definedbattle._exceldata,data)
    return class_definedbattle
end
    

---@param value string @战斗ID
---@return definedbattle
function class_definedbattle.battle_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_definedbattle._data[1]=value
    return class_definedbattle
end
    
---* 可支持的战斗模式有:
---* STANDARD：标准模式
---* LIMITED：限制双方人数
---@param value string @模式
---@return definedbattle
function class_definedbattle.battle_mode(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_definedbattle._data[2]=value
    return class_definedbattle
end
    
---* 根据人物模板生成参战人物:
---* 人物1模板ID,等级|人物2模板ID,等级|....|人物N模板ID,等级
---@param value string @参战人物
---@return definedbattle
function class_definedbattle.enemy_roles(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_definedbattle._data[3]=value
    return class_definedbattle
end
    
---* 参战单位列表:
---* 单位1ID,武器,最小等级,最大等级,最小数量,最大数量|
---* 单位2ID,武器,最小等级,最大等级,最小数量,最大数量|
---* ...
---* 单位N的ID,武器,最小等级,最大等级,最小数量,最大数量
---* 
---* 卡牌化以后，此处的格式为：
---* 卡牌ID【可选：#卡牌等级】,卡牌数量|......
---@param value string @参战单位
---@return definedbattle
function class_definedbattle.enemy_units(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_definedbattle._data[4]=value
    return class_definedbattle
end
    
---* 当该字段为空时采用当前位置的默认战场地图
---* 该字段优先级大于绑定地点的地图优先级，只有该字段为空时才会以绑定地点的战场地图为准
---@param value string @战场地图
---@return definedbattle
function class_definedbattle.bg_map(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_definedbattle._data[5]=value
    return class_definedbattle
end
    

---@param value int @是否攻城战
---@return definedbattle
function class_definedbattle.is_seige_battle(value)
    
    class_definedbattle._data[6]=value
    return class_definedbattle
end
    

---@param value int @是否守方
---@return definedbattle
function class_definedbattle.is_side_b(value)
    
    class_definedbattle._data[7]=value
    return class_definedbattle
end
    
---* 仅在LIMITED模式下生效:
---* 
---@param value string @限制条件
---@return definedbattle
function class_definedbattle.limit_infos(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_definedbattle._data[8]=value
    return class_definedbattle
end
    

---@param value string @额外战利品
---@return definedbattle
function class_definedbattle.extra_captures(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_definedbattle._data[9]=value
    return class_definedbattle
end
    

---@param value string @定制天气
---@return definedbattle
function class_definedbattle.def_weather(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_definedbattle._data[10]=value
    return class_definedbattle
end
    

---@param value string @备注
---@return definedbattle
function class_definedbattle.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_definedbattle._data[11]=value
    return class_definedbattle
end
    

 
---@class text_explore
local class_text_explore={ }
---@private
class_text_explore._header={ "ID","地图类型","背景CG","背景音乐","探索成本","探索冷却","推荐等级","探索耗时","时间倍率","斗志消耗倍率","关卡长度","敌人密度","事件池","描述与指令","描述配图","战斗单位信息","战斗信息","掉落信息","备注","终点地图信息","终点地图假人" }

classTable.text_explore=class_text_explore

---@param sheetName string
function Reset_text_explore(sheetName)
    ---@private
    class_text_explore._exceldata={ class_text_explore._header }
    ---@private
    class_text_explore._sheetName=sheetName
    table.insert(excels,{ class_text_explore._exceldata,sheetName, "text_explore" })
end


---@return text_explore
function text_explore()
    local data={ "","","","","","","","","","","","","","","","","","","","","" }
    ---@private
    class_text_explore._data=data
    table.insert(class_text_explore._exceldata,data)
    return class_text_explore
end
    

---@param value string @ID
---@return text_explore
function class_text_explore.id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_text_explore._data[1]=value
    return class_text_explore
end
    
---* Administrator:
---* explore：英雄4人小组
---* single:英雄单人
---* team:军队
---@param value string @地图类型
---@return text_explore
function class_text_explore.mapType(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_text_explore._data[2]=value
    return class_text_explore
end
    

---@param value string @背景CG
---@return text_explore
function class_text_explore.backgroundCG(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_text_explore._data[3]=value
    return class_text_explore
end
    

---@param value string @背景音乐
---@return text_explore
function class_text_explore.bgm(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_text_explore._data[4]=value
    return class_text_explore
end
    

---@param value string @探索成本
---@return text_explore
function class_text_explore.cost(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_text_explore._data[5]=value
    return class_text_explore
end
    

---@param value int @探索冷却
---@return text_explore
function class_text_explore.cd(value)
    
    class_text_explore._data[6]=value
    return class_text_explore
end
    
---* Administrator:
---* -1表示没有推荐等级
---@param value int @推荐等级
---@return text_explore
function class_text_explore.lv(value)
    
    class_text_explore._data[7]=value
    return class_text_explore
end
    
---* Administrator:
---* 如果没有指定，将使用预制的通用文字。
---@param value float @探索耗时
---@return text_explore
function class_text_explore.timeCost(value)
    
    class_text_explore._data[8]=value
    return class_text_explore
end
    

---@param value float @时间倍率
---@return text_explore
function class_text_explore.timeRatio(value)
    
    class_text_explore._data[9]=value
    return class_text_explore
end
    

---@param value float @斗志消耗倍率
---@return text_explore
function class_text_explore.douzhiRatio(value)
    
    class_text_explore._data[10]=value
    return class_text_explore
end
    

---@param value int @关卡长度
---@return text_explore
function class_text_explore.blockCount(value)
    
    class_text_explore._data[11]=value
    return class_text_explore
end
    

---@param value int @敌人密度
---@return text_explore
function class_text_explore.enemyDensity(value)
    
    class_text_explore._data[12]=value
    return class_text_explore
end
    

---@param value string @事件池
---@return text_explore
function class_text_explore.eventPool(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_text_explore._data[13]=value
    return class_text_explore
end
    

---@param value string @描述与指令
---@return text_explore
function class_text_explore.cmdStr(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_text_explore._data[14]=value
    return class_text_explore
end
    

---@param value string @描述配图
---@return text_explore
function class_text_explore.cmdPic(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_text_explore._data[15]=value
    return class_text_explore
end
    

---@param value string @战斗单位信息
---@return text_explore
function class_text_explore.battleUnitInfo(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_text_explore._data[16]=value
    return class_text_explore
end
    

---@param value string @战斗信息
---@return text_explore
function class_text_explore.battleInfo(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_text_explore._data[17]=value
    return class_text_explore
end
    

---@param value string @掉落信息
---@return text_explore
function class_text_explore.lootInfo(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_text_explore._data[18]=value
    return class_text_explore
end
    

---@param value string @备注
---@return text_explore
function class_text_explore.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_text_explore._data[19]=value
    return class_text_explore
end
    

---@param value string @终点地图信息
---@return text_explore
function class_text_explore.bossMapInfo(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_text_explore._data[20]=value
    return class_text_explore
end
    

---@param value string @终点地图假人
---@return text_explore
function class_text_explore.bossMapDummy(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_text_explore._data[21]=value
    return class_text_explore
end
    

 
---@class text_explore_event
local class_text_explore_event={ }
---@private
class_text_explore_event._header={ "ID","名称","固定加入随机池","仅出现一次","不可略过","指令描述","指令","结果描述" }

classTable.text_explore_event=class_text_explore_event

---@param sheetName string
function Reset_text_explore_event(sheetName)
    ---@private
    class_text_explore_event._exceldata={ class_text_explore_event._header }
    ---@private
    class_text_explore_event._sheetName=sheetName
    table.insert(excels,{ class_text_explore_event._exceldata,sheetName, "text_explore_event" })
end


---@return text_explore_event
function text_explore_event()
    local data={ "","","","","","","","" }
    ---@private
    class_text_explore_event._data=data
    table.insert(class_text_explore_event._exceldata,data)
    return class_text_explore_event
end
    

---@param value string @ID
---@return text_explore_event
function class_text_explore_event.id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_text_explore_event._data[1]=value
    return class_text_explore_event
end
    

---@param value string @名称
---@return text_explore_event
function class_text_explore_event.showname(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_text_explore_event._data[2]=value
    return class_text_explore_event
end
    

---@param value int @固定加入随机池
---@return text_explore_event
function class_text_explore_event.inRandomPool(value)
    
    class_text_explore_event._data[3]=value
    return class_text_explore_event
end
    

---@param value int @仅出现一次
---@return text_explore_event
function class_text_explore_event.once(value)
    
    class_text_explore_event._data[4]=value
    return class_text_explore_event
end
    

---@param value int @不可略过
---@return text_explore_event
function class_text_explore_event.canNotSkip(value)
    
    class_text_explore_event._data[5]=value
    return class_text_explore_event
end
    

---@param value string @指令描述
---@return text_explore_event
function class_text_explore_event.cmdDesc(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_text_explore_event._data[6]=value
    return class_text_explore_event
end
    

---@param value string @指令
---@return text_explore_event
function class_text_explore_event.cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_text_explore_event._data[7]=value
    return class_text_explore_event
end
    

---@param value string @结果描述
---@return text_explore_event
function class_text_explore_event.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_text_explore_event._data[8]=value
    return class_text_explore_event
end
    

 
---@class armor_effect
local class_armor_effect={ }
---@private
class_armor_effect._header={ "攻击类型","攻击类型名称","轻甲伤害","中甲伤害","重甲伤害","轻骑兵甲伤害","重骑兵甲伤害","城甲伤害","攻击音效","命中音效","重击音效","格挡音效" }

classTable.armor_effect=class_armor_effect

---@param sheetName string
function Reset_armor_effect(sheetName)
    ---@private
    class_armor_effect._exceldata={ class_armor_effect._header }
    ---@private
    class_armor_effect._sheetName=sheetName
    table.insert(excels,{ class_armor_effect._exceldata,sheetName, "armor_effect" })
end


---@return armor_effect
function armor_effect()
    local data={ "","","","","","","","","","","","" }
    ---@private
    class_armor_effect._data=data
    table.insert(class_armor_effect._exceldata,data)
    return class_armor_effect
end
    

---@param value string @攻击类型
---@return armor_effect
function class_armor_effect.weapon_type(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_armor_effect._data[1]=value
    return class_armor_effect
end
    

---@param value string @攻击类型名称
---@return armor_effect
function class_armor_effect.attack_type_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_armor_effect._data[2]=value
    return class_armor_effect
end
    

---@param value int @轻甲伤害
---@return armor_effect
function class_armor_effect.against_light(value)
    
    class_armor_effect._data[3]=value
    return class_armor_effect
end
    

---@param value int @中甲伤害
---@return armor_effect
function class_armor_effect.against_middle(value)
    
    class_armor_effect._data[4]=value
    return class_armor_effect
end
    

---@param value int @重甲伤害
---@return armor_effect
function class_armor_effect.against_heavy(value)
    
    class_armor_effect._data[5]=value
    return class_armor_effect
end
    

---@param value int @轻骑兵甲伤害
---@return armor_effect
function class_armor_effect.against_lightKnight(value)
    
    class_armor_effect._data[6]=value
    return class_armor_effect
end
    

---@param value int @重骑兵甲伤害
---@return armor_effect
function class_armor_effect.against_heavyKnight(value)
    
    class_armor_effect._data[7]=value
    return class_armor_effect
end
    

---@param value int @城甲伤害
---@return armor_effect
function class_armor_effect.against_building(value)
    
    class_armor_effect._data[8]=value
    return class_armor_effect
end
    

---@param value string @攻击音效
---@return armor_effect
function class_armor_effect.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_armor_effect._data[12]=value
    return class_armor_effect
end
    

---@param value string @命中音效
---@return armor_effect
function class_armor_effect.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_armor_effect._data[12]=value
    return class_armor_effect
end
    

---@param value string @重击音效
---@return armor_effect
function class_armor_effect.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_armor_effect._data[12]=value
    return class_armor_effect
end
    

---@param value string @格挡音效
---@return armor_effect
function class_armor_effect.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_armor_effect._data[12]=value
    return class_armor_effect
end
    

 
---@class project_effect
local class_project_effect={ }
---@private
class_project_effect._header={ "项目ID","显示地点名称","显示项目名称","项目标签","项目类型","排序索引","持续天数","AI概率权值","所需资源","所需资源备份","可用条件","收益描述","每天执行脚本","绑定项目信息","达成执行脚本","开始执行脚本","取消执行脚本" }

classTable.project_effect=class_project_effect

---@param sheetName string
function Reset_project_effect(sheetName)
    ---@private
    class_project_effect._exceldata={ class_project_effect._header }
    ---@private
    class_project_effect._sheetName=sheetName
    table.insert(excels,{ class_project_effect._exceldata,sheetName, "project_effect" })
end


---@return project_effect
function project_effect()
    local data={ "","","","","","","","","","","","","","","","","" }
    ---@private
    class_project_effect._data=data
    table.insert(class_project_effect._exceldata,data)
    return class_project_effect
end
    

---@param value string @项目ID
---@return project_effect
function class_project_effect.id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_project_effect._data[1]=value
    return class_project_effect
end
    

---@param value string @显示地点名称
---@return project_effect
function class_project_effect.showPlaceName(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_project_effect._data[2]=value
    return class_project_effect
end
    

---@param value string @显示项目名称
---@return project_effect
function class_project_effect.showProjectName(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_project_effect._data[3]=value
    return class_project_effect
end
    

---@param value string @项目标签
---@return project_effect
function class_project_effect.projectTag(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_project_effect._data[4]=value
    return class_project_effect
end
    
---* 项目类型:
---* 0：个人项目（仅限英雄，项目指派英雄后每个项目参与者每日都会获得项目收益）
---* 1：团体项目（可安排英雄和小兵，并需要指定资源方可开始，项目进行时每日脚本，项目达成时执行达成脚本）
---@param value int @项目类型
---@return project_effect
function class_project_effect.project_type(value)
    
    class_project_effect._data[5]=value
    return class_project_effect
end
    

---@param value int @排序索引
---@return project_effect
function class_project_effect.sort_index(value)
    
    class_project_effect._data[6]=value
    return class_project_effect
end
    
---* Administrator:
---* -1表示可以无限持续下去，>0表示持续天数
---@param value int @持续天数
---@return project_effect
function class_project_effect.last_days(value)
    
    class_project_effect._data[7]=value
    return class_project_effect
end
    

---@param value int @AI概率权值
---@return project_effect
function class_project_effect.ai_weight(value)
    
    class_project_effect._data[8]=value
    return class_project_effect
end
    

---@param value string @所需资源
---@return project_effect
function class_project_effect.resource_require(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_project_effect._data[9]=value
    return class_project_effect
end
    

---@param value string @所需资源备份
---@return project_effect
function class_project_effect.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_project_effect._data[10]=value
    return class_project_effect
end
    
---* 此字段仅团体项目有效:
---* 当条件不成立时无法开始此项目
---@param value string @可用条件
---@return project_effect
function class_project_effect.enable_condition(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_project_effect._data[11]=value
    return class_project_effect
end
    

---@param value string @收益描述
---@return project_effect
function class_project_effect.profit_desc(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_project_effect._data[12]=value
    return class_project_effect
end
    
---* 个人项目：
---* 效果按人头计算，比如:该项目当前有2人在执行，每天就是执行2遍脚本
---* 
---* 集体项目：
---* 全体共享一份收益
---@param value string @每天执行脚本
---@return project_effect
function class_project_effect.daily_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_project_effect._data[13]=value
    return class_project_effect
end
    
---* 适用于建设类的团体项目，用来绑定建设进行中显示UI的
---* 输入格式为：
---* 建设类别#绑定目标信息
---* 默认0为不绑定
---* 
---* 绑定目标信息根据建设类别分为：
---* 1：建造建筑  信息格式为建筑ID
---* 2：地点  信息格式为地点模板ID
---* 3：升级建筑  信息格式为升级后的建筑ID
---@param value string @绑定项目信息
---@return project_effect
function class_project_effect.bind_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_project_effect._data[14]=value
    return class_project_effect
end
    

---@param value string @达成执行脚本
---@return project_effect
function class_project_effect.final_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_project_effect._data[15]=value
    return class_project_effect
end
    

---@param value string @开始执行脚本
---@return project_effect
function class_project_effect.start_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_project_effect._data[16]=value
    return class_project_effect
end
    

---@param value string @取消执行脚本
---@return project_effect
function class_project_effect.cancel_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_project_effect._data[17]=value
    return class_project_effect
end
    

 
---@class intval_config
local class_intval_config={ }
---@private
class_intval_config._header={ "选项ID","配置类型","显示名称","自定义整形字段","选项配置","说明信息","结果执行脚本" }

classTable.intval_config=class_intval_config

---@param sheetName string
function Reset_intval_config(sheetName)
    ---@private
    class_intval_config._exceldata={ class_intval_config._header }
    ---@private
    class_intval_config._sheetName=sheetName
    table.insert(excels,{ class_intval_config._exceldata,sheetName, "intval_config" })
end


---@return intval_config
function intval_config()
    local data={ "","","","","","","" }
    ---@private
    class_intval_config._data=data
    table.insert(class_intval_config._exceldata,data)
    return class_intval_config
end
    

---@param value string @选项ID
---@return intval_config
function class_intval_config.key(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_intval_config._data[1]=value
    return class_intval_config
end
    
---* 可用以下类型:
---* 0：创建游戏及游戏过程中
---* 1：仅游戏过程中可修改
---@param value int @配置类型
---@return intval_config
function class_intval_config.config_type(value)
    
    class_intval_config._data[2]=value
    return class_intval_config
end
    

---@param value string @显示名称
---@return intval_config
function class_intval_config.display_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_intval_config._data[3]=value
    return class_intval_config
end
    

---@param value string @自定义整形字段
---@return intval_config
function class_intval_config.intval_key(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_intval_config._data[4]=value
    return class_intval_config
end
    
---* 所有选项的枚举值以及选项显示名:
---* 格式为：
---* 值1#显示名称1
---* 值2#显示名称1
---* ...
---* 值N#显示名称N
---* 
---* 注意：选项值以“*”开头表示此选项为默认选中项。
---* 当选项值只有2个，并且都没有显示名称的时候，此选项会显示为开关选项
---@param value string @选项配置
---@return intval_config
function class_intval_config.option_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_intval_config._data[5]=value
    return class_intval_config
end
    

---@param value string @说明信息
---@return intval_config
function class_intval_config.desc_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_intval_config._data[6]=value
    return class_intval_config
end
    
---* 选项的结果值会保存在[%arg_int_val1%]环境变量中供查询
---* 
---@param value string @结果执行脚本
---@return intval_config
function class_intval_config.res_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_intval_config._data[7]=value
    return class_intval_config
end
    

 
---@class string
local class_string={ }
---@private
class_string._header={ "KEY","VALUE" }

classTable.string=class_string

---@param sheetName string
function Reset_string(sheetName)
    ---@private
    class_string._exceldata={ class_string._header }
    ---@private
    class_string._sheetName=sheetName
    table.insert(excels,{ class_string._exceldata,sheetName, "string" })
end


---@return string
function string()
    local data={ "","" }
    ---@private
    class_string._data=data
    table.insert(class_string._exceldata,data)
    return class_string
end
    

---@param value string @KEY
---@return string
function class_string.key(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_string._data[1]=value
    return class_string
end
    

---@param value string @VALUE
---@return string
function class_string.value(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_string._data[2]=value
    return class_string
end
    

 
---@class map_building_spot
local class_map_building_spot={ }
---@private
class_map_building_spot._header={ "建筑点类型","项目标签","描述","奖励效果" }

classTable.map_building_spot=class_map_building_spot

---@param sheetName string
function Reset_map_building_spot(sheetName)
    ---@private
    class_map_building_spot._exceldata={ class_map_building_spot._header }
    ---@private
    class_map_building_spot._sheetName=sheetName
    table.insert(excels,{ class_map_building_spot._exceldata,sheetName, "map_building_spot" })
end


---@return map_building_spot
function map_building_spot()
    local data={ "","","","" }
    ---@private
    class_map_building_spot._data=data
    table.insert(class_map_building_spot._exceldata,data)
    return class_map_building_spot
end
    

---@param value string @建筑点类型
---@return map_building_spot
function class_map_building_spot.SpotTypeID(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_map_building_spot._data[1]=value
    return class_map_building_spot
end
    

---@param value string @项目标签
---@return map_building_spot
function class_map_building_spot.ProjectTag(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_map_building_spot._data[2]=value
    return class_map_building_spot
end
    

---@param value string @描述
---@return map_building_spot
function class_map_building_spot.DescInfo(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_map_building_spot._data[3]=value
    return class_map_building_spot
end
    
---* 格式为： 
---* [条件表达式1]#条件描述1#奖励建筑效果属性1
---* [条件表达式2]#条件描述2#奖励建筑效果属性2
---* ...
---@param value string @奖励效果
---@return map_building_spot
function class_map_building_spot.BonusInfo(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_map_building_spot._data[4]=value
    return class_map_building_spot
end
    

 
---@class monster_emitter
local class_monster_emitter={ }
---@private
class_monster_emitter._header={ "发射器ID","刷出概率","野怪池","刷出检定时间点","刷出条件","消失检定时间点","消失条件","重刷锁定时间","守卫半径","强制追击","地图移动速度","地图移动信息","传闻距离","传闻内容" }

classTable.monster_emitter=class_monster_emitter

---@param sheetName string
function Reset_monster_emitter(sheetName)
    ---@private
    class_monster_emitter._exceldata={ class_monster_emitter._header }
    ---@private
    class_monster_emitter._sheetName=sheetName
    table.insert(excels,{ class_monster_emitter._exceldata,sheetName, "monster_emitter" })
end


---@return monster_emitter
function monster_emitter()
    local data={ "","","","","","","","","","","","","","" }
    ---@private
    class_monster_emitter._data=data
    table.insert(class_monster_emitter._exceldata,data)
    return class_monster_emitter
end
    

---@param value string @发射器ID
---@return monster_emitter
function class_monster_emitter.info_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_monster_emitter._data[1]=value
    return class_monster_emitter
end
    
---* 每天检定时间点只有满足该概率后才会继续执行刷出检定
---@param value float @刷出概率
---@return monster_emitter
function class_monster_emitter.spawn_prob(value)
    
    class_monster_emitter._data[2]=value
    return class_monster_emitter
end
    

---@param value string @野怪池
---@return monster_emitter
function class_monster_emitter.monster_infos(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_monster_emitter._data[3]=value
    return class_monster_emitter
end
    
---* 刷出野怪的检定时间点，以游戏内小时点为单位，当时间点小于0时为每个小时都检定一次
---@param value int @刷出检定时间点
---@return monster_emitter
function class_monster_emitter.spawn_point(value)
    
    class_monster_emitter._data[4]=value
    return class_monster_emitter
end
    

---@param value string @刷出条件
---@return monster_emitter
function class_monster_emitter.spawn_condition(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_monster_emitter._data[5]=value
    return class_monster_emitter
end
    
---* 刷出野怪的检定时间点，以游戏内小时点为单位，当时间点小于0时为每个小时都检定一次
---* 只有当消失条件不为空时才会进行消失检定
---@param value int @消失检定时间点
---@return monster_emitter
function class_monster_emitter.despawn_point(value)
    
    class_monster_emitter._data[6]=value
    return class_monster_emitter
end
    

---@param value string @消失条件
---@return monster_emitter
function class_monster_emitter.despawn_condition(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_monster_emitter._data[7]=value
    return class_monster_emitter
end
    
---* 击败或者条件检定使其消失后锁定的时间（游戏内天数）
---* 当达到锁定时间后方可继续刷新
---* -1（或小于0）为永远不会重刷
---@param value float @重刷锁定时间
---@return monster_emitter
function class_monster_emitter.lock_time(value)
    
    class_monster_emitter._data[8]=value
    return class_monster_emitter
end
    
---* 当该字段大于0时会追击比自己弱小的敌人
---* 
---@param value float @守卫半径
---@return monster_emitter
function class_monster_emitter.guard_radius(value)
    
    class_monster_emitter._data[9]=value
    return class_monster_emitter
end
    
---* 忽略战斗力比较进行追击(守卫半径须大于0)
---* 0：否
---* 1：是
---* 
---@param value int @强制追击
---@return monster_emitter
function class_monster_emitter.is_always_chase(value)
    
    class_monster_emitter._data[10]=value
    return class_monster_emitter
end
    

---@param value float @地图移动速度
---@return monster_emitter
function class_monster_emitter.move_speed(value)
    
    class_monster_emitter._data[11]=value
    return class_monster_emitter
end
    

---@param value string @地图移动信息
---@return monster_emitter
function class_monster_emitter.move_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_monster_emitter._data[12]=value
    return class_monster_emitter
end
    

---@param value float @传闻距离
---@return monster_emitter
function class_monster_emitter.news_radius(value)
    
    class_monster_emitter._data[13]=value
    return class_monster_emitter
end
    

---@param value string @传闻内容
---@return monster_emitter
function class_monster_emitter.news_content(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_monster_emitter._data[14]=value
    return class_monster_emitter
end
    

 
---@class monster_info
local class_monster_info={ }
---@private
class_monster_info._header={ "索引ID","显示名称","索引组","自","至","刷新时间","显示模型","隐藏群组","关系","遭遇脚本","结果脚本","参战人物信息","参战卡牌","战利品","所属势力","对话角色" }

classTable.monster_info=class_monster_info

---@param sheetName string
function Reset_monster_info(sheetName)
    ---@private
    class_monster_info._exceldata={ class_monster_info._header }
    ---@private
    class_monster_info._sheetName=sheetName
    table.insert(excels,{ class_monster_info._exceldata,sheetName, "monster_info" })
end


---@return monster_info
function monster_info()
    local data={ "","","","","","","","","","","","","","","","" }
    ---@private
    class_monster_info._data=data
    table.insert(class_monster_info._exceldata,data)
    return class_monster_info
end
    

---@param value string @索引ID
---@return monster_info
function class_monster_info.info_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_monster_info._data[1]=value
    return class_monster_info
end
    

---@param value string @显示名称
---@return monster_info
function class_monster_info.display_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_monster_info._data[2]=value
    return class_monster_info
end
    

---@param value string @索引组
---@return monster_info
function class_monster_info.index_group(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_monster_info._data[3]=value
    return class_monster_info
end
    

---@param value int @自
---@return monster_info
function class_monster_info.from_lv(value)
    
    class_monster_info._data[4]=value
    return class_monster_info
end
    

---@param value int @至
---@return monster_info
function class_monster_info.to_lv(value)
    
    class_monster_info._data[5]=value
    return class_monster_info
end
    

---@param value float @刷新时间
---@return monster_info
function class_monster_info.respawn_time(value)
    
    class_monster_info._data[6]=value
    return class_monster_info
end
    
---* 当该字段为空时按照当前队伍信息的实际队长模型信息进行显示，否则按照指定模型信息进行显示
---* 
---@param value string @显示模型
---@return monster_info
function class_monster_info.map_model(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_monster_info._data[7]=value
    return class_monster_info
end
    
---* 当隐藏群组为0时按照队伍真实数量比显示其他队伍成员模型，否则只显示队长模型
---* 
---@param value int @隐藏群组
---@return monster_info
function class_monster_info.is_hide_subunit(value)
    
    class_monster_info._data[8]=value
    return class_monster_info
end
    
---* 关系：
---* 0：中立
---* 1：敌对
---* 
---* 
---@param value int @关系
---@return monster_info
function class_monster_info.attitude(value)
    
    class_monster_info._data[9]=value
    return class_monster_info
end
    

---@param value string @遭遇脚本
---@return monster_info
function class_monster_info.encounter_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_monster_info._data[10]=value
    return class_monster_info
end
    

---@param value string @结果脚本
---@return monster_info
function class_monster_info.result_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_monster_info._data[11]=value
    return class_monster_info
end
    
---* 根据人物模板生成参战人物:
---* 人物1模板ID,等级|人物2模板ID,等级|....|人物N模板ID,等级
---@param value string @参战人物信息
---@return monster_info
function class_monster_info.roles_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_monster_info._data[12]=value
    return class_monster_info
end
    
---* realplayer:
---* 格式为：卡牌ID1,数量1，【可选：等级1】|卡牌ID2,数量2，【可选：等级2】|......
---@param value string @参战卡牌
---@return monster_info
function class_monster_info.cards_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_monster_info._data[13]=value
    return class_monster_info
end
    

---@param value string @战利品
---@return monster_info
function class_monster_info.rewards(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_monster_info._data[14]=value
    return class_monster_info
end
    

---@param value string @所属势力
---@return monster_info
function class_monster_info.camp_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_monster_info._data[15]=value
    return class_monster_info
end
    

---@param value string @对话角色
---@return monster_info
function class_monster_info.dialog_role_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_monster_info._data[16]=value
    return class_monster_info
end
    

 
---@class audio_event
local class_audio_event={ }
---@private
class_audio_event._header={ "索引ID","事件ID","对象参数1","对象参数2","对象参数3","优先级","是否关闭","调用列表","备注" }

classTable.audio_event=class_audio_event

---@param sheetName string
function Reset_audio_event(sheetName)
    ---@private
    class_audio_event._exceldata={ class_audio_event._header }
    ---@private
    class_audio_event._sheetName=sheetName
    table.insert(excels,{ class_audio_event._exceldata,sheetName, "audio_event" })
end


---@return audio_event
function audio_event()
    local data={ "","","","","","","","","" }
    ---@private
    class_audio_event._data=data
    table.insert(class_audio_event._exceldata,data)
    return class_audio_event
end
    

---@param value string @索引ID
---@return audio_event
function class_audio_event.key(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_event._data[1]=value
    return class_audio_event
end
    
---* 目前支持的主要事件：
---* atk_start：普通攻击开始(包括远程和近战)
---* atk_hit：普通攻击命中
---* skill_cast_start：技能开始吟唱
---* skill_cast_out：技能发出
---* block：格挡
---* 
---* 
---@param value string @事件ID
---@return audio_event
function class_audio_event.event_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_event._data[2]=value
    return class_audio_event
end
    
---* 不同的事件此参数对应的含义如下：
---* atk_start：攻击方武器攻击类型代码（见道具表枚举）
---* atk_hit：同上
---* skill_cast_start：技能分类代码（见技能表枚举）
---* skill_cast_out：同上
---* block：受击方武器攻击类型代码
---@param value string @对象参数1
---@return audio_event
function class_audio_event.event_tag1(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_event._data[3]=value
    return class_audio_event
end
    
---* 不同的事件此参数对应的含义如下：
---* atk_start：无参数
---* atk_hit：受击方的护甲类型代码（见道具表枚举）
---* skill_cast_start：技能所属技能系（见技能表枚举）
---* skill_cast_out：同上
---* skill_hit：同上
---* block：无
---* 
---@param value string @对象参数2
---@return audio_event
function class_audio_event.event_tag2(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_event._data[4]=value
    return class_audio_event
end
    
---* 不同的事件此参数对应的含义如下：
---* atk_start：无参数
---* atk_hit：是否重击（0否 1是）
---* skill_cast_start：技能ID
---* skill_cast_out：同上
---* block：无
---* 
---@param value string @对象参数3
---@return audio_event
function class_audio_event.event_tag3(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_event._data[5]=value
    return class_audio_event
end
    
---* 为一整数，优先级高的将会优先调用
---@param value int @优先级
---@return audio_event
function class_audio_event.priority(value)
    
    class_audio_event._data[6]=value
    return class_audio_event
end
    
---* 初始状态:
---* 0：正常
---* 1：已关闭
---@param value int @是否关闭
---@return audio_event
function class_audio_event.event_state(value)
    
    class_audio_event._data[7]=value
    return class_audio_event
end
    
---* 格式如下(随机播放其中一个):
---* 音效ID1,参数1,参数2...
---* 音效ID2,参数1,参数2...
---* 音效ID3,参数1,参数2...
---* ....
---@param value string @调用列表
---@return audio_event
function class_audio_event.audio_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_event._data[8]=value
    return class_audio_event
end
    

---@param value string @备注
---@return audio_event
function class_audio_event.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_event._data[9]=value
    return class_audio_event
end
    

 
---@class audio_category
local class_audio_category={ }
---@private
class_audio_category._header={ "分类ID","音量","重载对象","混声器","父类","备注" }

classTable.audio_category=class_audio_category

---@param sheetName string
function Reset_audio_category(sheetName)
    ---@private
    class_audio_category._exceldata={ class_audio_category._header }
    ---@private
    class_audio_category._sheetName=sheetName
    table.insert(excels,{ class_audio_category._exceldata,sheetName, "audio_category" })
end


---@return audio_category
function audio_category()
    local data={ "","","","","","" }
    ---@private
    class_audio_category._data=data
    table.insert(class_audio_category._exceldata,data)
    return class_audio_category
end
    

---@param value string @分类ID
---@return audio_category
function class_audio_category.categoryId(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_category._data[1]=value
    return class_audio_category
end
    

---@param value float @音量
---@return audio_category
function class_audio_category.volume(value)
    
    class_audio_category._data[2]=value
    return class_audio_category
end
    

---@param value string @重载对象
---@return audio_category
function class_audio_category.audioObjectOverride(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_category._data[3]=value
    return class_audio_category
end
    

---@param value string @混声器
---@return audio_category
function class_audio_category.audioMixerGroup(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_category._data[4]=value
    return class_audio_category
end
    

---@param value string @父类
---@return audio_category
function class_audio_category.parentCategory(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_category._data[5]=value
    return class_audio_category
end
    

---@param value string @备注
---@return audio_category
function class_audio_category.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_category._data[6]=value
    return class_audio_category
end
    

 
---@class audio_playlist
local class_audio_playlist={ }
---@private
class_audio_playlist._header={ "播放列表ID","调用列表","备注" }

classTable.audio_playlist=class_audio_playlist

---@param sheetName string
function Reset_audio_playlist(sheetName)
    ---@private
    class_audio_playlist._exceldata={ class_audio_playlist._header }
    ---@private
    class_audio_playlist._sheetName=sheetName
    table.insert(excels,{ class_audio_playlist._exceldata,sheetName, "audio_playlist" })
end


---@return audio_playlist
function audio_playlist()
    local data={ "","","" }
    ---@private
    class_audio_playlist._data=data
    table.insert(class_audio_playlist._exceldata,data)
    return class_audio_playlist
end
    

---@param value string @播放列表ID
---@return audio_playlist
function class_audio_playlist.playlistId(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_playlist._data[1]=value
    return class_audio_playlist
end
    
---* 音频项目的项目名：
---* 以“|”分隔的表示随机播放其中一个
---@param value string @调用列表
---@return audio_playlist
function class_audio_playlist.audioInfo(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_playlist._data[2]=value
    return class_audio_playlist
end
    

---@param value string @备注
---@return audio_playlist
function class_audio_playlist.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_playlist._data[3]=value
    return class_audio_playlist
end
    

 
---@class audio_sub_item
local class_audio_sub_item={ }
---@private
class_audio_sub_item._header={ "音频资源路径","所属分类","所属项目","音量","随机音量","音调","随机音调","延迟","随机延迟","权重","左右声道","淡入时长","淡出时长","开始时间","结束时间","是否禁用其他音源","是否随机开始时间","备注" }

classTable.audio_sub_item=class_audio_sub_item

---@param sheetName string
function Reset_audio_sub_item(sheetName)
    ---@private
    class_audio_sub_item._exceldata={ class_audio_sub_item._header }
    ---@private
    class_audio_sub_item._sheetName=sheetName
    table.insert(excels,{ class_audio_sub_item._exceldata,sheetName, "audio_sub_item" })
end


---@return audio_sub_item
function audio_sub_item()
    local data={ "","","","","","","","","","","","","","","","","","" }
    ---@private
    class_audio_sub_item._data=data
    table.insert(class_audio_sub_item._exceldata,data)
    return class_audio_sub_item
end
    

---@param value string @音频资源路径
---@return audio_sub_item
function class_audio_sub_item.audioClipPath(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_sub_item._data[1]=value
    return class_audio_sub_item
end
    

---@param value string @所属分类
---@return audio_sub_item
function class_audio_sub_item.category(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_sub_item._data[2]=value
    return class_audio_sub_item
end
    

---@param value string @所属项目
---@return audio_sub_item
function class_audio_sub_item.parentItemId(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_sub_item._data[3]=value
    return class_audio_sub_item
end
    
---* cheru:
---* 音量范围为0~1
---* 
---@param value float @音量
---@return audio_sub_item
function class_audio_sub_item.volume(value)
    
    class_audio_sub_item._data[4]=value
    return class_audio_sub_item
end
    
---* cheru:
---* 音量叠加随机音量为最终音量，最终音量范围为0~1
---* 
---@param value float @随机音量
---@return audio_sub_item
function class_audio_sub_item.randomVolume(value)
    
    class_audio_sub_item._data[5]=value
    return class_audio_sub_item
end
    

---@param value float @音调
---@return audio_sub_item
function class_audio_sub_item.pitchShift(value)
    
    class_audio_sub_item._data[6]=value
    return class_audio_sub_item
end
    

---@param value float @随机音调
---@return audio_sub_item
function class_audio_sub_item.randomPitch(value)
    
    class_audio_sub_item._data[7]=value
    return class_audio_sub_item
end
    
---* cheru:
---* 单位为秒
---* 
---* 
---@param value float @延迟
---@return audio_sub_item
function class_audio_sub_item.delay(value)
    
    class_audio_sub_item._data[8]=value
    return class_audio_sub_item
end
    
---* cheru:
---* 单位为秒
---* 
---@param value float @随机延迟
---@return audio_sub_item
function class_audio_sub_item.randomDelay(value)
    
    class_audio_sub_item._data[9]=value
    return class_audio_sub_item
end
    
---* cheru:
---* 在音频项目中所占的比重，影响随机播放的概率
---@param value float @权重
---@return audio_sub_item
function class_audio_sub_item.probability(value)
    
    class_audio_sub_item._data[10]=value
    return class_audio_sub_item
end
    
---* cheru:
---* 0为正常声道，负数为偏左声道，正数为偏右声道
---@param value float @左右声道
---@return audio_sub_item
function class_audio_sub_item.pan2d(value)
    
    class_audio_sub_item._data[11]=value
    return class_audio_sub_item
end
    
---* cheru:
---* 单位为秒
---@param value float @淡入时长
---@return audio_sub_item
function class_audio_sub_item.fadeIn(value)
    
    class_audio_sub_item._data[12]=value
    return class_audio_sub_item
end
    
---* cheru:
---* 单位为秒
---* 
---@param value float @淡出时长
---@return audio_sub_item
function class_audio_sub_item.fadeOut(value)
    
    class_audio_sub_item._data[13]=value
    return class_audio_sub_item
end
    
---* cheru:
---* 单位为秒
---* 
---@param value float @开始时间
---@return audio_sub_item
function class_audio_sub_item.startAt(value)
    
    class_audio_sub_item._data[14]=value
    return class_audio_sub_item
end
    
---* cheru:
---* 单位为秒
---* 
---@param value float @结束时间
---@return audio_sub_item
function class_audio_sub_item.stopAt(value)
    
    class_audio_sub_item._data[15]=value
    return class_audio_sub_item
end
    
---* cheru:
---* 0为不禁用（默认）
---* 1为禁用，播放时将关闭其他音源
---@param value int @是否禁用其他音源
---@return audio_sub_item
function class_audio_sub_item.disableOtherSubitems(value)
    
    class_audio_sub_item._data[16]=value
    return class_audio_sub_item
end
    
---* cheru:
---* 0为关闭（默认）
---* 1为开启
---@param value int @是否随机开始时间
---@return audio_sub_item
function class_audio_sub_item.randomStartPosition(value)
    
    class_audio_sub_item._data[17]=value
    return class_audio_sub_item
end
    

---@param value string @备注
---@return audio_sub_item
function class_audio_sub_item.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_sub_item._data[18]=value
    return class_audio_sub_item
end
    

 
---@class audio_assets
local class_audio_assets={ }
---@private
class_audio_assets._header={ "音频ID","类别","资源路径","循环" }

classTable.audio_assets=class_audio_assets

---@param sheetName string
function Reset_audio_assets(sheetName)
    ---@private
    class_audio_assets._exceldata={ class_audio_assets._header }
    ---@private
    class_audio_assets._sheetName=sheetName
    table.insert(excels,{ class_audio_assets._exceldata,sheetName, "audio_assets" })
end


---@return audio_assets
function audio_assets()
    local data={ "","","","" }
    ---@private
    class_audio_assets._data=data
    table.insert(class_audio_assets._exceldata,data)
    return class_audio_assets
end
    

---@param value string @音频ID
---@return audio_assets
function class_audio_assets.audioId(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_assets._data[1]=value
    return class_audio_assets
end
    

---@param value string @类别
---@return audio_assets
function class_audio_assets.category(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_assets._data[2]=value
    return class_audio_assets
end
    

---@param value string @资源路径
---@return audio_assets
function class_audio_assets.path(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_assets._data[3]=value
    return class_audio_assets
end
    

---@param value int @循环
---@return audio_assets
function class_audio_assets.loop(value)
    
    class_audio_assets._data[4]=value
    return class_audio_assets
end
    

 
---@class audio_item
local class_audio_item={ }
---@private
class_audio_item._header={ "项目ID","所属分类","音量","随机音量","音调","随机音调","延迟","随机延迟","连续播放最小时间间隔","最大同时播放数量","自动停止","循环模式","播放模式","备注" }

classTable.audio_item=class_audio_item

---@param sheetName string
function Reset_audio_item(sheetName)
    ---@private
    class_audio_item._exceldata={ class_audio_item._header }
    ---@private
    class_audio_item._sheetName=sheetName
    table.insert(excels,{ class_audio_item._exceldata,sheetName, "audio_item" })
end


---@return audio_item
function audio_item()
    local data={ "","","","","","","","","","","","","","" }
    ---@private
    class_audio_item._data=data
    table.insert(class_audio_item._exceldata,data)
    return class_audio_item
end
    

---@param value string @项目ID
---@return audio_item
function class_audio_item.itemId(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_item._data[1]=value
    return class_audio_item
end
    

---@param value string @所属分类
---@return audio_item
function class_audio_item.category(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_item._data[2]=value
    return class_audio_item
end
    
---* cheru:
---* 音量范围为0~1
---@param value float @音量
---@return audio_item
function class_audio_item.volume(value)
    
    class_audio_item._data[3]=value
    return class_audio_item
end
    
---* cheru:
---* 音量叠加随机音量为最终音量，最终音量范围为0~1
---@param value float @随机音量
---@return audio_item
function class_audio_item.randomVolume(value)
    
    class_audio_item._data[4]=value
    return class_audio_item
end
    

---@param value float @音调
---@return audio_item
function class_audio_item.pitchShift(value)
    
    class_audio_item._data[5]=value
    return class_audio_item
end
    

---@param value float @随机音调
---@return audio_item
function class_audio_item.randomPitch(value)
    
    class_audio_item._data[6]=value
    return class_audio_item
end
    
---* cheru:
---* 单位为秒
---* 
---@param value float @延迟
---@return audio_item
function class_audio_item.delay(value)
    
    class_audio_item._data[7]=value
    return class_audio_item
end
    
---* cheru:
---* 单位为秒
---@param value float @随机延迟
---@return audio_item
function class_audio_item.randomDelay(value)
    
    class_audio_item._data[8]=value
    return class_audio_item
end
    
---* cheru:
---* 两首曲目的间隔时间，单位为秒
---@param value float @连续播放最小时间间隔
---@return audio_item
function class_audio_item.minTimeBetweenPlay(value)
    
    class_audio_item._data[9]=value
    return class_audio_item
end
    
---* cheru:
---* 0表示不限制，大于0表示可同时播放的最大上限，同时播放数量过大可能会发生爆音的情况
---@param value int @最大同时播放数量
---@return audio_item
function class_audio_item.maxInstanceCount(value)
    
    class_audio_item._data[10]=value
    return class_audio_item
end
    
---* cheru:
---* 0表示切换场景时不会自动停止，1表示会自动停止，推荐设为1
---@param value int @自动停止
---@return audio_item
function class_audio_item.stopWhenSceneLoads(value)
    
    class_audio_item._data[11]=value
    return class_audio_item
end
    
---* cheru:
---* 0表示不循环
---* 1表示单曲循环
---* 2表示列表循环
---* 3不可用
---* 4表示按列表播放并循环最后一首
---@param value int @循环模式
---@return audio_item
function class_audio_item.loopMode(value)
    
    class_audio_item._data[12]=value
    return class_audio_item
end
    
---* cheru:
---* 0表示禁止重放
---* 1表示随机播放
---* 2表示随机播放但不重复
---* 3表示按顺序播放
---* 4表示按顺序播放（但随机一首开始）
---@param value int @播放模式
---@return audio_item
function class_audio_item.pickSubitemMode(value)
    
    class_audio_item._data[13]=value
    return class_audio_item
end
    

---@param value string @备注
---@return audio_item
function class_audio_item.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_audio_item._data[14]=value
    return class_audio_item
end
    

 
---@class preload_prefabs
local class_preload_prefabs={ }
---@private
class_preload_prefabs._header={ "索引ID","预制体路径","备注" }

classTable.preload_prefabs=class_preload_prefabs

---@param sheetName string
function Reset_preload_prefabs(sheetName)
    ---@private
    class_preload_prefabs._exceldata={ class_preload_prefabs._header }
    ---@private
    class_preload_prefabs._sheetName=sheetName
    table.insert(excels,{ class_preload_prefabs._exceldata,sheetName, "preload_prefabs" })
end


---@return preload_prefabs
function preload_prefabs()
    local data={ "","","" }
    ---@private
    class_preload_prefabs._data=data
    table.insert(class_preload_prefabs._exceldata,data)
    return class_preload_prefabs
end
    

---@param value string @索引ID
---@return preload_prefabs
function class_preload_prefabs.key(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_preload_prefabs._data[1]=value
    return class_preload_prefabs
end
    

---@param value string @预制体路径
---@return preload_prefabs
function class_preload_prefabs.path(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_preload_prefabs._data[2]=value
    return class_preload_prefabs
end
    

---@param value string @备注
---@return preload_prefabs
function class_preload_prefabs.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_preload_prefabs._data[3]=value
    return class_preload_prefabs
end
    

 
---@class battle_field
local class_battle_field={ }
---@private
class_battle_field._header={ "ID","备注名称","战场长度","战场宽度","镜头最大高度","层级信息","装饰物" }

classTable.battle_field=class_battle_field

---@param sheetName string
function Reset_battle_field(sheetName)
    ---@private
    class_battle_field._exceldata={ class_battle_field._header }
    ---@private
    class_battle_field._sheetName=sheetName
    table.insert(excels,{ class_battle_field._exceldata,sheetName, "battle_field" })
end


---@return battle_field
function battle_field()
    local data={ "","","","","","","" }
    ---@private
    class_battle_field._data=data
    table.insert(class_battle_field._exceldata,data)
    return class_battle_field
end
    

---@param value string @ID
---@return battle_field
function class_battle_field.bf_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battle_field._data[1]=value
    return class_battle_field
end
    

---@param value string @备注名称
---@return battle_field
function class_battle_field.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battle_field._data[2]=value
    return class_battle_field
end
    

---@param value float @战场长度
---@return battle_field
function class_battle_field.bf_width(value)
    
    class_battle_field._data[3]=value
    return class_battle_field
end
    

---@param value float @战场宽度
---@return battle_field
function class_battle_field.bf_height(value)
    
    class_battle_field._data[4]=value
    return class_battle_field
end
    

---@param value float @镜头最大高度
---@return battle_field
function class_battle_field.camera_height(value)
    
    class_battle_field._data[5]=value
    return class_battle_field
end
    
---* 层级信息:
---* 层名称,背景贴图,所在层(0:默认层 1:背景层 2:前景层),缩放比例,偏移x,偏移y,偏移z,X轴移动速率,Y轴移动速率
---@param value string @层级信息
---@return battle_field
function class_battle_field.layer_infos(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battle_field._data[6]=value
    return class_battle_field
end
    

---@param value string @装饰物
---@return battle_field
function class_battle_field.widget_infos(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battle_field._data[7]=value
    return class_battle_field
end
    

 
---@class buff_info
local class_buff_info={ }
---@private
class_buff_info._header={ "ID","BUFF名称","类型","BUFF描述","BUFF图标","默认持续时间","结算间隔","BUFF分类","叠加层数","BUFF特效","模型特效","BUFF效果","持续效果数值表达式","BUFF叠加时执行命令","BUFF移除时执行命令","衰减影响" }

classTable.buff_info=class_buff_info

---@param sheetName string
function Reset_buff_info(sheetName)
    ---@private
    class_buff_info._exceldata={ class_buff_info._header }
    ---@private
    class_buff_info._sheetName=sheetName
    table.insert(excels,{ class_buff_info._exceldata,sheetName, "buff_info" })
end


---@return buff_info
function buff_info()
    local data={ "","","","","","","","","","","","","","","","" }
    ---@private
    class_buff_info._data=data
    table.insert(class_buff_info._exceldata,data)
    return class_buff_info
end
    

---@param value string @ID
---@return buff_info
function class_buff_info.buff_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_buff_info._data[1]=value
    return class_buff_info
end
    

---@param value string @BUFF名称
---@return buff_info
function class_buff_info.buff_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_buff_info._data[2]=value
    return class_buff_info
end
    
---* BUFF类型:
---* 0：增益
---* 1：减益
---@param value int @类型
---@return buff_info
function class_buff_info.buff_type(value)
    
    class_buff_info._data[3]=value
    return class_buff_info
end
    

---@param value string @BUFF描述
---@return buff_info
function class_buff_info.buff_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_buff_info._data[4]=value
    return class_buff_info
end
    

---@param value string @BUFF图标
---@return buff_info
function class_buff_info.buff_icon(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_buff_info._data[5]=value
    return class_buff_info
end
    
---* 默认持续时间:
---* 当获得BUFF时未指定持续时间以改时间为准
---* 
---@param value float @默认持续时间
---@return buff_info
function class_buff_info.keep_time(value)
    
    class_buff_info._data[6]=value
    return class_buff_info
end
    

---@param value float @结算间隔
---@return buff_info
function class_buff_info.tick_time(value)
    
    class_buff_info._data[7]=value
    return class_buff_info
end
    
---* BUFF分类:
---* 0：属性改变
---* 1：定身
---* 2：昏迷
---* 4：减速
---* 5：DOT（持续伤害类）
---* 6：HOT（持续治疗类）
---* 7：失控
---@param value int @BUFF分类
---@return buff_info
function class_buff_info.buff_class(value)
    
    class_buff_info._data[8]=value
    return class_buff_info
end
    

---@param value int @叠加层数
---@return buff_info
function class_buff_info.buff_overlay(value)
    
    class_buff_info._data[9]=value
    return class_buff_info
end
    
---* 特效信息:
---* 特效对象名#特效位置#偏移（可选 X,Y,Z方向偏移)
---* 特效位置分为：
---* 0：默认位置
---* 1：脚下
---* 2：头顶
---* 3：效果层
---@param value string @BUFF特效
---@return buff_info
function class_buff_info.buff_effect(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_buff_info._data[10]=value
    return class_buff_info
end
    
---* BUFF持续期间开启模型的特效，输入时以”|”分隔，每种特效可附带参数，参数表以”,”分隔:
---* 目前支持的模型特效有：
---* AFTER_IMG,arg1:残影效果，模型运动时会产生残影，arg1为产生残影的持续时间（秒）
---@param value string @模型特效
---@return buff_info
function class_buff_info.model_eft(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_buff_info._data[11]=value
    return class_buff_info
end
    
---* 每层BUFF对单位影响的效果:
---* 可通过[&expression&]嵌入动态效果值
---* 表达式中[%overlay%]为BUFF层数
---@param value string @BUFF效果
---@return buff_info
function class_buff_info.buff_add(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_buff_info._data[12]=value
    return class_buff_info
end
    

---@param value string @持续效果数值表达式
---@return buff_info
function class_buff_info.val_formation(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_buff_info._data[13]=value
    return class_buff_info
end
    

---@param value string @BUFF叠加时执行命令
---@return buff_info
function class_buff_info.add_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_buff_info._data[14]=value
    return class_buff_info
end
    

---@param value string @BUFF移除时执行命令
---@return buff_info
function class_buff_info.end_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_buff_info._data[15]=value
    return class_buff_info
end
    
---* 受到BUFF时，根据指定衰减字段的值影响BUFF的持续时长
---* 输入格式为：
---* 指定衰减字段1,衰减数值(0-100)|指定衰减字段2,衰减数值(0-100)|...
---* 
---@param value string @衰减影响
---@return buff_info
function class_buff_info.weaken_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_buff_info._data[16]=value
    return class_buff_info
end
    

 
---@class battleevent
local class_battleevent={ }
---@private
class_battleevent._header={ "剧情事件ID","类型","命令内容","结果" }

classTable.battleevent=class_battleevent

---@param sheetName string
function Reset_battleevent(sheetName)
    ---@private
    class_battleevent._exceldata={ class_battleevent._header }
    ---@private
    class_battleevent._sheetName=sheetName
    table.insert(excels,{ class_battleevent._exceldata,sheetName, "battleevent" })
end


---@return battleevent
function battleevent()
    local data={ "","","","" }
    ---@private
    class_battleevent._data=data
    table.insert(class_battleevent._exceldata,data)
    return class_battleevent
end
    

---@param value string @剧情事件ID
---@return battleevent
function class_battleevent.key(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battleevent._data[1]=value
    return class_battleevent
end
    

---@param value string @类型
---@return battleevent
function class_battleevent.cmd_type(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battleevent._data[2]=value
    return class_battleevent
end
    

---@param value string @命令内容
---@return battleevent
function class_battleevent.cmd_lines(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battleevent._data[3]=value
    return class_battleevent
end
    

---@param value string @结果
---@return battleevent
function class_battleevent.result_line(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battleevent._data[4]=value
    return class_battleevent
end
    

 
---@class rolemodel
local class_rolemodel={ }
---@private
class_rolemodel._header={ "模型ID","动态模型","文件名","专用动作","适配性别","主角可选","模型半径","方向类型","模型高度","质量","悬浮高度","底座模型","无视碰撞","关闭移动特效","标准人形","音效字典","TAG","备注" }

classTable.rolemodel=class_rolemodel

---@param sheetName string
function Reset_rolemodel(sheetName)
    ---@private
    class_rolemodel._exceldata={ class_rolemodel._header }
    ---@private
    class_rolemodel._sheetName=sheetName
    table.insert(excels,{ class_rolemodel._exceldata,sheetName, "rolemodel" })
end


---@return rolemodel
function rolemodel()
    local data={ "","","","","","","","","","","","","","","","","","" }
    ---@private
    class_rolemodel._data=data
    table.insert(class_rolemodel._exceldata,data)
    return class_rolemodel
end
    

---@param value string @模型ID
---@return rolemodel
function class_rolemodel.model_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel._data[1]=value
    return class_rolemodel
end
    
---* 是否可根据装备生成外观:
---* 0：否
---* 1：是
---@param value int @动态模型
---@return rolemodel
function class_rolemodel.is_dynamic(value)
    
    class_rolemodel._data[2]=value
    return class_rolemodel
end
    

---@param value string @文件名
---@return rolemodel
function class_rolemodel.file_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel._data[3]=value
    return class_rolemodel
end
    
---* 当此列不为空时该模型只能使用指定的动作
---* 
---@param value string @专用动作
---@return rolemodel
function class_rolemodel.limit_act(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel._data[4]=value
    return class_rolemodel
end
    

---@param value int @适配性别
---@return rolemodel
function class_rolemodel.model_sex(value)
    
    class_rolemodel._data[5]=value
    return class_rolemodel
end
    

---@param value int @主角可选
---@return rolemodel
function class_rolemodel.enable_for_player(value)
    
    class_rolemodel._data[6]=value
    return class_rolemodel
end
    

---@param value float @模型半径
---@return rolemodel
function class_rolemodel.model_radius(value)
    
    class_rolemodel._data[7]=value
    return class_rolemodel
end
    
---* 方向类型:
---* 0：自由方向
---* 1：固定初始方向
---@param value int @方向类型
---@return rolemodel
function class_rolemodel.dir_type(value)
    
    class_rolemodel._data[8]=value
    return class_rolemodel
end
    

---@param value float @模型高度
---@return rolemodel
function class_rolemodel.model_height(value)
    
    class_rolemodel._data[9]=value
    return class_rolemodel
end
    

---@param value float @质量
---@return rolemodel
function class_rolemodel.model_mass(value)
    
    class_rolemodel._data[10]=value
    return class_rolemodel
end
    

---@param value float @悬浮高度
---@return rolemodel
function class_rolemodel.offset_z(value)
    
    class_rolemodel._data[11]=value
    return class_rolemodel
end
    

---@param value string @底座模型
---@return rolemodel
function class_rolemodel.fixed_partmodel(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel._data[12]=value
    return class_rolemodel
end
    

---@param value int @无视碰撞
---@return rolemodel
function class_rolemodel.ignore_collision(value)
    
    class_rolemodel._data[13]=value
    return class_rolemodel
end
    

---@param value int @关闭移动特效
---@return rolemodel
function class_rolemodel.close_move_effect(value)
    
    class_rolemodel._data[14]=value
    return class_rolemodel
end
    

---@param value int @标准人形
---@return rolemodel
function class_rolemodel.is_humanoid(value)
    
    class_rolemodel._data[15]=value
    return class_rolemodel
end
    
---* 音效字典格式为(后面重复的字段会覆盖前面的)：
---* key1=音效ID1
---* key2=音效ID2
---* ...
---* key N=音效ID n
---@param value string @音效字典
---@return rolemodel
function class_rolemodel.str_sound_dic(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel._data[16]=value
    return class_rolemodel
end
    
---* 用于扩展模型的额外信息字段:
---* map_fly_height：大地图上的飞行高度
---@param value string @TAG
---@return rolemodel
function class_rolemodel.tags_dic(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel._data[17]=value
    return class_rolemodel
end
    

---@param value string @备注
---@return rolemodel
function class_rolemodel.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel._data[18]=value
    return class_rolemodel
end
    

 
---@class rolemodel_act
local class_rolemodel_act={ }
---@private
class_rolemodel_act._header={ "动作ID","备注","文件名","飞行动作","动作类型","附加半径","跑走速度线","发射点偏移","受击动作","格挡动作","闪避动作","近战攻击动作表","远程攻击动作表","技能动作表","庆祝动作","死亡动作" }

classTable.rolemodel_act=class_rolemodel_act

---@param sheetName string
function Reset_rolemodel_act(sheetName)
    ---@private
    class_rolemodel_act._exceldata={ class_rolemodel_act._header }
    ---@private
    class_rolemodel_act._sheetName=sheetName
    table.insert(excels,{ class_rolemodel_act._exceldata,sheetName, "rolemodel_act" })
end


---@return rolemodel_act
function rolemodel_act()
    local data={ "","","","","","","","","","","","","","","","" }
    ---@private
    class_rolemodel_act._data=data
    table.insert(class_rolemodel_act._exceldata,data)
    return class_rolemodel_act
end
    

---@param value string @动作ID
---@return rolemodel_act
function class_rolemodel_act.act_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel_act._data[1]=value
    return class_rolemodel_act
end
    

---@param value string @备注
---@return rolemodel_act
function class_rolemodel_act.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel_act._data[2]=value
    return class_rolemodel_act
end
    

---@param value string @文件名
---@return rolemodel_act
function class_rolemodel_act.file_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel_act._data[3]=value
    return class_rolemodel_act
end
    

---@param value string @飞行动作
---@return rolemodel_act
function class_rolemodel_act.fly_act(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel_act._data[4]=value
    return class_rolemodel_act
end
    

---@param value int @动作类型
---@return rolemodel_act
function class_rolemodel_act.act_type(value)
    
    class_rolemodel_act._data[5]=value
    return class_rolemodel_act
end
    

---@param value float @附加半径
---@return rolemodel_act
function class_rolemodel_act.extra_radius(value)
    
    class_rolemodel_act._data[6]=value
    return class_rolemodel_act
end
    

---@param value float @跑走速度线
---@return rolemodel_act
function class_rolemodel_act.run_line(value)
    
    class_rolemodel_act._data[7]=value
    return class_rolemodel_act
end
    
---* 发射点的相对向量系数:
---* 格式为 x,y,z
---* X为相对于X方向与单位半径的系数 
---* Y为相对于Y方向与单位半径的系数
---* Z为相对于Z方向与单位高度的系数
---@param value string @发射点偏移
---@return rolemodel_act
function class_rolemodel_act.act_pos_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel_act._data[8]=value
    return class_rolemodel_act
end
    

---@param value string @受击动作
---@return rolemodel_act
function class_rolemodel_act.act_inj_src(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel_act._data[9]=value
    return class_rolemodel_act
end
    

---@param value string @格挡动作
---@return rolemodel_act
function class_rolemodel_act.act_block_src(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel_act._data[10]=value
    return class_rolemodel_act
end
    

---@param value string @闪避动作
---@return rolemodel_act
function class_rolemodel_act.act_dodge_src(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel_act._data[11]=value
    return class_rolemodel_act
end
    

---@param value string @近战攻击动作表
---@return rolemodel_act
function class_rolemodel_act.melee_atk_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel_act._data[12]=value
    return class_rolemodel_act
end
    
---* 远程动作表如为空则表示复制近战动作表信息
---* 
---@param value string @远程攻击动作表
---@return rolemodel_act
function class_rolemodel_act.remote_atk_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel_act._data[13]=value
    return class_rolemodel_act
end
    

---@param value string @技能动作表
---@return rolemodel_act
function class_rolemodel_act.act_list_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel_act._data[14]=value
    return class_rolemodel_act
end
    

---@param value string @庆祝动作
---@return rolemodel_act
function class_rolemodel_act.str_act_victory(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel_act._data[15]=value
    return class_rolemodel_act
end
    

---@param value string @死亡动作
---@return rolemodel_act
function class_rolemodel_act.str_act_deaddown(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_rolemodel_act._data[16]=value
    return class_rolemodel_act
end
    

 
---@class hit_effect
local class_hit_effect={ }
---@private
class_hit_effect._header={ "受击特效ID","特效资源文件","音效ID","备注" }

classTable.hit_effect=class_hit_effect

---@param sheetName string
function Reset_hit_effect(sheetName)
    ---@private
    class_hit_effect._exceldata={ class_hit_effect._header }
    ---@private
    class_hit_effect._sheetName=sheetName
    table.insert(excels,{ class_hit_effect._exceldata,sheetName, "hit_effect" })
end


---@return hit_effect
function hit_effect()
    local data={ "","","","" }
    ---@private
    class_hit_effect._data=data
    table.insert(class_hit_effect._exceldata,data)
    return class_hit_effect
end
    

---@param value string @受击特效ID
---@return hit_effect
function class_hit_effect.hiteft_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_hit_effect._data[1]=value
    return class_hit_effect
end
    

---@param value string @特效资源文件
---@return hit_effect
function class_hit_effect.res_file(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_hit_effect._data[2]=value
    return class_hit_effect
end
    

---@param value string @音效ID
---@return hit_effect
function class_hit_effect.bind_audio(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_hit_effect._data[3]=value
    return class_hit_effect
end
    

---@param value string @备注
---@return hit_effect
function class_hit_effect.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_hit_effect._data[4]=value
    return class_hit_effect
end
    

 
---@class battle_effect
local class_battle_effect={ }
---@private
class_battle_effect._header={ "ID","名称(备注)","动画类型","特效信息","重复Key","阴影特效","时间参数","方向","速度","重力参数","无视地形碰撞","淡入","淡出","比例","附带伤害","伤检判定","伤检对象","伤检参数","伤检延迟","伤检间隔","响应阈","重复判定","碰撞终结","Z偏移","结束命令","特效配置" }

classTable.battle_effect=class_battle_effect

---@param sheetName string
function Reset_battle_effect(sheetName)
    ---@private
    class_battle_effect._exceldata={ class_battle_effect._header }
    ---@private
    class_battle_effect._sheetName=sheetName
    table.insert(excels,{ class_battle_effect._exceldata,sheetName, "battle_effect" })
end


---@return battle_effect
function battle_effect()
    local data={ "","","","","","","","","","","","","","","","","","","","","","","","","","" }
    ---@private
    class_battle_effect._data=data
    table.insert(class_battle_effect._exceldata,data)
    return class_battle_effect
end
    

---@param value string @ID
---@return battle_effect
function class_battle_effect.eft_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battle_effect._data[1]=value
    return class_battle_effect
end
    

---@param value string @名称(备注)
---@return battle_effect
function class_battle_effect.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battle_effect._data[5]=value
    return class_battle_effect
end
    
---* 动画类型:
---* 0：粒子特效预制体
---* 1：链式特效预制体
---* 
---@param value int @动画类型
---@return battle_effect
function class_battle_effect.animat_type(value)
    
    class_battle_effect._data[3]=value
    return class_battle_effect
end
    

---@param value string @特效信息
---@return battle_effect
function class_battle_effect.eft_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battle_effect._data[4]=value
    return class_battle_effect
end
    

---@param value string @重复Key
---@return battle_effect
function class_battle_effect.beizhu(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battle_effect._data[5]=value
    return class_battle_effect
end
    

---@param value string @阴影特效
---@return battle_effect
function class_battle_effect.shadow_obj(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battle_effect._data[6]=value
    return class_battle_effect
end
    
---* 时间参数:
---* 静止特效持续时间
---* 仅在非运动类型时生效。
---@param value float @时间参数
---@return battle_effect
function class_battle_effect.eft_time(value)
    
    class_battle_effect._data[7]=value
    return class_battle_effect
end
    
---* 方向:
---* 0：左右
---* 1：随运动方向
---* 2：XZ坐标
---* 
---@param value int @方向
---@return battle_effect
function class_battle_effect.dir_type(value)
    
    class_battle_effect._data[8]=value
    return class_battle_effect
end
    

---@param value float @速度
---@return battle_effect
function class_battle_effect.move_speed(value)
    
    class_battle_effect._data[9]=value
    return class_battle_effect
end
    

---@param value string @重力参数
---@return battle_effect
function class_battle_effect.gravity_args(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battle_effect._data[10]=value
    return class_battle_effect
end
    
---* 当为1时不会碰撞到地形障碍物
---@param value int @无视地形碰撞
---@return battle_effect
function class_battle_effect.ignore_tv(value)
    
    class_battle_effect._data[11]=value
    return class_battle_effect
end
    

---@param value float @淡入
---@return battle_effect
function class_battle_effect.fadin_time(value)
    
    class_battle_effect._data[12]=value
    return class_battle_effect
end
    

---@param value float @淡出
---@return battle_effect
function class_battle_effect.fadout_time(value)
    
    class_battle_effect._data[13]=value
    return class_battle_effect
end
    

---@param value string @比例
---@return battle_effect
function class_battle_effect.eft_scale(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battle_effect._data[14]=value
    return class_battle_effect
end
    

---@param value string @附带伤害
---@return battle_effect
function class_battle_effect.dmg_formula(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battle_effect._data[15]=value
    return class_battle_effect
end
    
---* 伤害判定类型:
---* 0：不判定
---* -1：无限判定
---* >0：指定次数的判定
---* 
---@param value int @伤检判定
---@return battle_effect
function class_battle_effect.dmg_check_times(value)
    
    class_battle_effect._data[16]=value
    return class_battle_effect
end
    
---* 伤害判定对象:
---* 0：敌方
---* 1：我方单位
---* 2：敌我双方
---@param value int @伤检对象
---@return battle_effect
function class_battle_effect.dmg_tag_type(value)
    
    class_battle_effect._data[17]=value
    return class_battle_effect
end
    
---* 格式为： 判定类型:参数1,参数2,参数3....
---* 目前支持以下几种判定，默认为圆形判定:
---* 0：圆形判定 参数1为判定半径
---* 1：射线判定 参数1位射线长度 参数2位射线宽度
---@param value string @伤检参数
---@return battle_effect
function class_battle_effect.dmg_check_args(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battle_effect._data[18]=value
    return class_battle_effect
end
    

---@param value float @伤检延迟
---@return battle_effect
function class_battle_effect.start_check_delay(value)
    
    class_battle_effect._data[19]=value
    return class_battle_effect
end
    

---@param value float @伤检间隔
---@return battle_effect
function class_battle_effect.dmg_check_interval(value)
    
    class_battle_effect._data[20]=value
    return class_battle_effect
end
    
---* 伤害判定的响应延迟随机值范围，当为0时立即相应
---* 
---* 
---@param value float @响应阈
---@return battle_effect
function class_battle_effect.check_threshold(value)
    
    class_battle_effect._data[21]=value
    return class_battle_effect
end
    
---* 是否重复判定:
---* 0：关闭 1：开启
---* 开启此项时无法对同一单位重复判定伤害
---* 当开启时，可通过‘#’符号分隔来追加重复判定CD参数
---* 如： 1#0.5 
---* 表示0.5秒内不会对同一个单位生效
---@param value string @重复判定
---@return battle_effect
function class_battle_effect.check_once_arg(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battle_effect._data[22]=value
    return class_battle_effect
end
    
---* 碰撞判定类型:
---* 0：不判定
---* 1：判定一次后终结
---@param value int @碰撞终结
---@return battle_effect
function class_battle_effect.collide_mode(value)
    
    class_battle_effect._data[23]=value
    return class_battle_effect
end
    
---* Z方向的偏移量:
---* 当为正数时值越大越靠近镜头
---@param value float @Z偏移
---@return battle_effect
function class_battle_effect.offset_z(value)
    
    class_battle_effect._data[24]=value
    return class_battle_effect
end
    

---@param value string @结束命令
---@return battle_effect
function class_battle_effect.cmds_on_next(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battle_effect._data[25]=value
    return class_battle_effect
end
    

---@param value string @特效配置
---@return battle_effect
function class_battle_effect.eft_config(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_battle_effect._data[26]=value
    return class_battle_effect
end
    

 
---@class units_generator
local class_units_generator={ }
---@private
class_units_generator._header={ "索引ID","类型","适配条件","优先级","适配人物信息","适配单位信息" }

classTable.units_generator=class_units_generator

---@param sheetName string
function Reset_units_generator(sheetName)
    ---@private
    class_units_generator._exceldata={ class_units_generator._header }
    ---@private
    class_units_generator._sheetName=sheetName
    table.insert(excels,{ class_units_generator._exceldata,sheetName, "units_generator" })
end


---@return units_generator
function units_generator()
    local data={ "","","","","","" }
    ---@private
    class_units_generator._data=data
    table.insert(class_units_generator._exceldata,data)
    return class_units_generator
end
    

---@param value string @索引ID
---@return units_generator
function class_units_generator.info_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_units_generator._data[1]=value
    return class_units_generator
end
    
---* 适配类型:
---* 0：农民
---* 1：商队护卫
---* 
---* 
---@param value int @类型
---@return units_generator
function class_units_generator.adapt_type(value)
    
    class_units_generator._data[2]=value
    return class_units_generator
end
    

---@param value string @适配条件
---@return units_generator
function class_units_generator.condition(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_units_generator._data[3]=value
    return class_units_generator
end
    

---@param value int @优先级
---@return units_generator
function class_units_generator.priority(value)
    
    class_units_generator._data[4]=value
    return class_units_generator
end
    
---* 适配的英雄信息:
---* 人物1模板ID,等级|人物2模板ID,等级|....|人物N模板ID,等级
---* 
---@param value string @适配人物信息
---@return units_generator
function class_units_generator.roles_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_units_generator._data[5]=value
    return class_units_generator
end
    
---* 参战单位列表:
---* 单位1ID,适配数量(可嵌入公式)|
---* 单位2ID,适配数量|
---* ...
---* 单位N的ID,适配数量
---* 
---@param value string @适配单位信息
---@return units_generator
function class_units_generator.units_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_units_generator._data[6]=value
    return class_units_generator
end
    

 
---@class gamecamp
local class_gamecamp={ }
---@private
class_gamecamp._header={ "阵营ID","阵营名称","阵营类别","阵营领袖","领袖称呼","势力徽记","初始平衡值","初始资源","初始属性","初始领地","初始英雄","是否招募新英雄","发展欲望","招兵欲望","侵略欲望","扩张欲望","巡逻时间","初始活跃状态","初始阵营关系权值","是否隐藏","与玩家关系","标记","阵营简介" }

classTable.gamecamp=class_gamecamp

---@param sheetName string
function Reset_gamecamp(sheetName)
    ---@private
    class_gamecamp._exceldata={ class_gamecamp._header }
    ---@private
    class_gamecamp._sheetName=sheetName
    table.insert(excels,{ class_gamecamp._exceldata,sheetName, "gamecamp" })
end


---@return gamecamp
function gamecamp()
    local data={ "","","","","","","","","","","","","","","","","","","","","","","" }
    ---@private
    class_gamecamp._data=data
    table.insert(class_gamecamp._exceldata,data)
    return class_gamecamp
end
    

---@param value string @阵营ID
---@return gamecamp
function class_gamecamp.camp_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamecamp._data[1]=value
    return class_gamecamp
end
    

---@param value string @阵营名称
---@return gamecamp
function class_gamecamp.display_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamecamp._data[2]=value
    return class_gamecamp
end
    
---* 阵营类别
---* 0：世俗势力
---* 1：门派
---* 2：帮派
---@param value int @阵营类别
---@return gamecamp
function class_gamecamp.camp_type(value)
    
    class_gamecamp._data[3]=value
    return class_gamecamp
end
    

---@param value string @阵营领袖
---@return gamecamp
function class_gamecamp.camp_leader(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamecamp._data[4]=value
    return class_gamecamp
end
    

---@param value string @领袖称呼
---@return gamecamp
function class_gamecamp.leader_called(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamecamp._data[5]=value
    return class_gamecamp
end
    

---@param value string @势力徽记
---@return gamecamp
function class_gamecamp.camp_logo(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamecamp._data[6]=value
    return class_gamecamp
end
    
---* AI势力的动态平衡值:
---* 根据势力的平衡值设置可决定势力的最大发展规模。
---* 如：
---* 攻占主城时平衡值增减为目标城的规模值
---* 人事增减：10
---* 
---* 当平衡值为负时势力停止行动  
---* 
---@param value int @初始平衡值
---@return gamecamp
function class_gamecamp.init_balance_val(value)
    
    class_gamecamp._data[7]=value
    return class_gamecamp
end
    

---@param value string @初始资源
---@return gamecamp
function class_gamecamp.init_resources(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamecamp._data[8]=value
    return class_gamecamp
end
    

---@param value string @初始属性
---@return gamecamp
function class_gamecamp.init_stat(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamecamp._data[9]=value
    return class_gamecamp
end
    

---@param value string @初始领地
---@return gamecamp
function class_gamecamp.territory(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamecamp._data[10]=value
    return class_gamecamp
end
    

---@param value string @初始英雄
---@return gamecamp
function class_gamecamp.heros(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamecamp._data[11]=value
    return class_gamecamp
end
    

---@param value int @是否招募新英雄
---@return gamecamp
function class_gamecamp.recruit_new_hero(value)
    
    class_gamecamp._data[12]=value
    return class_gamecamp
end
    

---@param value float @发展欲望
---@return gamecamp
function class_gamecamp.prob_develop(value)
    
    class_gamecamp._data[13]=value
    return class_gamecamp
end
    
---* Administrator:
---* 发展与招兵影响每个周期资源的分配
---@param value float @招兵欲望
---@return gamecamp
function class_gamecamp.prob_recruit(value)
    
    class_gamecamp._data[14]=value
    return class_gamecamp
end
    
---* Administrator:
---* 侵略与扩张影响出征的目标
---@param value float @侵略欲望
---@return gamecamp
function class_gamecamp.prob_invasion(value)
    
    class_gamecamp._data[15]=value
    return class_gamecamp
end
    
---* Administrator:
---* 对普通势力而言，这意味着占领资源点的概率。对特殊势力如野猪等而言，这意味着平日外出巡逻的人员分配率。
---@param value float @扩张欲望
---@return gamecamp
function class_gamecamp.prob_enlarge(value)
    
    class_gamecamp._data[16]=value
    return class_gamecamp
end
    
---* Administrator:
---* 指定巡逻时间（1~12），如果没有指定将随机生成一个。
---@param value string @巡逻时间
---@return gamecamp
function class_gamecamp.patrol_hour(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamecamp._data[17]=value
    return class_gamecamp
end
    

---@param value int @初始活跃状态
---@return gamecamp
function class_gamecamp.init_active_state(value)
    
    class_gamecamp._data[18]=value
    return class_gamecamp
end
    
---* 初始阵营阵营关系设定参考值:
---* 所有阵营之间会先按照该字段计算阵营关系，大于0的阵营和小于0的阵营分别会形成两排，同阵营初始友好度为该值之和/2，异阵营之间友好度为之间差值/2
---* 当该值为0时为默认与所有阵营中立，且友好度为0
---* 需要单独设置的阵营关系可在初始设定表的init_camp_rl字段进行设置
---@param value int @初始阵营关系权值
---@return gamecamp
function class_gamecamp.init_camp_rl_weight(value)
    
    class_gamecamp._data[19]=value
    return class_gamecamp
end
    

---@param value int @是否隐藏
---@return gamecamp
function class_gamecamp.is_hidden(value)
    
    class_gamecamp._data[20]=value
    return class_gamecamp
end
    

---@param value string @与玩家关系
---@return gamecamp
function class_gamecamp.aptitude_to_player(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamecamp._data[21]=value
    return class_gamecamp
end
    

---@param value string @标记
---@return gamecamp
function class_gamecamp.tag(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamecamp._data[22]=value
    return class_gamecamp
end
    

---@param value string @阵营简介
---@return gamecamp
function class_gamecamp.desc(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_gamecamp._data[23]=value
    return class_gamecamp
end
    

 
---@class mapplugin
local class_mapplugin={ }
---@private
class_mapplugin._header={ "插件ID","目标地图","文件名" }

classTable.mapplugin=class_mapplugin

---@param sheetName string
function Reset_mapplugin(sheetName)
    ---@private
    class_mapplugin._exceldata={ class_mapplugin._header }
    ---@private
    class_mapplugin._sheetName=sheetName
    table.insert(excels,{ class_mapplugin._exceldata,sheetName, "mapplugin" })
end


---@return mapplugin
function mapplugin()
    local data={ "","","" }
    ---@private
    class_mapplugin._data=data
    table.insert(class_mapplugin._exceldata,data)
    return class_mapplugin
end
    

---@param value string @插件ID
---@return mapplugin
function class_mapplugin.plugin_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_mapplugin._data[1]=value
    return class_mapplugin
end
    

---@param value string @目标地图
---@return mapplugin
function class_mapplugin.tag_map(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_mapplugin._data[2]=value
    return class_mapplugin
end
    

---@param value string @文件名
---@return mapplugin
function class_mapplugin.file_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_mapplugin._data[3]=value
    return class_mapplugin
end
    

 
---@class container
local class_container={ }
---@private
class_container._header={ "容器ID","对象类型","显示名称","基础容量","说明信息","初始列表","存放对象筛选条件","效果周期","效果脚本" }

classTable.container=class_container

---@param sheetName string
function Reset_container(sheetName)
    ---@private
    class_container._exceldata={ class_container._header }
    ---@private
    class_container._sheetName=sheetName
    table.insert(excels,{ class_container._exceldata,sheetName, "container" })
end


---@return container
function container()
    local data={ "","","","","","","","","" }
    ---@private
    class_container._data=data
    table.insert(class_container._exceldata,data)
    return class_container
end
    

---@param value string @容器ID
---@return container
function class_container.key(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_container._data[1]=value
    return class_container
end
    
---* 可用以下类型:
---* 0：物品
---* 1：兵种卡牌
---@param value int @对象类型
---@return container
function class_container.item_type(value)
    
    class_container._data[2]=value
    return class_container
end
    

---@param value string @显示名称
---@return container
function class_container.display_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_container._data[3]=value
    return class_container
end
    

---@param value int @基础容量
---@return container
function class_container.init_capicity(value)
    
    class_container._data[4]=value
    return class_container
end
    

---@param value string @说明信息
---@return container
function class_container.desc_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_container._data[5]=value
    return class_container
end
    

---@param value string @初始列表
---@return container
function class_container.init_items(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_container._data[6]=value
    return class_container
end
    

---@param value string @存放对象筛选条件
---@return container
function class_container.filter_info(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_container._data[7]=value
    return class_container
end
    
---* 整数天数
---* 每天固定时间点进行判定，<=0为关闭此周期效果判定
---@param value int @效果周期
---@return container
function class_container.period_days(value)
    
    class_container._data[8]=value
    return class_container
end
    

---@param value string @效果脚本
---@return container
function class_container.period_cmd(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_container._data[9]=value
    return class_container
end
    

 
---@class quest_group
local class_quest_group={ }
---@private
class_quest_group._header={ "系列ID","显示名称","系列描述","完成奖励" }

classTable.quest_group=class_quest_group

---@param sheetName string
function Reset_quest_group(sheetName)
    ---@private
    class_quest_group._exceldata={ class_quest_group._header }
    ---@private
    class_quest_group._sheetName=sheetName
    table.insert(excels,{ class_quest_group._exceldata,sheetName, "quest_group" })
end


---@return quest_group
function quest_group()
    local data={ "","","","" }
    ---@private
    class_quest_group._data=data
    table.insert(class_quest_group._exceldata,data)
    return class_quest_group
end
    

---@param value string @系列ID
---@return quest_group
function class_quest_group.group_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest_group._data[1]=value
    return class_quest_group
end
    

---@param value string @显示名称
---@return quest_group
function class_quest_group.display_name(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest_group._data[2]=value
    return class_quest_group
end
    

---@param value string @系列描述
---@return quest_group
function class_quest_group.group_describ(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest_group._data[3]=value
    return class_quest_group
end
    

---@param value string @完成奖励
---@return quest_group
function class_quest_group.reward_list(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_quest_group._data[4]=value
    return class_quest_group
end
    

 
---@class random_quest
local class_random_quest={ }
---@private
class_random_quest._header={ "随机任务ID","任务ID","发布者","随机参数","任务刷新限制","任务存在时间","任务CD时间","开始事件ID","结束事件ID","任务参数" }

classTable.random_quest=class_random_quest

---@param sheetName string
function Reset_random_quest(sheetName)
    ---@private
    class_random_quest._exceldata={ class_random_quest._header }
    ---@private
    class_random_quest._sheetName=sheetName
    table.insert(excels,{ class_random_quest._exceldata,sheetName, "random_quest" })
end


---@return random_quest
function random_quest()
    local data={ "","","","","","","","","","" }
    ---@private
    class_random_quest._data=data
    table.insert(class_random_quest._exceldata,data)
    return class_random_quest
end
    

---@param value string @随机任务ID
---@return random_quest
function class_random_quest.random_quest_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_random_quest._data[1]=value
    return class_random_quest
end
    

---@param value string @任务ID
---@return random_quest
function class_random_quest.quest_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_random_quest._data[2]=value
    return class_random_quest
end
    
---* Administrator:
---* 该参数同时是第0号参数
---@param value string @发布者
---@return random_quest
function class_random_quest.creater(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_random_quest._data[3]=value
    return class_random_quest
end
    
---* Administrator:
---* 此处的参数依次为1、2、3...号参数
---* 
---* 注意：
---* LOCALPRODUCT生成的是特产ID，不是特产所绑定的道具ID
---* 
---* 
---@param value string @随机参数
---@return random_quest
function class_random_quest.argvs(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_random_quest._data[4]=value
    return class_random_quest
end
    

---@param value string @任务刷新限制
---@return random_quest
function class_random_quest.reftresh_condition(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_random_quest._data[5]=value
    return class_random_quest
end
    

---@param value string @任务存在时间
---@return random_quest
function class_random_quest.time_limit(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_random_quest._data[6]=value
    return class_random_quest
end
    

---@param value string @任务CD时间
---@return random_quest
function class_random_quest.cd_time(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_random_quest._data[7]=value
    return class_random_quest
end
    

---@param value string @开始事件ID
---@return random_quest
function class_random_quest.event_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_random_quest._data[8]=value
    return class_random_quest
end
    

---@param value string @结束事件ID
---@return random_quest
function class_random_quest.finish_event_id(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_random_quest._data[9]=value
    return class_random_quest
end
    

---@param value string @任务参数
---@return random_quest
function class_random_quest.quest_tag(value)
    value=value:gsub('^%s*(.-)%s*$','%1'):gsub('\t','') 
    class_random_quest._data[10]=value
    return class_random_quest
end
    

