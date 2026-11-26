package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class or extends wv4 {
    public final long[] b;
    public int c;

    public or(long[] jArr) {
        this.b = jArr;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.c < this.b.length;
    }

    @Override // defpackage.wv4
    public final long nextLong() {
        try {
            long[] jArr = this.b;
            int i = this.c;
            this.c = i + 1;
            return jArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.c--;
            ag.g(e.getMessage());
            return 0L;
        }
    }
}
