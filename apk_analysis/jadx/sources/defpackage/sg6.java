package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class sg6 {

    @bd2(c = "kotlinx.coroutines.channels.ProduceKt", f = "Produce.kt", l = {361}, m = "awaitClose", v = 1)
    public static final class a extends f02 {
        public ug6 l;
        public ll3 m;
        public /* synthetic */ Object n;
        public int o;

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.n = obj;
            this.o |= Integer.MIN_VALUE;
            return sg6.a(null, null, this);
        }
    }

    public static final class b implements nl3<Throwable, j59> {
        public final /* synthetic */ c31 b;

        public b(c31 c31Var) {
            this.b = c31Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            j59 j59Var = j59.a;
            this.b.resumeWith(j59Var);
            return j59Var;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(ug6<?> ug6Var, ll3<j59> ll3Var, e02<? super j59> e02Var) {
        a aVar;
        if (e02Var instanceof a) {
            aVar = (a) e02Var;
            int i = aVar.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.o = i - Integer.MIN_VALUE;
            } else {
                aVar = new a(e02Var);
            }
        } else {
            aVar = new a(e02Var);
        }
        Object obj = aVar.n;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = aVar.o;
        try {
            if (i2 == 0) {
                r57.b(obj);
                if (aVar.getContext().get(mb4.a.b) != ug6Var) {
                    ah.f("awaitClose() can only be invoked from the producer context");
                    return null;
                }
                aVar.l = ug6Var;
                aVar.m = ll3Var;
                aVar.o = 1;
                c31 c31Var = new c31(1, zya.b(aVar));
                c31Var.u();
                ug6Var.invokeOnClose(new b(c31Var));
                if (c31Var.s() == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ll3Var = aVar.m;
                r57.b(obj);
            }
            ll3Var.invoke();
            return j59.a;
        } catch (Throwable th) {
            ll3Var.invoke();
            throw th;
        }
    }
}
