package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class qj3 implements v48 {
    public final v48 b;

    public qj3(v48 v48Var) {
        v48Var.getClass();
        this.b = v48Var;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.b.close();
    }

    @Override // defpackage.v48
    public final wv8 r() {
        return this.b.r();
    }

    @Override // defpackage.v48
    public long t0(bu0 bu0Var, long j) {
        bu0Var.getClass();
        return this.b.t0(bu0Var, j);
    }

    public final String toString() {
        return getClass().getSimpleName() + '(' + this.b + ')';
    }
}
