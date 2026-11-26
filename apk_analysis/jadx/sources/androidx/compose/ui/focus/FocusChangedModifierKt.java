package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusChangedModifierKt {
    public static final Modifier onFocusChanged(Modifier modifier, nl3<? super FocusState, j59> nl3Var) {
        return modifier.then(new FocusChangedElement(nl3Var));
    }
}
