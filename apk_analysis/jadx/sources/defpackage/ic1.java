package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class ic1 implements hc1 {
    public final dd a;
    public final yb0 b;

    public ic1(dd ddVar, yb0 yb0Var) {
        this.a = ddVar;
        this.b = yb0Var;
    }

    @Override // defpackage.hc1
    public final Object a(int i, pg8 pg8Var) {
        Object objA = this.b.a(new nc0(i), pg8Var);
        return objA == a32.COROUTINE_SUSPENDED ? objA : j59.a;
    }

    @Override // defpackage.hc1
    public final Object b(long j, tp tpVar) {
        Object objA = this.a.a(j, tpVar);
        return objA == a32.COROUTINE_SUSPENDED ? objA : j59.a;
    }
}
