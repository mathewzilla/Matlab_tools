function errorscatter(X,Y,E_X,E_Y,C)
%
% errorscatter(X,Y,E_X,E_Y,Colour)
%
% Function to create a scatter plot with 2D errorbar-sized eliptical patch 
% objects for markers
%
% Expects X and Y values for the scatter plot, plus E_X and E_Y defining
% the size of the error interval to apply to each data point. Currently
% this must be symetric
%
% C defines the colour of the plot
%
% e.g. errorscatter(mean_X,mean_Y,std_X,std_Y,[.5,.5,.5])

for i = 1:numel(X);
    
    % Edges of an elipse
    t = linspace(0,2.*pi,50);
    dot_x = X(i) + E_X(i).*cos(t);
    dot_y = Y(i) + E_Y(i).*sin(t);
% Old version that drew diamonds instead of elipses
%     % x values of each dot's patch object
%     dot_x = [X(i),X(i)+E_X(i),X(i),X(i)-E_X(i)];
%     
%     % y values of each dot's patch object
%     dot_y = [Y(i)-E_Y(i),Y(i),Y(i)+E_Y(i),Y(i)];
    
    patch(dot_x,dot_y,[.5,.5,.5],'edgecolor',C); % For similar face/edge colors use ,'edgecolor',C
    
    
end
