Set up
============

```
cmsrel CMSSW_9_4_0

cd CMSSW_9_4_0/src

cmsenv

git clone https://github.com/CMSDIJET/DijetRootTreeAnalyzer.git CMSDIJET/DijetRootTreeAnalyzer

cd CMSDIJET/DijetRootTreeAnalyzer

```

Location of key files
============
```
store data JEC information
  src/IOV.C 

cutfiles, store JSON info, all varialbes whick need to be store in reduced Ntuple
  config/cutFile_mainDijetSelection_JetHT_Run2018A-18Aut2018.txt
  config/cutFile_mainDijetSelection_JetHT_Run2018D-18Aut2018.txt
  config/cutFile_mainDijetSelection_JetHT_Run2018C-18Aut2018.txt
  config/cutFile_mainDijetSelection_JetHT_Run2018D-18Aut2018.txt

bTag SFs:
  data/bTag_MC_ScalingFactors/*

Main Files(for btag central, up, down, and create rootfile, which contain all SF in pT-Eta plain, for interpolation)
   analysisClass_mainDijetSelection_cemf_lt_0p8.C
   analysisClass_mainDijetSelection_cemf_lt_0p8_up.C
   analysisClass_mainDijetSelection_cemf_lt_0p8_down.C
   analysisClass_mainDijetSelection_cemf_lt_0p8_inter.C

Submit to Condor:
   SubmitCondorJobs.py

```

Command Example:
============ 
Setup:
```
ln -sf /afs/cern.ch/work/z/zhixing/private/CMSSW_9_4_0/src/CMSDIJET/DijetRootTreeAnalyzer2018/analysisClass_mainDijetSelection_cemf_lt_0p8.C /afs/cern.ch/work/z/zhixing/private/CMSSW_9_4_0/src/CMSDIJET/DijetRootTreeAnalyzer2018/src/analysisClass.C
make clean
make
```

```
./main lists/HT700to1000/list.txt config/cutFile_mainDijetSelection.txt dijets/events /tmp/HT700to1000 /tmp/HT700to1000

mv /tmp/HT700to1000* /eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/TylerW/2017JetHT_reduced/QCD/
```