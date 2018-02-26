close all; clear all; clc;

img_disp = imread('Data/init_disp.png');
img_ref = imread('Data/ref.png');

% Parameters
lambda = 0.5;
epsilon_weight = 0.3;
nb_iter = 300;

[final_disp, convergence_error] = refine(img_disp, img_ref, lambda, epsilon_weight, nb_iter);

figure, imshow(img_ref); title('Reference Image');
figure, imshow(img_disp,[]); title('Initial Depth Map'); colormap(gca, hot);
figure, imshow(final_disp,[]); title('Refined Depth Map'); colormap(gca, hot);

figure1 = figure;
axes1 = axes('Parent',figure1);
plot(convergence_error,'-g', 'linewidth',5); title('Convergence Error '); grid minor;
xlabel('Iterations'); ylabel('Residual Norm');set(axes1,'FontWeight','bold','FontSize',13);
ylim([0 0.8]);
