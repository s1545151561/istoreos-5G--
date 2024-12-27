# 中文 | [English](https://github.com/Siriling/istoreos-actions/blob/main/EngLish.md)

# iStoreOS 定制固件

[![iStore使用文档](https://img.shields.io/badge/使用文档-iStore%20OS-brightgreen?style=flat-square)](https://doc.linkease.com/zh/guide/istoreos) [![最新固件下载](https://img.shields.io/github/v/release/Siriling/istoreos-actions?style=flat-square&label=最新固件下载)](../../releases)

![支持设备](https://img.shields.io/badge/支持设备:-blueviolet.svg?style=flat-square) ![H88K](https://img.shields.io/badge/H88K-blue.svg?style=flat-square) ![H66K](https://img.shields.io/badge/H66K-blue.svg?style=flat-square) ![H68K](https://img.shields.io/badge/H68K-blue.svg?style=flat-square) ![H69K](https://img.shields.io/badge/H69K-blue.svg?style=flat-square) ![R5S](https://img.shields.io/badge/R5S-blue.svg?style=flat-square) ![R6S](https://img.shields.io/badge/R6S-blue.svg?style=flat-square) ![R66S](https://img.shields.io/badge/R66S-blue.svg?style=flat-square) ![R68S](https://img.shields.io/badge/R68S-blue.svg?style=flat-square) ![STATION P2](https://img.shields.io/badge/STATION%20P2-blue.svg?style=flat-square) ![T68M](https://img.shields.io/badge/T68M-blue.svg?style=flat-square) ![XGP](https://img.shields.io/badge/XGP-blue.svg?style=flat-square)

# 目录

[一、简介](#一简介)

[二、源代码地址 ](#二源代码地址)

[三、固件](#三固件)

[四、资源](#四资源)

[五、展示](#五展示)

[六、鸣谢](#六鸣谢)

# 一、简介

该项目从[draco-china/istoreos-actions]([https://github.com/draco-china/istoreos-actions](https://github.com/s1545151561/istoreos-5G--))进行定制，添加5G模块官方支持和一些常用插件

# 二、源代码地址

- iStoreOS：https://github.com/istoreos/istoreos

# 三、固件

## 功能特性

- 移除 ddnsto
- 移除 bootstrap 主题
- 添加5G模块官方驱动和官方拨号工具
- 添加5G短信插件
- 添加5G模块管理插件
- 添加以下插件
  - OpenClash
  - ADGuardHome
  - Socat
  - 解锁网易云音乐播放限制
  - UU游戏加速器



## 默认配置

- IP: `http://192.168.10.1` or `http://iStoreOS.lan/`
- 用户名: `root`
- 密码: `password`
- 如果设备只有一个网口，则此网口就是 `LAN` , 如果大于一个网口, 默认第一个网口是 `WAN` 口, 其它都是 `LAN`
- 如果要修改 `LAN` 口 `IP` , 首页有个内网设置，或者用命令 `quickstart` 修改
- 北京时间每天 `0:00` 定时编译, `Release` 中只保留不同架构的最新版本
- 历史版本在 `Actions` 中选择一个已经运行完成且成功的 `workflow` 在页面底部可以看到 `Artifacts`, `Artifacts` 需要登录 Github 才能下载

## 支持架构

- RK33xx
- RK35xx
- x86

## 架构对应的镜像包名称

### RK33xx 架构

| 设备                | 包名称                                                       |
| ------------------- | ------------------------------------------------------------ |
| R2S                 | istoreos-rockchip-armv8-friendlyarm_nanopi-r2s-squashfs-sysupgrade.img.gz |
| R4S                 | istoreos-rockchip-armv8-friendlyarm_nanopi-r4s-squashfs-sysupgrade.img.gz |
| R4SE                | istoreos-rockchip-armv8-friendlyarm_nanopi-r4se-squashfs-sysupgrade.img.gz |
| ARMSOM P2-PRO       | istoreos-rockchip-armv8-armsom_p2-pro-squashfs-sysupgrade.img.gz |
| ROCKPRO64           | istoreos-rockchip-armv8-pine64_rockpro64-squashfs-sysupgrade.img.gz |
| ROCK-Pi-4A          | istoreos-rockchip-armv8-radxa_rock-pi-4a-squashfs-sysupgrade.img.gz |
| ROCKCHIP RK3308 EVB | istoreos-rockchip-armv8-rockchip_rk3308_evb-squashfs-sysupgrade.img.gz |

### RK35xx 架构

| 设备           | 包名称                                                       |
| -------------- | ------------------------------------------------------------ |
| H28K           | istoreos-rockchip-rk35xx-hlink_h28k-squashfs-sysupgrade.img.gz |
| H66K/H68K/H69K | istoreos-rockchip-rk35xx-hinlink_opc-h6xk-squashfs-combined.img.gz |
| H88K           | istoreos-rockchip-rk35xx-hinlink_h88k-squashfs-combined.img.gz |
| NANOPI-R5S     | istoreos-rockchip-rk35xx-friendlyarm_nanopi-r5s-squashfs-combined.img.gz |
| NANOPI-R6S     | istoreos-rockchip-rk35xx-friendlyarm_nanopi-r6s-squashfs-combined.img.gz |
| R66S/R68S      | istoreos-rockchip-rk35xx-fastrhino_r6xs-squashfs-combined.img.gz |
| STATION-P2     | istoreos-rockchip-rk35xx-firefly_station-p2-squashfs-combined.img.gz |
| T68M           | istoreos-rockchip-rk35xx-lyt_t68m-squashfs-combined.img.gz   |
| XGP            | istoreos-rockchip-rk35xx-nlnet_xgp-squashfs-combined.img.gz  |

### x86 架构

| 启动       | 包名称                                              |
| ---------- | --------------------------------------------------- |
| X86-64     | istoreos-x86-64-generic-squashfs-combined.img.gz    |
| X86-64-EFI | storeos-x86-64-generic-squashfs-combined-efi.img.gz |

# 四、资源

- 5G模组拨号脚本：[点击查看](https://github.com/Siriling/istoreos-actions/tree/main/tools/5G%E6%A8%A1%E7%BB%84%E6%8B%A8%E5%8F%B7%E8%84%9A%E6%9C%AC)
- 5G模组使用教程：[点击查看](https://blog.siriling.com:1212/2023/03/18/openwrt-5g-modem/)
