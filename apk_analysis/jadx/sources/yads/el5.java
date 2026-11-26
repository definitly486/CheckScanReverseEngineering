package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class el5 implements ek0 {
    public static final long b = 5000;
    public final d9 a;

    public el5(d9 d9Var) {
        this.a = d9Var;
    }

    @Override // yads.ek0
    public final long a() {
        Long l = this.a.s;
        return l != null ? l.longValue() : b;
    }
}
