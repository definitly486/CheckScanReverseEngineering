package defpackage;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public abstract class rb4 extends pu4 implements hp2, a44 {
    public sb4 e;

    @Override // defpackage.a44
    public final bo5 b() {
        return null;
    }

    @Override // defpackage.hp2
    public final void dispose() {
        rb4 rb4Var;
        Unsafe unsafe;
        long j;
        sb4 sb4VarJ = j();
        while (true) {
            Object objL = sb4VarJ.L();
            if (objL instanceof rb4) {
                if (objL != this) {
                    return;
                }
                ex2 ex2Var = vp2.i;
                do {
                    unsafe = pz0.a;
                    j = sb4.c;
                    if (unsafe.compareAndSwapObject(sb4VarJ, j, objL, ex2Var)) {
                        return;
                    }
                } while (unsafe.getObjectVolatile(sb4VarJ, j) == objL);
            } else {
                if (!(objL instanceof a44) || ((a44) objL).b() == null) {
                    return;
                }
                while (true) {
                    Object objF = this.f();
                    if (objF instanceof b27) {
                        return;
                    }
                    if (objF == this) {
                        return;
                    }
                    objF.getClass();
                    pu4 pu4Var = (pu4) objF;
                    Unsafe unsafe2 = pz0.a;
                    long j2 = pu4.d;
                    b27 b27Var = (b27) unsafe2.getObjectVolatile(pu4Var, j2);
                    if (b27Var == null) {
                        b27Var = new b27(pu4Var);
                        unsafe2.putObjectVolatile(pu4Var, j2, b27Var);
                    }
                    b27 b27Var2 = b27Var;
                    while (true) {
                        Unsafe unsafe3 = pz0.a;
                        long j3 = pu4.b;
                        rb4Var = this;
                        if (unsafe3.compareAndSwapObject(rb4Var, j3, objF, b27Var2)) {
                            pu4Var.d();
                            return;
                        } else if (unsafe3.getObjectVolatile(rb4Var, j3) != objF) {
                            break;
                        } else {
                            this = rb4Var;
                        }
                    }
                    this = rb4Var;
                }
            }
        }
    }

    public mb4 getParent() {
        return j();
    }

    @Override // defpackage.a44
    public final boolean isActive() {
        return true;
    }

    public final sb4 j() {
        sb4 sb4Var = this.e;
        if (sb4Var != null) {
            return sb4Var;
        }
        aa4.j("job");
        throw null;
    }

    public abstract boolean k();

    public abstract void l(Throwable th);

    @Override // defpackage.pu4
    public final String toString() {
        return getClass().getSimpleName() + '@' + cd2.a(this) + "[job@" + cd2.a(j()) + ']';
    }
}
