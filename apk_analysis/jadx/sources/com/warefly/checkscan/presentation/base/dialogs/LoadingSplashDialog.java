package com.warefly.checkscan.presentation.base.dialogs;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.airbnb.lottie.LottieAnimationView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog;
import com.warefly.checkscan.databinding.LayoutSplashLoadingBinding;
import defpackage.bs6;
import defpackage.gl4;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class LoadingSplashDialog extends FullScreenDialog<LayoutSplashLoadingBinding> {
    public static final /* synthetic */ ze4<Object>[] d;
    public final gl4 c;

    public static final class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            animator.getClass();
            super.onAnimationEnd(animator);
            LoadingSplashDialog.this.dismiss();
        }
    }

    static {
        bs6 bs6Var = new bs6(LoadingSplashDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/LayoutSplashLoadingBinding;", 0);
        x07.a.getClass();
        d = new ze4[]{bs6Var};
    }

    public LoadingSplashDialog() {
        super(R.layout.layout_splash_loading);
        this.c = new gl4(LayoutSplashLoadingBinding.class);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog
    public final void d(View view) {
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, R.style.FullScreenDialogStyleSplashLoading);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog, androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        Window window = dialogOnCreateDialog.getWindow();
        WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
        if (attributes == null) {
            return dialogOnCreateDialog;
        }
        attributes.windowAnimations = R.style.FullScreenDialogStyleSplashLoading;
        return dialogOnCreateDialog;
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        LottieAnimationView lottieAnimationView = ((LayoutSplashLoadingBinding) this.c.getValue(this, d[0])).lottieSplashAnimation;
        lottieAnimationView.s.c.addListener(new a());
        setCancelable(false);
    }
}
