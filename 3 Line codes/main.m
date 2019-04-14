bs = textTransmit('budka_suflera.txt');
f = 1000; %samples for 1 bit

encoded_nrz = encoder_nrz(bs,f);
decoded_nrz = decoder_nrz(encoded_nrz,f);

encoded_rz = encoder_rz(bs,f);
decoded_rz = decoder_rz(encoded_rz,f);

encoded_manchester = encoder_manchester(bs,f);
decoded_manchester = decoder_manchester(encoded_manchester,f);

encoded_miller = encoder_miller(bs,f);
decoded_miller = decoder_miller(encoded_miller,f);

encoded_ami = encoder_ami(bs,f);
decoded_ami = decoder_ami(encoded_ami,f);