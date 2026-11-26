package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class hu3 extends r22 implements wk2 {
    public abstract gu3 k0();

    @Override // defpackage.r22
    public final r22 limitedParallelism(int i, String str) {
        zd3.b(i);
        return str != null ? new wh5(this, str) : this;
    }

    @Override // defpackage.r22
    public String toString() {
        gu3 gu3VarK0;
        String str;
        oi2 oi2Var = qo2.a;
        hu3 hu3Var = uy4.a;
        if (this == hu3Var) {
            str = "Dispatchers.Main";
        } else {
            try {
                gu3VarK0 = hu3Var.k0();
            } catch (UnsupportedOperationException unused) {
                gu3VarK0 = null;
            }
            str = this == gu3VarK0 ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        return getClass().getSimpleName() + '@' + cd2.a(this);
    }
}
