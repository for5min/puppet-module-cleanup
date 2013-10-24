# == Class: cleanup
#
#  tiny fs cleanup system, it will remove files greater than 21 days.
#
#
class cleanup (
  $target = 'USE_DEFAULT'
){
  create_resources(tidy, $target)
}
