txt = "1d20+3";

nums = regexp(txt, '\d+', 'match');   % pega só os números como strings
nums = str2double(nums);              % converte para vetor numérico

disp(nums);   % -> [1 20 3]

