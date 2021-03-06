# Auction-Based-Preferential-Shift-Scheduling-Model

We propose a preference based shift scheduling model that provides an optimal schedule assigning employees to shifts. Along with the optimal schedule, we also provide a backup and a full availability schedule. The backup schedule provides the best set of employees available as a backup incase a assigned worker cannot make a shift. The general availability schedule assigns shifts to employees outside of their prefered shifts. The model is effective in scheduling workers in settings such as university libraries, dinings halls, and residence halls. The proposed model was implemented to perform shift scheduling of work-study student workers at the Lehigh University Linderman Library.

The proposed methodology works as an auction: The shifts are to be auctioned and the employees bid for shifts based on their preferences. All employees are constrained by the number of points they can spent in such auction. The preferences are quantified using several normalization techniques and we discuss their effects. We model the scheduling problem as an integer programming model with generic constraints. The model can be customized based on employeer specific constriants. We also propose a multi-objective formualtion to analyse the trade off between preference based assignment and maximum shift assignment. The overall process is summarized in the flowchart below:

![flowchart](https://user-images.githubusercontent.com/71509604/106329159-fd34d000-624e-11eb-902b-64ca1e5cb07f.PNG)

The model is formulated in AMPL (https://ampl.com/products/ampl/) and also in Python using DOcplex (https://ibmdecisionoptimization.github.io/docplex-doc/#mathematical-programming-modeling-for-python-using-docplex-mp-docplex-mp). The model can be solved using CPLEX (http://ibmdecisionoptimization.github.io/docplex-doc/mp.html) or any similar linear programming solver. 

Our work has been accepted for an oral presentation at the 2021 IISE Conference & Expo. The accepted abstract can be found here ([IISE_Abstract.pdf](https://github.com/vedpatel49/Auction-Based-Preferential-Shift-Assignment-Model/files/5913754/IISE_Abstract_Final.pdf)). 

A AMPL .mod file and an end-to end (data pre-processing, model solving, final results) Python script can be found in this repository. It is very important that data is collected in a specific format. Hence, a sample data collection (.xls) file is also provided in the repository. The provided file was used to collect shift preferences from work-study students working at the library. The data collection form can be adapted depending on area of application

Co-contributors: Sudeep Metha (Graduate Student, Lehigh University) and Albert Berahas (Assistant Professor, University of Michigan)


