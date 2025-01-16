#Переопределение команды удаления файлов для Windows
RM=del
#Правило сборки исполняемого файла из объектных.
#CXX - переменная для команды компилятора. (По умолчанию g++.)
#Фиктивное правило для очистки каталога от созданных в процессе сборки файлов.
#Для его вызова нужно указать clean после команды make.
# Определение компилятора (gcc для Linux, g++ для Windows)
CXX=gcc

# Определение команды удаления и расширение файла в зависимости от ОС
ifeq ($(OS),Windows_NT)
	RM=del
	EXT=.exe
else
	RM=rm
	EXT=

endif
#Правило сборки исполняемого файла из объектных.
#CXX - переменная для команды компилятора. (По умолчанию g++.)
objects=m.o kva.o

m.exe: $(objects)
	$(CXX) -o m.exe $(objects)
	
#Правило компиляции исходного файла с завизимостью от заголовочного файла в объектный
m.o: m.c kva.h
	$(CXX) -c m.c

#Правило компиляции исходного файла в объектный
kva.o: kva.c
	$(CXX) -c kva.c

#Фиктивное правило для очистки каталога от созданных в процессе сборки файлов.
#Для его вызова нужно указать clean после команды make.

l801294o=L801_294.o
L806294.exe: $(l801294o)
	$(CXX) -o L801294.exe $(l801294o)

L801_294.o: L801_294.cpp L801_294.hpp
	$(CXX) -c L801_294.cpp

l802296o=L802_296.o
L802296.exe: $(l802296o)
	$(CXX) -o L802296.exe $(l802296o)

L802_296.o: L802_296.cpp L802_296.hpp
	$(CXX) -c L802_296.cpp

l803297o=L803_297.o
L803297.exe: $(l803297o)
	$(CXX) -o L803297.exe $(l803297o)

L803_297.o: L803_297.cpp L803_297.hpp
	$(CXX) -c L803_297.cpp

l804298o=L804_298.o
L804298.exe: $(l804298o)
	$(CXX) -o L804298.exe $(l804298o)

L804_298.o: L804_298.cpp L804_298.hpp
	$(CXX) -c L804_298.cpp

l805300o=L805_300.o
L805300.exe: $(l805300o)
	$(CXX) -o L805300.exe $(l805300o)

L805_300.o: L805_300.cpp L805_300.hpp
	$(CXX) -c L805_300.cpp

l806301o=L806_301.o
L806301.exe: $(l806301o)
	$(CXX) -o L806301.exe $(l806301o)

L806_301.o: L806_301.cpp L811_307.hpp L806_301.hpp
	$(CXX) -c L806_301.cpp

l807302o=L807_302.o
L807302.exe: $(l807302o)
	$(CXX) -o L807302.exe $(l807302o)

L807_302.o: L807_302.cpp L807_302.hpp
	$(CXX) -c L807_302.cpp

l808303o=L808_303.o
L808303.exe: $(l808303o)
	$(CXX) -o L808_303.exe $(l808303o)

L808_303.o: L808_303.cpp L812_307.hpp L807_302.hpp L811_307.hpp L806_301.hpp L808_303.hpp
	$(CXX) -c L808_303.cpp

l809305o=L809_305.o
L809305.exe: $(l809305o)
	$(CXX) -o L809305.exe $(l809305o)

L809_305.o: L809_305.cpp L807_302.hpp L813_307.hpp L809_305.hpp
	$(CXX) -c L809_305.cpp

l810306o=L810_306.o
L810306.exe: $(l810306o)
	$(CXX) -o L810306.exe $(l810306o)

L810_306.o: L810_306.cpp L807_302.hpp L810_306.hpp
	$(CXX) -c L810_306.cpp

l811307o=L811_307.o
L811307.exe: $(l811307o)
	$(CXX) -o L811307.exe $(l811307o)

L811_307.o: L811_307.cpp L811_307.hpp
	$(CXX) -c L811_307.cpp

l812307o=L812_307.o
L812307.exe: $(l812307o)
	$(CXX) -o L812307.exe $(l812307o)

L812_307.o: L812_307.cpp L812_307.hpp
	$(CXX) -c L812_307.cpp

.PHONY: clean
clean:
	$(RM) $(objects) $(l801294o) $(l802296o) $(l803297o) $(l804298o) $(l805300o) $(l806301o) $(l807302o) $(l808303o) $(l809305o) $(l810306o) $(l811307o) $(l812307o) m.exe L801294.exe L802296.exe L803297.exe L804298.exe L805300.exe L806301.exe L807302.exe L808303.exe L809305.exe L810306.exe L811307.exe L812307.exe

.PHONY: clean
clean:
	$(RM) $(objects) $(l807302o) $(l808303o) $(l809305o) $(l810306o) $(l811307o) $(l812307o) m.exe L807302.exe L808303.exe L809305.exe L810306.exe L811307.exe L812307.exe

