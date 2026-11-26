package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNode;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class OnVisibilityChangedModifierKt {
    public static final Modifier onVisibilityChanged(Modifier modifier, long j, float f, LayoutBoundsHolder layoutBoundsHolder, nl3<? super Boolean, j59> nl3Var) {
        return modifier.then(new OnVisibilityChangedElement(j, f, layoutBoundsHolder, nl3Var));
    }

    public static /* synthetic */ Modifier onVisibilityChanged$default(Modifier modifier, long j, float f, LayoutBoundsHolder layoutBoundsHolder, nl3 nl3Var, int i, Object obj) {
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
        return onVisibilityChanged(modifier, j2, f2, layoutBoundsHolder, nl3Var);
    }

    public static final DelegatableNode onVisibilityChangedNode(long j, float f, LayoutBoundsHolder layoutBoundsHolder, nl3<? super Boolean, j59> nl3Var) {
        return new OnVisibilityChangedNode(j, f, layoutBoundsHolder, nl3Var);
    }

    public static /* synthetic */ DelegatableNode onVisibilityChangedNode$default(long j, float f, LayoutBoundsHolder layoutBoundsHolder, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 0;
        }
        if ((i & 2) != 0) {
            f = 1.0f;
        }
        if ((i & 4) != 0) {
            layoutBoundsHolder = null;
        }
        return onVisibilityChangedNode(j, f, layoutBoundsHolder, nl3Var);
    }
}
