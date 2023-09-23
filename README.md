# ppa
如何使用本库：

curl -s --compressed "https://XXTX-TOP.github.io/ppa/kernel/kernel-ppa-KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/kernel-ppa-KEY.gpg >/dev/null

sudo curl -s --compressed -o /etc/apt/sources.list.d/my_list_file.list "deb  https://XXTX-TOP.github.io/ppa/kernel/my_list_file.list"

sudo apt update