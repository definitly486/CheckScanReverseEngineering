package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class yk2 {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final a32 a(f02 f02Var) {
        xk2 xk2Var;
        if (f02Var instanceof xk2) {
            xk2Var = (xk2) f02Var;
            int i = xk2Var.m;
            if ((i & Integer.MIN_VALUE) != 0) {
                xk2Var.m = i - Integer.MIN_VALUE;
            } else {
                xk2Var = new xk2(f02Var);
            }
        } else {
            xk2Var = new xk2(f02Var);
        }
        Object obj = xk2Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = xk2Var.m;
        if (i2 == 0) {
            r57.b(obj);
            xk2Var.m = 1;
            c31 c31Var = new c31(1, zya.b(xk2Var));
            c31Var.u();
            if (c31Var.s() == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        h8.d();
        return null;
    }

    public static final Object b(long j, e02<? super j59> e02Var) throws Throwable {
        if (j <= 0) {
            return j59.a;
        }
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        if (j < Long.MAX_VALUE) {
            c(c31Var.f).b(j, c31Var);
        }
        Object objS = c31Var.s();
        return objS == a32.COROUTINE_SUSPENDED ? objS : j59.a;
    }

    public static final wk2 c(o22 o22Var) {
        o22.a aVar = o22Var.get(g02.a.b);
        wk2 wk2Var = aVar instanceof wk2 ? (wk2) aVar : null;
        return wk2Var == null ? lh2.a : wk2Var;
    }

    public static final long d(long j) {
        wt2.a aVar = wt2.c;
        boolean z = j > 0;
        if (z) {
            return wt2.e(wt2.j(j, yt2.f(999999L, au2.NANOSECONDS)));
        }
        if (!z) {
            return 0L;
        }
        me0.e();
        return 0L;
    }
}
