# Copyright 2014-2018 SUSE LLC
# SPDX-License-Identifier: GPL-2.0-or-later

use strict;
use testapi;
use autotest;

# For xfce test
# autotest::loadtest 'tests/xfce/boot.pm';
# autotest::loadtest 'tests/xfce/terminal.pm';

# For base test
autotest::loadtest 'tests/base/boot.pm';

# For common test
autotest::loadtest 'tests/common/neofetch.pm';
autotest::loadtest 'tests/common/mugen.pm';

1;
