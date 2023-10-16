IBM DL/I Database for IBM MVT mainframe OS 
==========================================

This is an early precursor to IBM's DLI/DB hierarchical database.  This DL/I version is dated 1968 and is open source.   


It installs on IBM OS/360 MVT 23.8 fine with an SVC (kind of system call) added to the nucleus.  

Restore jobs to read in the tape are provided in .tar form. Along with SVC installation jobs and verification job.   

It is my intention to later add sample, boilerplate application code.   


DL/I Distribution
==================

| File                           | Description           |
| ------------------------------ | --------------------- |
| DLI.aws                        | Distribution tape     |  
| RestoreJobs.tar                | JCL to read in tape   |  
| DLI-SVC-jobs.tar               | SVC installation jobs |
| DLIjobs.tar                    | Verification jobs     |
| 360D-01.6.007.pdf              | DL/I Manual by IBM    |
| Is it historically important?  | :white_check_mark:    |  
| Can it be used for production? | :x:                   |  

About DL/I
==========

IBM designed the DLI with Rockwell and Caterpillar starting in 1966 for the Apollo program, where it was used to inventory the very large bill of materials (BOM) for the Saturn V Moon rocket and Apollo space vehicle.[citation needed]  

The first "DLI READY" message appeared on an IBM 2740 terminal in Downey, California, on August 14, 1968.[1] In the interim period, DLI has undergone many developments as IBM System/360 technology evolved into the current z/OS and IBM zEnterprise System technologies.  

The DLI Database component stores data using a hierarchical model. In DLI, the hierarchical model is implemented using blocks of data known as segments. Each segment can contain several pieces of data, which are called fields.[4] For example, a customer database may have a root segment (or the segment at the top of the hierarchy) with fields such as phone, name, and age. Child segments may be added underneath another segment, for instance, one order segment under each customer segment represents each order a customer has placed with a company. Likewise, each order segment may have many children segments for each item on the order.  

October 2023, Tel Aviv  
