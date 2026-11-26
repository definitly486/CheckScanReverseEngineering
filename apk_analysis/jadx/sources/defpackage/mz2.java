package defpackage;

import androidx.compose.runtime.ComposerKt;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "coil3.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {ComposerKt.providerValuesKey}, m = "decode", v = 1)
public final class mz2 extends f02 {
    public x48 l;
    public fs1 m;
    public b24 n;
    public Object o;
    public zz5 p;
    public a13 q;
    public td2 r;
    public int s;
    public /* synthetic */ Object t;
    public final /* synthetic */ lz2 u;
    public int v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mz2(lz2 lz2Var, f02 f02Var) {
        super(f02Var);
        this.u = lz2Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.t = obj;
        this.v |= Integer.MIN_VALUE;
        return this.u.b(null, null, null, null, null, null, this);
    }
}
