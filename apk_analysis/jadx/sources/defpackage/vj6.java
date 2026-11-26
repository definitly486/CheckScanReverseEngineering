package defpackage;

import androidx.media3.muxer.WebmConstants;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.products.data.repositoryImpl.ProductsRepositoryImpl", f = "ProductsRepositoryImpl.kt", l = {WebmConstants.MkvEbmlElement.BLOCK}, m = "fetchProductDetails")
public final class vj6 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ dk6 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vj6(dk6 dk6Var, f02 f02Var) {
        super(f02Var);
        this.m = dk6Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.h(0, this);
    }
}
