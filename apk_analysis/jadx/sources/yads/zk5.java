package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class zk5 implements b3 {
    public static final long b = 5000;
    public final d9 a;

    public zk5(d9 d9Var) {
        this.a = d9Var;
    }

    @Override // yads.b3
    public final long a(long j) {
        Long l = this.a.s;
        return l != null ? Math.min(j, l.longValue()) : j;
    }

    @Override // yads.b3
    public final long a() {
        Long l = this.a.s;
        return l != null ? l.longValue() : b;
    }
}
