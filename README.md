###(c) 2025 Lin Honghan

# VMwork Virtual Machine Manager

## 📖 中文说明

### 项目简介
VMwork 是一款基于Windows的虚拟机模拟器，提供图形化界面管理，支持运行汇编程序(.asm)和软盘镜像(.img)。模拟BIOS中断调用，实现基本的显示和输入功能。

### 主要功能
- 🖥️ 图形界面管理虚拟机配置
- ⚙️ 支持汇编源码直接运行
- 💾 可加载/反编译.img软盘镜像
- ⌨️ 模拟BIOS键盘中断(INT 16h)
- 📺 模拟文本模式显示(INT 10h)
- 🔄 历史配置自动保存
- 🎨 彩色控制台输出支持

### 运行要求
- Windows 7+ (或Linux)
- C/C++ 运行时库
- 管理员权限(部分功能需要)

### 安装使用
1. 下载最新Release包
2. 解压到英文路径(避免空格)
3. 确保包含以下文件：
   - `VMwork.exe`
   - `ndisasm.exe`
   - `toasm.exe`
4. 双击运行`VMwork.exe`

### 使用说明
1. **新建虚拟机**  
   - 选择.asm或.img文件
   - 输入虚拟机名称
   - 自动保存配置

2. **运行虚拟机**  
   - 从列表选择配置
   - 进入全屏模拟模式
   - 按任意键返回管理器

3. **键盘输入**  
   - 专用控制台窗口接收输入
   - 支持Shift/Caps Lock状态
   - Esc键退出程序

### 注意事项
⚠️ 系统安全模式下不可用  
⚠️ 路径不要包含中文或空格  
⚠️ 杀毒软件可能误报(添加信任)  
⚠️ 需要保留同目录工具程序

### 代码结构
main.cpp
├── GUI/ # 图形界面模块

├── VM/ # 虚拟机核心

│ ├── BIOS/ # 中断模拟

│ └── Parser/ # 指令解析

├── config/ # 配置管理

└── tools/ # 反编译工具

### 问题反馈
提交Issue至[项目仓库](https://github.com/linhhanpy/VMwork)  
或联系：lhh_88888888@qq.com

---

## 📖 English Documentation

### Project Overview
VMwork is a Windows-based virtual machine emulator with GUI management. Supports running assembly programs (.asm) and floppy disk images (.img), emulating BIOS interrupts for basic display and input operations.

### Key Features
- 🖥️ Graphical VM Configuration Management
- ⚙️ Direct Assembly Source Execution
- 💾 .IMG Floppy Image Loading/Disassembly
- ⌨️ BIOS Keyboard Interrupt Simulation (INT 16h)
- 📺 Text Mode Display Emulation (INT 10h)
- 🔄 Automatic Configuration Saving
- 🎨 Color Console Output Support

### System Requirements
- Windows 7+ (or Linux)
- C/C++ Redistributable
- Administrator Privileges (for certain features)

### Installation
1. Download latest Release package
2. Extract to English path (no spaces)
3. Verify required files:
   - `VMwork.exe`
   - `ndisasm.exe`
   - `toasm.exe`
4. Double-click `VMwork.exe`

### Quick Start
1. **Create VM**  
   - Select .asm/.img file
   - Name your VM
   - Config auto-saves

2. **Run VM**  
   - Select from config list
   - Enter full emulation mode
   - Press any key to return

3. **Keyboard Input**  
   - Dedicated console window
   - Supports Shift/Caps Lock states
   - Esc to exit program

### Important Notes
⚠️ Not compatible with Safe Mode  
⚠️ Use ASCII-only paths  
⚠️ Add exclusion in antivirus  
⚠️ Keep tool files in same directory

### Code Structure
main.cpp

├── GUI/ # Graphical Interface

├── VM/ # VM Core

│ ├── BIOS/ # Interrupt Emulation

│ └── Parser/ # Instruction Parsing

├── config/ # Configuration

└── tools/ # Disassembly Tools
