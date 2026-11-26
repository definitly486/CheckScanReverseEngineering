package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusModifierKt {
    @ul2
    public static final Modifier focusModifier(Modifier modifier) {
        return focusTarget(modifier);
    }

    public static final Modifier focusTarget(Modifier modifier) {
        return modifier.then(FocusTargetNode.FocusTargetElement.INSTANCE);
    }
}
