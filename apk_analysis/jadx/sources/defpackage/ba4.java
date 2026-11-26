package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class ba4 extends e57 {
    public int l;
    public final /* synthetic */ bm3 m;
    public final /* synthetic */ e02 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ba4(e02 e02Var, e02 e02Var2, bm3 bm3Var) {
        super(e02Var);
        this.m = bm3Var;
        this.n = e02Var2;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        int i = this.l;
        if (i != 0) {
            if (i != 1) {
                ah.f("This coroutine had already completed");
                return null;
            }
            this.l = 2;
            r57.b(obj);
            return obj;
        }
        this.l = 1;
        r57.b(obj);
        bm3 bm3Var = this.m;
        bm3Var.getClass();
        v39.c(2, bm3Var);
        return bm3Var.invoke(this.n, this);
    }
}
