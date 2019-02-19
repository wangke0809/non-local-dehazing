function [ res ] = dehaze( img_hazy )
    gamma = 1;
    A = reshape(estimate_airlight(im2double(img_hazy).^(gamma)),1,1,3);
	[img_dehazed, trans_refined] = non_local_dehazing(img_hazy, A, gamma );
	res = img_dehazed;
end
