# ColorPicker

Android color picker from AOSP [platform/frameworks/opt/colorpicker](https://android.googlesource.com/platform/frameworks/opt/colorpicker/).

## Why?

- Simple color picker dialog.
- Proper accessibility support.

## Changes

- Renamed `ColorPickerDialog` to `ColorPickerDialogFragment`.
- Replaced framework `AlertDialog` with AppCompat `AlertDialog`.
- Replaced framework `DialogFragment` with AppCompat `AppCompatDialogFragment`.
- Replaced `ic_colorpicker_swatch_selected` with a remastered vector drawable.

## Integration

```gradle
dependencies {
    implementation 'me.zhanghai.android.colorpicker:android:1.0.0'
}
```

## Usage

See [ColorPickerDialogFragment.java](library/src/main/java/me/zhanghai/android/colorpicker/ColorPickerDialogFragment.java).

## License

    Copyright 2019 Hai Zhang

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
