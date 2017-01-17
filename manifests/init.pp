class { '::java' :
  distribution => 'jdk',
}

package {'curl':
  ensure => present,
}

# A wrapper that contains all thr functionality needed for a standard java web
# application --- does not support JEE applications

class { '::secure_tomcat':
  installs                 => {
    '/usr/local/tomcat' => {
      user       => 'tomcat_admin',
      group      => 'tomcat',
      source_url => 'https://www.apache.org/dist/tomcat/tomcat-7/v7.0.73/bin/apache-tomcat-7.0.73.tar.gz',
    },
  },
}
