package defpackage;

import com.google.firebase.remoteconfig.RemoteConfigComponent;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "coil3.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {169}, m = RemoteConfigComponent.FETCH_FILE_NAME, v = 1)
public final class pz2 extends f02 {
    public fs1 l;
    public b24 m;
    public Object n;
    public zz5 o;
    public a13 p;
    public u83 q;
    public int r;
    public /* synthetic */ Object s;
    public final /* synthetic */ lz2 t;
    public int u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pz2(lz2 lz2Var, f02 f02Var) {
        super(f02Var);
        this.t = lz2Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.s = obj;
        this.u |= Integer.MIN_VALUE;
        return this.t.d(null, null, null, null, null, this);
    }
}
