package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class fx3 extends c03 {
    public static final Object f = new Object();
    public final Object d;
    public final Object e;

    public fx3(kx5 kx5Var, Object obj, Object obj2) {
        super(kx5Var);
        this.d = obj;
        this.e = obj2;
    }

    @Override // yads.kx5
    public final hx5 a(int i, hx5 hx5Var, boolean z) {
        this.c.a(i, hx5Var, z);
        if (u56.a(hx5Var.c, this.e) && z) {
            hx5Var.c = f;
        }
        return hx5Var;
    }

    @Override // yads.c03, yads.kx5
    public final jx5 a(int i, jx5 jx5Var, long j) {
        this.c.a(i, jx5Var, j);
        if (u56.a(jx5Var.b, this.d)) {
            jx5Var.b = jx5.s;
        }
        return jx5Var;
    }

    @Override // yads.c03, yads.kx5
    public final int a(Object obj) {
        Object obj2;
        kx5 kx5Var = this.c;
        if (f.equals(obj) && (obj2 = this.e) != null) {
            obj = obj2;
        }
        return kx5Var.a(obj);
    }

    @Override // yads.c03, yads.kx5
    public final Object a(int i) {
        Object objA = this.c.a(i);
        return u56.a(objA, this.e) ? f : objA;
    }
}
