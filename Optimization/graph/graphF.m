function graphF

% Create figure
figure1 = figure('Position',[1 400 1200 600]);
colormap('gray');
axis square;
[X,Y] = meshgrid(-10000:1:10000);
%Z=ex2(X,Y);
Z=X.^2 + 2*X*Y + 1/2*Y.^2 - 2*X;


% Create subplot
subplot1 = subplot(1,2,1,'Parent',figure1);
view([124 34]);
grid('on');
hold('all');

% Create surface
surf(X,Y,Z,'Parent',subplot1,'LineStyle','none');

% Create contour
contour(X,Y,Z,'Parent',subplot1);

% Create subplot
subplot2 = subplot(1,2,2,'Parent',figure1);
view([234 34]);
grid('on');
hold('all');

% Create surface
surf(X,Y,Z,'Parent',subplot2,'LineStyle','none');

% Create contour
contour(X,Y,Z,'Parent',subplot2);
end