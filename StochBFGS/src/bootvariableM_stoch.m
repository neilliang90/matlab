function bootvariableM_stoch(x0, f_eval,g_eval, Hess_opt,opts)

DATA = [];
n = length(x0);
DATA.H0 =eye(n,n);   
if(isfield(opts,'H0'))
    DATA.H0 = opts.H0*DATA.H0;
end
DATA.H=DATA.H0;
DATA.name=  [ opts.metric_type '\_' opts.update_sample_matrix '\_'  num2str(opts.update_size) ];
%opts.reset_frequency = ceil(sqrt(n));
DATA.datapass_additional = 0;
DATA.datapass_product = opts.update_size*(opts.S)/opts.numdata;
assignin('caller', 'x0', x0);
assignin('caller', 'opts', opts);
assignin('caller', 'DATA', DATA);
end