package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class n66 extends u66 {
    public final String b;
    public boolean c;

    public n66(String str, boolean z) {
        this.b = str;
        this.c = z;
    }

    public final void a(boolean z) {
        b(z);
    }

    public final void b(boolean z) {
        if (this.c == z) {
            return;
        }
        this.c = z;
        a((u66) this);
    }

    public final boolean c() {
        return this.c;
    }

    @Override // yads.u66
    public final String a() {
        return this.b;
    }
}
