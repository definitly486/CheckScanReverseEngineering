package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class hi5 implements Comparable {
    public final long b;
    public final bd0 c;

    public hi5(long j, bd0 bd0Var) {
        this.b = j;
        this.c = bd0Var;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        long j = this.b;
        long j2 = ((hi5) obj).b;
        int i = u56.a;
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }
}
