load P3S5_QAM;

SNR = 15;
enc = encoder_constellation(test_bit,konstelacja);
noised = awgn(enc,SNR,'measured');
dec = decoder_constellation(noised,konstelacja);
BER = rateQuality(test_bit,dec);