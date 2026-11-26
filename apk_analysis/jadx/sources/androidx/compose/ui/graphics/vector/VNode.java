package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public abstract class VNode {
    public static final int $stable = 8;
    private nl3<? super VNode, j59> invalidateListener;

    public /* synthetic */ VNode(jh2 jh2Var) {
        this();
    }

    public abstract void draw(DrawScope drawScope);

    public nl3<VNode, j59> getInvalidateListener$ui() {
        return this.invalidateListener;
    }

    public final void invalidate() {
        nl3<VNode, j59> invalidateListener$ui = getInvalidateListener$ui();
        if (invalidateListener$ui != null) {
            invalidateListener$ui.invoke(this);
        }
    }

    public void setInvalidateListener$ui(nl3<? super VNode, j59> nl3Var) {
        this.invalidateListener = nl3Var;
    }

    private VNode() {
    }
}
