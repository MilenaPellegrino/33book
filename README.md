# 33book - Compilacion y limpieza


## Limpiar archivos auxiliares

```bash
make clean
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

