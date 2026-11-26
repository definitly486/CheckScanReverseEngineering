package defpackage;

import com.google.android.gms.internal.cloudmessaging.zzs;
import com.google.android.gms.internal.measurement.zzahq;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public final class e31 implements rxa, zzs {
    public static final /* synthetic */ e31 b = new e31();

    public static void a(long j, String str) {
        if (j >= 0) {
            return;
        }
        throw new IllegalArgumentException(str + " (" + j + ") must be >= 0");
    }

    public static void b(boolean z) {
        if (!z) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }

    public static final c31 c(e02 e02Var) {
        Unsafe unsafe;
        c31 c31Var;
        c31 c31Var2;
        if (!(e02Var instanceof fo2)) {
            return new c31(1, e02Var);
        }
        fo2 fo2Var = (fo2) e02Var;
        bh8 bh8Var = go2.c;
        long j = fo2.i;
        loop0: while (true) {
            unsafe = pz0.a;
            Object objectVolatile = unsafe.getObjectVolatile(fo2Var, j);
            c31Var = null;
            if (objectVolatile == null) {
                unsafe.putObjectVolatile(fo2Var, j, bh8Var);
                c31Var2 = null;
                break;
            }
            if (objectVolatile instanceof c31) {
                do {
                    unsafe = pz0.a;
                    if (unsafe.compareAndSwapObject(fo2Var, fo2.i, objectVolatile, bh8Var)) {
                        c31Var2 = (c31) objectVolatile;
                        break loop0;
                    }
                } while (unsafe.getObjectVolatile(fo2Var, j) == objectVolatile);
            } else if (objectVolatile != bh8Var && !(objectVolatile instanceof Throwable)) {
                ah.f(ad2.b(objectVolatile, "Inconsistent state "));
                return null;
            }
        }
        if (c31Var2 != null) {
            long j2 = c31.i;
            Object objectVolatile2 = unsafe.getObjectVolatile(c31Var2, j2);
            if (!(objectVolatile2 instanceof wq1) || ((wq1) objectVolatile2).d == null) {
                unsafe.putIntVolatile(c31Var2, c31.g, 536870911);
                unsafe.putObjectVolatile(c31Var2, j2, v6.b);
                c31Var = c31Var2;
            } else {
                c31Var2.o();
            }
            if (c31Var != null) {
                return c31Var;
            }
        }
        return new c31(2, e02Var);
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        return new Boolean(zzahq.zza());
    }
}
