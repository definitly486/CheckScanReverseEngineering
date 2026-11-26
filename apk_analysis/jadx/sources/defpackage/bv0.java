package defpackage;

import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class bv0 {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T a(o22 o22Var, bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var) throws Throwable {
        b13 b13VarA;
        o22 o22VarA;
        long jR0;
        g02.a aVar = g02.a.b;
        g02 g02Var = (g02) o22Var.get(aVar);
        gx2 gx2Var = gx2.b;
        if (g02Var == null) {
            b13VarA = pt8.a();
            o22VarA = q22.a(gx2Var, o22Var.plus(b13VarA), true);
            oi2 oi2Var = qo2.a;
            if (o22VarA != oi2Var && o22VarA.get(aVar) == null) {
                o22VarA = o22VarA.plus(oi2Var);
            }
        } else {
            b13VarA = pt8.a.get();
            o22VarA = q22.a(gx2Var, o22Var, true);
            oi2 oi2Var2 = qo2.a;
            if (o22VarA != oi2Var2 && o22VarA.get(aVar) == null) {
                o22VarA = o22VarA.plus(oi2Var2);
            }
        }
        ek0 ek0Var = new ek0(o22VarA, Thread.currentThread(), b13VarA);
        ek0Var.m0(c32.DEFAULT, ek0Var, bm3Var);
        b13 b13Var = ek0Var.g;
        if (b13Var != null) {
            int i = b13.f;
            b13Var.q0(false);
        }
        while (true) {
            if (b13Var != null) {
                try {
                    jR0 = b13Var.r0();
                } catch (Throwable th) {
                    if (b13Var != null) {
                        int i2 = b13.f;
                        b13Var.k0(false);
                    }
                    throw th;
                }
            } else {
                jR0 = Long.MAX_VALUE;
            }
            if (ek0Var.P()) {
                break;
            }
            LockSupport.parkNanos(ek0Var, jR0);
            if (Thread.interrupted()) {
                ek0Var.w(new InterruptedException());
            }
        }
        if (b13Var != null) {
            int i3 = b13.f;
            b13Var.k0(false);
        }
        T t = (T) vp2.f(ek0Var.L());
        yq1 yq1Var = t instanceof yq1 ? (yq1) t : null;
        if (yq1Var == null) {
            return t;
        }
        throw yq1Var.a;
    }
}
