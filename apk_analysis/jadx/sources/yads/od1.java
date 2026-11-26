package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class od1 {
    public final as2 a;
    public final as2 b;
    public final as2 c;
    public final as2 d;

    static {
        wr2.a(Double.valueOf(0.0d));
        wr2.a(200L);
        wr2.a(o11.EASE_IN_OUT);
        wr2.a(0L);
    }

    public od1(as2 as2Var, as2 as2Var2, as2 as2Var3, as2 as2Var4) {
        this.a = as2Var;
        this.b = as2Var2;
        this.c = as2Var3;
        this.d = as2Var4;
    }

    public final boolean a(od1 od1Var, fs2 fs2Var, fs2 fs2Var2) {
        return od1Var != null && ((Number) this.a.a(fs2Var)).doubleValue() == ((Number) od1Var.a.a(fs2Var2)).doubleValue() && ((Number) this.b.a(fs2Var)).longValue() == ((Number) od1Var.b.a(fs2Var2)).longValue() && this.c.a(fs2Var) == od1Var.c.a(fs2Var2) && ((Number) this.d.a(fs2Var)).longValue() == ((Number) od1Var.d.a(fs2Var2)).longValue();
    }
}
