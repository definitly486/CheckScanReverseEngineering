package com.warefly.checkscan.presentation.webview;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import defpackage.ca0;
import defpackage.gh4;
import defpackage.j59;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.p08;
import defpackage.rj;
import defpackage.v9;
import defpackage.v90;
import defpackage.yb8;

/* JADX INFO: loaded from: classes5.dex */
public final class WebViewReplenishmentPresenter extends BasePresenter<WebViewReplenishment> {
    public static final a Companion = new a();
    private static final String SCAN_WEBSITE = "https://scan.com.ru";
    private final ca0 bankInteractor;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<Throwable, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            WebViewReplenishmentPresenter webViewReplenishmentPresenter = WebViewReplenishmentPresenter.this;
            WebViewReplenishment webViewReplenishment = (WebViewReplenishment) webViewReplenishmentPresenter.getViewState();
            if (webViewReplenishment != null) {
                webViewReplenishment.loadReplenishment(WebViewReplenishmentPresenter.SCAN_WEBSITE);
            }
            WebViewReplenishment webViewReplenishment2 = (WebViewReplenishment) webViewReplenishmentPresenter.getViewState();
            if (webViewReplenishment2 != null) {
                webViewReplenishment2.showSomeError();
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<String, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(String str) {
            String str2 = str;
            WebViewReplenishment webViewReplenishment = (WebViewReplenishment) WebViewReplenishmentPresenter.this.getViewState();
            if (webViewReplenishment != null) {
                str2.getClass();
                webViewReplenishment.loadReplenishment(str2);
            }
            return j59.a;
        }
    }

    public WebViewReplenishmentPresenter(ca0 ca0Var) {
        ca0Var.getClass();
        this.bankInteractor = ca0Var;
    }

    private final void loadWebView() {
        this.bankInteractor.getClass();
        mz7 mz7VarK = this.bankInteractor.a.k();
        v90 v90Var = new v90(v9.h, 0);
        mz7VarK.getClass();
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new p08(mz7VarK, v90Var).i(ne7.c).f(rj.a()), new b(), new c()), null, 1, null);
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        loadWebView();
    }
}
