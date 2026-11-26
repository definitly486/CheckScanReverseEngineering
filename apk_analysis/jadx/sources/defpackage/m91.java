package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class m91<T> extends d91<T> {
    public final Iterable<hd3<T>> e;

    @bd2(c = "kotlinx.coroutines.flow.internal.ChannelLimitedFlowMerge$collectTo$2$1", f = "Merge.kt", l = {92}, m = "invokeSuspend", v = 1)
    public static final class a extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ hd3<T> m;
        public final /* synthetic */ yo7<T> n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(hd3<? extends T> hd3Var, yo7<T> yo7Var, e02<? super a> e02Var) {
            super(2, e02Var);
            this.m = hd3Var;
            this.n = yo7Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new a(this.m, this.n, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((a) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                this.l = 1;
                if (this.m.collect(this.n, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public m91(Iterable<? extends hd3<? extends T>> iterable, o22 o22Var, int i, cu0 cu0Var) {
        super(o22Var, i, cu0Var);
        this.e = iterable;
    }

    @Override // defpackage.d91
    public final Object h(ug6<? super T> ug6Var, e02<? super j59> e02Var) {
        yo7 yo7Var = new yo7(ug6Var);
        Iterator<hd3<T>> it = this.e.iterator();
        while (it.hasNext()) {
            av0.c(ug6Var, null, null, new a(it.next(), yo7Var, null), 3);
        }
        return j59.a;
    }

    @Override // defpackage.d91
    public final d91<T> i(o22 o22Var, int i, cu0 cu0Var) {
        return new m91(this.e, o22Var, i, cu0Var);
    }

    @Override // defpackage.d91
    public final qz6<T> k(y22 y22Var) {
        bm3 c91Var = new c91(this, null);
        cu0 cu0Var = cu0.SUSPEND;
        c32 c32Var = c32.DEFAULT;
        tg6 tg6Var = new tg6(q22.b(y22Var, this.b), l91.a(this.c, cu0Var, null, 4));
        tg6Var.m0(c32Var, tg6Var, c91Var);
        return tg6Var;
    }
}
