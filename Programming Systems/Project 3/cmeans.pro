:- use_module(library(lists)).

/* 	Prototype: distanceR2(+V1,+V2,-Dsq)

	Inputs: vectors v1 and v2
	Output: distance (squared) between 2 vectors of arbitrary (but same)
			dimension
*/
distanceR2([],[],0.0).
distanceR2([H1|T1],[H2|T2],Dsq) :-
	Mul is (H2 - H1) * (H2 - H1),
	distanceR2(T1,T2,Dsq1),
	Dsq is Mul + Dsq1.

/*	Prototype: distanceSqAllMeans(+V,+Vset,-Dsq)
	
	Inputs: a vector and a set of vectors (represented as lists)
	Output: a vector of the distances from v to each element of vset
*/
distanceSqAllMeans([],[],[]).
distanceSqAllMeans([_|_],[],[]).
distanceSqAllMeans([H1|T1],[H2|T2],Dsq) :-
	distanceR2([H1|T1],H2,D1),
	distanceSqAllMeans([H1|T1],T2,Dsq1),
	append([D1],Dsq1,Dsq),
	!.
	
/*	Prototype: listMinNum(+Alist,-MinNum)
	
	Inputs: a list
	Output: a minimum number from the list
	
	HELPER FUNCTION
*/
listMinNum([],0.0).
listMinNum([MinNum],MinNum).
listMinNum([H1,H2|T],MinNum) :-
	H1 =< H2,
	listMinNum([H1|T],MinNum),
	!.
listMinNum([H1,H2|T],MinNum) :-
	H2 < H1,
	listMinNum([H2|T],MinNum),
	!.
	
/*	Prototype: listMinIndex(+Alist,+MinNum,-IndexNum)
	
	Inputs: a list and the minimum number from the list
	Output: index number of the minimum number from the list
	
	HELPER FUNCTION
*/
listMinIndex([],_,-1).
listMinIndex([MinNum|_],MinNum,0) :- !.
listMinIndex([_|T],MinNum,Index) :-
	listMinIndex(T,MinNum,Index1),
	Index is Index1 + 1,
	!.
	
/*	Prototype: listMinPos(+Alist,-M)
	
	Inputs: alist
	Output: position (0-based indexing) of the minimum in the list
*/
listMinPos([],-1).
listMinPos(Alist,M) :-
	listMinNum(Alist,MinNum),
	listMinIndex(Alist,MinNum,M).
	
/*	Prototype: elsum(+L1,+L2,-S)
	
	Inputs: lists l1 and l2
	Output: vector addition of l1 and l2
*/
elsum([],_,[]).
elsum([H1|T1],[H2|T2],S) :-
	Sum is H1 + H2,
	elsum(T1,T2,S1),
	append([Sum],S1,S).

/*	Prototype: scaleList(+List,+Scale,-Answer)
	
	Inputs: list l1, scale factor
	Output: l1 with each element divided by scale
*/
scaleList([],_,[]).
scaleList(Answer,Scale,Answer) :-
	Scale = 0,
	!.
scaleList([H|T],Scale,Answer) :-
	Div is H/Scale,
	scaleList(T,Scale,Answer1),
	append([Div],Answer1,Answer),
	!.

/*	Prototype: zeroes(+Size,-TheList)
	
	Inputs: size
	Output: list of zeroes of length size
*/
zeroes(Size,[]) :-
	Size =< 0,
	!.
zeroes(Size,TheList) :-
	L is 0.0,
	NewSize is Size - 1,
	zeroes(NewSize,TheList1),
	append([L],TheList1,TheList),
	!.

/*	Prototype: zeroMeansSet(+Cmeans,+Dim,-Set)
	
	Inputs: Cmeans,Dim
	Output: a list of Cmeans lists (means set) all zeros each with Dim
*/
zeroMeansSet(Cmeans,_,[]) :-
	Cmeans =< 0,
	!.
