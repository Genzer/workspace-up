#!/usr/bin/env bash
set -e -u -o pipefail

# This script generates something I call to produce a shell script to
# initialize asdf.
#
# To use it
# bash asdf_dump.sh asdf.dump
# source asdf.dump

asdf_info_dump() {
  asdf info | sed 's/^/# /'
}

asdf_plugins_dump() {
  asdf plugin list | xargs -I{} echo 'asdf plugin add {}'
}

asdf_list_plugin_wrapper() {
  asdf list "$1" 2>/dev/null || true
}

asdf_installed_version_dump() {
  local -r plugin="$1"
  #cat <(asdf list "$plugin" || true) \
  asdf_list_plugin_wrapper "$plugin" \
    | tr -d ' *' \
    | sed "s/^/asdf install $plugin /" 
}

main() {
  asdf_info_dump
  asdf_plugins_dump

  while IFS= read -r plugin;
  do
    asdf_installed_version_dump "$plugin"
  done < <(asdf plugin list)
}

main "$@"
