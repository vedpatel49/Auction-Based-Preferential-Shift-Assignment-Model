# Auction-Based-Preferential-Shift-Scheduling-Model

We propose a preference based shift scheduling model that provides an optimal schedule assigning employees to shifts. Along with the optimal schedule, we also provide a backup and a full availability schedule. The backup schedule provides the best set of employees available as a backup incase a assigned worker cannot make a shift. The general availability schedule assigns shifts to employees outside of their prefered shifts. The model is effective in scheduling workers in settings such as university libraries, dinings halls, and residence halls. The proposed model was implemented to perform shift scheduling of work-study student workers at the Lehigh University Linderman Library.

The proposed methodology works as an auction: The shifts are to be auctioned and the employees bid for shifts based on their preferences. All employees are constrained by the number of points they can spent in such auction. The preferences are quantified using several normalization techniques and we discuss their effects. We model the scheduling problem as an integer programming model with generic constraints. The model can be customized based on employeer specific constriants. We also propose a multi-objective formualtion to analyse the trade off between preference based assignment and maximum shift assignment. The overall process is summarized in the flowchart below:



