#!/bin/bash

# إنشاء هيكل المشروع
npx create-tauri-app@latest -y -n ai-chat -f vanilla -l javascript -p npm

# الانتقال لمجلد المشروع
cd ai-chat

# تثبيت الاعتمادات
npm install express pdf-parse tesseract.js ollama-node sqlite3 axios concurrently

# إنشاء مجلد الخادم وملفاته
mkdir server
cat > server/index.js << 'EOL'
// محتوى server/index.js الذي سبق تقديمه
EOL

# إنشاء ملفات الواجهة
cat > src/App.jsx << 'EOL'
// محتوى App.jsx الذي سبق تقديمه
EOL

cat > src/App.css << 'EOL'
/* محتوى App.css الذي سبق تقديمه */
EOL

# تعديل package.json
npm pkg set scripts.start="concurrently \"node server/index.js\" \"vite\" \"tauri dev\""
