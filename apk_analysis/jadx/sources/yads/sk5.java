package yads;

import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes6.dex */
public abstract class sk5 implements ii0 {
    public final rk5 a;
    public final Object b = new Object();
    public final ArrayDeque c = new ArrayDeque();
    public final ArrayDeque d = new ArrayDeque();
    public final mi0[] e;
    public final rt5[] f;
    public int g;
    public int h;
    public mi0 i;
    public ot5 j;
    public boolean k;
    public boolean l;

    public sk5(mi0[] mi0VarArr, rt5[] rt5VarArr) {
        this.e = mi0VarArr;
        this.g = mi0VarArr.length;
        for (int i = 0; i < this.g; i++) {
            this.e[i] = new qt5();
        }
        this.f = rt5VarArr;
        this.h = rt5VarArr.length;
        for (int i2 = 0; i2 < this.h; i2++) {
            this.f[i2] = new wk5((xk5) this);
        }
        rk5 rk5Var = new rk5((xk5) this);
        this.a = rk5Var;
        rk5Var.start();
    }

    public abstract ot5 a(mi0 mi0Var, rt5 rt5Var, boolean z);

    @Override // yads.ii0
    public final void a(qt5 qt5Var) {
        synchronized (this.b) {
            try {
                ot5 ot5Var = this.j;
                if (ot5Var != null) {
                    throw ot5Var;
                }
                if (qt5Var != this.i) {
                    throw new IllegalArgumentException();
                }
                this.c.addLast(qt5Var);
                if (!this.c.isEmpty() && this.h > 0) {
                    this.b.notify();
                }
                this.i = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // yads.ii0
    public final Object b() {
        mi0 mi0Var;
        synchronized (this.b) {
            try {
                ot5 ot5Var = this.j;
                if (ot5Var != null) {
                    throw ot5Var;
                }
                if (this.i != null) {
                    throw new IllegalStateException();
                }
                int i = this.g;
                if (i == 0) {
                    mi0Var = null;
                } else {
                    mi0[] mi0VarArr = this.e;
                    int i2 = i - 1;
                    this.g = i2;
                    mi0Var = mi0VarArr[i2];
                }
                this.i = mi0Var;
            } catch (Throwable th) {
                throw th;
            }
        }
        return mi0Var;
    }

    public final boolean c() {
        ot5 ot5Var;
        ot5 ot5VarA;
        synchronized (this.b) {
            while (!this.l && (this.c.isEmpty() || this.h <= 0)) {
                try {
                    this.b.wait();
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.l) {
                return false;
            }
            mi0 mi0Var = (mi0) this.c.removeFirst();
            rt5[] rt5VarArr = this.f;
            int i = this.h - 1;
            this.h = i;
            rt5 rt5Var = rt5VarArr[i];
            boolean z = this.k;
            this.k = false;
            if (mi0Var.b(4)) {
                rt5Var.b = 4 | rt5Var.b;
            } else {
                if (mi0Var.b(Integer.MIN_VALUE)) {
                    rt5Var.b |= Integer.MIN_VALUE;
                }
                if (mi0Var.b(134217728)) {
                    rt5Var.b = 134217728 | rt5Var.b;
                }
                try {
                    ot5VarA = a(mi0Var, rt5Var, z);
                } catch (OutOfMemoryError e) {
                    ot5Var = new ot5("Unexpected decode error", e);
                    ot5VarA = ot5Var;
                } catch (RuntimeException e2) {
                    ot5Var = new ot5("Unexpected decode error", e2);
                    ot5VarA = ot5Var;
                }
                if (ot5VarA != null) {
                    synchronized (this.b) {
                        this.j = ot5VarA;
                    }
                    return false;
                }
            }
            synchronized (this.b) {
                try {
                    if (this.k || rt5Var.b(Integer.MIN_VALUE)) {
                        rt5Var.b();
                    } else {
                        this.d.addLast(rt5Var);
                    }
                    mi0Var.b();
                    mi0[] mi0VarArr = this.e;
                    int i2 = this.g;
                    this.g = i2 + 1;
                    mi0VarArr[i2] = mi0Var;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return true;
        }
    }

    public final void d() {
        if (this.c.isEmpty() || this.h <= 0) {
            return;
        }
        this.b.notify();
    }

    @Override // yads.ii0
    public final void flush() {
        synchronized (this.b) {
            try {
                this.k = true;
                mi0 mi0Var = this.i;
                if (mi0Var != null) {
                    mi0Var.b();
                    mi0[] mi0VarArr = this.e;
                    int i = this.g;
                    this.g = i + 1;
                    mi0VarArr[i] = mi0Var;
                    this.i = null;
                }
                while (!this.c.isEmpty()) {
                    mi0 mi0Var2 = (mi0) this.c.removeFirst();
                    mi0Var2.b();
                    mi0[] mi0VarArr2 = this.e;
                    int i2 = this.g;
                    this.g = i2 + 1;
                    mi0VarArr2[i2] = mi0Var2;
                }
                while (!this.d.isEmpty()) {
                    ((rt5) this.d.removeFirst()).b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // yads.ii0
    public final void release() {
        synchronized (this.b) {
            this.l = true;
            this.b.notify();
        }
        try {
            this.a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    @Override // yads.ii0
    public final rt5 a() {
        synchronized (this.b) {
            try {
                ot5 ot5Var = this.j;
                if (ot5Var == null) {
                    if (this.d.isEmpty()) {
                        return null;
                    }
                    return (rt5) this.d.removeFirst();
                }
                throw ot5Var;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
