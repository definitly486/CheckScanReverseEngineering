package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.reactive.ReactiveSubscriber", f = "ReactiveFlow.kt", l = {119}, m = "takeNextOrNull", v = 1)
public final class zx6 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ ay6<Object> m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zx6(ay6 ay6Var, f02 f02Var) {
        super(f02Var);
        this.m = ay6Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.b(this);
    }
}
