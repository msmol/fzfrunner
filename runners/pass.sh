handle() {
  local pass_entry=$1
  local alt_action=$2
  pass_entry=$(echo "${pass_entry}" | sed "s/^$(get_prefix)//")

  if [[ ${pass_entry} =~ "totp::/" ]]; then
    wl-copy "$(pass otp "${pass_entry}")"
    notify-send "Copied OTP to clipboard" "${pass_entry}"
    exit 0
  fi

  local pass_data="$(pass "${pass_entry}")"

  if [[ ${alt_action} = 1 ]]; then
    wl-copy "$(echo "${pass_data}" | grep login: | sed 's/login: //')"
    notify-send "Copied username to clipboard" "${pass_entry}"
  else
    wl-copy "$(echo "${pass_data}" | head -n 1)"
    notify-send "Copied password to clipboard" "${pass_entry}"
  fi
}

get_list() {
  cd "${PASSWORD_STORE_DIR}"
  echo "$(tree -Ffi | grep '.gpg' | sed 's/.gpg$//g' | sed 's/^..//' | sed "s/^/$(get_prefix)/")"
}

get_prefix() {
  echo "PASS "
}
