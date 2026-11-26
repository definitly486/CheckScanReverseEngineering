package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class be2<T, R> extends ae2<T, R> implements e02<R> {
    public de4 b;
    public Object c;
    public e02<Object> d;
    public Object e;

    @Override // defpackage.ae2
    public final a32 a(Object obj, ee4 ee4Var) {
        this.d = ee4Var;
        this.c = obj;
        return a32.COROUTINE_SUSPENDED;
    }

    @Override // defpackage.e02
    public final o22 getContext() {
        return gx2.b;
    }

    @Override // defpackage.e02
    public final void resumeWith(Object obj) {
        this.d = null;
        this.e = obj;
    }
}
