# scoop 安装和使用

[参考](https://blog.bling.moe/post/11/)
[using scoop](https://muxiner.github.io/using-scoop/)

## 1. 安装

### PowerShell 运行以下脚本

```PS1
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
或者
iwr -useb get.scoop.sh | iex
```

**可能出现的错误：**

在安装 7zip 的时候出现错误

`Extracting 7z2301-x64.msi ... ERROR Exit code was 1639!`

可能是指定的文件目录存在`中文`,`空格`或者是太长了，导致在 `windows install` 安装文件时出现错误。

### 设置安装目录

- 设置用户目录：

```PS1
$env:SCOOP='E:\scoop'
[Environment]::SetEnvironmentVariable('USERSCOOP', $env:SCOOP, 'User')
```

- 设置全局目录：

```PS1
$env:SCOOP_GLOBAL='E:\scoop'
[Environment]::SetEnvironmentVariable('SCOOP_GLOBAL', $env:SCOOP_GLOBAL, 'Machine')
```


### Scoop 目录含义：

简单解释下子目录中其他文件夹的含义：

- `apps` —— 所有通过scoop安装的软件都在里面。
- `buckets` —— 管理软件的仓库，用于记录哪些软件可以安装、更新等信息，默认添加main仓库，主要包含无需GUI的软件，可手动添加其他仓库或自建仓库，具体在推荐软件仓库中介绍。
- `cache` —— 软件下载后安装包暂存目录。
- `persit` —— 用于储存一些用户数据，不会随软件更新而替换。
- `shims` —— 用于软链接应用，使应用之间不会互相干扰，实际使用过程中无用户操作不必细究。

### Scoop 中 aria2 的说明

如果没有安装 aria2，会按默认的方式下载，如果安装了 aria2，则会使用 aria2 下载。

安装 aria2 后，运行 `scoop install` 会显示警告信息，可以通过 `scoop config aria2-warning-enabled false` 关闭警告信息。

让 Scoop 使用 aria2

`scoop config aria2-enabled true`

让 Scoop 不使用 aria2

`scoop config aria2-enabled false`

aria2 还有其他一些可设置的参数：

```PS1
aria2-enabled (default: true)                    
aria2-warning-enabled (default: true)             
aria2-retry-wait (default: 2)                     
aria2-split (default: 5)
aria2-max-connection-per-server (default: 5)
aria2-min-split-size (default: 5M)
aria2-options (default: )

使用 scoop config 命令可以对 Aria2 进行设置，比如 scoop config aria2-enabled false 可以禁止调用 Aria2 下载。以下是与 Aria2 有关的设置选项：

`aria2-enabled`: 开启 Aria2 下载，默认true
`aria2-retry-wait`: 重试等待秒数，默认2
`aria2-split`: 单任务最大连接数，默认5
`aria2-max-connection-per-server`: 单服务器最大连接数，默认5 ，最大16
`aria2-min-split-size`: 最小文件分片大小，默认5M
在这里推荐以下优化设置，单任务最大连接数设置为 32，单服务器最大连接数设置为 16，最小文件分片大小设置为 1M
```


### Scoop 设置代理

如果你所使用的网络恰好不能用 GitHub, 尽管 GitHub 被和谐的可能性已经很小了，你可能还是需要科学上网才能访问。

执行此命令可以要求 Scoop 使用给定的代理：

```PS1
scoop config proxy <协议>://[<用户名>:<密码>@]<域名>[:端口]
```

要取消代理设置，执行此命令：

```PS1
scoop config rm proxy
```

### Scoop 常用命令

scoop bucket known  列出已知的 bucket

```PS1
alias            管理 scoop 别名
bucket           管理 Scoop buckets
cache            显示或清除下载缓存
cat              显示指定清单的内容。如果有的话，'cat'将被用于漂亮地打印JSON。
checkup          检查潜在问题
cleanup          通过删除旧版本清理应用程序
config           获取或设置配置值
create           创建自定义应用程序清单
depends          列出一个应用程序的依赖项
download         下载缓存文件夹中的应用程序并验证哈希值
export           导出（可导入）已安装的应用程序的列表
help             显示一个命令的帮助
hold             按住一个应用程序以禁用更新
home             打开应用程序的主页
info             显示一个应用程序的信息
install          安装应用
list             列出已安装的应用程序
prefix           返回指定应用程序的路径
reset            重置一个应用程序以解决冲突
search           搜索可用的应用程序
shim             操纵Scoop shims
status           显示状态并检查新的应用程序版本
unhold           解除对一个应用程序的控制，使其能够更新
uninstall        卸载一个应用程序
update           新应用程序或Scoop本身
virustotal       在virustotal.com上寻找应用程序的哈希值
which            找到一个shim/executable（类似于Linux上的'which'）
```

### Scoop 常用仓库

```PS1
scoop install git # 先安装 Git, 这是添加 Bucket 的前置
scoop bucket add 仓库名
```
常用的仓库

```PS1

```

### Scoop 卸载软件

要卸载一个软件，只需要输入：

`scoop uninstall <包名>`

卸载 Scoop 本体

要彻底干掉 Scoop （不知道你为啥要这么做）， 只需要输入：

`scoop uninstall scoop`

它就会自己完成卸载。

如果你希望修复一个损坏的安装， 通过删除家目录下的 .scoop 文件夹即可进行重新安装。

```PS1
# 更新 scoop 及软件包列表
$ scoop update
# 非全局安装（并禁止安装包缓存）
$ scoop install -k <app>
# 全局安装（并禁止安装包缓存）
$ sudo scoop install -gk <app>
# 卸载非全局软件（并删除配置文件）
$ scoop uninstall -p <app>
# 卸载全局软件（并删除配置文件）
$ sudo scoop uninstall -gp <app>
# 更新所有非全局软件（并禁止安装包缓存）
$ scoop update -k *
# 更新所有软件（并禁止安装包缓存）
$ sudo scoop update -gk *
# 删除所有旧版本非全局软件（并删除软件包缓存）
$ scoop cleanup -k *
# 删除所有旧版本软件（并删除软件包缓存）
$ sudo scoop cleanup -gk *
# 清除软件包缓存
$ scoop cache rm *
```


### 迁移与维护

    注意：若有他人已安装的 Scoop 软件，则无法通过网络安装的读者可采用该方法迁移安装。

因 Scoop 本身绿色环保，故当装或重装新系统后可通过如下简单步骤迁移已安装软件与配置文件至新平台，以便快速进入工作状态：

#### 在已有平台上的准备工作

- 进入通过 Scoop 安装的应用程序路径（如D:\scoop\apps），该路径中包括所有通过 Scoop 安装的软件，依次进入每个文件夹（scoop文件夹除外）并删除其内的current快捷方式，否则在压缩时该快捷方式将变成实际文件夹，并与原始文件夹重复，造成压缩文件翻倍；
- 利用 Windows 自带工具压缩 Scoop 文件夹（如D:\scoop）为zip文件（如scoop.zip），以便在新系统中能顺利解压，其他压缩格式可能无法顺利解压。

#### 在新平台上所作的工作

- 做好安装与卸载的前提条件小节中的准备工作；
- 将scoop.zip压缩包解压至指定安装路径（如D:\newscoop），并确保该路径下包含apps、buckets、persist、shims等文件夹；
- 修改环境变量，以让系统识别scoop命令：
    - 添加新环境变量SCOOP，其值为上述解压路径（如D:\newscoop）；
    - 修改环境变量PATH的值，在该值中添加新项%SCOOP%\shims；
- 重启 PowerShell 并用reset子命令重置所有软件快捷方式：

    scoop reset *

#### 重装系统后恢复 Scoop 

```PS1
[Environment]::SetEnvironmentVariable('SCOOP', 'D:\Users\DemoUser\Scoop', 'User')
[Environment]::SetEnvironmentVariable('SCOOP_GLOBAL', 'D:\Scoop', 'Machine')
[Environment]::SetEnvironmentVariable('Path', [Environment]::GetEnvironmentVariable('Path', 'User') + "; " + [Environment]::GetEnvironmentVariable('SCOOP', 'User') + "\shims", 'User')
# 注意下面的命令需要管理员权限。
[Environment]::SetEnvironmentVariable('Path', [Environment]::GetEnvironmentVariable('Path', 'Machine') + "; " + [Environment]::GetEnvironmentVariable('SCOOP_GLOBAL', 'Machine') + "\shims", 'Machine')
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

```
恢复所有 Scoop 安装的软件。

```PS1
scoop reset *
```

然后你就会发现，原来使用 Scoop 安装的所有软件都恢复了。


## 2. Scoop 安装的软件

```PS1
scoop install sudo
sudo scoop install 7zip git openssh --global
scoop install aria2 curl grep sed less touch
scoop install python ruby go perl
```




