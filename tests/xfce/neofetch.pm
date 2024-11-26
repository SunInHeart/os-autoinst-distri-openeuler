use base 'basetest';
use testapi;

sub swith_to_root_console {
    send_key 'ctrl-alt-f3';
}

sub login {
    swith_to_root_console;
    assert_screen 'inst-console';
    type_string "root\n";
    assert_screen 'password-promot';
    type_password;
    send_key 'ret';
    assert_screen 'console-login';
}

sub run {
    login;

    assert_script_run('cat /etc/resolv.conf');
    assert_script_run('ping -c 5 www.baidu.com');
    assert_script_run('echo "nameserver 8.8.8.8" > /etc/resolv.conf');
    assert_script_run('ping -c 5 www.google.com');
    
    assert_script_run('dnf install -y git', 300);
    assert_script_run('cd ~');
    assert_script_run('git clone https://github.com/dylanaraps/neofetch.git', 300);
    assert_script_run('cd neofetch');
    assert_script_run('sudo make install');
    assert_script_run('cp -a neofetch /usr/local/bin/')
    assert_script_run('neofetch');

}

