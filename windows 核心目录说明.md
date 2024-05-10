> `appdata` =>C:\\Users\\用户名\\AppData  
> `%appdata%`=>C:\\Users\\用户名\\AppData\\Roaming  
> `%localappdata%`=>C:\\Users\\用户名\\AppData\\Local  
> `%localappdata%`=>C:\\Users\\用户名\\AppData\\Local

1.  `%appdata%`表示windows的应用程序数据存储路径：C:\\Users\\用户名\\AppData\\Roaming

2\. AppData 中的本地文件夹是什么？

Local文件夹主要包含与安装程序相关的文件夹。其中包含的数据 ( `%localappdata%`) 无法随您的用户配置文件一起移动，因为它特定于 PC，因此太大而无法与服务器同步。例如，Internet Explorer 临时文件存储在Internet 临时文件或Cookies 文件夹下。此外，还有一个 Microsoft 文件夹，您可以在其中找到 Windows 活动的历史记录。

3\. AppData 中的 LocalLow 文件夹是什么？

此 LocalLow 文件夹包含无法移动的数据。此外，它还具有较低级别的访问权限。例如，如果您在受保护或安全模式下运行 Web 浏览器，则应用程序将仅访问 LocalLow 文件夹中的数据。此外，LocalLow 文件夹不会在第二台计算机上创建。因此，访问 LocalLow 文件夹的任何应用程序都可能失败。

4\. AppData 中的 Roaming 文件夹是什么？

Roaming 文件夹是一种可以轻松与服务器同步的文件夹。它的数据可以随着用户的个人资料从 PC 移动到 PC — 就像当您在域中时，您可以轻松登录到任何计算机并访问其收藏夹、文档等。例如，如果您登录到域中的另一台 PC，您的网络浏览器收藏夹或书签将可用。这是公司中漫游配置文件的主要优势之一。用户配置文件数据（复制到服务器），自定义数据始终可用，无论员工使用任何系统。

5\. 我可以删除 AppData LocalLow、Roaming 或 Local 文件夹中的所有内容吗？

您可以删除它们，但您可能会丢失程序设置。由于它们是受系统保护的文件夹，您可能需要启动到安全模式才能删除它们。

简而言之：

ProgramData文件夹包含非用户特定的全局应用程序数据，并且可供计算机上的所有用户使用。任何全局数据都放在这里。

AppData文件夹包含用户特定的首选项和配置文件配置，并进一步分为三个子文件夹：

漫游文件夹包含可以随用户配置文件从计算机移动到计算机的数据

本地文件夹包含无法随您的用户配置文件移动的数据。

LocalLow文件夹包括低级访问数据，例如。在受保护模式下运行时浏览器的临时文件。

6\. C:\\Windows\\SystemApps是一个重要的系统文件夹，存放一些系统需要的动态链接库和驱动程序。

7\. C:\\ProgramData系统用户共享目录。XP系统的共享目录是C:\\Documents and Settings\\All Users\\Application Data。从Vista开始，共享目录变为ProgramData。当用户进入C:\\Users\\All Users时，系统自动进入ProgramData目录。

8\. C:\\Users\[username\]\\Documents某些软件(尤其是游戏),选择把软件配置信息存放在Documents下，便于用户找到使用它们(例如软件截图、音视频文件等)

9\. Common Files是公有文件夹的意思,里面的文件以.dll居多,就是我们常说的动态连接库,也叫模块文件!简单来说就是不用启动某一软件,但是可以调用他的一个功能模块文件来实现特定功能.是不能删除的!是NT系统下的重要文件夹

10\. system32是Windows 操作系统的系统文件夹，是操作系统的神经中枢，文件夹中包含了大量的用于Windows操作系统的文件。system32文件夹里主要用于存储 DLL 文件，控制面板小程序(.CPL), 设备驱动 (.drv)，帮助文件 (.hlp 和 .cnt), MS-DOS 工具 (.com)，语言支持文件 (.nls)，屏幕保护 (.scr)，安装信息文件 (.inf)，以及其它用于支持、配置、或操作的文件。

11\. Syswow64（Windows-on-Windows 64-bit）是一个Windows操作系统的子系统， 能够运行32-bit 应用 windows操作系统程序， 并且在所有的64-bit 版本的windows上都存在，包括：Windows 2000 Limited Edition Windows XP Professional x64 Edition，and IA-64 64-bit版本的Windows Server 2003 64-bit版本的Windows Vista 64-bit版本的Windows Server 2008 64-bit版本的Windows 7在Windows server 2008 R2上，这是一个可选组件。WoW64被设计用来处理许多在32-bit Windows 和64-bit Windows 之间的不同， 尤其是在Windows自身的结构变化上的不同。可以负责任的说syswow64是一个很重要的文件夹，你的64位win7旗舰版能运行32位的软件全靠它。

转载自：[AppData文件夹下Local，Locallow和Roaming_老朽在门外的博客-CSDN博客_localappdata具体路径](https://blog.csdn.net/weixin_41167925/article/details/125479474?ops_request_misc=&request_id=&biz_id=102&utm_term=%E5%BF%AB%E9%80%9F%E6%89%93%E5%BC%80%20AppData%5CLocal&utm_medium=distribute.pc_search_result.none-task-blog-2~all~sobaiduweb~default-3-125479474.142%5Ev35%5Eexperiment_28w_v1&spm=1018.2226.3001.4187)

参考：

1\. [https://www.thewindowsclub.com/local-localnow-roaming-folders-windows-10](https://www.thewindowsclub.com/local-localnow-roaming-folders-windows-10)

2\. [Windows 11/10 上 AppData 中的 Local、LocalLow 和 Roaming 文件夹解释](https://www.cnblogs.com/2018shawn/p/15847915.html)