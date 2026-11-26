package androidx.compose.foundation.text.input.internal.selection;

import androidx.compose.ui.geometry.Rect;
import defpackage.e02;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
public interface TextToolbarHandler {
    void hideTextToolbar();

    Object showTextToolbar(TextFieldSelectionState textFieldSelectionState, Rect rect, e02<? super j59> e02Var);
}