zeroMeansSet(Cmeans,Dim,Set) :-
	NewC is Cmeans - 1,
	zeroes(Dim,S),
	zeroMeansSet(NewC,Dim,Set1),
	append([S],Set1,Set).

/*	Prototype: zeroVdiff(+V1,+V2)
	
	Inputs: vectors v1 and v2
	Output: true if v1 and v2 are the same; false otherwise
*/
zeroVdiff([],[]) :- true, !.
zeroVdiff([],_) :- false, !.
zeroVdiff(_,[]) :- false, !.
zeroVdiff([H1|T1],[H2|T2]) :-
	H1 = H2,
	zeroVdiff(T1,T2),
	!.

/*	Prototype: zeroSetDiff(+S1,+S2)
	
	Inputs: list-of-lists s1 and s2
	Output: true if s1 and s2 are equal; false otherwise
*/
zeroSetDiff([],[]) :- true, !.
zeroSetDiff([],_) :- false, !.
zeroSetDiff(_,[]) :- false, !.
zeroSetDiff([H1|T1],[H2|T2]) :-
	zeroVdiff(H1) = zeroVdiff(H2),
	zeroSetDiff(T1,T2),
	!.

/*	Prototype: zeroCounts(+C,-CountsList)
	
	Inputs: c
	Output: list of c elements, each 0
*/
zeroCounts(C,[]) :-
	C =< 0,
	!.
zeroCounts(C,CountsList) :-
	L is 0,
	NewC is C - 1,
	zeroCounts(NewC,CountsList1),
	append([L],CountsList1,CountsList),
	!.

/*	Prototype: updateCounts(+P,+Counts,-Updated)
	
	Inputs: p, counts
	Output: updated counts list with element p incremented by 1
*/
updateCounts(_,[],[]).
updateCounts(P,[H|T],Updated) :-
	P = 0,
	NewH is H + 1,
	NewP is P - 1,
	updateCounts(NewP,T,U1),
	append([NewH],U1,Updated),
	!.
updateCounts(P,[H|T],Updated) :-
	NewP is P - 1,
	updateCounts(NewP,T,U1),
	append([H],U1,Updated),
	!.

/*	Prototype: updateMeansSum(+V,+X,+Means,-NewMeansSum)
	
	Inputs: v, x, means (the current c cluster sums)
	Output: means with v added to the vector in means at position x
*/
updateMeansSum([],_,_,[]).
updateMeansSum(_,_,[],[]).
updateMeansSum([],_,[],[]).
updateMeansSum(V,X,[H|T],NewMeansSum) :-
	X = 0,
	elsum(V,H,NewV),
	NewX is X - 1,
	updateMeansSum(V,NewX,T,Nms1),
	append([NewV],Nms1,NewMeansSum),
	!.
updateMeansSum(V,X,[H|T],NewMeansSum) :-
	NewX is X - 1,
	updateMeansSum(V,NewX,T,Nms1),
	append([H],Nms1,NewMeansSum),
	!.

/*	Prototype: formNewMeans(+Newmeanssum,+Newcounts,-NewMeans)
	
	Inputs: list of newcluster sums, list of curresponding new cluster member
			counts
	Output: list of new means
*/
formNewMeans([],[],[]).
formNewMeans([],_,[]).
formNewMeans(_,[],[]).
formNewMeans([H1|T1],[H2|T2],NewMeans) :-
	scaleList(H1,H2,NM1),
	formNewMeans(T1,T2,NM2),
	append([NM1],NM2,NewMeans),
	!.

/*	Prototype: auxClassify(+H,+Currmeans,+Newmeanssum,+Newcounts,-Update)
	
	Inputs: h, currmeans, newmeanssum, newcounts
	Output: new (updated) means from reclassification of h using current means
*/
auxClassify([],_,Newmeanssum,Newcounts,Update) :-
	formNewMeans(Newmeanssum,Newcounts,Update).
