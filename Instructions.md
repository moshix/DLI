SYSGEN DL/I on the OS360 MVT 21/8
=================================

by Crni Mrki (with thanks)


1. The base for this sysgen is the MVT system generated according to the instructions from: 
http://www.conmicro.com/hercos360/index.html.

Before starting, I modified jcl/stage1.jcl and added a definition for DL/I SVCTABLE:
<pre>
*
* DL/1 SVC DEFINITION
*
     SVCTABLE SVC-230-T2-S0 DL/1 SVC
</pre>

  
Since I am not sure how I can subsequently create a sysgen of MVT on an already generated system, 
I preferred to start from the beginning. I went through all the described stages and got an MVT system 
with HASP, TCAM and TSO.

    
2. I downloaded all the material from Moshix's git https://github.com/moshix/DLI and unpacked it into
the DLI directory within the MVT system.
<pre>
DLI-SVC-jobs.tar in svc dir.
DLIjobs.tar      in dli dir.
RestoreJobs.tar  in restore dir.
Tape DLI.aws which is (I believe) tape modified ba Rene Ferland with 2 tape marks at the end.
</pre>
Additionaly i have unpacked jobs from my tar dli-jcls.tar in directory dli-jcls.

  
3. I created 6 2214 disks and named them SORT01 to SORT06 as provided in the materials from Moshix's git. 
 will not describe here how it was done because it is too extensive and I believe that everyone should 
know how to do it themselves. On these DASD's it is needed to create PDS datasets for our DL/I system.
Job for allocating is attached in this post.
  
4. In the restore directory there are jobs with which I restored three PDSs from tape to SORT01 dasd.
  
5. DL/I sysgen starts by defining the DASDs in the dli100.jcl JOB in the dli directory. 
The output from that JOB is the punch file pch00d.txt which should be copied to the dli/dli 
directory instead of the dli101.jcl file and which contains 5 stages that run the final sysgen DLI/I.
I split those 6 stages into 5 separate JOBs for easier control and debugging. 
These are the jobs that are in my tar which I have modified in the course of my attempts 
to make a correct sysgen. Jobs are executed in order:

  <pre>
- dli101.jcl: copy required members from DLI.LOAD to DLI.RESLIB.
- dli111.jcl: JOB that links modules from object code members from DLI.LOAD to DLI.SYSRES PDS.
- dli121.jcl: copy required members from DLI.GENLIB ti DLI.MACLIB
- dli131.jcl: make DLI.PROCLIB members
- dli141.jcl: Assemble and link DFSIDLB0, DL/I BATCH NUCLEUS
</pre>
   
After all these JOBs, the DL/I system is generated.
  
6. After that, I also linked DL/I SVCs to nucleus with svc/linksvc JOB and copied member IGG019Z9 to SYS1.SVCLIB.


Testing DL/I
============  
1. I copied all the members from DLI.PROCLIB to SYS1.PROCLIB because I don't know how to use 
the additional PROCLIB that can be used in MVS with the JOBPROC definition. 
If someone knows, it would be nice to write it down.
  
2. The procedures use the old COBOL compiler IEQCBL00, which does not exist on my MVT, 
so I aliased it to the new compiler:
rename 'sys1.linklib(ikfcbl00)' 'sys1.linklib(IEQCBL00)' alias (from TSO)
  
3. For some reason that I couldn't find, member DFSILNK0 was not copied from DLI.LOAD to DLI.RESLIB, 
so I did it additionally.
  
4. Creating test database:
<pre>
- dli199.jcl create DBD  for our database.
- dli200.jcl allocate and catalog database datasets on the SORT05 and SORT06 DASD-s.
- dli300.jcl create PSB.
- dli301.jcl compile and link COBOL program for database testing.
- dli302.jcl use this cobol prog to test loading database. 
- dli3022.jcl is "light" version of dli302.jcl job with just a few records.
</pre>








