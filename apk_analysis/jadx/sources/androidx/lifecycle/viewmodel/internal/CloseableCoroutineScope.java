package androidx.lifecycle.viewmodel.internal;

import defpackage.o22;
import defpackage.qb4;
import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
public final class CloseableCoroutineScope implements AutoCloseable, y22 {
    private final o22 coroutineContext;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CloseableCoroutineScope(y22 y22Var) {
        this(y22Var.getCoroutineContext());
        y22Var.getClass();
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        qb4.b(getCoroutineContext(), null);
    }

    @Override // defpackage.y22
    public o22 getCoroutineContext() {
        return this.coroutineContext;
    }

    public CloseableCoroutineScope(o22 o22Var) {
        o22Var.getClass();
        this.coroutineContext = o22Var;
    }
}
