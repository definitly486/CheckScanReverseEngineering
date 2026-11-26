package defpackage;

import defpackage.r1;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public abstract class p1<S extends r1<?>> {
    public S[] b;
    public int c;
    public int d;
    public gc8 e;

    public final gc8 f() {
        gc8 gc8Var;
        synchronized (this) {
            gc8Var = this.e;
            if (gc8Var == null) {
                int i = this.c;
                gc8Var = new gc8(1, Integer.MAX_VALUE, cu0.DROP_OLDEST);
                gc8Var.e(Integer.valueOf(i));
                this.e = gc8Var;
            }
        }
        return gc8Var;
    }

    public final S g() {
        S s;
        gc8 gc8Var;
        synchronized (this) {
            try {
                S[] sArr = this.b;
                if (sArr == null) {
                    sArr = (S[]) i();
                    this.b = sArr;
                } else if (this.c >= sArr.length) {
                    Object[] objArrCopyOf = Arrays.copyOf(sArr, sArr.length * 2);
                    this.b = (S[]) ((r1[]) objArrCopyOf);
                    sArr = (S[]) ((r1[]) objArrCopyOf);
                }
                int i = this.d;
                do {
                    s = sArr[i];
                    if (s == null) {
                        s = (S) h();
                        sArr[i] = s;
                    }
                    i++;
                    if (i >= sArr.length) {
                        i = 0;
                    }
                } while (!s.a(this));
                this.d = i;
                this.c++;
                gc8Var = this.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (gc8Var != null) {
            gc8Var.x(1);
        }
        return s;
    }

    public abstract S h();

    public abstract r1[] i();

    public final void j(S s) {
        gc8 gc8Var;
        int i;
        e02[] e02VarArrB;
        synchronized (this) {
            try {
                int i2 = this.c - 1;
                this.c = i2;
                gc8Var = this.e;
                if (i2 == 0) {
                    this.d = 0;
                }
                s.getClass();
                e02VarArrB = s.b(this);
            } catch (Throwable th) {
                throw th;
            }
        }
        for (e02 e02Var : e02VarArrB) {
            if (e02Var != null) {
                e02Var.resumeWith(j59.a);
            }
        }
        if (gc8Var != null) {
            gc8Var.x(-1);
        }
    }
}
