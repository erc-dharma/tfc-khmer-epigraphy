#!/bin/bash

find ./ -type f -exec sed -i -e 's/\r̥̄/r̥̄/g' {} \;
find ./ -type f -exec sed -i -e 's/\l̥̄/l̥̄/g' {} \;
find ./ -type f -exec sed -i -e 's/\r̥/r̥/g' {} \;
find ./ -type f -exec sed -i -e 's/\l̥/l̥/g' {} \;
find ./ -type f -exec sed -i -e 's/ā/ā/g' {} \;
find ./ -type f -exec sed -i -e 's/ī/ī/g' {} \;
find ./ -type f -exec sed -i -e 's/ū/ū/g' {} \;
find ./ -type f -exec sed -i -e 's/·/·/g' {} \;
find ./ -type f -exec sed -i -e 's/\ṁ/ṁ/g' {} \;
find ./ -type f -exec sed -i -e 's/ṅ/ṅ/g' {} \;
find ./ -type f -exec sed -i -e 's/ñ/ñ/g' {} \;
find ./ -type f -exec sed -i -e 's/\ṇ/ṇ/g' {} \;
find ./ -type f -exec sed -i -e 's/\ṭ/ṭ/g' {} \;
find ./ -type f -exec sed -i -e 's/\ḍ/ḍ/g' {} \;
find ./ -type f -exec sed -i -e 's/ś/ś/g' {} \;
find ./ -type f -exec sed -i -e 's/\ṣ/ṣ/g' {} \;
find ./ -type f -exec sed -i -e 's/ẖ/ẖ/g' {} \;
find ./ -type f -exec sed -i -e 's/ẖ k/ẖ k/g' {} \;
find ./ -type f -exec sed -i -e 's/ẖk/ẖk/g' {} \;
find ./ -type f -exec sed -i -e 's/ḫ/ḫ/g' {} \;
find ./ -type f -exec sed -i -e 's/ḫ p/ḫ p/g' {} \;
find ./ -type f -exec sed -i -e 's/ḫp/ḫp/g' {} \;
find ./ -type f -exec sed -i -e 's/m̐/m̐/g' {} \;
find ./ -type f -exec sed -i -e 's/m̃/m̃/g' {} \;
find ./ -type f -exec sed -i -e 's/\ḥ/ḥ/g' {} \;
find ./ -type f -exec sed -i -e 's/⏑/⏑/g' {} \;


