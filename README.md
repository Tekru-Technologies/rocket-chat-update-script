# Rocket.Chat Update Script

This repository contains a simple shell script to automate the process of updating a self-hosted Rocket.Chat instance. The script handles downloading the latest version, backing up the current installation, updating files, setting permissions, and restarting the service.

## How to Use the Script

### Prerequisites

- Root access to the server where Rocket.Chat is installed.
- Rocket.Chat installed at `/opt/Rocket.Chat` (or modify the script to reflect your installation path).
- Backup your data before running the script.

### Steps to Use the Script:

1. Clone this repository:

```bash
git clone https://github.com/your-username/rocket-chat-update-script.git
cd rocket-chat-update-script
```

2. Make the script executable:

```bash
chmod +x update-rocket-chat.sh
```

3. Run the script as root:

```bash
sudo ./update-rocket-chat.sh
```

### License

Released under the MIT License.
