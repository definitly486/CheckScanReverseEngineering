package defpackage;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public final class ut8 extends rb4 {
    public static final /* synthetic */ long h = pz0.a.objectFieldOffset(ut8.class.getDeclaredField("_state$volatile"));
    private volatile /* synthetic */ int _state$volatile;
    public final Thread f = Thread.currentThread();
    public hp2 g;

    public static void n(int i) {
        throw new IllegalStateException(("Illegal state " + i).toString());
    }

    @Override // defpackage.rb4
    public final boolean k() {
        return true;
    }

    @Override // defpackage.rb4
    public final void l(Throwable th) {
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = h;
            int intVolatile = unsafe.getIntVolatile(this, j);
            if (intVolatile != 0) {
                if (intVolatile == 1 || intVolatile == 2 || intVolatile == 3) {
                    return;
                }
                n(intVolatile);
                throw null;
            }
            ut8 ut8Var = this;
            if (unsafe.compareAndSwapInt(ut8Var, h, intVolatile, 2)) {
                ut8Var.f.interrupt();
                unsafe.putIntVolatile(ut8Var, j, 3);
                return;
            }
            this = ut8Var;
        }
    }

    public final void m() {
        ut8 ut8Var;
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = h;
            int intVolatile = unsafe.getIntVolatile(this, j);
            if (intVolatile == 0) {
                ut8Var = this;
                if (unsafe.compareAndSwapInt(ut8Var, j, intVolatile, 1)) {
                    hp2 hp2Var = ut8Var.g;
                    if (hp2Var != null) {
                        hp2Var.dispose();
                        return;
                    }
                    return;
                }
            } else {
                if (intVolatile != 2) {
                    if (intVolatile == 3) {
                        Thread.interrupted();
                        return;
                    } else {
                        n(intVolatile);
                        throw null;
                    }
                }
                ut8Var = this;
            }
            this = ut8Var;
        }
    }
}
