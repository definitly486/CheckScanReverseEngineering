package yads;

import android.app.Activity;
import com.yandex.mobile.ads.R$layout;

/* JADX INFO: loaded from: classes6.dex */
public final class nx4 implements k13 {
    public final p10 a;
    public final q84 b;

    public nx4(p10 p10Var, q84 q84Var) {
        this.a = p10Var;
        this.b = q84Var;
    }

    @Override // yads.k13
    public final mr3 a(Activity activity, d9 d9Var, pg4 pg4Var, m2 m2Var, h80 h80Var) {
        return new mr3(R$layout.monetization_ads_internal_native_interstitial_portrait, new v40(d40.a(pg4Var, m2Var, h80Var, this.a, this.b), new q04(pg4Var.getAdAssets()), new gj6(), new tx(pg4Var), new sx(activity)), new zq4(1));
    }
}
