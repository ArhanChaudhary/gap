# Problem with printing when GAP is compiled with GMP 5.0.1 under macOS
# in 32-bit mode. Does not occur with GMP 4.3.2 or in 64-bit mode.
# Reported by BH on 2011/02/06, added by AK on 2011/03/24
gap> 2*10^201*10;
200000000000000000000000000000000000000000000000000000000000000000000000000000\
000000000000000000000000000000000000000000000000000000000000000000000000000000\
00000000000000000000000000000000000000000000000
