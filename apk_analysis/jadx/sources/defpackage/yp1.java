package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class yp1<T> extends sb4 implements xp1<T> {
    public yp1() {
        super(true);
        O(null);
    }

    @Override // defpackage.mk2
    public final wl7 U() {
        tb4 tb4Var = tb4.c;
        tb4Var.getClass();
        v39.c(3, tb4Var);
        ub4 ub4Var = ub4.c;
        ub4Var.getClass();
        v39.c(3, ub4Var);
        return new wl7(this, tb4Var, ub4Var, null);
    }

    @Override // defpackage.mk2
    public final Object Z(e02<? super T> e02Var) throws Throwable {
        Object objU = u(e02Var);
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objU;
    }

    @Override // defpackage.xp1
    public final boolean e(Throwable th) {
        return T(new yq1(th, false));
    }
}
