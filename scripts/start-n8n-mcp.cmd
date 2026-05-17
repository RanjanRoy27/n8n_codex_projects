@echo off
setlocal

set "WORKSPACE=D:\n8n_projects_Codex"
set "N8N_MCP_DIR=%WORKSPACE%\n8n-mcp"

set "MCP_MODE=stdio"
set "LOG_LEVEL=error"
set "DISABLE_CONSOLE_OUTPUT=true"
set "N8N_MCP_TELEMETRY_DISABLED=true"

if not defined N8N_API_KEY if exist "%WORKSPACE%\apin8n.txt" (
  set /p N8N_API_KEY=<"%WORKSPACE%\apin8n.txt"
)

if not defined N8N_API_URL if exist "%WORKSPACE%\secrets\n8n_url.txt" (
  set /p N8N_API_URL=<"%WORKSPACE%\secrets\n8n_url.txt"
)

if defined N8N_API_URL (
  echo %N8N_API_URL% | findstr /i "localhost 127.0.0.1 host.docker.internal" >nul
  if not errorlevel 1 set "WEBHOOK_SECURITY_MODE=moderate"
)

cd /d "%N8N_MCP_DIR%"
node "%N8N_MCP_DIR%\dist\mcp\stdio-wrapper.js"
