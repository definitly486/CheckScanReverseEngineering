package defpackage;

import androidx.media3.extractor.ts.TsExtractor;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "coil3.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {126, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 148}, m = "execute", v = 1)
public final class nz2 extends f02 {
    public b24 l;
    public Object m;
    public Object n;
    public r07 o;
    public r07 p;
    public r07 q;
    public r07 r;
    public /* synthetic */ Object s;
    public final /* synthetic */ lz2 t;
    public int u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nz2(lz2 lz2Var, f02 f02Var) {
        super(f02Var);
        this.t = lz2Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.s = obj;
        this.u |= Integer.MIN_VALUE;
        return this.t.c(null, null, null, null, this);
    }
}
