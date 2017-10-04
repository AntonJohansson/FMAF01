dot_x = [2*pi -2*pi 0   (pi-2) (2-pi)  pi -pi (pi+2) -(pi+2)];
dot_y = [-pi  -pi  -pi  0      0       pi pi 0      0];
circ_x = [-2*pi 2*pi 0 (pi-2) (pi+2) -(pi-2) -(pi+2)];
circ_y = [0     0    0 pi     pi     pi      pi];


segment_0 = linspace(0.1, pi-2);
segment_1 = linspace(pi-2 + 0.1, pi);
segment_2 = linspace(pi, pi+2 - 0.1);
segment_3 = linspace(pi+2, 2*pi - 0.1);

hold on;
plot(segment_0, ones(length(segment_0))*0, 'b', 'LineWidth', 2);
plot(segment_1, ones(length(segment_1))*pi, 'b', 'LineWidth', 2);
plot(segment_2, ones(length(segment_2))*pi, 'b', 'LineWidth', 2);
plot(segment_3, ones(length(segment_3))*0, 'b', 'LineWidth', 2);

plot(-segment_0, ones(length(segment_0))*0, 'b', 'LineWidth', 2);
plot(-segment_1, ones(length(segment_1))*pi, 'b', 'LineWidth', 2);
plot(-segment_2, ones(length(segment_2))*pi, 'b', 'LineWidth', 2);
plot(-segment_3, ones(length(segment_3))*0, 'b', 'LineWidth', 2);

xlim([-2*pi 2*pi]);
ylim([-4 4]);
grid on;
box on;

hAxes.TickLabelInterpreter = 'latex';
set(gca,'XTick',-2*pi:pi:2*pi);
set(gca,'XTickLabel',{'-2\pi', '-\pi', '0', '\pi', '2\pi'})   ;

for i=1:length(dot_x)
    plot(dot_x, dot_y, 'b.', 'MarkerSize', 12);
    plot(circ_x, circ_y, 'bo', 'MarkerSize', 6);
end

xlabel('$t$', 'Interpreter', 'latex');
ylabel('$f(t)$', 'Interpreter', 'latex');

%% FS

figure(2);

k = 20;
t = -2*pi:0.001:2*pi;
cnoll = 2;
term=cnoll*ones(size(t));
summa=term;

for i=1:k
   term = 2*(-1)^i*(sin(2*i)/i)*cos(i*t);
   summa = summa + term; % uppdatera summa
end

plot(t, summa, 'r');

dot_x = [0 (pi-2) (pi+2) 2*pi -(pi-2) -(pi+2) -2*pi];
dot_y = [0 pi/2   pi/2   0    pi/2    pi/2    0];
circ_x = [(pi-2) (pi-2) (pi+2) (pi+2) -(pi-2) -(pi-2) -(pi+2) -(pi+2)];
circ_y = [0 pi 0 pi 0 pi 0 pi];

segment_0 = linspace(0, pi-2 - 0.1);
segment_1 = linspace(pi-2 + 0.1, pi);
segment_2 = linspace(pi, pi+2 - 0.1);
segment_3 = linspace(pi+2 + 0.1, 2*pi - 0.1);

hold on;
plot(segment_0, ones(length(segment_0))*0, 'b', 'LineWidth', 2);
plot(segment_1, ones(length(segment_1))*pi, 'b', 'LineWidth', 2);
plot(segment_2, ones(length(segment_2))*pi, 'b', 'LineWidth', 2);
plot(segment_3, ones(length(segment_3))*0, 'b', 'LineWidth', 2);

plot(-segment_0, ones(length(segment_0))*0, 'b', 'LineWidth', 2);
plot(-segment_1, ones(length(segment_1))*pi, 'b', 'LineWidth', 2);
plot(-segment_2, ones(length(segment_2))*pi, 'b', 'LineWidth', 2);
plot(-segment_3, ones(length(segment_3))*0, 'b', 'LineWidth', 2);

xlim([-2*pi 2*pi]);
ylim([-4 4]);
grid on;
box on;

set(gca,'TickLabelInterpreter', 'tex');
hAxes.TickLabelInterpreter = 'latex';
set(gca,'XTick',-2*pi:pi:2*pi);
set(gca,'XTickLabel',{'-2\pi', '-\pi', '0', '\pi', '2\pi'})   ;

for i=1:length(dot_x)
    plot(dot_x, dot_y, 'b.', 'MarkerSize', 12);
    plot(circ_x, circ_y, 'bo', 'MarkerSize', 6);
end

xlabel('$t$', 'Interpreter', 'latex');
ylabel('$\mathcal{FS}_f(t)$', 'Interpreter', 'latex');