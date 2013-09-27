#Define cleanup::remove
define cleanup::remove (
  $path,
  $suffix,
  $age,
){

  tidy { $name :
    path    => $path,
    age     => $age,
    rmdirs  => true,
    recurse => true,
    matches => $suffix,
    backup  => false,
  }
}
