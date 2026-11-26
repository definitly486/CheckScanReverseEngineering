package yads;

import android.view.View;
import com.yandex.mobile.ads.banner.BannerAdView;

/* JADX INFO: loaded from: classes6.dex */
public final class di4 implements h80 {
    public final yn a;

    public di4(yn ynVar) {
        this.a = ynVar;
    }

    @Override // yads.h80
    public final void a() {
        yn ynVar = this.a;
        qo1 qo1Var = ynVar.K;
        BannerAdView bannerAdView = ynVar.E;
        qo1Var.getClass();
        View viewFindViewWithTag = bannerAdView.findViewWithTag("rootDivkitView");
        vq0 vq0Var = viewFindViewWithTag instanceof vq0 ? (vq0) viewFindViewWithTag : null;
        if (vq0Var != null) {
            l76.a(vq0Var, "is_banner_closed", "closed", vq0.a(vq0Var.z));
        }
        ynVar.F.a();
    }

    @Override // yads.h80
    public final void onAdClicked() {
    }

    @Override // yads.h80
    public final void onImpression(j5 j5Var) {
        this.a.F.a(j5Var);
    }

    @Override // yads.h80
    public final void onLeftApplication() {
        this.a.F.c();
    }

    @Override // yads.h80
    public final void onReturnedToApplication() {
        this.a.F.d();
    }
}
