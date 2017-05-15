pkg_name=drupal
pkg_origin=baggerspion
pkg_version="8.3.2"
pkg_license=('gplv2+')
pkg_source="N/A"
pkg_shasum="N/A"
pkg_deps=(baggerspion/drush core/mysql-client core/nginx core/php)
pkg_binds=(
  [database]="port username password"
)
pkg_svc_user="root"
pkg_svc_run="php-fpm --nodaemonize"

do_download() {
    return 0
}

do_verify() {
    return 0
}

do_unpack() {
    return 0
}

do_build() {
    drush dl drupal-8.3.2 --drupal-project-rename=drupal
}

do_install() {
    cp -r $HAB_CACHE_SRC_PATH/$pkg_dirname/drupal/* $pkg_prefix
}
