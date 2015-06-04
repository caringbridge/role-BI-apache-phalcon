#
# default['php']['install_method'] = 'source'
#
# default['php']['url'] = 'http://us1.php.net/get'
# default['php']['version'] = '5.6.9'
# default['php']['checksum'] = '378de162efdaeeb725ed38d7fe956c9f0b9084ff'
# default['php']['checksum'] = ''
# default['php']['prefix_dir'] = '/usr/local'
#
# default['php']['configure_options'] = %W{--prefix=#{php['prefix_dir']}
#                                          --with-libdir=#{lib_dir}
#                                          --with-config-file-path=#{php['conf_dir']}
#                                          --with-config-file-scan-dir=#{php['ext_conf_dir']}
#                                          --with-pear
#                                          --enable-fpm
#                                          --with-fpm-user=#{php['fpm_user']}
#                                          --with-fpm-group=#{php['fpm_group']}
#                                          --with-zlib
#                                          --with-openssl
#                                          --with-kerberos
#                                          --with-bz2
#                                          --with-curl
#                                          --enable-ftp
#                                          --enable-zip
#                                          --enable-exif
#                                          --with-gd
#                                          --enable-gd-native-ttf
#                                          --with-gettext
#                                          --with-gmp
#                                          --with-mhash
#                                          --with-iconv
#                                          --with-imap
#                                          --with-imap-ssl
#                                          --enable-sockets
#                                          --enable-soap
#                                          --with-xmlrpc
#                                          --with-libevent-dir
#                                          --with-mcrypt
#                                          --enable-mbstring
#                                          --with-t1lib
#                                          --with-mysql
#                                          --with-mysqli=/usr/bin/mysql_config
#                                          --with-mysql-sock
#                                          --with-sqlite3
#                                          --with-pdo-mysql
#                                          --with-pdo-sqlite}
#
# default['php']['ini']['template'] = "php.ini.erb"
# default['php']['ini']['cookbook'] = "php"
