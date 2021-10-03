require 'keybow-pager/keybow'
require 'keybow-pager/colors'
require 'keybow-pager/buttons'
require 'keybow-pager/operations'

pages = {}
-- Support four pages of commands. 
-- General (for basic desktop/browsing)
pages.GENERAL = 0
-- Numpad (number keypad)
pages.NUMPAD = 1
-- Media (VLC Player shortcuts)
pages.MEDIA = 2
-- Coding (VS Code shortcuts)
pages.CODING = 3


pages.colors = {}
pages.colors[pages.GENERAL] = color.RED;
pages.colors[pages.CODING] = color.GREEN;
pages.colors[pages.MEDIA] = color.BLUE;
pages.colors[pages.NUMPAD] = color.YELLOW;

pages.operations = {}
pages.operations[pages.GENERAL] = {
    operations.cut,
    operations.copy,
    operations.paste,
    operations.undo,
    operations.select_all,
    operations.redo,
    operations.move_tab_left,
    operations.close_tab,
    operations.move_tab_right,
    operations.undo_close_tab,
    operations.keepass
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

pages.operations[pages.MEDIA] = {
    operations.previous,
    operations.play_pause,
    operations.next,
    operations.back,
    operations.subtitles,
    operations.forward,
    operations.voldown,
    operations.mute,
    operations.volup,
    operations.fullscreen,
    operations.min_forward
}

pages.operations[pages.CODING] = {
    operations.cut,
    operations.copy,
    operations.paste,
    operations.undo,
    operations.command,
    operations.redo,
    operations.fold,
    operations.split,
    operations.unfold,
    operations.zen,
    operations.comment_uncomment
}

-- Set the colors of each page
pages.operation_colors = {}
pages.operation_colors[pages.GENERAL] = {
    color.CYAN, color.CYAN, color.CYAN,
    color.CYAN, color.CYAN, color.CYAN, 
    color.RED, color.RED, color.RED, 
    color.RED, color.MAGENTA
}
pages.operation_colors[pages.NUMPAD]={
    color.YELLOW, color.YELLOW, color.YELLOW, 
    color.YELLOW, color.YELLOW, color.YELLOW, 
    color.YELLOW, color.YELLOW, color.YELLOW, 
    color.YELLOW, color.WHITE
}
pages.operation_colors[pages.MEDIA]={
    color.ORANGE, color.WHITE, color.ORANGE, 
    color.ORANGE, color.WHITE, color.ORANGE, 
    color.WHITE, color.ORANGE, color.WHITE, 
    color.WHITE, color.WHITE
}
pages.operation_colors[pages.CODING]={
    color.RED, color.RED, color.RED, 
    color.YELLOW, color.BLUE, color.YELLOW, 
    color.MAGENTA, color.GREEN, color.MAGENTA, 
    color.ORANGE, color.CYAN
}

pages.button_map = {
    button.ACTION_1, button.ACTION_2, button.ACTION_3,
    button.ACTION_4, button.ACTION_5, button.ACTION_6,
    button.ACTION_7, button.ACTION_8, button.ACTION_9,
    button.ACTION_10, button.ACTION_11
}


-- the current page. Default at startup is general.
pages.page = pages.GENERAL

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
    pages.set_page(pages.page)
end

function pages.set_page(page_)
    button.set_color(button.TOGGLE, color.NONE)
    button.set_color(button.TOGGLE, color.WHITE)
    
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
