package defpackage;

import kotlinx.coroutines.flow.internal.AbortFlowException;

/* JADX INFO: loaded from: classes5.dex */
public final class qe3 implements id3<Object> {
    public final /* synthetic */ bm3 b;
    public final /* synthetic */ id3 c;

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1", f = "Limit.kt", l = {142, 143}, m = "emit", v = 1)
    public static final class a extends f02 {
        public /* synthetic */ Object l;
        public int m;
        public Object o;
        public int p;

        public a(e02 e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.l = obj;
            this.m |= Integer.MIN_VALUE;
            return qe3.this.emit(null, this);
        }
    }

    public qe3(id3 id3Var, bm3 bm3Var) {
        this.b = bm3Var;
        this.c = id3Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0064, code lost:
    
        if (r7.c.emit(r8, r0) == r1) goto L23;
     */
    @Override // defpackage.id3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(Object obj, e02<? super j59> e02Var) {
        a aVar;
        int i;
        Object objInvoke;
        if (e02Var instanceof a) {
            aVar = (a) e02Var;
            int i2 = aVar.m;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aVar.m = i2 - Integer.MIN_VALUE;
            } else {
                aVar = new a(e02Var);
            }
        } else {
            aVar = new a(e02Var);
        }
        Object obj2 = aVar.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = aVar.m;
        if (i3 == 0) {
            r57.b(obj2);
            aVar.o = obj;
            i = 0;
            aVar.p = 0;
            aVar.m = 1;
            objInvoke = this.b.invoke(obj, aVar);
            if (objInvoke != a32Var) {
            }
            return a32Var;
        }
        if (i3 == 1) {
            int i4 = aVar.p;
            Object obj3 = aVar.o;
            r57.b(obj2);
            i = i4;
            obj = obj3;
            objInvoke = obj2;
        } else {
            if (i3 != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj2);
        }
        return j59.a;
        if (!((Boolean) objInvoke).booleanValue()) {
            throw new AbortFlowException(this);
        }
        aVar.o = null;
        aVar.p = i;
        aVar.m = 2;
    }
}
