package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class cs2 implements or {
    public final as2 a;
    public final fs2 b;

    public cs2(as2 as2Var, fs2 fs2Var) {
        this.a = as2Var;
        this.b = fs2Var;
    }

    @Override // yads.or
    public final boolean a(String str) {
        return ((Boolean) this.a.a(this.b)).booleanValue();
    }
}
