package com.warefly.checkscan.shared.universalWebView.presentation.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.shared.universalWebView.presentation.UniversalWebViewArgs;
import com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewView;
import defpackage.eg9;
import defpackage.fg9;
import defpackage.gg9;
import defpackage.hg9;
import defpackage.me0;
import defpackage.t69;
import defpackage.ta8;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class UniversalWebViewPresenter extends BasePresenter<UniversalWebViewView> {
    private final UniversalWebViewArgs args;
    private String currentUrl;
    private boolean hasPageError;
    private boolean hasRenderedPage;
    private final t69 router;
    private final hg9 urlResolver;

    public UniversalWebViewPresenter(UniversalWebViewArgs universalWebViewArgs, hg9 hg9Var, t69 t69Var) {
        universalWebViewArgs.getClass();
        hg9Var.getClass();
        t69Var.getClass();
        this.args = universalWebViewArgs;
        this.urlResolver = hg9Var;
        this.router = t69Var;
        this.currentUrl = universalWebViewArgs.b;
    }

    public final void onBackClicked(boolean z) {
        if (!z) {
            this.router.a();
            return;
        }
        UniversalWebViewView universalWebViewView = (UniversalWebViewView) getViewState();
        if (universalWebViewView != null) {
            universalWebViewView.goBackInHistory();
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        UniversalWebViewView universalWebViewView;
        super.onFirstViewAttach();
        String str = this.args.c;
        if (str != null && (universalWebViewView = (UniversalWebViewView) getViewState()) != null) {
            universalWebViewView.showTitle(str);
        }
        UniversalWebViewView universalWebViewView2 = (UniversalWebViewView) getViewState();
        if (universalWebViewView2 != null) {
            universalWebViewView2.loadUrl(this.args.b);
        }
    }

    public final void onPageError() {
        this.hasPageError = true;
        this.hasRenderedPage = false;
        UniversalWebViewView universalWebViewView = (UniversalWebViewView) getViewState();
        if (universalWebViewView != null) {
            universalWebViewView.showLoading(false);
        }
        UniversalWebViewView universalWebViewView2 = (UniversalWebViewView) getViewState();
        if (universalWebViewView2 != null) {
            universalWebViewView2.stopRefreshing();
        }
        UniversalWebViewView universalWebViewView3 = (UniversalWebViewView) getViewState();
        if (universalWebViewView3 != null) {
            universalWebViewView3.showError(true);
        }
    }

    public final void onPageFinished() {
        if (this.hasPageError) {
            return;
        }
        this.hasRenderedPage = true;
        UniversalWebViewView universalWebViewView = (UniversalWebViewView) getViewState();
        if (universalWebViewView != null) {
            universalWebViewView.showLoading(false);
        }
        UniversalWebViewView universalWebViewView2 = (UniversalWebViewView) getViewState();
        if (universalWebViewView2 != null) {
            universalWebViewView2.stopRefreshing();
        }
    }

    public final void onPageStarted(String str) {
        if (str != null) {
            this.currentUrl = str;
        }
        this.hasPageError = false;
        UniversalWebViewView universalWebViewView = (UniversalWebViewView) getViewState();
        if (universalWebViewView != null) {
            universalWebViewView.showError(false);
        }
        UniversalWebViewView universalWebViewView2 = (UniversalWebViewView) getViewState();
        if (universalWebViewView2 != null) {
            universalWebViewView2.showLoading(!this.hasRenderedPage);
        }
    }

    public final void onRefreshRequested() {
        UniversalWebViewView universalWebViewView = (UniversalWebViewView) getViewState();
        if (universalWebViewView != null) {
            universalWebViewView.showError(false);
        }
        UniversalWebViewView universalWebViewView2 = (UniversalWebViewView) getViewState();
        if (universalWebViewView2 != null) {
            universalWebViewView2.loadUrl(this.currentUrl);
        }
    }

    public final void onTitleReceived(String str) {
        UniversalWebViewView universalWebViewView;
        str.getClass();
        String str2 = this.args.c;
        if ((str2 != null && !ta8.M(str2)) || this.hasPageError || (universalWebViewView = (UniversalWebViewView) getViewState()) == null) {
            return;
        }
        universalWebViewView.showTitle(str);
    }

    public final void onTryAgainClicked() {
        UniversalWebViewView universalWebViewView = (UniversalWebViewView) getViewState();
        if (universalWebViewView != null) {
            universalWebViewView.showError(false);
        }
        UniversalWebViewView universalWebViewView2 = (UniversalWebViewView) getViewState();
        if (universalWebViewView2 != null) {
            universalWebViewView2.loadUrl(this.currentUrl);
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0031  */
    public final boolean onUrlLoading(String str) {
        Object gg9Var;
        this.urlResolver.getClass();
        eg9 eg9Var = eg9.c;
        if (str == null || ta8.M(str)) {
            gg9Var = eg9Var;
        } else {
            int iK = ta8.K(str, StringUtils.PROCESS_POSTFIX_DELIMITER, 0, false, 6);
            String lowerCase = (iK == -1 ? "" : str.substring(0, iK)).toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            if (lowerCase.length() == 0 || hg9.a.contains(lowerCase)) {
                gg9Var = eg9Var;
            } else {
                gg9Var = lowerCase.equals("intent") ? new gg9(str) : new fg9(str);
            }
        }
        if (gg9Var.equals(eg9Var)) {
            return false;
        }
        if (gg9Var instanceof gg9) {
            UniversalWebViewView universalWebViewView = (UniversalWebViewView) getViewState();
            if (universalWebViewView != null) {
                universalWebViewView.openIntentScheme(((gg9) gg9Var).a);
                return true;
            }
        } else {
            if (!(gg9Var instanceof fg9)) {
                me0.e();
                return false;
            }
            UniversalWebViewView universalWebViewView2 = (UniversalWebViewView) getViewState();
            if (universalWebViewView2 != null) {
                universalWebViewView2.openInExternalApp(((fg9) gg9Var).a);
            }
        }
        return true;
    }
}
