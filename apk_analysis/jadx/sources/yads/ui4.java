package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ui4 implements tx5 {
    public final long a;
    public final /* synthetic */ vi4 b;

    public ui4(vi4 vi4Var, long j) {
        this.b = vi4Var;
        this.a = j;
    }

    @Override // yads.tx5
    public final void a(long j, long j2) {
        m15 m15Var = this.b.b;
        if (m15Var != null) {
            long j3 = this.a;
            m15Var.a(j3, j3 - j);
        }
    }
}
