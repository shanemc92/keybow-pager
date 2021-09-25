require 'keybow-pager/keybow'
require 'keybow-pager/colors'
require 'keybow-pager/buttons'
require 'keybow-pager/operations'

pages = {}
-- Support four pages of commands. 
-- Desktop (for basic desktop/browsing)
pages.DESKTOP = 0
pages.CODING = 1
pages.APPS = 2
pages.NUMPAD = 3

pages.colors = {}
pages.colors[pages.DESKTOP] = color.RED;
pages.colors[pages.CODING] = color.GREEN;
pages.colors[pages.APPS] = color.BLUE;
pages.colors[pages.NUMPAD] = color.YELLOW;

pages.operations = {}
pages.operations[pages.DESKTOP] = {
    operations.tap_a,
    operations.tap_a,
    operations.tap_a,
    operations.tap_a,
    operations.tap_a,
    operations.tap_a,
    operations.tap_a,
    operations.tap_a,
    operations.tap_a,
    operations.tap_a,
    operations.tap_a
}

pages.operations[pages.CODING] = {
    operations.tap_b,
    operations.tap_b,
    operations.tap_b,
    operations.tap_b,
    operations.tap_b,
    operations.tap_b,
    operations.tap_b,
    operations.tap_b,
    operations.tap_b,
    operations.tap_b,
    operations.tap_b
}

pages.operations[pages.APPS] = {
    operations.tap_c,
    operations.tap_c,
    operations.tap_c,
    operations.tap_c,
    operations.tap_c,
    operations.tap_c,
    operations.tap_c,
    operations.tap_c,
    operations.tap_c,
    operations.tap_c,
    operations.tap_c
}

pages.operations[pages.NUMPAD] = {
    operations.num_7,
    operations.num_8,
    operations.num_9,
    operations.num_4,
    operations.num_5,
    operations.num_6,
    operations.num_1,
    operations.num_2,
    operations.num_3,
    operations.num_0,
    operations.full_stop
}

pages.operation_colors = {}
pages.operation_colors[pages.DESKTOP] = {
    color.RED, color.RED, color.RED, color.RED,
    color.RED, color.RED, color.RED, color.RED,
    color.RED, color.RED, color.RED
}
pages.operation_colors[pages.CODING] = {
    color.GREEN, color.GREEN, color.GREEN, color.GREEN,
    color.GREEN, color.GREEN, color.GREEN, color.GREEN,
    color.GREEN, color.GREEN, color.GREEN
}
pages.operation_colors[pages.APPS] = {
    color.BLUE, color.BLUE, color.BLUE, color.BLUE,
    color.BLUE, color.BLUE, color.BLUE, color.BLUE,
    color.BLUE, color.BLUE, color.BLUE
}
pages.operation_colors[pages.NUMPAD] = {
    color.YELLOW, color.YELLOW, color.YELLOW, color.YELLOW,
    color.YELLOW, color.YELLOW, color.YELLOW, color.YELLOW,
    color.YELLOW, color.YELLOW, color.YELLOW
}


pages.button_map = {
    button.ACTION_1, button.ACTION_2, button.ACTION_3,
    button.ACTION_4, button.ACTION_5, button.ACTION_6,
    button.ACTION_7, button.ACTION_8, button.ACTION_9,
    button.ACTION_10, button.ACTION_11
}


-- the current page. Default at startup is numpad.
pages.page = pages.NUMPAD


function pages.cycle_page(page_)
    if page_ == nil then
        if (pages.page < 3) then
            pages.page = pages.page + 1
        else 
            pages.page = 0
        end
    else
        pages.page = page_
    end
    button.set_color(button.TOGGLE, color.NONE)
    if (pages.page == pages.DESKTOP) then
        button.set_color(button.TOGGLE, pages.colors[pages.DESKTOP])
    elseif (pages.page == pages.CODING) then
        button.set_color(button.TOGGLE, pages.colors[pages.CODING])
    elseif (pages.page == pages.APPS) then
        button.set_color(button.TOGGLE, pages.colors[pages.APPS])
    elseif (pages.page == pages.NUMPAD) then
        button.set_color(button.TOGGLE, pages.colors[pages.NUMPAD])
    end
    
    for i = 1, 11, 1
    do
        if (pages.operations[pages.page][i] ~= nil) then
            button.set_color(pages.button_map[i], pages.operation_colors[pages.page][i])
        else
            button.set_color(pages.button_map[i], color.NONE)
        end
    end
end

function pages.get_operation_for_action_button(button_id)
    for i = 1, 11, 1
    do
        if (pages.button_map[i] == button_id) then
            return pages.operations[pages.page][i]
        end
    end
    return nil
end

function pages.run_operation(button_id)
    operation = pages.get_operation_for_action_button(button_id)
    if (operation ~= nil) then
        operation()
    end
end
    
