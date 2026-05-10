# 33book - Compilacion y limpieza

Este proyecto usa `main.tex` como archivo principal para generar `main.pdf`.

## Limpiar archivos auxiliares

Si tienes un `Makefile` configurado, ejecuta:

```bash
make clean
```

Si no tienes `Makefile`, puedes limpiar manualmente:

```bash
rm -f *.aux *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk *.synctex.gz
rm -f TeX_files/*.aux
```

## Compilar y generar el PDF

### Opcion 1: usando make

Si tienes un `Makefile` con la regla de compilacion:

```bash
make
```

### Opcion 2: compilacion directa con LaTeX

```bash
pdflatex -interaction=nonstopmode -halt-on-error main.tex
pdflatex -interaction=nonstopmode -halt-on-error main.tex
```

Al finalizar, el PDF generado queda en `main.pdf`.

## Recomendacion

Si tienes referencias cruzadas, indice o bibliografia, compila dos veces (o usa `latexmk`) para que todo quede actualizado.
