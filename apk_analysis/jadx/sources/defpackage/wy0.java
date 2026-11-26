package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class wy0<T> extends e91<T> {
    public final bm3<ug6<? super T>, e02<? super j59>, Object> f;

    @bd2(c = "kotlinx.coroutines.flow.CallbackFlowBuilder", f = "Builders.kt", l = {330}, m = "collectTo", v = 1)
    public static final class a extends f02 {
        public ug6 l;
        public /* synthetic */ Object m;
        public int o;

        public a(f02 f02Var) {
            super(f02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.m = obj;
            this.o |= Integer.MIN_VALUE;
            return wy0.this.h(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public wy0(bm3<? super ug6<? super T>, ? super e02<? super j59>, ? extends Object> bm3Var, o22 o22Var, int i, cu0 cu0Var) {
        super(bm3Var, o22Var, i, cu0Var);
        this.f = bm3Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.e91, defpackage.d91
    public final Object h(ug6<? super T> ug6Var, e02<? super j59> e02Var) {
        a aVar;
        if (e02Var instanceof a) {
            aVar = (a) e02Var;
            int i = aVar.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.o = i - Integer.MIN_VALUE;
            } else {
                aVar = new a((f02) e02Var);
            }
        } else {
            aVar = new a((f02) e02Var);
        }
        Object obj = aVar.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = aVar.o;
        if (i2 == 0) {
            r57.b(obj);
            aVar.l = ug6Var;
            aVar.o = 1;
            if (super.h(ug6Var, aVar) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ug6Var = aVar.l;
            r57.b(obj);
        }
        if (ug6Var.isClosedForSend()) {
            return j59.a;
        }
        ah.f("'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details.");
        return null;
    }

    @Override // defpackage.e91, defpackage.d91
    public final d91<T> i(o22 o22Var, int i, cu0 cu0Var) {
        return new wy0(this.f, o22Var, i, cu0Var);
    }
}
