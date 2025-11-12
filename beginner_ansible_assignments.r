rohit@rohits-ubuntu:~/workspace/repo/github/learn_ansible$ ls
ansible.cfg  create_file.yml  gather_facts.yml  hello.yml  install_package.yml  inventory.ini  inventory.yml  multipass_inventory.py  setup.yml  test.yml  using_variables.yml  venv
rohit@rohits-ubuntu:~/workspace/repo/github/learn_ansible$ ansible-playbook -i inventory.ini hello.yml 
[WARNING]: Failed to load inventory plugin, skipping theko2fi.multipass.multipass

PLAY [Print Hello World] ***************************************************************************************************************************************************************

TASK [Displaying Hello World message] **************************************************************************************************************************************************
ok: [ansible-node1] => {
    "msg": "Hello, World!"
}
ok: [ansible-node2] => {
    "msg": "Hello, World!"
}

PLAY RECAP *****************************************************************************************************************************************************************************
ansible-node1              : ok=1    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
ansible-node2              : ok=1    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

rohit@rohits-ubuntu:~/workspace/repo/github/learn_ansible$ ansible-playbook -i inventory.ini create_file.yml 
[WARNING]: Failed to load inventory plugin, skipping theko2fi.multipass.multipass

PLAY [Create a file with content and set permissions] **********************************************************************************************************************************

TASK [Gathering Facts] *****************************************************************************************************************************************************************
ok: [ansible-node1]
ok: [ansible-node2]

TASK [Create or overwrite /tmp/ansible_test.txt with content] **************************************************************************************************************************
changed: [ansible-node2]
changed: [ansible-node1]

PLAY RECAP *****************************************************************************************************************************************************************************
ansible-node1              : ok=2    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
ansible-node2              : ok=2    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

rohit@rohits-ubuntu:~/workspace/repo/github/learn_ansible$ ls
ansible.cfg  create_file.yml  gather_facts.yml  hello.yml  install_package.yml  inventory.ini  inventory.yml  multipass_inventory.py  setup.yml  test.yml  using_variables.yml  venv
rohit@rohits-ubuntu:~/workspace/repo/github/learn_ansible$ ansible-playbook -i inventory.ini gather_facts.yml 
[WARNING]: Failed to load inventory plugin, skipping theko2fi.multipass.multipass

PLAY [Gather and display system facts] *************************************************************************************************************************************************

TASK [Gathering Facts] *****************************************************************************************************************************************************************
ok: [ansible-node2]
ok: [ansible-node1]

TASK [Gather facts] ********************************************************************************************************************************************************************
ok: [ansible-node2]
ok: [ansible-node1]

TASK [Print hostname] ******************************************************************************************************************************************************************
ok: [ansible-node1] => {
    "msg": "Hostname: ansible-node1"
}
ok: [ansible-node2] => {
    "msg": "Hostname: ansible-node2"
}

TASK [Print OS family] *****************************************************************************************************************************************************************
ok: [ansible-node1] => {
    "msg": "OS Family: Debian"
}
ok: [ansible-node2] => {
    "msg": "OS Family: Debian"
}

TASK [Print primary IP address] ********************************************************************************************************************************************************
ok: [ansible-node1] => {
    "msg": "IP Address: 10.37.105.52"
}
ok: [ansible-node2] => {
    "msg": "IP Address: 10.37.105.239"
}

PLAY RECAP *****************************************************************************************************************************************************************************
ansible-node1              : ok=5    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
ansible-node2              : ok=5    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

rohit@rohits-ubuntu:~/workspace/repo/github/learn_ansible$ ls
ansible.cfg  create_file.yml  gather_facts.yml  hello.yml  install_package.yml  inventory.ini  inventory.yml  multipass_inventory.py  setup.yml  test.yml  using_variables.yml  venv
rohit@rohits-ubuntu:~/workspace/repo/github/learn_ansible$ ansible-playbook -i inventory.ini install_package.yml 
[WARNING]: Failed to load inventory plugin, skipping theko2fi.multipass.multipass

PLAY [Install and start web server] ****************************************************************************************************************************************************

TASK [Gathering Facts] *****************************************************************************************************************************************************************
ok: [ansible-node1]
ok: [ansible-node2]

TASK [Install web server package] ******************************************************************************************************************************************************
ok: [ansible-node2]
ok: [ansible-node1]

TASK [Ensure web server service is running] ********************************************************************************************************************************************
ok: [ansible-node1]
ok: [ansible-node2]

PLAY RECAP *****************************************************************************************************************************************************************************
ansible-node1              : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
ansible-node2              : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

rohit@rohits-ubuntu:~/workspace/repo/github/learn_ansible$ ansible-playbook -i inventory.ini using_variables.yml 
[WARNING]: Failed to load inventory plugin, skipping theko2fi.multipass.multipass

PLAY [Using variables for package and service names] ***********************************************************************************************************************************

TASK [Gathering Facts] *****************************************************************************************************************************************************************
ok: [ansible-node1]
ok: [ansible-node2]

TASK [Install package using variable] **************************************************************************************************************************************************
ok: [ansible-node2]
ok: [ansible-node1]

TASK [Start service using variable] ****************************************************************************************************************************************************
ok: [ansible-node2]
ok: [ansible-node1]

PLAY RECAP *****************************************************************************************************************************************************************************
ansible-node1              : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
ansible-node2              : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
