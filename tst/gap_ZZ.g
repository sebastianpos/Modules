gap_stream := LaunchGAP( );
init := HomalgExternalObject( "", "GAP", gap_stream );
HomalgSendBlocking( "LoadPackage(\"homalg\")", "execute_command", init );
ZZ := HomalgSendBlocking( [ "RingForHomalg(Integers)"], IsHomalgPIRGAPRing, init );
ZZ := RingForHomalg( ZZ );
Unbind(init);
Display(ZZ);
wmat := HomalgSendBlocking( [ "HomalgMatrix([[ 262, -33, 75, -40 ], [ 682, -86, 196, -104 ], [ 1186, -151, 341, -180 ],[ -1932, 248, -556, 292 ], [ 1018, -127, 293, -156 ]],", ZZ, ")" ]);
wmat := HomalgMatrix( wmat, ZZ );
wrel := HomalgRelationsForLeftModule( wmat );
W := Presentation( wrel );
