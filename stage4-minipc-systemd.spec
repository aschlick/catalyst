subarch: amd64
target: stage4
version_stamp: systemd-local-v1
rel_type: default
profile: default/linux/amd64/23.0/systemd
snapshot_treeish: 926b886fba80a6853531f6ed16c3066a4a087d52
source_subpath: default/stage3-amd64-systemd-local-v1
portage_confdir: /var/tmp/catalyst/releng/releases/portage/stages
portage_prefix: releng
repos: /var/db/repos/guru
compression_mode: tar.xz

stage4/packages:
  app-arch/pixz
  app-containers/docker
  app-containers/docker-cli
  app-eselect/eselect-repository
  app-misc/screen
  dev-vcs/git
  net-fs/nfs-utils
  sys-apps/mlocate
  sys-apps/pciutils
  sys-cluster/glusterfs
  sys-fs/squashfs-tools
  sys-fs/xfsprogs

stage4/fsscript: ./fsscript.sh

stage4/root_overlay: ./stage4-overlay
