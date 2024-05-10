# [Sublime-text 4 下载 激活 汉化](https://zhuanlan.zhihu.com/p/555331036)

### 1. 下载

官网下载 [Sublime Text](https://www.sublimetext.com/)


### 2. 激活

安装之后，使用 `sublime text` 打开安装目录下的`sublime_text.exe`文件。

`Ctrl + F` 搜到到

```
80 7805 000f
94c1
```

更改为

```
c6 4005 0148
85c9
```

### 3. 汉化


1. 点击 `Tools —> Install Package Control`（安装包控件比较慢，并且没有反应，等待数分钟后会有弹窗）
2. 点击确定按钮
3. 菜单点击 `Preferences –> Package Control`
4. 输入 `Install Package`（安装包控件比较慢，并且没有反应，等待数分钟后会有弹窗）
5. 输入 `ChineseLocalzations` 可见中文包，选中即可安装

#### 中文乱码问题

1. 点击菜单栏「Preferences」下的「Package Control」
2. 进入Package Control，选择「Install Package」命令
3. 进入安装界面，输入并选择「ConvertToUTF8」
4. 成功安装「ConvertToUTF8」之后，乱码问题就解决了。

#### 更改显示字体

1. 点击菜单栏「Preferences」下的「settings」
2. 参照系统默认配置，找到更改字体这一项，复制到用户这一栏的大括号内（ {} ）进行编辑
3. 在 " " 中填入想要更改的字体(注，字体必须为电脑已安装的字体，字体名字建议前往控制面板查看，不要输错，否则无反应)
- 这里我使用的是JetBrains家的一款字体 JetBrains Mono ,更改字号为12号

#### 设置底部状态栏显示当前编码格式

1. 点击菜单栏「Preferences」下的「settings」
2. 弹出配置文件窗口
3. 找到对应位置（第611行），在用户自定义栏进行编辑
4. 可以看到，底部状态栏显示当前编码格式为UTF-8

### 4. 使用经验

