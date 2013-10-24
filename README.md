puppet-module-cleanup
=====================

based on tidy
This is the cleanup module, and it will remove files which greater than 21 days

Why?

we can use it to clean folder as much as we can.


Call exmaple
-------

    include cleanup

yaml
---

    cleanup::target:
                tmp:
                    age: '21d'
                   path: '/tmp'
                matches:
                      - '*.xml'
                      - '*.txt'
                recurse: 'true'
             vartmp:
                    age: '21d'
                   path: '/var/tmp'
                matches:
                      - '*.xml'
                      - '*.txt'
                recurse: 'true'
