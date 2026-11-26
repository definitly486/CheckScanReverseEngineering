package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.IntSize;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class OnRemeasuredModifierKt {
    public static final Modifier onSizeChanged(Modifier modifier, nl3<? super IntSize, j59> nl3Var) {
        return modifier.then(new OnSizeChangedModifier(nl3Var));
    }
}
