package yads;

import android.view.ViewGroup;
import android.widget.ImageView;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class y40 implements on0 {
    public final f80 a;
    public final int b;

    public y40(f80 f80Var, int i) {
        this.a = f80Var;
        this.b = i;
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        ExtendedNativeAdView extendedNativeAdView = (ExtendedNativeAdView) viewGroup;
        f80 f80Var = this.a;
        a50 a50Var = new a50(f80Var, this.b);
        ImageView imageViewA = a50Var.a(extendedNativeAdView, z40.FAVICON, f80Var.b);
        ImageView imageViewA2 = a50Var.a(extendedNativeAdView, z40.ICON, f80Var.c);
        if (imageViewA != null) {
            imageViewA.setId(R$id.monetization_ads_favicon);
        }
        if (imageViewA2 != null) {
            imageViewA2.setId(R$id.monetization_ads_icon);
        }
    }

    @Override // yads.on0
    public final void c() {
    }
}
