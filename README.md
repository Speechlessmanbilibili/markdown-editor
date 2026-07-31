# 📝 Markdown Editor Pro

一个功能丰富的在线 Markdown 编辑器，支持 Word / PDF 导入导出、实时预览、深色/浅色主题。

## ✨ 功能

- **📝 Markdown 编辑** — 分屏实时预览，语法高亮，丰富的格式化工具栏
- **📥 文件导入** — 拖放或点击导入 Word (.docx) / PDF / TXT / Markdown 文件，自动转换为 Markdown
- **📤 多格式导出** — 一键导出为 Markdown (.md)、Word (.doc)、PDF（通过浏览器打印）
- **🌓 深色/浅色主题** — 带圆形扩散过渡动画的主题切换
- **💾 自动保存** — 编辑内容自动保存到服务器，支持多文档管理
- **📋 大纲导航** — 自动生成文档大纲，点击跳转
- **🔍 查找替换** — 支持 Ctrl+F 查找、逐个替换和全部替换
- **⌨️ 快捷键** — Ctrl+B 粗体、Ctrl+I 斜体、Ctrl+K 链接、Ctrl+S 保存等

## 🚀 快速开始

### 环境要求

- [Node.js](https://nodejs.org/) >= 16

### 安装与运行

```bash
# 1. 克隆仓库
git clone https://github.com/Speechlessmanbilibili/markdown-editor.git
cd markdown-editor

# 2. 安装依赖
npm install

# 3. 启动服务
npm start
```

启动后访问 **http://localhost:3055**

### Windows 一键启动

双击 `启动编辑器.bat` 即可自动启动服务并打开浏览器。

## 📡 API 接口

| 方法 | 路径 | 说明 |
|:---|:---|:---|
| POST | `/api/convert-to-markdown` | Word / PDF / TXT → Markdown |
| POST | `/api/convert-to-word` | Markdown → Word (.doc) |
| POST | `/api/convert-to-pdf` | Markdown → PDF 打印页 |
| POST | `/api/markdown-to-print` | Markdown → 直接打印 |
| POST | `/api/preview` | Markdown → HTML 预览 |
| GET | `/api/saves` | 获取保存列表 |
| GET | `/api/saves/:id` | 获取单个保存 |
| POST | `/api/saves` | 创建/更新保存 |
| DELETE | `/api/saves/:id` | 删除保存 |

## 🛠 技术栈

- **后端** — Express + Multer + Mammoth + pdf-parse + Marked
- **前端** — 原生 JavaScript + CSS 动画
- **样式** — CSS Custom Properties + 暗色主题变量
- **文件转换** — Word (.docx) 通过 mammoth 保留标题/样式映射

## 📂 项目结构

```
markdown-editor/
├── server.js              # Express 后端服务
├── package.json
├── public/
│   ├── index.html         # 编辑器主页面
│   ├── css/style.css      # 样式
│   └── js/
│       ├── app.js         # 前端应用逻辑
├── saves/                 # 文档保存目录（本地存储）
├── 启动编辑器.bat           # Windows 一键启动
└── 关闭编辑器.bat           # Windows 关闭服务
```

## 📄 许可证

[MIT](LICENSE)
