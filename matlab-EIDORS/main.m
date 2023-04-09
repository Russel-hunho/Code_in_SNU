%delete(instrfindall)
%s2=serial('COM3');

% mesured_voltage0 = [-0.55269 -0.08621 -0.18450 -0.09668 -0.53899 -0.05881 -0.11440 -0.05680 -0.13374 -0.11239 -0.55188 -0.10917 -0.31340 -0.17805 -0.59579 -0.07090 -0.15146 -0.06687 -0.09910 -0.08701 -0.55349 -0.08741 -0.20101 -0.11803 -0.57041 -0.06808 -0.09789 -0.05237 -0.12246 -0.08057 -0.55349 -0.15348 -0.31058 -0.13656 -0.57162 -0.11722 -0.16315 -0.07614 -0.16194 -0.07412]';    
% mesured_voltage = [-0.53093 -0.06244 -0.17402 -0.09587 -0.57605 -0.04471 -0.07090 -0.05599 -0.12891 -0.09547 -0.33073 -0.07694 -0.14703 -0.11602 -0.56115 -0.04230 -0.07694 -0.06405 -0.08540 -0.05197 -0.61553 -0.10997 -0.20142 -0.07976 -0.33878 -0.08258 -0.11481 -0.05116 -0.03666 -0.05116 -0.59136 -0.12004 -0.15952 -0.07332 -0.63164 -0.09265 -0.11481 -0.04391 -0.15831 -0.06083]' - mesured_voltage0;
%mesured_voltage = [-0.59659 -0.09668 -0.16959 -0.06566 -0.27070 -0.06727 -0.10635 -0.03746 -0.05680 -0.03424 -0.58250 -0.12689 -0.19417 -0.06969 -0.62963 -0.09467 -0.11642 -0.05156 -0.10957 -0.08339 -0.53416 -0.04915 -0.15630 -0.11521 -0.58894 -0.04874 -0.07170 -0.03706 -0.13656 -0.07211 -0.29165 -0.07452 -0.20303 -0.13495 -0.56920 -0.03585 -0.06163 -0.04391 -0.07573 -0.04189]' - mesured_voltage0;

measured_voltage = real0;

% 길이 n*(n-3) 벡터,
 % 순서: 1~n-3번: 1->2 전극으로 전류 주입한 상태에서, 3-4, ... ,  (n-1)-n 사이 걸리는 전압
 % 순서: (n-3)+1~2*(n-3)번: 2->3 전극으로 전류 주입한 상태에서, 3-4, ... ,  (n-1)-n 사이 걸리는 전압
 % 이후 쭉
%%

% inverse Model 설정
inverse_model = mk_common_model('g2s',elec_num); 
%  mk_common_model('a2s',8)   - 2D square model (4x4x2 elems) (    max 8 elecs)
%  mk_common_model('g2C',16)   - 2D circ model (3136 elems)

sim_img = calc_jacobian_bkgnd(inverse_model);
homg_data = fwd_solve(sim_img);

reconstruction = inv_solve(inverse_model, homg_data, measured_voltage);
show_fem(reconstruction, [1,1,0]);

%%

% 
% % inverse Model 설정
% imdl_2d= mk_common_model('b2c',elec_num);
% 
% %   mk_common_model('a2s',8)   - 2D square model (4x4x2 elems) (    max 8 elecs)
% %   mk_common_model('g2C',16)   - 2D circ model (3136 elems)
% 
% sim_img= mk_image(imdl_2d.fwd_model,1);
% % Usage 2: mdl can be a fwd_model or inv_model
% %   img = mk_image( mdl, 1 ) -> uniform image with conductivity 1
% stim =  mk_stim_patterns(elec_num,1,[0,1],[0,1],{},1);
% % [stim, meas_sel] = mk_stim_patterns( n_elec, n_rings, inj, meas, options, amplitude)
% sim_img.fwd_model.stimulation = stim;
% 
% homg_data = fwd_solve(sim_img);
% 
% 
% 
% % %Add 20dB SNR noise to data
% % noise_level= std(inh_data.meas - homg_data.meas)/10^(20/20);
% % inh_data.meas = inh_data.meas + noise_level* ...
% %                 randn(size(inh_data.meas));
% 
% reconstruction = inv_solve(inverse_model, homg_data, measured_voltage);
% show_fem(reconstruction, [1,1,0]);
