package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class i81 {
    public final yc1 a;
    public final as2 b;
    public final as2 c;
    public final as2 d;
    public final tc1 e;

    static {
        Boolean bool = Boolean.FALSE;
        wr2.a(bool);
        wr2.a(bool);
        wr2.a(Boolean.TRUE);
    }

    public i81(yc1 yc1Var, as2 as2Var, as2 as2Var2, as2 as2Var3, tc1 tc1Var) {
        this.a = yc1Var;
        this.b = as2Var;
        this.c = as2Var2;
        this.d = as2Var3;
        this.e = tc1Var;
    }

    public final boolean a(i81 i81Var, fs2 fs2Var, fs2 fs2Var2) {
        boolean zA;
        if (i81Var == null) {
            return false;
        }
        yc1 yc1Var = this.a;
        yc1 yc1Var2 = i81Var.a;
        if (yc1Var != null) {
            zA = yc1Var.a(yc1Var2, fs2Var, fs2Var2);
        } else {
            zA = yc1Var2 == null;
        }
        return zA && ((Boolean) this.b.a(fs2Var)).booleanValue() == ((Boolean) i81Var.b.a(fs2Var2)).booleanValue() && ((Boolean) this.c.a(fs2Var)).booleanValue() == ((Boolean) i81Var.c.a(fs2Var2)).booleanValue() && ((Boolean) this.d.a(fs2Var)).booleanValue() == ((Boolean) i81Var.d.a(fs2Var2)).booleanValue() && this.e.a(i81Var.e, fs2Var, fs2Var2);
    }
}
