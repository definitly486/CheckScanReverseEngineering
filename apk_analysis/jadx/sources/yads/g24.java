package yads;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.monetization.ads.fullscreen.template.view.ExtendedViewContainer;
import com.monetization.ads.nativeads.CustomizableMediaView;
import com.monetization.ads.nativeads.view.pager.MultiBannerControlsContainer;
import com.yandex.mobile.ads.R$layout;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class g24 {
    public final vc4 a = new vc4();
    public final nc4 b = new nc4();
    public final lc4 c = new lc4();

    public final yf5 a(d9 d9Var, bf5 bf5Var, CustomizableMediaView customizableMediaView, b05 b05Var, List list, j24 j24Var, uj5 uj5Var, defpackage.y22 y22Var) {
        ic4 ic4Var;
        Long l;
        Context context = customizableMediaView.getContext();
        ViewPager2 viewPager2 = new ViewPager2(context);
        oc4 oc4Var = new oc4(context, d9Var, bf5Var);
        wc4 wc4Var = new wc4(viewPager2);
        long jLongValue = (uj5Var == null || (l = uj5Var.b) == null) ? 0L : l.longValue();
        if (jLongValue > 0) {
            ic4Var = new ic4(viewPager2, wc4Var, oc4Var);
            viewPager2.addOnAttachStateChangeListener(new sc4(ic4Var, jLongValue));
        } else {
            ic4Var = null;
        }
        viewPager2.registerOnPageChangeCallback(new bs4(oc4Var, ic4Var));
        this.b.getClass();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        MultiBannerControlsContainer multiBannerControlsContainer = (MultiBannerControlsContainer) dc5.a(context, MultiBannerControlsContainer.class, R$layout.monetization_ads_internal_multibanner_controls, null);
        if (multiBannerControlsContainer != null) {
            multiBannerControlsContainer.setLayoutParams(layoutParams);
        }
        if (multiBannerControlsContainer != null) {
            multiBannerControlsContainer.a(viewPager2);
            multiBannerControlsContainer.setOnClickLeftButtonListener(new y60(wc4Var, oc4Var, ic4Var));
            multiBannerControlsContainer.setOnClickRightButtonListener(new z60(wc4Var, oc4Var, ic4Var));
        }
        this.c.getClass();
        ExtendedViewContainer extendedViewContainer = new ExtendedViewContainer(context, null, 0, 6, null);
        extendedViewContainer.setMeasureSpecProvider(new l25((float) tc4.a(list)));
        this.a.getClass();
        if (!yt2.a(customizableMediaView.getContext(), xt2.FALLBACK_FOR_VIDEO)) {
            customizableMediaView.removeAllViews();
        }
        ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        extendedViewContainer.addView(viewPager2, layoutParams2);
        if (multiBannerControlsContainer != null) {
            extendedViewContainer.addView(multiBannerControlsContainer, layoutParams2);
        }
        customizableMediaView.addView(extendedViewContainer, layoutParams2);
        Context context2 = ((do6) bf5Var).a;
        return new yf5(customizableMediaView, new xc4(viewPager2, b05Var, mw.a(context2, context2), d9Var, y22Var), j24Var);
    }
}
