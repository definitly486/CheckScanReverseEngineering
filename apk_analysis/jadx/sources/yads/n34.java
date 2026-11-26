package yads;

import android.content.Context;
import com.monetization.ads.mediation.banner.MediatedBannerAdapter;

/* JADX INFO: loaded from: classes6.dex */
public final class n34 implements n24 {
    public final x24 a;

    public n34(x24 x24Var) {
        this.a = x24Var;
    }

    @Override // yads.n24
    public final l24 a(Context context) {
        return this.a.a(context, MediatedBannerAdapter.class);
    }
}
