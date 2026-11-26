package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class as implements ly3 {
    public final long b;
    public final long c;
    public long d;

    public as(long j, long j2) {
        this.b = j;
        this.c = j2;
        this.d = j - 1;
    }

    @Override // yads.ly3
    public final boolean next() {
        long j = this.d + 1;
        this.d = j;
        return !(j > this.c);
    }
}
