use base 'basetest';
use testapi;

sub run {
    assert_script_run('clear');
    assert_script_run('cd ~');
    assert_script_run('git clone https://gitee.com/SunInHeart/mugen.git', 180);
    assert_script_run('cd mugen');
    assert_script_run('bash dep_install.sh');
    assert_script_run('bash mugen.sh -c --ip 127.0.0.1 --password openEuler12#$ --user root --port 22');
    assert_script_run('bash mugen.sh -f pytorch_version -x', 600);
    assert_script_run('grep "torch_version:" logs/pytorch_version/oe_test_pytorch_version/*');
}

1;
