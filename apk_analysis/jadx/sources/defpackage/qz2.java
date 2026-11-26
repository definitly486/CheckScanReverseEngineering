package defpackage;

import androidx.media3.container.MdtaMetadataEntry;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "coil3.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {MdtaMetadataEntry.TYPE_INDICATOR_8_BIT_UNSIGNED_INT}, m = "intercept", v = 1)
public final class qz2 extends f02 {
    public fz6 l;
    public /* synthetic */ Object m;
    public final /* synthetic */ lz2 n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qz2(lz2 lz2Var, f02 f02Var) {
        super(f02Var);
        this.n = lz2Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.a(null, this);
    }
}
