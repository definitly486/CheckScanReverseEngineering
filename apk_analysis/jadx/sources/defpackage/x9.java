package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class x9 {
    public final aa a;
    public final jf6 b;
    public final bm0 c;

    public x9(aa aaVar, jf6 jf6Var, bm0 bm0Var) {
        this.a = aaVar;
        this.b = jf6Var;
        this.c = bm0Var;
    }

    public static ux5 a(vx5 vx5Var) {
        String strA = vx5Var.a();
        if (strA == null) {
            strA = "";
        }
        String strB = vx5Var.b();
        return new ux5(strA, strB != null ? strB : "");
    }
}
