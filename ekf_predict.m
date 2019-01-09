function x_predict = ekf_predict(x, u, S)

x_predict = discreteDynamics(x, u, S);

F = stateJacobian(x, u, S);

S.P = F*S.P*F' + S.Q;

end