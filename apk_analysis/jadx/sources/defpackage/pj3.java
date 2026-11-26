package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class pj3 implements s18 {
    public final s18 b;

    public pj3(s18 s18Var) {
        s18Var.getClass();
        this.b = s18Var;
    }

    @Override // defpackage.s18
    public void H(bu0 bu0Var, long j) {
        bu0Var.getClass();
        this.b.H(bu0Var, j);
    }

    @Override // defpackage.s18, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.b.close();
    }

    @Override // defpackage.s18, java.io.Flushable
    public void flush() {
        this.b.flush();
    }

    @Override // defpackage.s18
    public final wv8 r() {
        return this.b.r();
    }

    public final String toString() {
        return getClass().getSimpleName() + '(' + this.b + ')';
    }
}
