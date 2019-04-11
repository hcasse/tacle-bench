DIR=\
bench/app/lift\
bench/app/powerwindow\
bench/kernel/binarysearch\
bench/kernel/bitcount\
bench/kernel/bitonic\
bench/kernel/bsort\
bench/kernel/complex_updates\
bench/kernel/cosf\
bench/kernel/countnegative\
bench/kernel/cubic\
bench/kernel/deg2rad\
bench/kernel/fac\
bench/kernel/fft\
bench/kernel/filterbank\
bench/kernel/fir2dim\
bench/kernel/iir\
bench/kernel/insertsort\
bench/kernel/isqrt\
bench/kernel/jfdctint\
bench/kernel/lms\
bench/kernel/ludcmp\
bench/kernel/matrix1\
bench/kernel/md5\
bench/kernel/minver\
bench/kernel/pm\
bench/kernel/prime\
bench/kernel/quicksort\
bench/kernel/rad2deg\
bench/kernel/recursion\
bench/kernel/sha\
bench/kernel/st\
bench/sequential/adpcm_dec\
bench/sequential/adpcm_enc\
bench/sequential/ammunition\
bench/sequential/anagram\
bench/sequential/audiobeam\
bench/sequential/cjpeg_transupp\
bench/sequential/cjpeg_wrbmp\
bench/sequential/dijkstra\
bench/sequential/epic\
bench/sequential/fmref\
bench/sequential/g723_enc\
bench/sequential/gsm_dec\
bench/sequential/gsm_enc\
bench/sequential/h264_dec\
bench/sequential/huff_dec\
bench/sequential/huff_enc\
bench/sequential/mpeg2\
bench/sequential/ndes\
bench/sequential/petrinet\
bench/sequential/rijndael_dec\
bench/sequential/rijndael_enc\
bench/sequential/statemate\
bench/sequential/susan\
bench/test/cover\
bench/test/duff\
bench/test/test3\


all:
	for dir in $(DIR) ; do \
		cd $$dir;\
		$(MAKE) all;\
		cd ../../..;\
	done
clean:
	for dir in $(DIR) ; do\
		cd $$dir;\
		$(MAKE) clean;\
		cd ../../..;\
	done
