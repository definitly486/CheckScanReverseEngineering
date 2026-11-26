package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class gz6 implements o95 {
    public final ab8 a;
    public final rf9 b;
    public final Object c = new Object();

    public gz6(ab8 ab8Var, rf9 rf9Var) {
        this.a = ab8Var;
        this.b = rf9Var;
    }

    @Override // defpackage.o95
    public final o95.c a(o95.b bVar) {
        o95.c cVarA;
        synchronized (this.c) {
            try {
                cVarA = this.a.a(bVar);
                if (cVarA == null) {
                    cVarA = this.b.a(bVar);
                }
                if (cVarA != null && !cVarA.a.a()) {
                    synchronized (this.c) {
                        this.a.f(bVar);
                        this.b.f(bVar);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVarA;
    }

    @Override // defpackage.o95
    public final void b(long j) {
        synchronized (this.c) {
            this.a.b(j);
            j59 j59Var = j59.a;
        }
    }

    @Override // defpackage.o95
    public final long c() {
        long jC;
        synchronized (this.c) {
            jC = this.a.c();
        }
        return jC;
    }

    @Override // defpackage.o95
    public final void clear() {
        synchronized (this.c) {
            this.a.clear();
            this.b.clear();
            j59 j59Var = j59.a;
        }
    }

    @Override // defpackage.o95
    public final void e(long j) {
        synchronized (this.c) {
            this.a.e(j);
            j59 j59Var = j59.a;
        }
    }

    @Override // defpackage.o95
    public final void f(o95.b bVar, o95.c cVar) {
        synchronized (this.c) {
            long size = cVar.a.getSize();
            if (size < 0) {
                throw new IllegalStateException(("Image size must be non-negative: " + size).toString());
            }
            this.a.d(bVar, cVar.a, cVar.b, size);
            j59 j59Var = j59.a;
        }
    }

    @Override // defpackage.o95
    public final long getSize() {
        long size;
        synchronized (this.c) {
            size = this.a.getSize();
        }
        return size;
    }
}
