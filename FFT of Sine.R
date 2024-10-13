period = 4  ## that is freq is 1/4

time = seq(0, 5, by = 0.1)
sine_wave = sin(2 * pi * time / period)

print(sine_wave)

## Apply fft function
fft_result = fft(sine_wave)

print(fft_result)
                 
par(mfrow = c(2, 1))
plot(time, sine_wave, type = "l", main = "Original Sine Wave")
plot(Mod(fft_result), type = "l", main = "FFT Magnitudes")

mvfft(sine_wave,inverse= FALSE)
