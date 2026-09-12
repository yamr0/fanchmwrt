#!/bin/bash
# 精简版 + luci-app-fancontrol 风扇面板
# feeds更新前拉取风扇插件源码
rm -rf package/luci-app-fancontrol
git clone https://github.com/fancontrol/luci-app-fancontrol.git package/luci-app-fancontrol
