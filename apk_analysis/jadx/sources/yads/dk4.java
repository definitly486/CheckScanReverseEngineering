package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class dk4 implements defpackage.s22 {
    public final ye4 b;
    public final s22.a c = s22.a.b;

    public dk4(ye4 ye4Var) {
        this.b = ye4Var;
    }

    @Override // defpackage.o22
    public final Object fold(Object obj, defpackage.bm3 bm3Var) {
        return o22.a.C0306a.a(this, obj, bm3Var);
    }

    @Override // defpackage.o22
    public final o22.a get(o22.b bVar) {
        return o22.a.C0306a.b(this, bVar);
    }

    @Override // o22.a
    public final o22.b getKey() {
        return this.c;
    }

    @Override // defpackage.s22
    public final void handleException(defpackage.o22 o22Var, Throwable th) {
        th.getClass();
        this.b.a(o8.w);
    }

    @Override // defpackage.o22
    public final defpackage.o22 minusKey(o22.b bVar) {
        return o22.a.C0306a.c(this, bVar);
    }

    @Override // defpackage.o22
    public final defpackage.o22 plus(defpackage.o22 o22Var) {
        return o22.a.C0306a.d(this, o22Var);
    }
}
