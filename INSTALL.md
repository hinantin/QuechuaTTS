### Prerequisites

##### Step 1. Install Festival using the source code

Download Festival from http://www.cstr.ed.ac.uk/downloads/festival/2.4/

```
$ sudo apt-get update
$ sudo apt-get install g++
$ sudo apt-get install build-essential
# 
$ mkdir festival ; cd festival 
$ wget http://www.cstr.ed.ac.uk/downloads/festival/2.4/festival-2.4-release.tar.gz
$ wget http://www.cstr.ed.ac.uk/downloads/festival/2.4/festlex_CMU.tar.gz
$ wget http://www.cstr.ed.ac.uk/downloads/festival/2.4/festlex_POSLEX.tar.gz
$ wget http://www.cstr.ed.ac.uk/downloads/festival/2.4/speech_tools-2.4-release.tar.gz
$ wget http://www.cstr.ed.ac.uk/downloads/festival/2.4/speech_tools-2.4-with-wrappers.tar.gz
# Compile speech tools
$ tar -zxvf speech_tools-2.4-release.tar.gz

```

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
$ git clone https://github.com/hinantin/QuechuaTTS 
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

