require 'keybow-pager/keybow'

operations = {}

function operations.browser_back()
    keybow.tap_key_with_modifiers('[', keybow.LEFT_META)
end

function operations.browser_forward()
    keybow.tap_key_with_modifiers(']', keybow.LEFT_META)
end

function operations.chrome_close_tab()
    keybow.tap_key_with_modifiers('w', keybow.LEFT_META)
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

function operations.pycharm_back()
    keybow.tap_key_with_modifiers('b', keybow.LEFT_META)
end

function operations.pycharm_to_declaration()
    keybow.tap_key_with_modifiers(keybow.LEFT_ARROW, keybow.LEFT_META, keybow.LEFT_ALT)
end

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

function operations.open_chrome()
	spotlight("chrome")
end

function spotlight(command)
    modifier(keybow.SPACE, keybow.LEFT_META)
    keybow.sleep(500)
    keybow.text(command)
    keybow.sleep(500)
    keybow.tap_enter()
    keybow.sleep(500)
end

function operations.tap_a()
    keybow.tap_key('a')
end

function operations.tap_b()
    keybow.tap_key('b')
end

function operations.tap_c()
    keybow.tap_key('c')
end

function operations.tap_d()
    keybow.tap_key('d')
end

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