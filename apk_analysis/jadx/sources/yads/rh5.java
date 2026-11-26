package yads;

/* JADX INFO: loaded from: classes6.dex */
public class rh5 implements sh5 {
    public final long a;
    public final qh5 b;

    public rh5(long j, long j2) {
        this.a = j;
        uh5 uh5Var = j2 == 0 ? uh5.c : new uh5(0L, j2);
        this.b = new qh5(uh5Var, uh5Var);
    }

    @Override // yads.sh5
    public final qh5 b(long j) {
        return this.b;
    }

    @Override // yads.sh5
    public final long c() {
        return this.a;
    }

    @Override // yads.sh5
    public final boolean b() {
        return false;
    }
}
