package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.support.data.repositoriesImpl.SupportRepositoryImpl", f = "SupportRepositoryImpl.kt", l = {27}, m = "sendForm")
public final class of8 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ pf8 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public of8(pf8 pf8Var, f02 f02Var) {
        super(f02Var);
        this.m = pf8Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.c(null, null, null, this);
    }
}
