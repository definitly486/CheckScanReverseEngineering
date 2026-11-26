package yads;

import android.app.Activity;
import android.app.Dialog;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.monetization.ads.fullscreen.template.view.ExtendedViewContainer;
import com.yandex.mobile.ads.R$id;
import com.yandex.mobile.ads.R$layout;
import com.yandex.mobile.ads.R$style;

/* JADX INFO: loaded from: classes6.dex */
public final class wc implements Runnable {
    public final /* synthetic */ yc b;

    public wc(yc ycVar) {
        this.b = ycVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        yc ycVar = this.b;
        lc lcVar = ycVar.a;
        yb ybVar = ycVar.b;
        mc mcVar = new mc(lcVar.a);
        Activity activity = lcVar.a;
        ic icVar = new ic(activity, 12);
        fr3 fr3Var = new fr3();
        Dialog dialog = new Dialog(activity, R$style.MonetizationAdsInternal_BottomAdtuneDialog);
        View viewInflate = LayoutInflater.from(new ContextThemeWrapper(activity, ybVar.d ? R$style.MonetizationAdsInternal_AdtuneTheme_Dark : R$style.MonetizationAdsInternal_AdtuneTheme_Light)).inflate(R$layout.monetization_ads_internal_adtune_container, (ViewGroup) null);
        viewInflate.getClass();
        ViewGroup viewGroup = (ViewGroup) viewInflate;
        ExtendedViewContainer extendedViewContainer = (ExtendedViewContainer) viewGroup.findViewById(R$id.adtune_content_container);
        if (extendedViewContainer != null) {
            extendedViewContainer.setMeasureSpecProvider(icVar);
        }
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(R$id.adtune_webview_container);
        if (viewGroup2 != null) {
            viewGroup2.addView(mcVar);
        }
        View viewFindViewById = viewGroup.findViewById(R$id.adtune_drag_view_container);
        if (viewFindViewById != null) {
            viewFindViewById.setOnTouchListener(new gc(viewGroup, dialog, fr3Var));
        }
        ViewGroup viewGroup3 = (ViewGroup) viewGroup.findViewById(R$id.adtune_background_view);
        if (viewGroup3 != null) {
            viewGroup3.setOnClickListener(new fc(dialog, fr3Var));
        }
        dialog.setContentView(viewGroup);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setGravity(80);
        }
        fo0.a(dialog);
        kc kcVar = new kc(dialog, mcVar);
        String str = ybVar.c;
        mcVar.setAdtuneWebViewListener(new jc(kcVar));
        mcVar.loadUrl(str);
        dialog.show();
    }
}
