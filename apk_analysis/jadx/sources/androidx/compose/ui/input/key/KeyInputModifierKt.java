package androidx.compose.ui.input.key;

import androidx.compose.ui.Modifier;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class KeyInputModifierKt {
    public static final Modifier onKeyEvent(Modifier modifier, nl3<? super KeyEvent, Boolean> nl3Var) {
        return modifier.then(new KeyInputElement(nl3Var, null));
    }

    public static final Modifier onPreviewKeyEvent(Modifier modifier, nl3<? super KeyEvent, Boolean> nl3Var) {
        return modifier.then(new KeyInputElement(null, nl3Var));
    }
}
