package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.flow.internal.ChannelFlowOperator$collectWithContextUndispatched$2", f = "ChannelFlow.kt", l = {148}, m = "invokeSuspend", v = 1)
public final class g91 extends pg8 implements bm3<id3<Object>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ h91<Object, Object> n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g91(h91<Object, Object> h91Var, e02<? super g91> e02Var) {
        super(2, e02Var);
        this.n = h91Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        g91 g91Var = new g91(this.n, e02Var);
        g91Var.m = obj;
        return g91Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<Object> id3Var, e02<? super j59> e02Var) {
        return ((g91) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        id3<? super Object> id3Var = (id3) this.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            this.m = null;
            this.l = 1;
            if (this.n.l(id3Var, this) == a32Var) {
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
