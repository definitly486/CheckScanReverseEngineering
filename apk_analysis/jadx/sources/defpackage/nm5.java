package defpackage;

import androidx.media3.muxer.WebmConstants;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "coil3.network.NetworkFetcher", f = "NetworkFetcher.kt", l = {WebmConstants.MkvEbmlElement.SAMPLING_FREQUENCY, 196}, m = "writeToDiskCache", v = 1)
public final class nm5 extends f02 {
    public Object l;
    public vm5 m;
    public qn2.b n;
    public /* synthetic */ Object o;
    public final /* synthetic */ km5 p;
    public int q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nm5(km5 km5Var, f02 f02Var) {
        super(f02Var);
        this.p = km5Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.o = obj;
        this.q |= Integer.MIN_VALUE;
        return this.p.j(null, null, null, null, this);
    }
}
