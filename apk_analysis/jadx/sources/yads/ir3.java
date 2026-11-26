package yads;

import android.app.Activity;
import com.yandex.mobile.ads.R$dimen;
import com.yandex.mobile.ads.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class ir3 implements k13 {
    public final p10 a;
    public final q84 b;

    public ir3(p10 p10Var, q84 q84Var) {
        this.a = p10Var;
        this.b = q84Var;
    }

    @Override // yads.k13
    public final mr3 a(Activity activity, d9 d9Var, pg4 pg4Var, m2 m2Var, h80 h80Var) {
        f80 adAssets = pg4Var.getAdAssets();
        return new mr3(R$layout.monetization_ads_internal_native_interstitial_landscape_horizontal_media, new v40(new y40(adAssets, defpackage.w65.b(activity.getResources().getDimension(R$dimen.monetization_ads_internal_landscape_horizontal_icon_size))), d40.a(pg4Var, m2Var, h80Var, this.a, this.b), new cy3(adAssets), new ev4(adAssets), new gj6(), new tx(pg4Var)), new zq4(2));
    }
}
