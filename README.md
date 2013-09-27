puppet-module-cleanup
=====================

based on tidy
This is the cleanup module, and it will remove files which greater than 21 days


Call exmaple
-------

node 'abc' {
	 include cleanup
}

yaml
---

cleanup::target:
            tmp:
               age: '21d'
               path: '/tmp'
               suffix:
                   - '*.xml'
                   - '*.txt'
            vartmp:
               age: '21d'
               path: '/var/tmp'
               suffix:
                   - '*.xml'
                   - '*.txt'
