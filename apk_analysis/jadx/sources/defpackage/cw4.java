package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class cw4 extends wv4 {
    public final long b = 1;
    public final long c;
    public boolean d;
    public long e;

    public cw4(long j, long j2) {
        this.c = j2;
        boolean z = j <= j2;
        this.d = z;
        this.e = z ? j : j2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.d;
    }

    @Override // defpackage.wv4
    public final long nextLong() {
        long j = this.e;
        if (j != this.c) {
            this.e = this.b + j;
            return j;
        }
        if (this.d) {
            this.d = false;
            return j;
        }
        qz0.e();
        return 0L;
    }
}
