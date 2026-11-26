package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.flow.SubscribedFlowCollector", f = "Share.kt", l = {475, 479}, m = "onSubscription", v = 1)
public final class tb8 extends f02 {
    public pb7 l;
    public /* synthetic */ Object m;
    public final /* synthetic */ ub8<Object> n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tb8(ub8 ub8Var, f02 f02Var) {
        super(f02Var);
        this.n = ub8Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.c(this);
    }
}
