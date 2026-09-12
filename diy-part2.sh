#!/bin/bash
# 修改LAN后台IP，GL原厂风格192.168.8.1
sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate

# 开启USB GPIO供电（GL-MT3600BE必须，否则USB硬盘无供电）
echo "echo 1 > /sys/class/gpio/gpio47/value" >> package/base-files/files/etc/rc.local

# 风扇温控 70℃启动
echo "echo 70000 > /sys/class/thermal/thermal_zone0/trip_point_5_temp" >> package/base-files/files/etc/rc.local
