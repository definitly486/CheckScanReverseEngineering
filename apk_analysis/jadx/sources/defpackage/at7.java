package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.flow.SharedFlowImpl", f = "SharedFlow.kt", l = {387, 394, 397}, m = "collect$suspendImpl", v = 1)
public final class at7<T> extends f02 {
    public zs7 l;
    public id3 m;
    public ct7 n;
    public mb4 o;
    public /* synthetic */ Object p;
    public final /* synthetic */ zs7<T> q;
    public int r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public at7(zs7<T> zs7Var, e02<? super at7> e02Var) {
        super(e02Var);
        this.q = zs7Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.p = obj;
        this.r |= Integer.MIN_VALUE;
        return zs7.m(this.q, null, this);
    }
}
