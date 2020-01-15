case "$USER" in vagrant|root|deploy)
    if [[ $- == *i* ]] ; then
        echo -e "$(cat /etc/ansible_motd.d/* )\n"
    fi
esac
