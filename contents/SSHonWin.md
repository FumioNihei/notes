方法は二つ．前者のほうがはるかに楽．
- `powershell`から`ssh`
- `WSL`から`ssh`

# powershellからssh
2018年のアップデートで，`powershell`から`ssh`が呼べるようになっています．あなたのwindowsが最新版にupdateされているならすぐにsshできます．

powershellを呼び出した後（see -> [[powershell]]），以下のコマンドを打ってください．

```
ssh <USER_NAME>@192.168.11.xxx
```

（必要なら）sshの鍵は`C:\Users\<USER_NAME>\.ssh`に配置してください．

# WSLからssh
ストアアプリからUbuntuを検索してダウンロードする．Linuxシェルを立ち上げたあと，以下のコマンド．

```
ssh <USER_NAME>@192.168.11.xxx
```

ちなみに，winのexplorerに`\\wsl$`と打つと，ファイルシステムにアクセスできます．

# おまけ：sshでファイル送る，受け取る

`scp`コマンドを使う．

送る場合
```
# ファイルの場合
# scp -P <ssh_port> -i <secret_path> <file_src> <user>@<local_machine>:<file_dest>
scp -P 22 -i ~/.ssh/id_rsa file.txt iui@192.168.11.xxx:/home/iui/

# ディレクトリの場合
# scp -P <ssh_port> -i <secret_path> -rq <dir_src> <user>@<local_machine>:<file_dest>
scp -P 22 -i ~/.ssh/id_rsa -rq dir/ iui@192.168.11.xxx:/home/iui/
```

受け取る場合
```
まだ書いてないよ！
```