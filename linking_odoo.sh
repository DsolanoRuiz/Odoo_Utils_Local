# ------- Environment variables ---------

# Odoo Version 
VERSION= "v14"
BRANCH="14.0"


#------- Create soft links of all files in all directories of the folders in the OCA folder ------#
for dir in *
  do
  if [ $dir = "server" ]
    then
    continue
  else
    ln -s /home/${USER}/odoo/${BRANCH}/oca_repos/$dir/*  /home/${USER}/odoo/${BRANCH}/custom_addons/
    rm /home/${USER}/odoo/${BRANCH}/custom_addons/README.md
    rm /home/${USER}/odoo/${BRANCH}/custom_addons/LICENSE
    rm /home/${USER}/odoo/${BRANCH}/custom_addons/requirements.txt
  fi
done