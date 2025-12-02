% Module 1: 3D Path Distortion Simulation using IMU-inspired wobble
% Author: Amirtha K
% Aerohack 2025

% Clean up
clear; close all; clc;

% Time and base trajectory
t = linspace(0, 10, 500);         % Time vector
x = t;                            % Forward motion (X axis)
y = zeros(size(t));               % No lateral deviation
z = linspace(0, 2, length(t));    % Slight altitude climb

% Simulated IMU-based random wobble
yaw_wobble = 0.5 * sin(2*pi*1*t);            % Lateral deviation
pitch_wobble = 0.3 * sin(2*pi*0.8*t + pi/4); % Vertical bobbing
roll_noise = 0.1 * randn(1, length(t));      % Random roll offset

% Distorted path
y_dist = y + yaw_wobble;
z_dist = z + pitch_wobble + roll_noise;

% Plotting 3D paths
figure('Color', 'w');
plot3(x, y, z, 'k--', 'LineWidth', 1.5); hold on;
plot3(x, y_dist, z_dist, 'r', 'LineWidth', 2.5);

grid on; box on;
xlabel('X – Forward (m)');
ylabel('Y – Lateral Deviation (m)');
zlabel('Z – Altitude (m)');
title('3D Drone Flight Path with vs without IMU-Based Wobble');
legend('Ideal Path', 'Distorted Path');
view(135, 30);
axis tight;


% --- GIF Creation (Appends to 3D plot) ---
filename = 'PathDistortion3D.gif'; % Output filename
frame_delay = 0.03;                % Delay between frames in seconds

% Set up the figure
for angle = 1:2:360
    view(angle, 30);        % Rotate the 3D view
    drawnow;

    % Capture the frame
    frame = getframe(gcf);
    im = frame2im(frame);
    [imind, cm] = rgb2ind(im, 256);

    if angle == 1
        imwrite(imind, cm, filename, 'gif', 'Loopcount', inf, 'DelayTime', frame_delay);
    else
        imwrite(imind, cm, filename, 'gif', 'WriteMode', 'append', 'DelayTime', frame_delay);
    end
end
