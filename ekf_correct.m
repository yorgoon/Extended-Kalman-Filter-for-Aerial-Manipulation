function x_correct = ekf_correct(x_predict, z, S)

P = S.P;
R = S.R;

z_predict = x_predict;

H = eye(16);

% Update covariance
% S.P = P - P*H'*((H*P*H' + R)\H*P); 
S.P = P - P*H'*inv(H*P*H' + R)*H*P;

% Kalman Gain
K = S.P * H'/S.R; % K = P*H'*inv(R);

x_correct = x_predict + K*(z - z_predict);

end