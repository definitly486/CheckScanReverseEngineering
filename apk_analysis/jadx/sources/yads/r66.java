package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class r66 extends u66 {
    public final String b;
    public long c;

    public r66(String str, long j) {
        this.b = str;
        this.c = j;
    }

    public final void a(long j) {
        b(j);
    }

    public final void b(long j) {
        if (this.c == j) {
            return;
        }
        this.c = j;
        a((u66) this);
    }

    public final long c() {
        return this.c;
    }

    @Override // yads.u66
    public final String a() {
        return this.b;
    }
}
