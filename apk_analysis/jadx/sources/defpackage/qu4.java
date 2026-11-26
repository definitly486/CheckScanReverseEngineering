package defpackage;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public class qu4<E> {
    public static final /* synthetic */ long a = pz0.a.objectFieldOffset(qu4.class.getDeclaredField("_cur$volatile"));
    private volatile /* synthetic */ Object _cur$volatile = new ru4(8, false);

    public final boolean a(Runnable runnable) {
        qu4<E> qu4Var;
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = a;
            ru4 ru4Var = (ru4) unsafe.getObjectVolatile(this, j);
            int iA = ru4Var.a(runnable);
            if (iA == 0) {
                return true;
            }
            if (iA == 1) {
                ru4<E> ru4VarC = ru4Var.c();
                while (true) {
                    Unsafe unsafe2 = pz0.a;
                    qu4Var = this;
                    if (unsafe2.compareAndSwapObject(qu4Var, a, ru4Var, ru4VarC) || unsafe2.getObjectVolatile(qu4Var, j) != ru4Var) {
                        break;
                    }
                    this = qu4Var;
                }
            } else {
                if (iA == 2) {
                    return false;
                }
                qu4Var = this;
            }
            this = qu4Var;
        }
    }

    public final void b() {
        qu4<E> qu4Var;
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = a;
            ru4 ru4Var = (ru4) unsafe.getObjectVolatile(this, j);
            if (ru4Var.b()) {
                return;
            }
            ru4<E> ru4VarC = ru4Var.c();
            while (true) {
                qu4Var = this;
                if (pz0.a.compareAndSwapObject(qu4Var, a, ru4Var, ru4VarC) || pz0.a.getObjectVolatile(qu4Var, j) != ru4Var) {
                    break;
                } else {
                    this = qu4Var;
                }
            }
            this = qu4Var;
        }
    }

    public final int c() {
        ru4 ru4Var = (ru4) pz0.a.getObjectVolatile(this, a);
        ru4Var.getClass();
        long longVolatile = pz0.a.getLongVolatile(ru4Var, ru4.g);
        return 1073741823 & (((int) ((longVolatile & 1152921503533105152L) >> 30)) - ((int) (1073741823 & longVolatile)));
    }

    public final E d() {
        qu4<E> qu4Var;
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = a;
            ru4 ru4Var = (ru4) unsafe.getObjectVolatile(this, j);
            E e = (E) ru4Var.d();
            if (e != ru4.e) {
                return e;
            }
            ru4<E> ru4VarC = ru4Var.c();
            while (true) {
                qu4Var = this;
                if (pz0.a.compareAndSwapObject(qu4Var, a, ru4Var, ru4VarC) || pz0.a.getObjectVolatile(qu4Var, j) != ru4Var) {
                    break;
                }
                this = qu4Var;
            }
            this = qu4Var;
        }
    }
}
