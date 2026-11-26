package androidx.compose.runtime;

import defpackage.bm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public interface Composition {
    void dispose();

    boolean getHasInvalidations();

    boolean isDisposed();

    void setContent(bm3<? super Composer, ? super Integer, j59> bm3Var);
}
