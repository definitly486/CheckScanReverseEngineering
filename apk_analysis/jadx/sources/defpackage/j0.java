package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class j0<T> implements hd3<T> {

    @bd2(c = "kotlinx.coroutines.flow.AbstractFlow", f = "Flow.kt", l = {226}, m = "collect", v = 1)
    public static final class a extends f02 {
        public pb7 l;
        public /* synthetic */ Object m;
        public final /* synthetic */ j0<T> n;
        public int o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(j0<T> j0Var, e02<? super a> e02Var) {
            super(e02Var);
            this.n = j0Var;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.m = obj;
            this.o |= Integer.MIN_VALUE;
            return this.n.collect(null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.hd3
    public final Object collect(id3<? super T> id3Var, e02<? super j59> e02Var) throws Throwable {
        a aVar;
        pb7 pb7Var;
        if (e02Var instanceof a) {
            aVar = (a) e02Var;
            int i = aVar.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.o = i - Integer.MIN_VALUE;
            } else {
                aVar = new a(this, e02Var);
            }
        } else {
            aVar = new a(this, e02Var);
        }
        Object obj = aVar.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = aVar.o;
        if (i2 != 0) {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            pb7Var = aVar.l;
            try {
                r57.b(obj);
                pb7Var.releaseIntercepted();
                return j59.a;
            } catch (Throwable th) {
                th = th;
                pb7Var.releaseIntercepted();
                throw th;
            }
        }
        r57.b(obj);
        pb7 pb7Var2 = new pb7(id3Var, aVar.getContext());
        try {
            aVar.l = pb7Var2;
            aVar.o = 1;
            try {
                Object objInvoke = ((tb7) this).b.invoke(pb7Var2, aVar);
                if (objInvoke != a32Var) {
                    objInvoke = j59.a;
                }
                if (objInvoke == a32Var) {
                    return a32Var;
                }
                pb7Var = pb7Var2;
                pb7Var.releaseIntercepted();
                return j59.a;
            } catch (Throwable th2) {
                th = th2;
                pb7Var = pb7Var2;
                pb7Var.releaseIntercepted();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
