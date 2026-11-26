package com.warefly.checkscan.auth.presentation.main.dialogs;

import android.os.Bundle;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ImageView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.auth.databinding.FullscreenDialogAgreementBinding;
import com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.gl4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes.dex */
public final class AgreementDialog extends FullScreenDialog<FullscreenDialogAgreementBinding> {
    public static final a d;
    public static final /* synthetic */ ze4<Object>[] e;
    public final gl4 c;

    public static final class a {
    }

    public static final class b extends WebChromeClient {
        public final /* synthetic */ FullscreenDialogAgreementBinding a;

        public b(FullscreenDialogAgreementBinding fullscreenDialogAgreementBinding) {
            this.a = fullscreenDialogAgreementBinding;
        }

        @Override // android.webkit.WebChromeClient
        public final void onProgressChanged(WebView webView, int i) {
            ViewPropertyAnimator viewPropertyAnimatorAlpha;
            ViewPropertyAnimator viewPropertyAnimatorAnimate;
            ViewPropertyAnimator viewPropertyAnimatorAlpha2;
            FullscreenDialogAgreementBinding fullscreenDialogAgreementBinding = this.a;
            if (i == 0) {
                ViewPropertyAnimator viewPropertyAnimatorAnimate2 = fullscreenDialogAgreementBinding.pbLoading.animate();
                if (viewPropertyAnimatorAnimate2 != null && (viewPropertyAnimatorAlpha = viewPropertyAnimatorAnimate2.alpha(1.0f)) != null) {
                    viewPropertyAnimatorAlpha.start();
                }
            } else if (i == 100 && (viewPropertyAnimatorAnimate = fullscreenDialogAgreementBinding.pbLoading.animate()) != null && (viewPropertyAnimatorAlpha2 = viewPropertyAnimatorAnimate.alpha(0.0f)) != null) {
                viewPropertyAnimatorAlpha2.start();
            }
            fullscreenDialogAgreementBinding.pbLoading.setProgress(i, true);
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AgreementDialog.this.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(AgreementDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/auth/databinding/FullscreenDialogAgreementBinding;", 0);
        x07.a.getClass();
        e = new ze4[]{bs6Var};
        d = new a();
    }

    public AgreementDialog() {
        super(R.layout.fullscreen_dialog_agreement);
        this.c = new gl4(FullscreenDialogAgreementBinding.class);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FullscreenDialogAgreementBinding fullscreenDialogAgreementBinding = (FullscreenDialogAgreementBinding) this.c.getValue(this, e[0]);
        WebView webView = fullscreenDialogAgreementBinding.wvAgreement;
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebChromeClient(new b(fullscreenDialogAgreementBinding));
        WebView webView2 = fullscreenDialogAgreementBinding.wvAgreement;
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString("URL_KEY") : null;
        if (string == null) {
            string = "";
        }
        webView2.loadUrl(string);
        ImageView imageView = fullscreenDialogAgreementBinding.btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new c()));
    }
}
