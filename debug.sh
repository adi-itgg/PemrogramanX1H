mkdir -p build/cache && shopt -s globstar && for file in ./**/*.pas; do fpc ${file} -obuild/cache/${file##*/}.exe ; done && rm -rf build/cache/*