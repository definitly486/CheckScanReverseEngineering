package defpackage;

import kotlinx.coroutines.flow.internal.AbortFlowException;

/* JADX INFO: loaded from: classes5.dex */
public final class ne3 implements hd3<Object> {
    public final /* synthetic */ ie3 b;

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$take$$inlined$unsafeFlow$1", f = "Limit.kt", l = {115}, m = "collect", v = 1)
    public static final class a extends f02 {
        public /* synthetic */ Object l;
        public int m;
        public Object o;

        public a(e02 e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.l = obj;
            this.m |= Integer.MIN_VALUE;
            return ne3.this.collect(null, this);
        }
    }

    public ne3(ie3 ie3Var) {
        this.b = ie3Var;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x005a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.hd3
    public final Object collect(id3<? super Object> id3Var, e02<? super j59> e02Var) {
        a aVar;
        Object obj;
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
        Object obj2 = aVar.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = aVar.m;
        if (i2 == 0) {
            r57.b(obj2);
            Object obj3 = new Object();
            p07 p07Var = new p07();
            try {
                ie3 ie3Var = this.b;
                oe3 oe3Var = new oe3(p07Var, id3Var, obj3);
                aVar.o = obj3;
                aVar.m = 1;
                if (ie3Var.collect(oe3Var, aVar) == a32Var) {
                    return a32Var;
                }
            } catch (AbortFlowException e) {
                e = e;
                obj = obj3;
                if (e.b != obj) {
                    throw e;
                }
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj = aVar.o;
            try {
                r57.b(obj2);
            } catch (AbortFlowException e2) {
                e = e2;
                if (e.b != obj) {
                    throw e;
                }
            }
        }
        return j59.a;
    }
}
