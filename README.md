puppet-module-cleanup
=====================

based on tidy
This is the cleanup module, and it will remove files which greater than 21 days


Call exmaple
-------

node 'abc' {
	 include cleanup
}
Yaml
---
cleanup::max_file_age: '21d'

cleanup::file_type: 
  - '*.xml'
  - '*.txt'

cleanup::file_path: '/tmp'
