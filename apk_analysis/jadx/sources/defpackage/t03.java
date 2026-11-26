package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class t03 implements j37, c37 {
    public final Object a;
    public final j37 b;
    public volatile c37 c;
    public volatile c37 d;
    public j37.a e;
    public j37.a f;

    public t03(Object obj, j37 j37Var) {
        j37.a aVar = j37.a.CLEARED;
        this.e = aVar;
        this.f = aVar;
        this.a = obj;
        this.b = j37Var;
    }

    @Override // defpackage.j37, defpackage.c37
    public final boolean a() {
        boolean z;
        synchronized (this.a) {
            try {
                z = this.c.a() || this.d.a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // defpackage.j37
    public final void b(c37 c37Var) {
        synchronized (this.a) {
            try {
                if (c37Var.equals(this.c)) {
                    this.e = j37.a.SUCCESS;
                } else if (c37Var.equals(this.d)) {
                    this.f = j37.a.SUCCESS;
                }
                j37 j37Var = this.b;
                if (j37Var != null) {
                    j37Var.b(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.c37
    public final boolean c() {
        boolean z;
        synchronized (this.a) {
            try {
                j37.a aVar = this.e;
                j37.a aVar2 = j37.a.CLEARED;
                z = aVar == aVar2 && this.f == aVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // defpackage.c37
    public final void clear() {
        synchronized (this.a) {
            try {
                j37.a aVar = j37.a.CLEARED;
                this.e = aVar;
                this.c.clear();
                if (this.f != aVar) {
                    this.f = aVar;
                    this.d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.c37
    public final boolean d(c37 c37Var) {
        if (c37Var instanceof t03) {
            t03 t03Var = (t03) c37Var;
            if (this.c.d(t03Var.c) && this.d.d(t03Var.d)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.j37
    public final boolean e(c37 c37Var) {
        boolean z;
        boolean zEquals;
        j37.a aVar;
        synchronized (this.a) {
            j37 j37Var = this.b;
            z = false;
            if (j37Var == null || j37Var.e(this)) {
                j37.a aVar2 = this.e;
                j37.a aVar3 = j37.a.FAILED;
                if (aVar2 != aVar3) {
                    zEquals = c37Var.equals(this.c);
                } else {
                    zEquals = c37Var.equals(this.d) && ((aVar = this.f) == j37.a.SUCCESS || aVar == aVar3);
                }
                if (zEquals) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // defpackage.j37
    public final boolean f(c37 c37Var) {
        boolean z;
        synchronized (this.a) {
            j37 j37Var = this.b;
            z = j37Var == null || j37Var.f(this);
        }
        return z;
    }

    @Override // defpackage.j37
    public final boolean g(c37 c37Var) {
        boolean z;
        synchronized (this.a) {
            j37 j37Var = this.b;
            z = (j37Var == null || j37Var.g(this)) && c37Var.equals(this.c);
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [j37] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    @Override // defpackage.j37
    public final j37 getRoot() {
        ?? root;
        synchronized (this.a) {
            try {
                j37 j37Var = this.b;
                this = this;
                if (j37Var != null) {
                    root = j37Var.getRoot();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return root;
    }

    @Override // defpackage.j37
    public final void h(c37 c37Var) {
        synchronized (this.a) {
            try {
                if (c37Var.equals(this.d)) {
                    this.f = j37.a.FAILED;
                    j37 j37Var = this.b;
                    if (j37Var != null) {
                        j37Var.h(this);
                    }
                    return;
                }
                this.e = j37.a.FAILED;
                j37.a aVar = this.f;
                j37.a aVar2 = j37.a.RUNNING;
                if (aVar != aVar2) {
                    this.f = aVar2;
                    this.d.i();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.c37
    public final void i() {
        synchronized (this.a) {
            try {
                j37.a aVar = this.e;
                j37.a aVar2 = j37.a.RUNNING;
                if (aVar != aVar2) {
                    this.e = aVar2;
                    this.c.i();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.c37
    public final boolean isComplete() {
        boolean z;
        synchronized (this.a) {
            try {
                j37.a aVar = this.e;
                j37.a aVar2 = j37.a.SUCCESS;
                z = aVar == aVar2 || this.f == aVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // defpackage.c37
    public final boolean isRunning() {
        boolean z;
        synchronized (this.a) {
            try {
                j37.a aVar = this.e;
                j37.a aVar2 = j37.a.RUNNING;
                z = aVar == aVar2 || this.f == aVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // defpackage.c37
    public final void pause() {
        synchronized (this.a) {
            try {
                j37.a aVar = this.e;
                j37.a aVar2 = j37.a.RUNNING;
                if (aVar == aVar2) {
                    this.e = j37.a.PAUSED;
                    this.c.pause();
                }
                if (this.f == aVar2) {
                    this.f = j37.a.PAUSED;
                    this.d.pause();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
