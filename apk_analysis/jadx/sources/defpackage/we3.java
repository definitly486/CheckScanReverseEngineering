package defpackage;

import kotlinx.coroutines.flow.internal.AbortFlowException;

/* JADX INFO: loaded from: classes5.dex */
public final class we3 implements id3<Object> {
    public final /* synthetic */ bm3 b;
    public final /* synthetic */ r07 c;

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2", f = "Reduce.kt", l = {142}, m = "emit", v = 1)
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
            return we3.this.emit(null, this);
        }
    }

    public we3(r07 r07Var, bm3 bm3Var) {
        this.b = bm3Var;
        this.c = r07Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.id3
    public final Object emit(Object obj, e02<? super j59> e02Var) {
        a aVar;
        T t;
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
        Object objInvoke = aVar.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = aVar.m;
        if (i2 == 0) {
            r57.b(objInvoke);
            aVar.o = obj;
            aVar.m = 1;
            objInvoke = this.b.invoke(obj, aVar);
            if (objInvoke == a32Var) {
                t = obj;
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Object obj2 = aVar.o;
            r57.b(objInvoke);
            t = obj2;
        }
        t = obj;
        if (!((Boolean) objInvoke).booleanValue()) {
            return j59.a;
        }
        this.c.b = t;
        throw new AbortFlowException(this);
    }
}
