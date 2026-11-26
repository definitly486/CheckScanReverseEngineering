package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class n93 implements h24 {
    public final j46 b;
    public final w93 c;
    public final String d;
    public final AutoCloseable e;
    public final Object f = new Object();
    public boolean g;
    public iy6 h;

    public n93(j46 j46Var, w93 w93Var, String str, AutoCloseable autoCloseable) {
        this.b = j46Var;
        this.c = w93Var;
        this.d = str;
        this.e = autoCloseable;
    }

    @Override // defpackage.h24
    public final j46 J() {
        j46 j46Var;
        synchronized (this.f) {
            if (this.g) {
                throw new IllegalStateException("closed");
            }
            j46Var = this.b;
        }
        return j46Var;
    }

    @Override // defpackage.h24
    public final wu0 L() {
        synchronized (this.f) {
            if (this.g) {
                throw new IllegalStateException("closed");
            }
            iy6 iy6Var = this.h;
            if (iy6Var != null) {
                return iy6Var;
            }
            iy6 iy6VarF = c84.f(this.c.Q(this.b));
            this.h = iy6VarF;
            return iy6VarF;
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0014 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.AutoCloseable
    public final void close() {
        AutoCloseable autoCloseable;
        synchronized (this.f) {
            this.g = true;
            iy6 iy6Var = this.h;
            if (iy6Var != null) {
                try {
                    iy6Var.close();
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception unused) {
                }
                autoCloseable = this.e;
                if (autoCloseable != null) {
                    try {
                        rk3.d(autoCloseable);
                    } catch (RuntimeException e2) {
                        throw e2;
                    } catch (Exception unused2) {
                    }
                }
                j59 j59Var = j59.a;
            } else {
                autoCloseable = this.e;
                if (autoCloseable != null) {
                    rk3.d(autoCloseable);
                }
                j59 j59Var2 = j59.a;
            }
            throw th;
        }
    }

    @Override // defpackage.h24
    public final w93 getFileSystem() {
        return this.c;
    }

    @Override // defpackage.h24
    public final h24.a getMetadata() {
        return null;
    }
}
