#!/bin/bash

set -eu

ANDROID_CLASSES_ROOT="colorpicker/src/com/android/colorpicker"
ANDROID_RESOURCES_ROOT="colorpicker/res"
ART_ROOT="art"
LIBRARY_CLASSES_ROOT="library/src/main/java/me/zhanghai/android/colorpicker"
LIBRARY_RESOURCES_ROOT="library/src/main/res"

mkdir -p "${LIBRARY_CLASSES_ROOT}"
rm -rf "${LIBRARY_CLASSES_ROOT}"
cp -r "${ANDROID_CLASSES_ROOT}" "${LIBRARY_CLASSES_ROOT}"

find "${LIBRARY_CLASSES_ROOT}" -iname '*.java' -type f -print0 | xargs -0 sed -Ei \
-e 's/\bcom\.android\.colorpicker\b/me.zhanghai.android.colorpicker/g' \
-e 's/\bandroid\.app\.AlertDialog\b/androidx.appcompat.app.AlertDialog/g' \
-e 's/\bandroid\.app\.DialogFragment\b/androidx.appcompat.app.AppCompatDialogFragment/g' \
-e 's/\bDialogFragment\b/AppCompatDialogFragment/g' \
-e 's/\bColorPickerDialog\b/ColorPickerDialogFragment/g'
mv "${LIBRARY_CLASSES_ROOT}/ColorPickerDialog.java" "${LIBRARY_CLASSES_ROOT}/ColorPickerDialogFragment.java"

mkdir -p "${LIBRARY_RESOURCES_ROOT}"
rm -rf "${LIBRARY_RESOURCES_ROOT}"
cp -r "${ANDROID_RESOURCES_ROOT}" "${LIBRARY_RESOURCES_ROOT}"
rm -r "${LIBRARY_RESOURCES_ROOT}/drawable-"{mdpi,hdpi,xhdpi}
cp -r "${ART_ROOT}/drawable"{,-v21} "${LIBRARY_RESOURCES_ROOT}"
