package defpackage;

import kotlinx.coroutines.DispatchException;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class av0 {
    public static nk2 a(y22 y22Var, o22 o22Var, c32 c32Var, bm3 bm3Var, int i) {
        if ((i & 1) != 0) {
            o22Var = gx2.b;
        }
        if ((i & 2) != 0) {
            c32Var = c32.DEFAULT;
        }
        o22 o22VarB = q22.b(y22Var, o22Var);
        c32Var.getClass();
        nk2 el4Var = c32Var == c32.LAZY ? new el4(o22VarB, bm3Var) : new nk2(o22VarB, true, true);
        el4Var.m0(c32Var, el4Var, bm3Var);
        return el4Var;
    }

    public static final s68 b(y22 y22Var, o22 o22Var, c32 c32Var, bm3 bm3Var) {
        o22 o22VarB = q22.b(y22Var, o22Var);
        c32Var.getClass();
        s68 no4Var = c32Var == c32.LAZY ? new no4(o22VarB, bm3Var) : new s68(o22VarB, true, true);
        no4Var.m0(c32Var, no4Var, bm3Var);
        return no4Var;
    }

    public static s68 c(y22 y22Var, o22 o22Var, c32 c32Var, bm3 bm3Var, int i) {
        if ((i & 1) != 0) {
            o22Var = gx2.b;
        }
        if ((i & 2) != 0) {
            c32Var = c32.DEFAULT;
        }
        return b(y22Var, o22Var, c32Var, bm3Var);
    }

    public static final <T> Object d(o22 o22Var, bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var) throws Throwable {
        Unsafe unsafe;
        long j;
        Object objF;
        o22 context = e02Var.getContext();
        o22 o22VarPlus = !((Boolean) o22Var.fold(Boolean.FALSE, new it1(1))).booleanValue() ? context.plus(o22Var) : q22.a(context, o22Var, false);
        qb4.e(o22VarPlus);
        if (o22VarPlus == context) {
            af7 af7Var = new af7(e02Var, o22VarPlus);
            objF = cn1.d(af7Var, true, af7Var, bm3Var);
        } else {
            g02.a aVar = g02.a.b;
            if (aa4.e(o22VarPlus.get(aVar), context.get(aVar))) {
                h59 h59Var = new h59(e02Var, o22VarPlus);
                o22 o22Var2 = h59Var.e;
                Object objC = lt8.c(o22Var2, null);
                try {
                    Object objD = cn1.d(h59Var, true, h59Var, bm3Var);
                    lt8.a(o22Var2, objC);
                    objF = objD;
                } catch (Throwable th) {
                    lt8.a(o22Var2, objC);
                    throw th;
                }
            } else {
                ho2 ho2Var = new ho2(e02Var, o22VarPlus);
                try {
                    go2.f(zya.b(zya.a(ho2Var, ho2Var, bm3Var)), j59.a);
                    do {
                        unsafe = pz0.a;
                        j = ho2.g;
                        int intVolatile = unsafe.getIntVolatile(ho2Var, j);
                        if (intVolatile != 0) {
                            if (intVolatile != 2) {
                                ah.f("Already suspended");
                                return null;
                            }
                            objF = vp2.f(ho2Var.L());
                            if (objF instanceof yq1) {
                                throw ((yq1) objF).a;
                            }
                        }
                    } while (!unsafe.compareAndSwapInt(ho2Var, j, 0, 1));
                    objF = a32.COROUTINE_SUSPENDED;
                } catch (Throwable th2) {
                    Throwable th3 = th2;
                    if (th3 instanceof DispatchException) {
                        th3 = ((DispatchException) th3).b;
                    }
                    ho2Var.resumeWith(new k57.a(th3));
                    throw th3;
                }
            }
        }
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objF;
    }
}
