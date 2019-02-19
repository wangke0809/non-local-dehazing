path = './data/';
dehaze_path = './result/';

l = dir(path);

for i = 1 : length(l)
    l(i).name
    if l(i).name == '.'
        continue
    end
    haze = imread([path, l(i).name]);
    tic
    r=dehaze(haze);
    toc
    imwrite(r, [dehaze_path, l(i).name])
end
