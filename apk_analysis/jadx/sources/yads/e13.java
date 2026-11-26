package yads;

import android.view.ViewGroup;
import com.monetization.ads.nativeads.ExtendedNativeAdView;

/* JADX INFO: loaded from: classes6.dex */
public final class e13 implements on0 {
    public final on0 a;

    public e13(pg4 pg4Var, m2 m2Var, h80 h80Var, pz pzVar, q84 q84Var) {
        this.a = pg4Var instanceof ni4 ? new um5((ni4) pg4Var, m2Var, h80Var, pzVar, q84Var) : new hf4(pg4Var, m2Var, h80Var, pzVar, q84Var);
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        this.a.a((ExtendedNativeAdView) viewGroup);
    }

    @Override // yads.on0
    public final void c() {
        this.a.c();
    }
}
