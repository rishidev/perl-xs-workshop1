use MyXS ;   #this will be skipped in subsequent examples

MyXS::print_hello() ;

MyXS::print_string("Need You Tonight") ;

$a = 345 ;
print("3x$a=", &MyXS::treble($a),"\n") ;

$a = 345 ;
($t3, $t4) = &MyXS::tripquad_outlist($a) ;
print("3x$a=$t3\n") ;
print("4x$a=$t4\n") ;

MyXS::print_string2("Gonna Have A Good Time with Jimmy Barnes") ;