auxClassify([H|T],Currmeans,Newmeanssum,Newcounts,Update) :-
	distanceSqAllMeans(H,Currmeans,Alist),
	listMinPos(Alist,X),
	updateMeansSum(H,X,Newmeanssum,UpdateNms),
	updateCounts(X,Newcounts,UpdateC),
	auxClassify(T,Currmeans,UpdateNms,UpdateC,Update),
	!.

/*	Prototype: reclassify(+H,+Currmeans,-UpdateMeans)
	
	Inputs: h, currmeans
	Output: new (updated) means from reclassification of h using current means
*/
reclassify(H,[H1|T1],UpdateMeans) :-
	length([H1|T1],Cmeans),
	length(H1,Dim),
	zeroMeansSet(Cmeans,Dim,Newmeanssum),
	zeroCounts(Dim,Newcounts),
	auxClassify(H,[H1|T1],Newmeanssum,Newcounts,UpdateMeans),
	!.

/*	Prototype: cmeans(+H,+MuCurrent,-MuFinal)
	
	Inputs: h, mucurrent
	Output: final c-means (as a list of means lists)
*/
cmeans(H,MuCurrent,MuCurrent) :-
	reclassify(H,MuCurrent,UpdateMeans),
	zeroSetDiff(MuCurrent,UpdateMeans).
cmeans(H,MuCurrent,MuFinal) :-
	reclassify(H,MuCurrent,UpdateMeans),
	cmeans(H,UpdateMeans,MuFinal),
	!.

