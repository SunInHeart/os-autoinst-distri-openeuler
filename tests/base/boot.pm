# Copyright 2014-2018 SUSE LLC
# SPDX-License-Identifier: GPL-2.0-or-later

use base 'basetest';
use strict;
use testapi;

$testapi::password //= 'openEuler12#$';

sub run {
    # wait for booting to appear
    assert_screen 'booting', 60;

    # wait for black-screen to appear
    assert_screen 'black-screen', 120;

    # wait for the xfce-desktop to appear
    assert_screen 'xfce-desktop', 180;

    type_password;
    
    send_key 'ret';

    assert_screen 'desktop', 300;

}

1;
