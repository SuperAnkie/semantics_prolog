
:-use_module(betaConversion,[betaConvert/2]).

:-use_module(comsemPredicates,[infix/0,prefix/0]).

/*========================================================================
   Syntax-semantic rules 
========================================================================*/
s(app(PP,S),Tense) --> pp(PP),s(S,Tense).
s(app(NP,VP),Tense) --> np(NP),vp(VP,Tense).
s(app(PP,S),Tense) --> s(S,Tense),pp(PP).
tp(app(Tense,Sem)) --> s(Sem,Tense).

% for subject and object NP
np(app(D,N))-->det(D),n(N).
np(app(QUAT,N))-->quat(QUAT),n(N).
np(PN) --> pn(PN).

% for PP
pp(T) -->t(T).
pp(app(P,T)) --> p(P),t(T).

% for VP
vp(app(TV,NP),Tense) --> tv(TV,Tense),np(NP).            % vincent visited mia. 
vp(IV,Tense) --> iv(IV,Tense).                                      % vincent danced.

% for VP with AUX or DTV
vp(app(TV,NP),Tense) --> vprime(TV,Tense),np(NP).   % mia is visiting butch; will buy,will kill sth.butch gave vincent sth.vincent will give mia sth.
vp(IV,Tense) --> vprime(IV,Tense).                             % mia is sleeping. 

% for VP with DTV
vprime(app(DTV,NP),Tense) --> dtv(DTV,Tense),np(NP).     % butch gave vincent sth.
vprime(app(DTV,NP),Tense) --> g_fut(DTV,Tense),np(NP).  % vincent will give mia sth.
g_fut(app(VAUX,GIVE),Tense) --> vaux_fut(VAUX),give(GIVE,Tense).  % vincent will give mia sth.

% for VP with AUX
vprime(app(VAUX,V),Tense) --> vaux_pre(VAUX),v_pre(V,Tense).       % mia is visiting butch; mia is sleeping.
vprime(app(VAUX,V),Tense) --> vaux_fut(VAUX),v_fut(V,Tense).        % will buy,will kill sth.



/*========================================================================
   Proper Names
========================================================================*/

pn(lam(P,app(P,mia)))-->[mia].
pn(lam(P,app(P,vincent)))-->[vincent].
pn(lam(P,app(P,butch)))-->[butch].

/*========================================================================
   Transitive Verbs
========================================================================*/

tv(lam(X,lam(Y,lam(T,app(X,lam(Z,visit(Y,Z,T)))))),lam(P,some(T,and(before(T,'04,07,2019'),app(P,T))))) --> [visited].
tv(lam(X,lam(Y,lam(T,app(X,lam(Z,rob(Y,Z,T)))))),lam(P,some(T,and(before(T,'04,07,2019'),app(P,T))))) --> [robbed].
tv(lam(X,lam(Y,lam(T,app(X,lam(Z,eat(Y,Z,T)))))),lam(P,some(T,and(before(T,'04,07,2019'),app(P,T))))) --> [ate].

/*========================================================================
   Intransitive Verbs
========================================================================*/

iv(lam(X,lam(T,dance(X,T))),lam(P,some(T,and(before(T,'04,07,2019'),app(P,T))))) --> [danced].

/*========================================================================
   Vaux 
========================================================================*/

vaux_pre(lam(P,P)) --> [is]. 
vaux_fut(lam(P,P))-->[will]. 

/*========================================================================
   Verbs for is/will
========================================================================*/

v_pre(lam(X,lam(T,sleep(X,T))),lam(P,some(T,and(overlap(T,'04,07,2019'),app(P,T))))) --> [sleeping]. 
v_pre(lam(X,lam(Y,lam(T,app(X,lam(Z,visit(Y,Z,T)))))),lam(P,some(T,and(overlap(T, '04,07,2019'),app(P,T))))) --> [visiting]. 

v_fut(lam(X,lam(Y,lam(T,app(X,lam(Z,buy(Y,Z,T)))))),lam(P,some(T,and(after(T,'04,07,2019'),app(P,T))))) --> [buy]. 
v_fut(lam(X,lam(Y,lam(T,app(X,lam(Z,kill(Y,Z,T)))))),lam(P,some(T,and(after(T,'04,07,2019'),app(P,T))))) --> [kill]. 

/*========================================================================
   Ditransitive Verbs
========================================================================*/

dtv(lam(W,lam(S,lam(X,lam(T,app(S,lam(Z,app(W,lam(Y,gave(X,Y,Z,T))))))))),lam(P,some(T,and(before(T,'04,07,2019'),app(P,T))))) -->[gave].
give(lam(W,lam(S,lam(X,lam(T,app(S,lam(Z,app(W,lam(Y,give(X,Y,Z,T))))))))),lam(P,some(T,and(after(T,'04,07,2019'),app(P,T))))) --> [give].

/*========================================================================
   Prepositions
========================================================================*/

p(lam(P,lam(Q,lam(T,and(app(P,T),app(Q,T)))))) --> [on].

/*========================================================================
   Determiners
========================================================================*/

det(lam(P,lam(Q,some(M,and(app(P,M),app(Q,M))))))--> [a].

quat(lam(P,lam(Q,all(X,imp(app(P,X),app(Q,X))))))-->[every].

/*========================================================================
   Nouns
========================================================================*/

n(lam(X,bank(X)))-->[bank].
n(lam(X,burger(X)))-->[burger].
n(lam(X,warning(X)))-->[warning].
n(lam(X,newcar(X)))-->[new,car].
n(lam(X,footmassage(X)))-->[footmassage]. 

/*========================================================================
   Times
========================================================================*/

t(lam(X,monday(X))) --> [monday].
t(lam(X,tuesday(X))) --> [tuesday].
t(lam(X,sunday(X))) --> [sunday].

t(lam(Q,lam(X,and(today(X),app(Q,X))))) --> [today].
t(lam(Q,lam(X,and(yesterday(X),app(Q,X))))) --> [yesterday].
t(lam(Q,lam(X,and(tomorrow(X),app(Q,X))))) --> [tomorrow].
