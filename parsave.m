function parsave(fname, varname)
% function to save within a parfor loop
if ~exist(fname, 'file'); 
    disp(['Creating a new file'])
    save(fname, 'varname')
else
    disp(['Appending to an existing file'])
    save(fname, 'varname','-append')
end