A bunch of university projects made in Matlab/Octave environment to become familiar with the basic concepts of encoding, modulation and transmission.

Number 1 "Simple transmission" is a simulation of sending an examplary signal (text, audio and image examples here) over a binary symmetric channel (BSC). The probability of error can be set and bit error rate (BER) is calculated after receiving the transmission.

Number 2 "Parity bit and Hamming encoding" is also a transmission over a BSC but in first case the signal has a parity bit added and in the other the signal is encoded with Hamming (7,4) code. The signal is then decoded and BER is calculated. These error detection techniques allow to achieve lower bit error rate.

Number 3 "Line codes" contains encoders and decoders for some codes used for transmission. Codes included: RZ, NRZ, AMI, Manchester and Miller.

Number 4 "QAM" realises quadrature amplitude modulation using a given constellation diagram. The signal is transmitted over an AWGN channel and then demodulated. BER is calculated at the end.

Number 5 "OFDM" realises orthogonal frequency-division multiplexing. It also uses a given constellation diagram. Signal is transmitted over an AWGN channel and then demodulated. BER is calculated at the end.
