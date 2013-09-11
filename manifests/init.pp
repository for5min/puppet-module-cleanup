# == Class: cleanup
#
#  tiny fs cleanup system, it will remove files greater than 21 days.
#
#
class cleanup (
  $file_path    = hiera(file_path),
  $max_file_age = hiera(max_file_age),
  $file_type    = hiera(file_type),
){
  notify { 'clean_path' :
       message => " below path start $file_path to clean up"
     } ->
  tidy { "cleanup" :
     path    => $file_path,
     age     => $max_file_age,
     rmdirs  => true,
     recurse => true,
     matches => $file_type,
     backup  => false,
  }
}
