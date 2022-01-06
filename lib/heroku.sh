run_prebuild() {
  local heroku_prebuild_script
  local build_dir="$1"

  heroku_prebuild_script=$(read_json "$build_dir/package.json" ".scripts[\"heroku-prebuild\"]")

  if [[ $heroku_prebuild_script ]] ; then
    npm run heroku-prebuild
  fi
}

run_build() {
  local build_dir="$1"
  local build_script
  local heroku_postbuild_script

  build_script=$(read_json "$build_dir/package.json" ".scripts.build")
  heroku_postbuild_script=$(read_json "$build_dir/package.json" ".scripts[\"heroku-postbuild\"]")

  if [[ $heroku_postbuild_script ]] ; then
    npm run heroku-postbuild
  elif [[ $build_script ]] ; then
    npm run build
  fi
}
