#@local f
gap> START_TEST("varargs.tst");
gap> f := function(a,b...) return [a,b]; end;
function( a, b... ) ... end
gap> Display(f);
function ( a, b... )
    return [ a, b ];
end
gap> f(1);
[ 1, [  ] ]
gap> f(1,2);
[ 1, [ 2 ] ]
gap> f(1,2,3);
[ 1, [ 2, 3 ] ]
gap> f := function(arg) return arg; end;
function( arg... ) ... end
gap> Display(f);
function ( arg... )
    return arg;
end
gap> f();
[  ]
gap> f(1);
[ 1 ]
gap> f(1,2);
[ 1, 2 ]
gap> f(1,2,3);
[ 1, 2, 3 ]
gap> f := function(arg...) return arg; end;
function( arg... ) ... end
gap> Display(f);
function ( arg... )
    return arg;
end
gap> f();
[  ]
gap> f(1);
[ 1 ]
gap> f(1,2);
[ 1, 2 ]
gap> f(1,2,3);
[ 1, 2, 3 ]
gap> f := function(a...) return a; end;
function( a... ) ... end
gap> Display(f);
function ( a... )
    return a;
end
gap> f();
[  ]
gap> f(1);
[ 1 ]
gap> f(1,2);
[ 1, 2 ]
gap> f(1,2,3);
[ 1, 2, 3 ]
gap> function(a,b..) end;
Syntax error: Three dots required for variadic argument list in stream:1
function(a,b..) end;
            ^^
gap> function(a...,b) end;
Syntax error: Only final argument can be variadic in stream:1
function(a...,b) end;
             ^
gap> function(a..,b) end;
Syntax error: Three dots required for variadic argument list in stream:1
function(a..,b) end;
          ^^
gap> function(a....,b) end;
Syntax error: ) expected in stream:1
function(a....,b) end;
             ^
gap> function(a,b....) end;
Syntax error: ) expected in stream:1
function(a,b....) end;
               ^
gap> Display(RETURN_FIRST);
# src/gap.c:RETURN_FIRST
function ( first, rest... )
    <<kernel code>> from src/gap.c:RETURN_FIRST
end
gap> [1..2];
[ 1, 2 ]
gap> [1...2];
Syntax error: Only two dots in a range in stream:1
[1...2];
  ^^^
gap> f := function(a,arg) return [a,arg]; end;
function( a, arg ) ... end
gap> f(1,2);
[ 1, 2 ]
gap> STOP_TEST("varargs.tst");