h([[46.356342, 62.448746],[-64.65906, -32.147893],[23.134650, 59.635090],[-45.443999, -50.467890],[54.426897, 42.356000],[-76.765456, -54.986321],[29.325456, 58.986799],[-40.659533, -73.362999],[37.247000, 56.307999],[-56.567873, -68.974009],[42.306000, 76.344002],[-36.535247, -62.980076],[35.416000, 78.914001],[-58.355687, -59.075224],[73.311001, 31.091000],[-48.674655, -48.5642365],[65.199001, 73.499001],[-44.542244, -45.785778],[65.061001, 75.375000],[-41.876355, -61.986647],[38.756538, 70.296997],[-43.792999, -38.132000],[45.425998, 54.402000],[-52.188000, -26.980061],[52.100872, 74.167000],[-23.636002, -48.000605],[45.135600, 40.932999],[-54.687000, -62.908652],[47.235099, 64.527000],[-66.400002, -56.000623],[34.100998, 83.139999],[-64.271000, -59.99991],[30.365999, 34.556999],[-44.353001, -35.251999],[61.408001, 49.321999],[-54.328999, -57.067001],[44.124001, 53.855999],[-39.362999, -55.049000],[57.736000, 69.579002],[-44.056000, -58.951000],[48.907001, 37.827000],[-55.932999, -51.294998],[40.303001, 55.118000],[-59.976002, -34.715000],[41.105000, 45.528000],[-51.560001, -51.320999],[55.479000, 47.980000],[-24.080000, -71.802002],[47.221001, 52.074001],[-42.977001, -48.509998],[63.467999, 57.388000],[-60.029999, -14.814000],[38.102001, 45.949001],[-47.402000, -50.949001],[47.681999, 52.648998],[-59.631001, -35.384998],[48.504002, 33.852001],[-53.819000, -42.988998],[52.645000, 58.112000],[-44.653999, -59.618999],[45.764000, 67.897003],[-53.721001, -41.657001],[58.090000, 32.983002],[-62.123001, -65.014999],[51.075001, 61.535999],[-56.089001, -64.358002],[56.133999, 55.541000],[-46.181000, -58.021999],[55.351002, 45.152000],[-48.125000, -51.327000],[74.464996, 53.213001],[-47.492001, -55.717999],[55.716000, 46.556999],[-47.737999, -67.221001],[44.997002, 41.153000],[-61.254002, -64.741997],[42.384998, 54.869999],[-48.435001, -54.327000],[68.799004, 44.391998],[-68.746002, -55.521999],[52.942001, 58.719002],[-43.428001, -57.543999],[54.335999, 54.074001],[-69.303001, -46.254002],[61.570000, 58.123001],[-34.673000, -46.290001],[35.868000, 45.924999],[-44.497002, -50.451000],[60.716999, 52.956001],[-43.514999, -55.981998],[78.072998, 44.035999],[-63.451000, -36.287998],[50.001999, 57.727001],[-51.501999, -47.257999],[57.654999, 45.285000],[-65.967003, -76.841003],[61.748001, 51.773998],[-61.874001, -62.702000],[53.289001, 53.289001],[-57.244999, -43.969002],[57.415001, 55.627998],[-33.544998, -45.639000],[40.626999, 53.868999],[-51.181000, -56.695999],[36.652000, 53.931999],[-38.917000, -61.306000],[55.441002, 59.639999],[-55.047001, -73.101997],[56.948002, 52.292000],[-44.090000, -38.841999],[47.611000, 45.346001],[-47.030998, -47.085999],[50.458000, 42.327999],[-51.188999, -61.173000],[59.209000, 48.331001],[-31.799000, -58.485001],[69.433998, 29.309000],[-48.926998, -69.670998],[47.529999, 52.048000],[-53.292000, -45.840000],[50.908001, 57.615002],[-51.002998, -58.241001],[39.870998, 51.671001],[-51.206001, -73.911003],[56.539001, 59.055000],[-52.414001, -58.306999],[47.168999, 61.655998],[-59.305000, -46.763000],[49.255001, 46.063999],[-52.511002, -45.103001],[65.421997, 36.929001],[-37.029999, -46.492001],[52.125000, 41.680000],[-60.448002, -54.008999],[50.898998, 37.856998],[-52.048000, -64.639000],[39.702000, 47.332001],[-71.962997, -67.577003],[57.891998, 40.661999],[-57.183998, -44.095001],[38.412998, 40.834999],[-46.196999, -58.966000],[40.518002, 60.248001],[-27.382000, -43.386002],[59.972000, 50.487999],[-34.292999, -39.066002],[24.816999, 75.212997],[-55.462002, -47.165001],[49.382358, 27.238453],[-44.469992, -43.690032],[41.249452, 35.135893],[-45.999454, -56.565999],[34.991001, 67.146000],[-67.407001, -23.523003],[56.247999, 47.339001],[-56.730999, -33.008999],[76.478001, 54.424000],[-43.348000, -55.989994],[50.111349, 54.464882],[-51.459873, -61.353782],[35.000035, 57.253987],[-42.354000, -58.441002],[86.084999, 28.363998],[-54.158001, -74.296001],[48.583255, 36.258924],[-54.353333, -70.576432],[60.008359, 37.647832],[-58.537998, -50.826000],[48.866001, 61.666000],[-51.842999, -38.695999],[52.214001, 65.928001],[-45.880001, -42.706001],[50.077000, 57.028000],[-40.355000, -44.445999],[40.796001, 40.095001],[-59.188000, -40.474998],[46.356998, 37.419998],[-39.362999, -55.049000],[57.736000, 69.579002],[-44.056000, -58.951000],[48.907001, 37.827000],[-55.932999, -51.294998],[40.303001, 55.118000],[-59.976002, -34.715000],[41.105000, 45.528000],[-51.560001, -51.320999],[55.479000, 47.980000],[-24.080000, -71.802002],[47.221001, 52.074001],[-42.977001, -48.509998],[63.467999, 57.388000],[-60.029999, -14.814000],[38.102001, 45.949001],[-47.402000, -50.949001],[47.681999, 52.648998],[-59.631001, -35.384998],[48.504002, 33.852001],[-53.819000, -42.988998],[48.799987, 64.391199],[-58.746421, -65.521900]]).

