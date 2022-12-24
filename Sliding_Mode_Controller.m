lambda = 20;
su = 0.5;
eta = 0.1;
L = 1;
R =1;
C =1;
%%
sim second_order_linear_RLC 
sim Second_Order_Nonlinear_RLC_Systems
%%
figure(1);
set(gca,'Fontsize',22)
plot(tout,x(:),'k-','Linewidth',1);
hold on;
plot(tout,xd,'m--','Linewidth',2);
xlabel('Time(s)');
ylabel('x(t)');
legend('x(t)','x_d(t)');
title('Tracking voltage signal')
grid on
hold off
axis([-inf inf -1.2 1.2]);
%%
figure(2);
set(gca,'FontSize',22)
plot(tout,xdot(:),'k-','Linewidth',1);
hold on;
plot(tout,xd_dot,'m--','Linewidth',2);
xlabel('Time(s)');
ylabel('xdot(t)');
title('First derivative of Voltage-Comparison');
legend('xdot(t)','x_ddot(t)');
grid on;
axis([-inf inf -1.7 1.7]);
hold off;
%% Plot the second derivative of the state trajectories:
figure(3);
set(gca,'FontSize',22)
plot(tout,xdotdot(:),'k-','Linewidth',1);
hold on;
plot(tout,xd_dotdot,'m--','Linewidth',2);
xlabel('Time(s)');
ylabel('xdot(t)');
title('Second derivative of Voltage-Comparison');
legend('xdotdot(t)','x_ddotdot(t)');
grid on;
axis([-inf inf -2.8 2.8]);
hold off;
%% Plot the voltage tracking error
figure(4);
set(gca,'FontSize',22)
plot(tout,x(:)-xd,'b','Linewidth',1);
xlabel('Time(s)');
ylabel('e_v(t)');
title('Input voltage tracking error');
legend('e_v(t)');
grid on;
%% Plot the First Derivative of Voltage tracking error
figure(5);
set(gca,'FontSize',22)
plot(tout,xdot(:)-xd_dot,'r','Linewidth',1);
xlabel('Time(s)');
ylabel('e_v(t)');
title('Tracking error-First Derivative of Voltage ');
legend('e_ (dv/dt)');
grid on;
axis([-inf inf -5e-7 5e-7]);
%% Plot the Second derivative tracking error:
figure(6);
set(gca,'FontSize',22)
plot(tout,xdotdot(:)-xd_dotdot,'k','Linewidth',1);
xlabel('Time(s)');
ylabel('e_a(t)');
title('Tracking error-Second Derivative of Voltage');
axis([-inf inf -1e-4 1e-4]);
legend('e_d^2v/dt');
grid on;
%% Plot sliding condition
figure(7)
set(gca,'FontSize',22)
plot(tout,abs(phi(:)),'r');
hold on;
plot(tout,-1*abs(phi(:)),'b');
plot(tout,s(:),'k');
xlabel('Time(s)');
title('Boundary Layer');
legend('phi','-phi','s');
grid on;
hold off;
%% Plot the switching gain:
figure(8);
set(gca,'FontSize',22)
plot(tout,K(:),'b','Linewidth',1);
xlabel('Time(s)');
ylabel('K(t)');
title('Switching Gain');
legend('K');
grid on;
%% Plot the control effort:
figure(9);
set(gca,'FontSize',22)
plot(tout,u(:),'b','Linewidth',1);
xlabel('Time(s)');
ylabel('u(t)');
title('Control Effort');
legend('u');
grid on;
