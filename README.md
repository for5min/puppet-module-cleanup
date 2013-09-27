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

cleanup::target:
            tmp:
               age: '0s'
               path: '/tmp'
               suffix:
                   - '*.xml'
                   - '*.txt'
            vartmp:
               age: '0s'
               path: '/var/tmp'
               suffix:
                   - '*.xml'
                   - '*.txt'
