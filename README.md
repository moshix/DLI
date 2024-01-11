[![View SBOM](https://img.shields.io/badge/sbom.sh-viewSBOM-blue?link=https%3A%2F%2Fsbom.sh%2Fdc1800c8-18d7-4b52-8733-9f208e2d6715)](https://sbom.sh/dc1800c8-18d7-4b52-8733-9f208e2d6715)
[![Discord](https://img.shields.io/discord/423767742546575361.svg?label=&logo=discord&logoColor=ffffff&color=7389D8&labelColor=6A7EC2)](https://discord.gg/vpEv3HJ)
<a href="https://hits.seeyoufarm.com"><img src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fmoshix%2FDLI&count_bg=%2379C83D&title_bg=%23555555&icon=ibm.svg&icon_color=%23E7E7E7&title=Views&edge_flat=false"/></a>
<br>
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
| Does it run on MVT?            | :white_check_mark:    |
| Does it run on MVS 3.8 ?       | :x:                   |
| Is it historically important?  | :white_check_mark:    |
| Can it be used for production? | :x:                   |  

About DL/I
==========

IBM designed the DLI with Rockwell and Caterpillar starting in 1966 for the Apollo program, where it was used to inventory the very large bill of materials (BOM) for the Saturn V Moon rocket and Apollo space vehicle.


In the interim period, DLI has undergone many developments as IBM System/360 technology evolved into the current z/OS and IBM zEnterprise System technologies.  

The DLI Database component stores data using a hierarchical model. In DLI, the hierarchical model is implemented using blocks of data known as segments. Each segment can contain several pieces of data, which are called fields.   

For example, a customer database may have a root segment (or the segment at the top of the hierarchy) with fields such as phone, name, and age.   

Child segments may be added underneath another segment, for instance, one order segment under each customer segment represents each order a customer has placed with a company. Likewise, each order segment may have many children segments for each item on the order.  

December 2023 Update
====================

The DLI.aws tape was missing the end of tape marks. Prof. Rene' Ferland added them, and the corrected tape is now in this repository. Many thanks to Prof. Ferland!

January 2024 Update
====================

A user called Crni Mrki, has put together a few jobs to sysgen, create the SVC and then run some DL/I batch jobs. It apparently runs fine on MVT. DL/I on MVT is known to work fine. There is still some work needed to attempt to get it to work on MVS 3.8 (TK5 or TK4-). The tar bar called dli-jcls is by Crni Mrki, with thanks.  


January 2024, Rome
