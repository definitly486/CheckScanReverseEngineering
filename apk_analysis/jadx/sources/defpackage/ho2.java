package defpackage;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public final class ho2<T> extends af7<T> {
    public static final /* synthetic */ long g = pz0.a.objectFieldOffset(ho2.class.getDeclaredField("_decision$volatile"));
    private volatile /* synthetic */ int _decision$volatile;

    @Override // defpackage.af7, defpackage.sb4
    public final void s(Object obj) {
        t(obj);
    }

    @Override // defpackage.af7, defpackage.sb4
    public final void t(Object obj) {
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = g;
            int intVolatile = unsafe.getIntVolatile(this, j);
            if (intVolatile != 0) {
                if (intVolatile == 1) {
                    go2.f(zya.b(this.f), oe0.b(obj));
                    return;
                } else {
                    ah.f("Already resumed");
                    return;
                }
            }
            ho2<T> ho2Var = this;
            if (unsafe.compareAndSwapInt(ho2Var, j, 0, 2)) {
                return;
            } else {
                this = ho2Var;
            }
        }
    }
}
