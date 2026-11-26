package yads;

import android.content.Context;
import com.monetization.ads.mediation.banner.MediatedBannerAdapter;
import com.monetization.ads.mediation.nativeads.MediatedNativeAdapter;

/* JADX INFO: loaded from: classes6.dex */
public final class m44 implements q34 {
    public final e34 a;
    public final o44 b;

    public m44(e34 e34Var, o44 o44Var) {
        this.a = e34Var;
        this.b = o44Var;
    }

    @Override // yads.q34
    public final boolean a(x54 x54Var, Class cls) {
        cb5 cb5Var = x54Var.i;
        return cb5Var != null && cb5Var.b == k54.NATIVE && MediatedBannerAdapter.class.isAssignableFrom(cls);
    }

    @Override // yads.q34
    public final com.monetization.ads.mediation.base.a a(Context context, x54 x54Var) {
        MediatedNativeAdapter mediatedNativeAdapter = (MediatedNativeAdapter) this.a.a(context, x54Var, MediatedNativeAdapter.class);
        if (mediatedNativeAdapter == null) {
            return null;
        }
        return new l44(mediatedNativeAdapter, this.b);
    }
}
