package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class a58 implements h24 {
    public final w93 b;
    public final h24.a c;
    public final Object d = new Object();
    public boolean e;
    public final wu0 f;

    public a58(wu0 wu0Var, w93 w93Var, h24.a aVar) {
        this.b = w93Var;
        this.c = aVar;
        this.f = wu0Var;
    }

    @Override // defpackage.h24
    public final j46 J() {
        synchronized (this.d) {
            if (this.e) {
                throw new IllegalStateException("closed");
            }
        }
        return null;
    }

    @Override // defpackage.h24
    public final wu0 L() {
        wu0 wu0Var;
        synchronized (this.d) {
            try {
                if (this.e) {
                    throw new IllegalStateException("closed");
                }
                wu0Var = this.f;
                if (wu0Var == null) {
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return wu0Var;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        synchronized (this.d) {
            this.e = true;
            wu0 wu0Var = this.f;
            if (wu0Var != null) {
                try {
                    wu0Var.close();
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception unused) {
                }
            }
            j59 j59Var = j59.a;
        }
    }

    @Override // defpackage.h24
    public final w93 getFileSystem() {
        return this.b;
    }

    @Override // defpackage.h24
    public final h24.a getMetadata() {
        return this.c;
    }
}
