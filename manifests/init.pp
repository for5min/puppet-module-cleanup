# == Class: cleanup
#
#  tiny fs cleanup system, it will remove files greater than 21 days.
#
#
class cleanup (
){
  define remove ( $path, $suffix, $age ) {

     tidy { $name :
         path    => $path,
         age     => $age,
         rmdirs  => true,
         recurse => true,
         matches => $suffix,
         backup  => false,
      }
  }

  create_resources('cleanup::remove', hiera_hash(cleanup::target))
}
