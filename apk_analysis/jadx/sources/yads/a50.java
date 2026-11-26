package yads;

import android.widget.ImageView;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class a50 {
    public final f80 a;
    public final int b;

    public a50(f80 f80Var, int i) {
        this.a = f80Var;
        this.b = i;
    }

    public final ImageView a(ExtendedNativeAdView extendedNativeAdView, z40 z40Var, i80 i80Var) {
        z40 z40Var2;
        f80 f80Var = this.a;
        i80 i80Var2 = f80Var.c;
        i80 i80Var3 = f80Var.b;
        if (i80Var2 != null) {
            z40Var2 = z40.ICON;
        } else {
            z40Var2 = i80Var3 != null ? z40.FAVICON : z40.THUMB;
        }
        if (i80Var == null || z40Var2 != z40Var) {
            return null;
        }
        int i = i80Var.c;
        int i2 = i80Var.d;
        int i3 = this.b;
        return (i3 > i || i3 > i2) ? (ImageView) extendedNativeAdView.findViewById(R$id.monetization_ads_icon_small) : (ImageView) extendedNativeAdView.findViewById(R$id.monetization_ads_icon_large);
    }
}
