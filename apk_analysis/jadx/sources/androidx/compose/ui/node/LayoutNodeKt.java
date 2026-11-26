package androidx.compose.ui.node;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import defpackage.ag;
import defpackage.h8;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutNodeKt {
    private static final boolean DebugChanges = false;
    private static final Density DefaultDensity = DensityKt.Density$default(1.0f, 0.0f, 2, null);

    public static final void add(LayoutNode layoutNode, LayoutNode layoutNode2) {
        layoutNode.insertAt$ui(layoutNode.getChildren$ui().size(), layoutNode2);
    }

    public static final Owner requireOwner(LayoutNode layoutNode) {
        Owner owner$ui = layoutNode.getOwner$ui();
        if (owner$ui != null) {
            return owner$ui;
        }
        throw ag.e("LayoutNode should be attached to an owner");
    }

    public static final <T> T withComposeStackTrace(LayoutNode layoutNode, ll3<? extends T> ll3Var) throws Throwable {
        try {
            return ll3Var.invoke();
        } catch (Throwable th) {
            layoutNode.rethrowWithComposeStackTrace(th);
            h8.d();
            return null;
        }
    }
}
