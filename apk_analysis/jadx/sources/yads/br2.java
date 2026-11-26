package yads;

import defpackage.kx6;

/* JADX INFO: loaded from: classes6.dex */
public final class br2 {
    public static final Object b = new Object();
    public static volatile br2 c;
    public final ar2 a;

    public br2() {
        Integer num;
        zg5 zg5VarA = yg5.a();
        synchronized (zg5.k) {
            num = zg5VarA.j;
        }
        this.a = new ar2(num != null ? kx6.f(num.intValue(), 1, 4) : 4);
    }

    public final gr2 a(ja6 ja6Var) {
        return (gr2) this.a.get(ja6Var);
    }

    public final void a(ja6 ja6Var, gr2 gr2Var) {
        this.a.put(ja6Var, gr2Var);
    }
}
