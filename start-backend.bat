@echo off
cd /d "%~dp0backend"
if not exist node_modules npm install
echo Backend を起動します (http://localhost:3001)
npm run dev
