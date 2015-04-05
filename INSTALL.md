### Prerequisites

##### Step 1. Install Festival

Download Festival from http://www.cstr.ed.ac.uk/projects/festival/download.html

Or 

```
$ sudo apt-get install festival
```

#### Step 2. Install voices

```
$ cd /usr/share/festival/voices
$ mkdir quz
```

```
$ sudo cp QuechuaTTS/festival/quz/cus_quz_gui_clunits /usr/share/festival/voices/quz
```

#### Step 3. Run festival

```
$ festival
Festival Speech Synthesis System 2.1:release November 2010
Copyright (C) University of Edinburgh, 1996-2010. All rights reserved.

clunits: Copyright (C) University of Edinburgh and CMU 1997-2010
hts_engine: 
The HMM-based speech synthesis system (HTS)
hts_engine API version 1.04 (http://hts-engine.sourceforge.net/)
Copyright (C) 2001-2010  Nagoya Institute of Technology
              2001-2008  Tokyo Institute of Technology
All rights reserved.
For details type `(festival_warranty)'
festival> (voice.list)
(cus_quz_gui_clunits)
festival> (voice_cus_quz_gui_clunits)
cus_quz_gui_clunits
festival> (SayText "Allillanchu")
#<Utterance 0x7f07cfecb8f0>
festival> 

```

