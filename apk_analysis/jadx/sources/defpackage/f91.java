package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class f91 {

    @bd2(c = "kotlinx.coroutines.flow.internal.ChannelFlowKt", f = "ChannelFlow.kt", l = {221}, m = "withContextUndispatched", v = 1)
    public static final class a<T, V> extends f02 {
        public o22 l;
        public Object m;
        public o22 n;
        public Object o;
        public /* synthetic */ Object p;
        public int q;

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.p = obj;
            this.q |= Integer.MIN_VALUE;
            return f91.a(null, null, null, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T, V> Object a(o22 o22Var, V v, Object obj, bm3<? super V, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var) throws Throwable {
        a aVar;
        Object objC;
        Object objInvoke;
        if (e02Var instanceof a) {
            aVar = (a) e02Var;
            int i = aVar.q;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.q = i - Integer.MIN_VALUE;
            } else {
                aVar = new a(e02Var);
            }
        } else {
            aVar = new a(e02Var);
        }
        Object obj2 = aVar.p;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = aVar.q;
        if (i2 != 0) {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Object obj3 = aVar.o;
            o22 o22Var2 = aVar.n;
            try {
                r57.b(obj2);
                objC = obj3;
                o22Var = o22Var2;
                lt8.a(o22Var, objC);
                return obj2;
            } catch (Throwable th) {
                objC = obj3;
                o22Var = o22Var2;
                th = th;
                lt8.a(o22Var, objC);
                throw th;
            }
        }
        r57.b(obj2);
        objC = lt8.c(o22Var, obj);
        try {
            aVar.l = o22Var;
            aVar.m = v;
            aVar.n = o22Var;
            aVar.o = objC;
            aVar.q = 1;
            o68 o68Var = new o68(aVar, o22Var);
            if (bm3Var == null) {
                objInvoke = zya.c(bm3Var, v, o68Var);
            } else {
                v39.c(2, bm3Var);
                objInvoke = bm3Var.invoke(v, o68Var);
            }
            obj2 = objInvoke;
            if (obj2 == a32Var) {
                return a32Var;
            }
            lt8.a(o22Var, objC);
            return obj2;
        } catch (Throwable th2) {
            th = th2;
            lt8.a(o22Var, objC);
            throw th;
        }
    }
}
