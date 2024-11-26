use base 'basetest';
use testapi;

sub run {
    assert_and_click 'terminal_icon';
    assert_screen 'terminal_login';

    type_string "cat /etc/os-release";
    send_key 'ret';
    assert_screen 'os-info';

    type_string "uname -a";
    send_key 'ret';
    assert_screen 'kernal-info';

}