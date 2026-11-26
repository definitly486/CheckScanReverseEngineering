package androidx.compose.ui.input.rotary;

import androidx.compose.ui.Modifier;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class RotaryInputModifierKt {
    public static final Modifier onPreRotaryScrollEvent(Modifier modifier, nl3<? super RotaryScrollEvent, Boolean> nl3Var) {
        return modifier.then(new RotaryInputElement(null, nl3Var));
    }

    public static final Modifier onRotaryScrollEvent(Modifier modifier, nl3<? super RotaryScrollEvent, Boolean> nl3Var) {
        return modifier.then(new RotaryInputElement(nl3Var, null));
    }
}
