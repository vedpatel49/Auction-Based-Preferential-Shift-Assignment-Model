set STUDENT;
set DAY;
#set DAY1;
set SHIFT;
# set SHIFT1;

param required {DAY,SHIFT};
param maxshift {STUDENT};
param shiftpreference {STUDENT,DAY,SHIFT};

param nshifts;
param nstudents;

var x{STUDENT, DAY, SHIFT} binary; #if STUDENT i on DAY j is alloted kth SHIFT

maximize preference : sum{i in STUDENT, j in DAY, k in SHIFT} x[i,j,k]*shiftpreference[i,j,k];

# maximize preference : sum{i in STUDENT, j in DAY, k in SHIFT} (x[i,j,k]*shiftpreference[i,j,k]) / (maxshift[i]*nstudents) ;

subject to maxshiftperday {i in STUDENT, j in DAY}: #to ensure that a STUDENT i doesn't work for more than 8 hours on jth DAY
	 sum{k in SHIFT} x[i,j,k] <= 8; 

subject to availablepositions {j in DAY, k in SHIFT}: #to fill all the available positions on jth DAY for kth SHIFT
	sum{i in STUDENT} x[i,j,k] <= required[j,k];
	
subject to shiftsperweek {i in STUDENT}: #to ensure STUDENT i doesnt work for more than maxshift per week	
	sum{j in DAY, k in SHIFT} x[i,j,k] <= maxshift[i];
	
subject to lowerbound {i in STUDENT}: #to ensure every STUDENT gets a minimum of 1 shift
	sum {j in DAY, k in SHIFT} x[i,j,k] >= 1;
	
subject to assignment {i in STUDENT, j in DAY, k in SHIFT}: #to ensure only prefered shifts are assigned 
	if shiftpreference[i,j,k] = 0 then x[i,j,k] = 0;
	
	