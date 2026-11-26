package androidx.compose.ui.input.key;

import androidx.compose.ui.Modifier;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class SoftwareKeyboardInterceptionModifierKt {
    public static final Modifier onInterceptKeyBeforeSoftKeyboard(Modifier modifier, nl3<? super KeyEvent, Boolean> nl3Var) {
        return modifier.then(new SoftKeyboardInterceptionElement(nl3Var, null));
    }

    public static final Modifier onPreInterceptKeyBeforeSoftKeyboard(Modifier modifier, nl3<? super KeyEvent, Boolean> nl3Var) {
        return modifier.then(new SoftKeyboardInterceptionElement(null, nl3Var));
    }
}
