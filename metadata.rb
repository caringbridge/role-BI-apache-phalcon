name             'role-BI-apache-phalcon'
maintainer       'Stephen Van Zee'
maintainer_email 'svanzee@caringbridge.org'
license          'All rights reserved'
description      'Installs/Configures role-BI-apache-phalcon'
long_description 'Installs/Configures role-BI-apache-phalcon'
version          '0.1.1'

depends 'httpd', '~> 0.2.6'
depends 'php', '~> 1.5.0'
depends 'yum-remi', '~> 0.1.0'

depends 'zendserver', '~>1.1.1'
depends 'role-zendserver'
