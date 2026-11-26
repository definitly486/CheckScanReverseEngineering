package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import defpackage.j59;
import defpackage.ll3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class OnFirstVisibleModifierKt {
    @ul2
    public static final Modifier onFirstVisible(Modifier modifier, long j, float f, LayoutBoundsHolder layoutBoundsHolder, ll3<j59> ll3Var) {
        return modifier.then(new OnFirstVisibleElement(j, f, layoutBoundsHolder, ll3Var));
    }

    public static /* synthetic */ Modifier onFirstVisible$default(Modifier modifier, long j, float f, LayoutBoundsHolder layoutBoundsHolder, ll3 ll3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 0;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            f = 1.0f;
        }
        float f2 = f;
        if ((i & 4) != 0) {
            layoutBoundsHolder = null;
        }
        return onFirstVisible(modifier, j2, f2, layoutBoundsHolder, ll3Var);
    }
}
