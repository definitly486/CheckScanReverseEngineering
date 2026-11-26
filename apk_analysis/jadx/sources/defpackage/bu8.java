package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class bu8 implements j37, c37 {
    public final j37 a;
    public final Object b;
    public volatile y08 c;
    public volatile c37 d;
    public j37.a e;
    public j37.a f;
    public boolean g;

    public bu8(Object obj, j37 j37Var) {
        j37.a aVar = j37.a.CLEARED;
        this.e = aVar;
        this.f = aVar;
        this.b = obj;
        this.a = j37Var;
    }

    @Override // defpackage.j37, defpackage.c37
    public final boolean a() {
        boolean z;
        synchronized (this.b) {
            try {
                z = this.d.a() || this.c.a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // defpackage.j37
    public final void b(c37 c37Var) {
        synchronized (this.b) {
            try {
                if (c37Var.equals(this.d)) {
                    this.f = j37.a.SUCCESS;
                    return;
                }
                this.e = j37.a.SUCCESS;
                j37 j37Var = this.a;
                if (j37Var != null) {
                    j37Var.b(this);
                }
                if (!this.f.a()) {
                    this.d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.c37
    public final boolean c() {
        boolean z;
        synchronized (this.b) {
            z = this.e == j37.a.CLEARED;
        }
        return z;
    }

    @Override // defpackage.c37
    public final void clear() {
        synchronized (this.b) {
            this.g = false;
            j37.a aVar = j37.a.CLEARED;
            this.e = aVar;
            this.f = aVar;
            this.d.clear();
            this.c.clear();
        }
    }

    @Override // defpackage.c37
    public final boolean d(c37 c37Var) {
        if (!(c37Var instanceof bu8)) {
            return false;
        }
        bu8 bu8Var = (bu8) c37Var;
        if (this.c == null) {
            if (bu8Var.c != null) {
                return false;
            }
        } else if (!this.c.d(bu8Var.c)) {
            return false;
        }
        if (this.d == null) {
            return bu8Var.d == null;
        }
        return this.d.d(bu8Var.d);
    }

    @Override // defpackage.j37
    public final boolean e(c37 c37Var) {
        boolean z;
        synchronized (this.b) {
            try {
                j37 j37Var = this.a;
                z = (j37Var == null || j37Var.e(this)) && c37Var.equals(this.c) && !a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // defpackage.j37
    public final boolean f(c37 c37Var) {
        boolean z;
        synchronized (this.b) {
            try {
                j37 j37Var = this.a;
                z = (j37Var == null || j37Var.f(this)) && (c37Var.equals(this.c) || this.e != j37.a.SUCCESS);
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // defpackage.j37
    public final boolean g(c37 c37Var) {
        boolean z;
        synchronized (this.b) {
            try {
                j37 j37Var = this.a;
                z = (j37Var == null || j37Var.g(this)) && c37Var.equals(this.c) && this.e != j37.a.PAUSED;
            } catch (Throwable th) {
                throw th;
            }
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
        synchronized (this.b) {
            try {
                j37 j37Var = this.a;
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
        synchronized (this.b) {
            try {
                if (!c37Var.equals(this.c)) {
                    this.f = j37.a.FAILED;
                    return;
                }
                this.e = j37.a.FAILED;
                j37 j37Var = this.a;
                if (j37Var != null) {
                    j37Var.h(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.c37
    public final void i() {
        synchronized (this.b) {
            try {
                this.g = true;
                try {
                    if (this.e != j37.a.SUCCESS) {
                        j37.a aVar = this.f;
                        j37.a aVar2 = j37.a.RUNNING;
                        if (aVar != aVar2) {
                            this.f = aVar2;
                            this.d.i();
                        }
                    }
                    if (this.g) {
                        j37.a aVar3 = this.e;
                        j37.a aVar4 = j37.a.RUNNING;
                        if (aVar3 != aVar4) {
                            this.e = aVar4;
                            this.c.i();
                        }
                    }
                    this.g = false;
                } catch (Throwable th) {
                    this.g = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // defpackage.c37
    public final boolean isComplete() {
        boolean z;
        synchronized (this.b) {
            z = this.e == j37.a.SUCCESS;
        }
        return z;
    }

    @Override // defpackage.c37
    public final boolean isRunning() {
        boolean z;
        synchronized (this.b) {
            z = this.e == j37.a.RUNNING;
        }
        return z;
    }

    @Override // defpackage.c37
    public final void pause() {
        synchronized (this.b) {
            try {
                if (!this.f.a()) {
                    this.f = j37.a.PAUSED;
                    this.d.pause();
                }
                if (!this.e.a()) {
                    this.e = j37.a.PAUSED;
                    this.c.pause();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
