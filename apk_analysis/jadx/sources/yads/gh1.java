package yads;

import android.os.Build;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public final class gh1 extends yh1 {
    public final /* synthetic */ hh1 a;
    public final /* synthetic */ nh1 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gh1(vq0 vq0Var, hh1 hh1Var, nh1 nh1Var) {
        super(vq0Var);
        this.a = hh1Var;
        this.b = nh1Var;
    }

    @Override // yads.ji1
    public final void a(uw uwVar) {
        if (Build.VERSION.SDK_INT >= 28) {
            hh1.a(this.a, this.b, uwVar);
            return;
        }
        this.b.setImage(uwVar.a);
        nh1 nh1Var = this.b;
        nh1Var.getClass();
        nh1Var.setTag(R$id.monetization_ads_divkit_image_loaded_flag, Boolean.TRUE);
    }

    @Override // yads.ji1
    public final void a() {
        this.b.setGifUrl$mobileads_externalRelease(null);
    }
}
