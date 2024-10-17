Установить доплнения:    ansible-galaxy collection install community.mysql

Запуск:   ansible-playbook -i inventory.yml joomla-install.yml -e "@~/task/pass.vault" --ask-vault-pass