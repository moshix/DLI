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
| Can it run on MVS 3.8?         | :x:  Not this version |
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

A user called Crni Mrki, has put together a few jobs to sysgen, create the SVC and then run some DL/I batch jobs. It apparently runs fine on MVT. DL/I on MVT is known to work fine. There is still some work needed to attempt to get it to work on MVS 3.8 (TK5 or TK4-). The tar bar called dli-jcls is by Crni Mrki, with thanks. I have personally not yet run these jobs by Crni Mrki but she/he says that they work.   

Famous Volker Bandke explained n 2005 why DLI/360 won't run on MVS 3.8: 
<pre>
Sender:"Volker Bandke"
Post Date/Time:2005-02-14 03:02:52
Subject:DLI/360 on MVS 3.8J - Help needed !
Message:

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

***** Reposted with correct subject *************


I have been working on getting DLI/360 to run on MVS.  It did not
work.  Then I tried to get a reference installation on MVT.  It did
work  (Thanks Kevin for the sample programs).

Taking these sample programs and the setup to MVS, I restarted my
efforts.  Now, instead of getting an undocumented status code I got a
real MVS error message:  DD Statement missing for (garbage)


Ooops - my porous memory suddenly remembered that a DBD contaisn an
OS DCB.  Could it be that, by chance, the MVT DCB and the MVS DCB are
different?   You bet.  The MVS DCB has a 16 bytes prefix, which is
not there in MVT

I created an IDCB macro with the MVT DCB layout, and modified DBDGEN
macro to call IDCB instead of DCB - Voila, open now fails with a
"data mangement error" status code and an MVS message.  Turns out
that we need an IEAAPP00 member which names the OSAM channel end
appendage.  One IPL + CLPA later the open succeeds and the database
can be loaded.


But that's about it.  There are more control blocks involved, like
IOB, DEB, also some EXCP programming .  Any other process option but
load will fail with  messages

IEC223I IFG0200V,UP0712,G,TESTDBO,13B,DLI001,DLI.TESTDB.OSAM
IEC999I IFG0TC0A,IFG0TC0B,UP0712  ,G       ,DEB ADDR = 9ABF9C
      
when the OSAM part of the database is accesses.  No reason code. 
Looking at the job log I find a return code of 5728  (??  I always
knew that a RC cannot be more than 4095 ??)

I have a dump and a GTF trace for the problem.  I have very little
spare time in the weeks to come.  Now my questions:


1.)	Where do I find documentation on how to write a channel end
appendage IGG019Z9
2.)	Where do I find documentation on how to write a type 2 SVC for
MVT?  for MVS?       
3.)   Is anybody willing to take a look at trace and dump at
	http://www.bsp-gmbh.com/pub/dlidump.zip (340230 bytes) for me?


      
      
      
      
                                                            
     With kind Regards            |\      _,,,---,,_        
                            ZZZzz /,`.-'`'    -.  ;-;;,     
     Volker Bandke               |,4-  ) )-,_. ,\ (  `'-'   
      (BSP GmbH)                '---''(_/--'  `-'\_)        
                                                            
      It is impossible to travel faster than light, and certainly not
desirable, as one's hat keeps blowing off. -- Woody Allen
      
        (Another Wisdom from my fortune cookie jar)         

-----BEGIN PGP SIGNATURE-----
Version: PGP 8.0.1

iQA/AwUBQhBpOx5trGyhAF0wEQLEDgCfXIO3CaeMvktwLG81YlGuPAyO9+IAn0P3
lr5i8zdC54phjhwBal+5Ez0o
=nq2y
-----END PGP SIGNATURE-----
</pre>

So, this I guess explains very well that without major rework this DL/I will never work on MVS 3.8. 
  
January 2024, Singapore
