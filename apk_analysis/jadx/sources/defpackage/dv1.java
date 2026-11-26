package defpackage;

import defpackage.dv1;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public abstract class dv1<N extends dv1<N>> {
    public static final /* synthetic */ long b;
    public static final /* synthetic */ long c;
    public static final /* synthetic */ int d = 0;
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ Object _prev$volatile;

    static {
        Unsafe unsafe = pz0.a;
        b = unsafe.objectFieldOffset(dv1.class.getDeclaredField("_next$volatile"));
        c = unsafe.objectFieldOffset(dv1.class.getDeclaredField("_prev$volatile"));
    }

    public dv1(hl7 hl7Var) {
        this._prev$volatile = hl7Var;
    }

    public final void a() {
        pz0.a.putObjectVolatile(this, c, (Object) null);
    }

    public final N c() {
        Object objectVolatile = pz0.a.getObjectVolatile(this, b);
        if (objectVolatile == oe0.f) {
            return null;
        }
        return (N) objectVolatile;
    }

    public abstract boolean d();

    public final void e() {
        dv1 dv1Var;
        Unsafe unsafe;
        if (c() == null) {
            return;
        }
        while (true) {
            Unsafe unsafe2 = pz0.a;
            long j = c;
            dv1 dv1Var2 = (dv1) unsafe2.getObjectVolatile(this, j);
            while (dv1Var2 != null && dv1Var2.d()) {
                dv1Var2 = (dv1) pz0.a.getObjectVolatile(dv1Var2, j);
            }
            dv1 dv1VarC = c();
            dv1VarC.getClass();
            do {
                dv1Var = dv1VarC;
                if (!dv1Var.d()) {
                    break;
                } else {
                    dv1VarC = dv1Var.c();
                }
            } while (dv1VarC != null);
            while (true) {
                Object objectVolatile = pz0.a.getObjectVolatile(dv1Var, j);
                dv1 dv1Var3 = ((dv1) objectVolatile) == null ? null : dv1Var2;
                while (true) {
                    unsafe = pz0.a;
                    if (unsafe.compareAndSwapObject(dv1Var, c, objectVolatile, dv1Var3)) {
                        break;
                    } else if (unsafe.getObjectVolatile(dv1Var, j) != objectVolatile) {
                    }
                }
            }
            if (dv1Var2 != null) {
                unsafe.putObjectVolatile(dv1Var2, b, dv1Var);
            }
            if (!dv1Var.d() || dv1Var.c() == null) {
                if (dv1Var2 == null || !dv1Var2.d()) {
                    return;
                }
            }
        }
    }
}
