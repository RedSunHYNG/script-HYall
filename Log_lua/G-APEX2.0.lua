EnablePrimaryMouseButtonEvents(true)
turn=0
local rightButtonPressed = false
function OnEvent(event, arg)
	local offset
	local recovery_offset
	local downcount
	local time
	local num
	num=1     
--下压二级开关           
  if(event== "MOUSE_BUTTON_PRESSED" and arg==1  and turn==1) then
    downcount=0
    repeat
      downcount=downcount+1
      if(downcount<=150) then
-- 鼠标向下压的值
        MoveMouseRelative(0,1)
      end
      if(rightButtonPressed == true) then
--offset对应抖动的幅度  
        offset=math.random(8,10)
        recovery_offset = -offset
        Sleep(2)
        MoveMouseRelative(offset,offset)
        Sleep(2)
        MoveMouseRelative(recovery_offset,recovery_offset)
      end
    until not IsMouseButtonPressed(1)
  end
--抖动二级开关
  if(event== "MOUSE_BUTTON_PRESSED" and turn==1) then
    if(arg == 2) then
      rightButtonPressed = true
    end
  elseif event == "MOUSE_BUTTON_RELEASED" then
    if(arg == 2) then
      rightButtonPressed = false
    end
  end
--总开关‘5’
  if(event== "MOUSE_BUTTON_PRESSED" and arg==5) then 
    if(turn==0)	then
      turn=1
    else
      turn=0	
    end
  end
end