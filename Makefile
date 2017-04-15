TARGET := resume
BUILD := build

all: build

show: build
	open $(BUILD)/$(TARGET).pdf

build: $(TARGET).tex $(TARGET).cls
	mkdir -p $(BUILD)
	xelatex -aux-directory=$(BUILD) -output-directory=$(BUILD) $< 