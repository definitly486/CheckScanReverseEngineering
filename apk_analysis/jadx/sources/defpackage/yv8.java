package defpackage;

import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes5.dex */
public final class yv8 {

    @bd2(c = "kotlinx.coroutines.TimeoutKt", f = "Timeout.kt", l = {156}, m = "withTimeoutOrNull", v = 1)
    public static final class a<T> extends f02 {
        public r07 l;
        public /* synthetic */ Object m;
        public int n;

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.m = obj;
            this.n |= Integer.MIN_VALUE;
            return yv8.c(0L, null, this);
        }
    }

    public static final <U, T extends U> Object a(xv8<U, ? super T> xv8Var, bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var) {
        qb4.g(xv8Var, new mp2(yk2.c(xv8Var.f.getContext()).X(xv8Var.g, xv8Var, xv8Var.e)));
        return cn1.d(xv8Var, false, xv8Var, bm3Var);
    }

    public static final Object b(long j, bm3 bm3Var, f02 f02Var) {
        if (j <= 0) {
            throw new TimeoutCancellationException("Timed out immediately", null);
        }
        Object objA = a(new xv8(j, f02Var), bm3Var);
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objA;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, xv8] */
    public static final <T> Object c(long j, bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var) {
        a aVar;
        r07 r07Var;
        if (e02Var instanceof a) {
            aVar = (a) e02Var;
            int i = aVar.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.n = i - Integer.MIN_VALUE;
            } else {
                aVar = new a(e02Var);
            }
        } else {
            aVar = new a(e02Var);
        }
        Object obj = aVar.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = aVar.n;
        if (i2 == 0) {
            r57.b(obj);
            if (j > 0) {
                r07 r07Var2 = new r07();
                try {
                    aVar.l = r07Var2;
                    aVar.n = 1;
                    ?? r2 = (T) new xv8(j, aVar);
                    r07Var2.b = r2;
                    Object objA = a(r2, bm3Var);
                    return objA == a32Var ? a32Var : objA;
                } catch (TimeoutCancellationException e) {
                    e = e;
                    r07Var = r07Var2;
                }
            }
            return null;
        }
        if (i2 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r07Var = aVar.l;
        try {
            r57.b(obj);
            return obj;
        } catch (TimeoutCancellationException e2) {
            e = e2;
        }
        if (e.b != r07Var.b) {
            throw e;
        }
        return null;
    }
}
