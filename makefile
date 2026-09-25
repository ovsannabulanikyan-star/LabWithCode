EXPECTED=253

all:
	as -o math.o math.s
	ld -o math math.o


test:
	@echo $(shell echo $ | ./math)
	@case $(.SHELLSTATUS) in \
		$(EXPECTED))\
		echo "success! (:";; \
		*) \
		echo "failure! :/";;\
		esac;
