# == Class: cleanup
#
#  tiny fs cleanup system, it will remove files greater than 21 days.
#
#
class cleanup (
){
  create_resources(tidy, hiera_hash(cleanup::target))
}
