text_y = textTransmit('budka_suflera.txt');
text_n = generateBINwave(0,length(text_y));
text_ch_output = channelSimulation(text_y,text_n);
text_BER = rateQuality(text_y,text_ch_output);
text_output = textReceive('output.txt',text_ch_output);

[audio_y, audio_fp] = audioTransmit('0012001502.wav');
audio_n = generateBINwave(0,length(audio_y));
audio_ch_output = channelSimulation(audio_y,audio_n);
audio_BER = rateQuality(audio_y,audio_ch_output);
audio_output = audioReceive('output.wav',audio_ch_output,audio_fp);

[img_y, img_s] = imageTransmit('4.1.06.tiff');
img_n = generateBINwave(0,length(img_y));
img_ch_output = channelSimulation(img_y,img_n);
img_BER = rateQuality(img_y,img_ch_output);
img_output = imageReceive('output.tiff',img_ch_output,img_s);
