# Copyright 2014-2018 SUSE LLC
# SPDX-License-Identifier: GPL-2.0-or-later

use base 'basetest';
use strict;
use testapi;

$testapi::password //= 'openEuler12#$';

sub run {
    # wait for booting to appear
    assert_screen 'booting', 60;

    # wait for the cli-desktop to appear
    assert_screen 'cli-desktop', 120;

    type_string "root\n";
    assert_screen 'cli-password-promote', 5;
    type_password;
    send_key 'ret';
    assert_screen 'root-login', 10;

}

1;
