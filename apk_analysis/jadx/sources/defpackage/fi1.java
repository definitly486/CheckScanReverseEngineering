package defpackage;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public final class fi1 extends rb4 {
    public final c31<?> f;

    public fi1(c31<?> c31Var) {
        this.f = c31Var;
    }

    @Override // defpackage.rb4
    public final boolean k() {
        return true;
    }

    @Override // defpackage.rb4
    public final void l(Throwable th) {
        Unsafe unsafe;
        Unsafe unsafe2;
        sb4 sb4VarJ = j();
        c31<?> c31Var = this.f;
        Throwable thR = c31Var.r(sb4VarJ);
        if (c31Var.x()) {
            e02<?> e02Var = c31Var.e;
            e02Var.getClass();
            fo2 fo2Var = (fo2) e02Var;
            long j = fo2.i;
            loop0: while (true) {
                Object objectVolatile = pz0.a.getObjectVolatile(fo2Var, j);
                bh8 bh8Var = go2.c;
                if (aa4.e(objectVolatile, bh8Var)) {
                    do {
                        unsafe = pz0.a;
                        if (unsafe.compareAndSwapObject(fo2Var, fo2.i, bh8Var, thR)) {
                            return;
                        }
                    } while (unsafe.getObjectVolatile(fo2Var, j) == bh8Var);
                } else {
                    if (objectVolatile instanceof Throwable) {
                        return;
                    }
                    do {
                        unsafe2 = pz0.a;
                        if (unsafe2.compareAndSwapObject(fo2Var, fo2.i, objectVolatile, (Object) null)) {
                            break loop0;
                        }
                    } while (unsafe2.getObjectVolatile(fo2Var, j) == objectVolatile);
                }
            }
        }
        c31Var.d(thR);
        if (c31Var.x()) {
            return;
        }
        c31Var.o();
    }
}
