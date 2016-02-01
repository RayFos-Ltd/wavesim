addpath('..');
load('homogeneous_medium_3d_results.mat');
theory = 1./iterations_per_wavelength.^4 * relative_error(6) * iterations_per_wavelength(6).^4;
loglog(iterations_per_wavelength(2:end-3), theory(2:end-3), 'k', 'LineWidth', 2.0);
hold on
loglog([0.1, 10E4], relative_error(1)*[1,1], ':');
loglog(iterations_per_wavelength(1), relative_error(1), 's', 'MarkerEdgeColor', 'b', 'MarkerFaceColor', 'k', 'MarkerSize', 8);
loglog(iterations_per_wavelength(2:end), relative_error(2:end), 'r+', 'MarkerSize', 10);
xlim([0.1, 1E5]);
set(gca,'YMinorGrid','on');
hold off;
fixplot('Iterations per wavelength', 'Relative error', [8 7], '');
fp = '../../wavesimpaper/figures/';
print([fp 'accuracy_homogeneous_3d.eps'], '-depsc2');