# 安卓时钟悬浮窗应用

## 项目介绍
这是一个简单的安卓时钟悬浮窗应用，允许用户在屏幕上显示一个可拖动的实时时钟。

## 功能特性
- 实时时钟显示
- 可拖动调整位置
- 半透明背景设计
- 适配Android 5.0+

## 项目结构
```
app/
├── src/main/
│   ├── AndroidManifest.xml       # 应用配置文件
│   ├── java/com/example/floatingclock/
│   │   ├── MainActivity.java     # 主界面
│   │   └── FloatingService.java  # 悬浮窗服务
│   └── res/
│       ├── drawable/
│       │   └── clock_background.xml  # 悬浮窗背景
│       ├── layout/
│       │   ├── activity_main.xml     # 主界面布局
│       │   └── floating_clock.xml    # 悬浮窗布局
│       └── values/
│           ├── colors.xml       # 颜色定义
│           ├── strings.xml      # 字符串资源
│           └── styles.xml       # 应用主题
└── build.gradle                 # 应用构建配置
```

## 构建和运行

### 前提条件
1. 安装Android Studio
2. 安装Java JDK 8+
3. 配置Android SDK

### 构建步骤
1. 打开Android Studio
2. 选择"Open an existing project"
3. 导航到项目目录并选择
4. 等待Gradle同步完成
5. 点击"Build" > "Build Bundle(s) / APK(s)" > "Build APK(s)"
6. 构建完成后，APK文件将生成在 `app/build/outputs/apk/debug/` 目录

### 运行步骤
1. 在Android设备上启用"开发者选项"
2. 启用"USB调试"
3. 将设备连接到计算机
4. 在Android Studio中点击"Run" > "Run 'app'"
5. 选择连接的设备并点击"OK"

### 权限要求
- **SYSTEM_ALERT_WINDOW**：用于显示悬浮窗
- **FOREGROUND_SERVICE**：用于在后台运行服务

## 使用方法
1. 打开应用
2. 点击"Start Floating Clock"按钮
3. 如果是首次使用，系统会提示请求悬浮窗权限，请允许
4. 悬浮窗会显示在屏幕上，显示当前时间
5. 可以拖动悬浮窗到任意位置
6. 点击"Stop Floating Clock"按钮停止服务

## 技术实现
- 使用`WindowManager`创建悬浮窗
- 使用`Handler`实现时间的实时更新
- 使用`Service`作为后台服务
- 使用`Notification`确保服务在后台运行
- 适配不同Android版本的悬浮窗权限要求
