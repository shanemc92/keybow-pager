require 'keybow-pager/keybow'
require 'keybow-pager/buttons'
require 'keybow-pager/colors'
require 'keybow-pager/pages'

function setup() 
    keybow.auto_lights(false)
    keybow.clear_lights()
    pages.cycle_page(pages.page)
end

-- Key mappings --

function handle_key_00(pressed)
    if (pressed) then
        pages.run_operation(button.ACTION_3)
    end
end

function handle_key_01(pressed)
    if (pressed) then
        pages.run_operation(button.ACTION_2)
    end
end

function handle_key_02(pressed)
    if (pressed) then
        pages.run_operation(button.ACTION_1)
    end
end

function handle_key_03(pressed)
    if (pressed) then
        pages.run_operation(button.ACTION_6)
    end
end

function handle_key_04(pressed)
    if (pressed) then
        pages.run_operation(button.ACTION_5)
    end
end

function handle_key_05(pressed)
    if (pressed) then
        pages.run_operation(button.ACTION_4)
    end
end

function handle_key_06(pressed)
    if (pressed) then
        pages.run_operation(button.ACTION_9)
    end
end

function handle_key_07(pressed)
    if (pressed) then
        pages.run_operation(button.ACTION_8)
    end
end

function handle_key_08(pressed)
    if (pressed) then
        pages.run_operation(button.ACTION_7)
    end
end

function handle_key_09(pressed)
    if (pressed) then
        pages.run_operation(button.ACTION_11)
    end
end

function handle_key_10(pressed)
    if (pressed) then
        pages.run_operation(button.ACTION_10)
    end
end

function handle_key_11(pressed)
    if (pressed) then
        pages.cycle_page(nil)
    end
end

