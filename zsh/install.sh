
if [ "${SHELL}" != "/usr/local/bin/zsh" ]; then
  sudo sh -c "echo '/usr/local/bin/zsh' >> /etc/shells" && chsh -s /usr/local/bin/zsh
fi
