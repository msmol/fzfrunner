handle() {
  local selected_app=$1
  cd /usr/share/applications
  local app_name=$(echo "${selected_app}" | sed "s/^$(get_prefix)//")
  local app_file=$(
    grep -r "^Name=${app_name}$" /usr/share/applications/ |
      head -n1 |
      sed 's/\/usr\/share\/applications\///' |
      sed "s/.desktop:Name=${app_name}$//"
  )
  swaymsg -t command exec "/usr/bin/gtk-launch ${app_file}"
}

get_list() {
  cd /usr/share/applications
  local applications_list=$(ls | xargs cat | grep ^Name= | sed "s/^Name=/$(get_prefix)/")
  echo "${applications_list}"
}

get_prefix() {
  echo "APPS "
}
