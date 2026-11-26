package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class rs3 extends defpackage.f02 {
    public fe5 b;
    public String c;
    public /* synthetic */ Object d;
    public final /* synthetic */ ts3 e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rs3(ts3 ts3Var, defpackage.f02 f02Var) {
        super(f02Var);
        this.e = ts3Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.e.a(this);
    }
}
