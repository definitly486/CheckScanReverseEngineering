package yads;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.monetization.ads.fullscreen.template.view.ExtendedViewContainer;
import com.yandex.mobile.ads.R$id;
import com.yandex.mobile.ads.R$layout;
import com.yandex.mobile.ads.R$style;
import defpackage.ll3;
import yads.co0;

/* JADX INFO: loaded from: classes6.dex */
public final class co0 implements qc {
    public final Dialog a;

    public co0(Activity activity, uc ucVar, yb ybVar) {
        bc bcVar = new bc(activity, ucVar, ybVar);
        hc hcVar = new hc();
        Dialog dialog = new Dialog(activity, R$style.MonetizationAdsInternal_BottomAdtuneDialog);
        View viewInflate = LayoutInflater.from(new ContextThemeWrapper(bcVar.a, bcVar.c.d ? R$style.MonetizationAdsInternal_AdtuneTheme_Dark : R$style.MonetizationAdsInternal_AdtuneTheme_Light)).inflate(R$layout.monetization_ads_internal_adtune_container, (ViewGroup) null);
        viewInflate.getClass();
        ViewGroup viewGroup = (ViewGroup) viewInflate;
        bcVar.d.getClass();
        ExtendedViewContainer extendedViewContainer = (ExtendedViewContainer) viewGroup.findViewById(R$id.adtune_content_container);
        if (extendedViewContainer != null) {
            extendedViewContainer.setMeasureSpecProvider(bcVar.e);
        }
        bcVar.d.getClass();
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(R$id.adtune_webview_container);
        if (viewGroup2 != null) {
            if (za.a(35)) {
                bc.a(viewGroup2);
            }
            viewGroup2.addView(bcVar.b);
        }
        View viewFindViewById = viewGroup.findViewById(R$id.adtune_drag_view_container);
        if (viewFindViewById != null) {
            viewFindViewById.setOnTouchListener(new gc(viewGroup, dialog, hcVar.a));
        }
        ViewGroup viewGroup3 = (ViewGroup) viewGroup.findViewById(R$id.adtune_background_view);
        if (viewGroup3 != null) {
            viewGroup3.setOnClickListener(new fc(dialog, hcVar.a));
        }
        dialog.setContentView(viewGroup);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setGravity(80);
        }
        fo0.a(dialog);
        this.a = dialog;
    }

    @Override // yads.qc
    public final void a(final ll3 ll3Var) {
        this.a.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: vr9
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                co0.a(ll3Var, dialogInterface);
            }
        });
    }

    @Override // yads.qc
    public final void dismiss() {
        eo0.a(this.a);
    }

    @Override // yads.qc
    public final void show() {
        this.a.show();
    }

    public static final void a(ll3 ll3Var, DialogInterface dialogInterface) {
        ll3Var.invoke();
    }
}
