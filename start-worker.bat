@echo off
cd /d "%~dp0worker"
if not exist .venv (
    python -m venv .venv
    echo 仮想環境を作成しました
)
call .venv\Scripts\activate
pip install -r requirements.txt -q
echo Worker を起動します (http://localhost:8000)
uvicorn src.main:app --reload --port 8000
