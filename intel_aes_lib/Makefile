ASM = iaesx64.o do_rdtsc.o
DEPS = iaesni.h iaes_asm_interface.h
OBJ = intel_aes.o
%.o: %.s
	./yasm -D__linux__ -g dwarf2 -f elf64 $< -o $@
%.o: %.c $(DEPS)
	$(CC) -O3 -g -m64 -c -o $@ $<
intel_aes64.a: $(OBJ) $(ASM)
	$(AR) -r $@ $^
clean:
	rm -f *.a *.o

