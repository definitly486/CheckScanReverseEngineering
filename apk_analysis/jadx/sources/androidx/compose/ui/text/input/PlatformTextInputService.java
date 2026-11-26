package androidx.compose.ui.text.input;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.text.TextLayoutResult;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@ul2
public interface PlatformTextInputService {
    void hideSoftwareKeyboard();

    default void notifyFocusedRect(Rect rect) {
    }

    void showSoftwareKeyboard();

    default void startInput() {
    }

    void startInput(TextFieldValue textFieldValue, ImeOptions imeOptions, nl3<? super List<? extends EditCommand>, j59> nl3Var, nl3<? super ImeAction, j59> nl3Var2);

    void stopInput();

    void updateState(TextFieldValue textFieldValue, TextFieldValue textFieldValue2);

    default void updateTextLayoutResult(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, nl3<? super Matrix, j59> nl3Var, Rect rect, Rect rect2) {
    }
}
