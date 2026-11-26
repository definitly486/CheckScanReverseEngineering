package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Constraints;
import defpackage.dm3;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutModifierKt {
    public static final Modifier layout(Modifier modifier, dm3<? super MeasureScope, ? super Measurable, ? super Constraints, ? extends MeasureResult> dm3Var) {
        return modifier.then(new LayoutElement(dm3Var));
    }
}
