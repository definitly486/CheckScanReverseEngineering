package com.yandex.mobile.ads.banner;

import android.content.Context;
import android.util.AttributeSet;
import com.yandex.mobile.ads.common.AdInfo;
import com.yandex.mobile.ads.common.VideoController;
import yads.do6;
import yads.e4;
import yads.gm6;
import yads.jm6;
import yads.n70;
import yads.pm6;
import yads.pn3;
import yads.r70;

/* JADX INFO: loaded from: classes6.dex */
public final class BannerAdView extends pn3 {
    private final jm6 l;
    private final gm6 m;
    private final VideoController n;

    public BannerAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, new e4(n70.BANNER), new do6(context));
        this.l = new jm6();
        this.m = new gm6();
        this.n = new VideoController(d());
    }

    public final AdInfo getAdInfo() {
        return this.m.a(c());
    }

    public final BannerAdSize getAdSize() {
        r70 r70VarB = b();
        if (r70VarB != null) {
            return new BannerAdSize(r70VarB.a);
        }
        return null;
    }

    public final VideoController getVideoController() {
        return this.n;
    }

    public final void setAdSize(BannerAdSize bannerAdSize) {
        a(a.a(bannerAdSize));
    }

    public final void setBannerAdEventListener(BannerAdEventListener bannerAdEventListener) {
        a(bannerAdEventListener != null ? new pm6(bannerAdEventListener) : null);
    }

    public BannerAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BannerAdView(Context context) {
        this(context, null);
    }
}
