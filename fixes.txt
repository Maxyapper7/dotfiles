
### Desktop ###

# Fix LightDM Login Screen
Add `active-monitor = 0` to /etc/lightdm/lightdm-gtk-greeter.conf

# Audio quite despite being at max volume
run `alsamixer` and increase the db loss

# Universal Dark mode not working
Go to the themes app and click on the settings tab. Under Miscellaneous change the "Dark mode" setting

# Config Git
Use https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
Then run this `git remote set-url origin git@github.com:Maxyapper7/dotfiles.git`

# Mount SMB Drive at Startup
Add this to `/etc/fstab`: `//[IP]/[USERNAME] /mnt/toronto cifs username=[USERNAME],pass=[PASSWORD],rw,uid=1000,gid=1000 0 0`
Then run `sudo mount -av`

# Kanta not working
Make sure to set this up: https://github.com/jtroo/kanata/blob/main/docs/setup-linux.md
