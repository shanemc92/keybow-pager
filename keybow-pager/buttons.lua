require 'keybow-pager/keybow'

button = {}

button.TOGGLE = 11
button.ACTION_1 = 2
button.ACTION_2 = 1
button.ACTION_3 = 0
button.ACTION_4 = 5
button.ACTION_5 = 4
button.ACTION_6 = 3
button.ACTION_7 = 8
button.ACTION_8 = 7
button.ACTION_9 = 6
button.ACTION_10 = 10
button.ACTION_11 = 9

function button.set_color(button, color)
    if (color == nil) then
        keybow.set_pixel(button, 0, 0, 0)
    else
        keybow.set_pixel(button, color[1], color[2], color[3]) 
    end
end  
