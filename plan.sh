pkg_name=drupal
pkg_origin=baggerspion
pkg_version="8.x-dev"
pkg_maintainer="Endocode Habitat Team <habitat@endocode.com>"
pkg_license=('gplv2+')
pkg_source="N/A"
pkg_shasum="N/A"
pkg_deps=(core/composer core/mysql-client)
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
    return 0
}

do_install() {
    composer create-project drupal-composer/drupal-project:8.x-dev $pkg_prefix/drupal --stability dev --no-interaction
}
