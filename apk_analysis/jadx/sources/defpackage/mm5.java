package defpackage;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "coil3.network.NetworkFetcher", f = "NetworkFetcher.kt", l = {270}, m = "toImageSource", v = 1)
public final class mm5 extends f02 {
    public bu0 l;
    public /* synthetic */ Object m;
    public final /* synthetic */ km5 n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mm5(km5 km5Var, f02 f02Var) {
        super(f02Var);
        this.n = km5Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.h(null, this);
    }
}
