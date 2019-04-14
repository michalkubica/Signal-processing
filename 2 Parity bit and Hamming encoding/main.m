x = audioTransmit('0012001502.wav');

%parity
N = 6; %how many columns
[parity_encoded, dummy_bits] = encoder_parity(x,N);
parity_wave = generateBINwave(0,length(parity_encoded));
parity_channel_out = channelSimulation(parity_encoded,parity_wave);
parity_decoded = decoder_parity(parity_channel_out,N,dummy_bits);
parity_BER = rateQuality(x,parity_decoded);

%hamming
hamming_encoded = encoder_hamming(x);
hamming_wave = generateBINwave(0,length(hamming_encoded));
hamming_channel_out = channelSimulation(hamming_encoded,hamming_wave);
hamming_decoded = decoder_hamming(hamming_channel_out);
hamming_BER = rateQuality(x,hamming_decoded);