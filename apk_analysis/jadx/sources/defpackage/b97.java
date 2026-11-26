package defpackage;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes5.dex */
public final class b97<R> implements gy0<R, Object> {
    public final Type a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final boolean g;

    public b97(Type type, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.a = type;
        this.b = z;
        this.c = z2;
        this.d = z3;
        this.e = z4;
        this.f = z5;
        this.g = z6;
    }

    @Override // defpackage.gy0
    public final Type a() {
        return this.a;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001e  */
    /* JADX WARN: Code duplicated, block: B:13:0x0025  */
    /* JADX WARN: Code duplicated, block: B:15:0x0029  */
    /* JADX WARN: Code duplicated, block: B:17:0x002f  */
    /* JADX WARN: Code duplicated, block: B:19:0x0033  */
    /* JADX WARN: Code duplicated, block: B:21:0x0039  */
    /* JADX WARN: Code duplicated, block: B:23:0x003d  */
    /* JADX WARN: Code duplicated, block: B:25:0x0043 A[RETURN] */
    @Override // defpackage.gy0
    public final Object b(gv5 gv5Var) {
        tq5 mk0Var;
        tq5 iy0Var = new iy0(gv5Var);
        if (!this.b) {
            if (this.c) {
                mk0Var = new mk0(iy0Var);
            }
            if (this.d) {
                return iy0Var.h(n00.MISSING);
            }
            if (this.e) {
                return new vr5(iy0Var);
            }
            if (this.f) {
                return new ur5(iy0Var);
            }
            if (this.g) {
                return new mr5(iy0Var);
            }
            return iy0Var;
        }
        mk0Var = new v57(iy0Var);
        iy0Var = mk0Var;
        if (this.d) {
            return iy0Var.h(n00.MISSING);
        }
        if (this.e) {
            return new vr5(iy0Var);
        }
        if (this.f) {
            return new ur5(iy0Var);
        }
        if (this.g) {
            return new mr5(iy0Var);
        }
        return iy0Var;
    }
}
