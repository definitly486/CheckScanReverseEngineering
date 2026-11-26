package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class mv extends gh4 implements nl3<wc9, c18<? extends kv.a>> {
    public final /* synthetic */ kv f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mv(kv kvVar) {
        super(1);
        this.f = kvVar;
    }

    @Override // defpackage.nl3
    public final c18<? extends kv.a> invoke(wc9 wc9Var) {
        wc9 wc9Var2 = wc9Var;
        kv kvVar = this.f;
        jf6 jf6Var = kvVar.c;
        wc9Var2.getClass();
        if (wc9Var2 == wc9.Unsupported) {
            return mz7.e(kv.a.UnsupportedApi);
        }
        if (!jf6Var.Y() && !jf6Var.getToken().equals("")) {
            return mz7.e(kv.a.LoggedIn);
        }
        mz7 mz7VarA = kvVar.b.a();
        uq uqVar = new uq(new xv(kvVar, 0));
        mz7VarA.getClass();
        return new p08(new e08(mz7VarA, uqVar), new xq(lv.f, 1));
    }
}
