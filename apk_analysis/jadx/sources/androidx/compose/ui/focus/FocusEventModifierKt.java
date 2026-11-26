package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusEventModifierKt {
    public static final Modifier onFocusEvent(Modifier modifier, nl3<? super FocusState, j59> nl3Var) {
        return modifier.then(new FocusEventElement(nl3Var));
    }
}
