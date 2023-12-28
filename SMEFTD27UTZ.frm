#-
Off Statistics;
#include- DECOd27WITHU1Z.h

*
*	User input
*	
#define MASSDIM "9"
#define EOM "1"
#define IBP "1"
#define numFermGen "1"

Symbol h,hd,sigma,sigmad,sfield,sfieldd,t3,t23,t123,td3,td23,td123,t0,td0,tx,txd,u,ud,d,dd,s,sd,c,cd,t,td,b,bd,le,led,lmu,lmud,ltau,ltaud,B,W,G,p,q,qd,l,ld;

* 
*	Field contents 
*

Local Input = 
	Scalar(h,SU2(2),U1(3))
	+ Scalar(hd,SU2(2),U1(-3))

************************************************
*             Shaping Scalar Fields
************************************************
*	+ Scalar(sigma,U1Z(2))
*	+ Scalar(sfield,U1Z(-1))
************************************************
*             Familon Fields
************************************************
	+ Scalar(t3,D27(p3),U1Z(0))
	+ Scalar(t23,D27(p3),U1Z(-1))
	+ Scalar(t123,D27(p3),U1Z(2))
	+ Scalar(t0,D27(p3),U1Z(0))
************************************************
*             Quark Fields u,d,s,c,t,b
************************************************
*	+ LHFermion(u,SU3(3),SU2(2),U1(1),D27(3))
*	+ RHFermion(ud,SU3(B),SU2(2),U1(-1),D27(3))
*
*	+ LHFermion(d,SU3(3),SU2(2),U1(1),D27(3))
*	+ RHFermion(dd,SU3(B),SU2(2),U1(-1),D27(3))
*
*	+ LHFermion(s,SU3(3),SU2(2),U1(1),D27(3))
*	+ RHFermion(sd,SU3(B),SU2(2),U1(-1),D27(3))
*
*	+ LHFermion(c,SU3(3),SU2(2),U1(1),D27(3))
*	+ RHFermion(cd,SU3(B),SU2(2),U1(-1),D27(3))
*
*	+ LHFermion(t,SU3(3),SU2(2),U1(1),D27(3))
*	+ RHFermion(td,SU3(B),SU2(2),U1(-1),D27(3))
*
*	+ LHFermion(b,SU3(3),SU2(2),U1(1),D27(3))
*	+ RHFermion(bd,SU3(B),SU2(2),U1(-1),D27(3))
************************************************
*             Lepton Fields e,mu,tau
************************************************
*	+ LHFermion(le,SU2(2),U1(-3),D27(3))
*	+ RHFermion(led,SU2(2),U1(3),D27(3))
*
*	+ LHFermion(lmu,SU2(2),U1(-3),D27(3))
*	+ RHFermion(lmud,SU2(2),U1(3),D27(3))
*
*	+ LHFermion(ltau,SU2(2),U1(-3),D27(3))
*	+ RHFermion(ltaud,SU2(2),U1(3),D27(3));
*
************************************************
*             Gauge fields
************************************************
*	+ FieldStrength(B)
*	+ FieldStrength(W,SU2(3))
*	+ FieldStrength(G,SU3(8));


************************************************
*        Generic quark/lepton fields
************************************************
	+ LHFermion(q,SU3(3),SU2(2),U1(1),D27(3))
	+ RHFermion(qd,SU3(B),SU2(2),U1(-1),D27(3))
	+ LHFermion(l,SU2(2),U1(-3),D27(3))
	+ RHFermion(ld,SU2(2),U1(3),D27(3));

.sort

#call HilbertSeries(p)
Print +s;
.sort

#call counting(HS)

#call saveto(HS,./trynewWOFL`MASSDIM'nodaggernoc.txt)
.end



