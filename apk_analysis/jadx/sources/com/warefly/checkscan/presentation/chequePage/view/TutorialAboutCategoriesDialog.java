package com.warefly.checkscan.presentation.chequePage.view;

import android.R;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew;
import com.warefly.checkscan.databinding.TutorialDialogReportCategoriesBinding;
import defpackage.bn2;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class TutorialAboutCategoriesDialog extends BaseDialogNew<TutorialDialogReportCategoriesBinding> {
    public static final /* synthetic */ ze4<Object>[] d;
    public final bn2 c;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            TutorialAboutCategoriesDialog.this.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(TutorialAboutCategoriesDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/TutorialDialogReportCategoriesBinding;", 0);
        x07.a.getClass();
        d = new ze4[]{bs6Var};
    }

    public TutorialAboutCategoriesDialog(Context context) {
        super(context);
        this.c = new bn2(TutorialDialogReportCategoriesBinding.class, this);
    }

    public final TutorialDialogReportCategoriesBinding a() {
        ze4<Object> ze4Var = d[0];
        bn2 bn2Var = this.c;
        bn2Var.getClass();
        ze4Var.getClass();
        return (TutorialDialogReportCategoriesBinding) ((ViewBinding) bn2Var.d);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(R.color.transparent);
        }
        ImageView imageView = a().btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
        a().viewSelection.startAnimation(AnimationUtils.loadAnimation(getContext(), com.warefly.checkscan.R.anim.blink_alpha));
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew, android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        a().viewSelection.clearAnimation();
        super.onDetachedFromWindow();
    }
}
