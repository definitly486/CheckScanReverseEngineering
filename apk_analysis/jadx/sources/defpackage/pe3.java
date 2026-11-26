package defpackage;

import kotlinx.coroutines.flow.internal.AbortFlowException;

/* JADX INFO: loaded from: classes5.dex */
public final class pe3 implements hd3<Object> {
    public final /* synthetic */ hd3 b;
    public final /* synthetic */ bm3 c;

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1", f = "Limit.kt", l = {123}, m = "collect", v = 1)
    public static final class a extends f02 {
        public /* synthetic */ Object l;
        public int m;
        public qe3 o;

        public a(e02 e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.l = obj;
            this.m |= Integer.MIN_VALUE;
            return pe3.this.collect(null, this);
        }
    }

    public pe3(hd3 hd3Var, bm3 bm3Var) {
        this.b = hd3Var;
        this.c = bm3Var;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004f  */
    /* JADX WARN: Code duplicated, block: B:29:0x0059  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.hd3
    public final Object collect(id3<? super Object> id3Var, e02<? super j59> e02Var) {
        a aVar;
        qe3 qe3Var;
        if (e02Var instanceof a) {
            aVar = (a) e02Var;
            int i = aVar.m;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.m = i - Integer.MIN_VALUE;
            } else {
                aVar = new a(e02Var);
            }
        } else {
            aVar = new a(e02Var);
        }
        Object obj = aVar.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = aVar.m;
        if (i2 == 0) {
            r57.b(obj);
            hd3 hd3Var = this.b;
            qe3 qe3Var2 = new qe3(id3Var, this.c);
            try {
                aVar.o = qe3Var2;
                aVar.m = 1;
                if (hd3Var.collect(qe3Var2, aVar) == a32Var) {
                    return a32Var;
                }
            } catch (AbortFlowException e) {
                e = e;
                qe3Var = qe3Var2;
                if (e.b == qe3Var) {
                    throw e;
                }
                qb4.e(aVar.getContext());
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            qe3Var = aVar.o;
            try {
                r57.b(obj);
            } catch (AbortFlowException e2) {
                e = e2;
                if (e.b == qe3Var) {
                    throw e;
                }
                qb4.e(aVar.getContext());
            }
        }
        return j59.a;
    }
}
