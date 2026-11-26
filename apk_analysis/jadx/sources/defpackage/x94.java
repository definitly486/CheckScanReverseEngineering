package defpackage;

import java.util.concurrent.CancellationException;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.InterruptibleKt$runInterruptible$2", f = "Interruptible.kt", l = {}, m = "invokeSuspend", v = 1)
public final class x94 extends pg8 implements bm3<y22, e02<Object>, Object> {
    public /* synthetic */ Object l;
    public final /* synthetic */ ll3<Object> m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x94(ll3<Object> ll3Var, e02<? super x94> e02Var) {
        super(2, e02Var);
        this.m = ll3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        x94 x94Var = new x94(this.m, e02Var);
        x94Var.l = obj;
        return x94Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<Object> e02Var) {
        return ((x94) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        Unsafe unsafe;
        long j;
        int intVolatile;
        y22 y22Var = (y22) this.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        o22 coroutineContext = y22Var.getCoroutineContext();
        ll3<Object> ll3Var = this.m;
        try {
            ut8 ut8Var = new ut8();
            ut8Var.g = qb4.g(qb4.f(coroutineContext), ut8Var);
            do {
                unsafe = pz0.a;
                j = ut8.h;
                intVolatile = unsafe.getIntVolatile(ut8Var, j);
                if (intVolatile != 0) {
                    if (intVolatile == 2 || intVolatile == 3) {
                        break;
                        break;
                    }
                    ut8.n(intVolatile);
                    throw null;
                }
            } while (!unsafe.compareAndSwapInt(ut8Var, j, intVolatile, 0));
            try {
                return ll3Var.invoke();
            } finally {
                ut8Var.m();
            }
        } catch (InterruptedException e) {
            throw new CancellationException("Blocking call was interrupted due to parent cancellation").initCause(e);
        }
    }
}
