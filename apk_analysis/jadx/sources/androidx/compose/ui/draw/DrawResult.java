package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class DrawResult {
    public static final int $stable = 8;
    private nl3<? super ContentDrawScope, j59> block;

    public DrawResult(nl3<? super ContentDrawScope, j59> nl3Var) {
        this.block = nl3Var;
    }

    public final nl3<ContentDrawScope, j59> getBlock$ui() {
        return this.block;
    }

    public final void setBlock$ui(nl3<? super ContentDrawScope, j59> nl3Var) {
        this.block = nl3Var;
    }
}
