#### scripts

# $(warning $$@=$@)
# $(warning $$%=$%)
# $(warning $$?=$?)
# $(warning $$(CXXFLAGS)=$(CXXFLAGS))
# 
# objects:=$(wildcard *.o)
# $(warning $$(objects)=$(objects))
# 
# VPATH=src
# $(warning $$(VPATH)=$(VPATH))

#### includes

# include Makefile2

#### targets

ifndef SRCDIR
	SRCDIR=sample
endif

CXXFLAGS= -g

LIBS = 	$(SRCDIR)/main.o \
		$(SRCDIR)/np_senario.o

sample: $(LIBS)
	$(CXX) $(CXXFLAGS) -o sample.out $(LIBS)

.PHONY:clean
clean: 
	rm -f $(LIBS) sample.out

#### build

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

