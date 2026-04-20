@echo off
cd /d "%~dp0frontend"
if not exist node_modules npm install
echo Frontend を起動します (http://localhost:5173)
npm run dev
