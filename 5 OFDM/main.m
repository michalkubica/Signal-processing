load P3S5_QAM;

N = 10; %mux/demux size
SNR = 8;

prev_length = length(test_bit);
test_bit = addZeros(test_bit,4); %add meaningless zeros
test_bit = addZeros(test_bit,N*4); %add meaningless zeros
enc = encoder_constellation(test_bit,konstelacja); %constellation encoder
parallel = reshape(enc,[N,length(enc)/N]); %demux
ifourier = ifft(parallel); %ifft
serial = reshape(ifourier,[1,size(ifourier,1)*size(ifourier,2)]); %piso register
tr_and_rec = awgn(serial,SNR,'measured'); %transmission
parallel_received = reshape(tr_and_rec,[N,length(tr_and_rec)/N]); %sipo register
fourier = fft(parallel_received); %fft
serial_received = reshape(fourier,[1,size(fourier,1)*size(fourier,2)]); %mux
dec = decoder_constellation(serial_received,konstelacja); %constellation decoder
delete = length(dec)-prev_length; %calculate meaningful zeros number
dec(prev_length+1:length(dec)) = []; 
BER = rateQuality(test_bit(1:prev_length),dec)