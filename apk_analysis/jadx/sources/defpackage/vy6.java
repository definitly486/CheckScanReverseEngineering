package defpackage;

import androidx.media3.extractor.ts.TsExtractor;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "coil3.RealImageLoader", f = "RealImageLoader.kt", l = {118, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 134}, m = "execute", v = 1)
public final class vy6 extends f02 {
    public l37 l;
    public b24 m;
    public a13 n;
    public x04 o;
    public /* synthetic */ Object p;
    public final /* synthetic */ sy6 q;
    public int r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vy6(sy6 sy6Var, f02 f02Var) {
        super(f02Var);
        this.q = sy6Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.p = obj;
        this.r |= Integer.MIN_VALUE;
        int i = sy6.f;
        return this.q.b(null, 0, this);
    }
}
