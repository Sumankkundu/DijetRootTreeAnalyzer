#!/bin/bash


cd /afs/cern.ch/work/z/zhixing/private/CMSSW_7_4_14/src/CMSDIJET/DijetRootTreeAnalyzer/GetMass_2016

eval `scramv1 runtime -sh`



python GetMass2016.py -i CondorSubmittion_20191009_012052/FileList_13.txt -o CondorSubmittion_20191009_012052/RunIIOct2016_13.root