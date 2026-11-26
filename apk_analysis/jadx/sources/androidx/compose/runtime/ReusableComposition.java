package androidx.compose.runtime;

import defpackage.bm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public interface ReusableComposition extends Composition {
    void deactivate();

    void setContentWithReuse(bm3<? super Composer, ? super Integer, j59> bm3Var);
}
