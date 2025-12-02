# Costa Install
This repository contains the installation files for [Costa](https://costa.security), the world's most secure AI Coding platform.

## Installation for Continue

### Prerequisites
1. **Continue Extension**: Install Continue in your editor
   - [VS Code Extension](https://marketplace.visualstudio.com/items?itemName=Continue.continue)
   - [JetBrains Plugin](https://plugins.jetbrains.com/plugin/22707-continue)
2. **Costa API Key**: Get your API key from [Costa](https://costa.security)

### Quick Install

#### Mac / Linux
```bash
curl -fsSL https://raw.githubusercontent.com/costa-security/install/main/continue/init.sh | bash -s -- <your-api-key>
```

#### Windows
```powershell
powershell -ExecutionPolicy Bypass -Command "& ([scriptblock]::Create((Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/costa-security/install/main/continue/init.ps1' -UseBasicParsing).Content)) -ApiKey '<your-api-key>'"
```

Replace `<your-api-key>` with your actual Costa API key (format: `csai-ca-abc123def...`)

### Configuration
After installation, the Costa configuration will be automatically added to your Continue setup at `~/.continue/config.yaml`. The configuration includes:
- **💫 Costa Auto Router**: Automatically selects the best AI model for your task
- **Multiple AI Models**: Access to Gemini, Claude, GPT, and Llama models
- **Tool Use**: Enhanced capabilities for code generation and analysis

## Installation for Claude Code

### Prerequisites
1. **Claude Code**: Install Claude Code from [Claude Code](https://claude.ai/code)
2. **Costa API Key**: Get your API key from [Costa](https://costa.security)

### Quick Install

#### Mac / Linux
```bash
curl -fsSL https://raw.githubusercontent.com/costa-security/install/main/claude/init.sh | bash -s -- <your-api-key>
```

#### Windows
```powershell
powershell -ExecutionPolicy Bypass -Command "& ([scriptblock]::Create((Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/costa-security/install/main/claude/init.ps1' -UseBasicParsing).Content)) -ApiKey '<your-api-key>'"
```

Replace `<your-api-key>` with your actual Costa API key (format: `csai-ca-abc123def...`)

### Configuration
After installation, the Costa configuration will be automatically added to your Claude Code setup at `~/.claude/settings.json`. The configuration includes:
- **💫 Costa Auto Router**: Automatically selects the best AI model for your task
- **Environment Variables**: Pre-configured environment variables for Claude Code
- **Always Thinking**: Enabled by default for continuous assistance

## Support
- **Documentation**: [Costa Docs](https://docs.costa.security)
- **Community**: [Discord](https://discord.com/invite/B6NPUAgYmH)
- **Issues**: [GitHub Issues](https://github.com/costa-security/install/issues)

## License
This project is licensed under the MIT License.
