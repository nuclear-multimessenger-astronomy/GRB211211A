mpiexec -np 32 light_curve_analysis --model Ka2017,TrPi2018 --svd-path /home/enlil/work/nkunert/06_NMMAtut/03_jointinf/04_joint_EMinference/05_BNS-Ka2017 --jet-type -1 --interpolation_type sklearn_gp --conditional-gaussian-prior-thetaObs --conditional-gaussian-prior-N-sigma 1 --outdir outdir --label GRB211211A --prior ./Ka2017-TrPi2018_GRB211211A.prior --tmin 0.01 --tmax 10 --dt 0.01 --error-budget 1 --nlive 2048 --Ebv-max 0 --trigger-time 59559.54791666667 --data /home/enlil/work/nkunert/06_NMMAtut/03_jointinf/04_joint_EMinference/data_final/Xradio_Conservative.dat --plot --filters X-ray-1keV,radio-6GHz,u,g,r,i,J,K --xlim 0,14 --ylim 26,16
