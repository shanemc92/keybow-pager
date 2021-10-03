require 'keybow-pager/keybow'

operations = {}

-- GENERAL
function operations.copy()
    keybow.tap_key_with_modifiers('c', keybow.LEFT_CTRL)
end

function operations.cut()
    keybow.tap_key_with_modifiers('x', keybow.LEFT_CTRL)
end

function operations.paste()
    keybow.tap_key_with_modifiers('v', keybow.LEFT_CTRL)
end

function operations.select_all()
    keybow.tap_key_with_modifiers('a', keybow.LEFT_CTRL)
end

function operations.redo()
    keybow.tap_key_with_modifiers('y', keybow.LEFT_CTRL)
end

function operations.undo()
    keybow.tap_key_with_modifiers('z', keybow.LEFT_CTRL)
end

function operations.find()
    keybow.tap_key_with_modifiers('f', keybow.LEFT_CTRL)
end

function operations.keepass()
    keybow.tap_key_with_modifiers('z', keybow.LEFT_CTRL, keybow.LEFT_SHIFT)
end

function spotlight(command)
    modifier(keybow.SPACE, keybow.LEFT_META)
    keybow.sleep(500)
    keybow.text(command)
    keybow.sleep(500)
    keybow.tap_enter()
    keybow.sleep(500)
end

function operations.open_chrome()
	spotlight("chrome")
end


-- Number Pad
function operations.num_1()
    keybow.tap_key('1')
end

function operations.num_2()
    keybow.tap_key('2')
end

function operations.num_3()
    keybow.tap_key('3')
end

function operations.num_4()
    keybow.tap_key('4')
end

function operations.num_5()
    keybow.tap_key('5')
end

function operations.num_6()
    keybow.tap_key('6')
end

function operations.num_7()
    keybow.tap_key('7')
end

function operations.num_8()
    keybow.tap_key('8')
end

function operations.num_9()
    keybow.tap_key('9')
end

function operations.num_0()
    keybow.tap_key('0')
end

function operations.full_stop()
    keybow.tap_key('.')
end


-- VLC Controls
function operations.volup()
    keybow.tap_key_with_modifiers(keybow.UP_ARROW, keybow.LEFT_CTRL)
end

function operations.voldown()
    keybow.tap_key_with_modifiers(keybow.DOWN_ARROW, keybow.LEFT_CTRL)
end

function operations.mute()
    keybow.tap_key('m')
end

function operations.play_pause()
    keybow.tap_key(keybow.SPACE)
end

function operations.previous()
    keybow.tap_key('p')
end

function operations.next()
    keybow.tap_key('n')
end

function operations.forward()
    keybow.tap_key_with_modifiers(keybow.RIGHT_ARROW, keybow.LEFT_ALT)
end

function operations.back()
    keybow.tap_key_with_modifiers(keybow.LEFT_ARROW, keybow.LEFT_ALT)
end

function operations.subtitles()
    keybow.tap_key('v')
end

function operations.fullscreen()
    keybow.tap_key('f')
end

function operations.min_forward()
    keybow.tap_key_with_modifiers(keybow.RIGHT_ARROW, keybow.LEFT_CTRL)
end

function operations.min_backward()
    keybow.tap_key_with_modifiers(keybow.LEFT_ARROW, keybow.LEFT_CTRL)
end


-- Firefox
function operations.move_tab_right()
    keybow.tap_key_with_modifiers(keybow.PAGEDOWN, keybow.LEFT_CTRL)
end

function operations.move_tab_left()
    keybow.tap_key_with_modifiers(keybow.PAGEUP, keybow.LEFT_CTRL)
end

function operations.close_tab()
    keybow.tap_key_with_modifiers('w', keybow.LEFT_CTRL)
end

function operations.undo_close_tab()
    keybow.tap_key_with_modifiers('T', keybow.LEFT_CTRL, keybow.LEFT_SHIFT)
end

function operations.browser_back()
    keybow.tap_key_with_modifiers('[', keybow.LEFT_META)
end

function operations.browser_forward()
    keybow.tap_key_with_modifiers(']', keybow.LEFT_META)
end

function operations.text_bigger()
    keybow.tap_key_with_modifiers('+', keybow.LEFT_META)
end

function operations.text_smaller()
    keybow.tap_key_with_modifiers('-', keybow.LEFT_META)
end

function operations.scroll_up()
    keybow.tap_key(keybow.UP_ARROW)
end

function operations.scroll_down()
    keybow.tap_key(keybow.DOWN_ARROW)
end

-- VSCode
function operations.comment_uncomment()
    keybow.tap_key_with_modifiers('/', keybow.LEFT_CTRL)
end

function operations.zen()
    keybow.tap_key_with_modifiers('k', keybow.LEFT_CTRL)
    keybow.tap_key('z')
end

function operations.command()
    keybow.tap_key_with_modifiers('p', keybow.LEFT_SHIFT, keybow.LEFT_CTRL)
end

function operations.split()
    keybow.tap_key_with_modifiers('\\', keybow.LEFT_CTRL)
end

function operations.fold()
    keybow.tap_key_with_modifiers(']', keybow.LEFT_SHIFT, keybow.LEFT_CTRL)
end

function operations.unfold()
    keybow.tap_key_with_modifiers('[', keybow.LEFT_SHIFT, keybow.LEFT_CTRL)
end


-- Git
function operations.git_commit_a()
    keybow.text("git commit -a")
    keybow.tap_enter()
end

function operations.git_pull()
    keybow.text("git pull")
    keybow.tap_enter()
end

function operations.git_tree()
    keybow.text("git tree")
    keybow.tap_enter()
end

function operations.git_push()
    keybow.text("git push")
    keybow.tap_enter()
end