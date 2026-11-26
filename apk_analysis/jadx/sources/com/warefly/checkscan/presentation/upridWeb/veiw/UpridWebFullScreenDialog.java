package com.warefly.checkscan.presentation.upridWeb.veiw;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.core.os.BundleKt;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog;
import com.warefly.checkscan.databinding.FragmentUpridWebBinding;
import com.warefly.checkscan.presentation.upridWeb.presenter.UpridWebPresenter;
import com.warefly.checkscan.presentation.upridWeb.veiw.UpridWebFullScreenDialog;
import defpackage.aa4;
import defpackage.av0;
import defpackage.b36;
import defpackage.bs6;
import defpackage.ca0;
import defpackage.en2;
import defpackage.fn2;
import defpackage.gl4;
import defpackage.ht8;
import defpackage.kd;
import defpackage.le9;
import defpackage.m2;
import defpackage.og4;
import defpackage.ph;
import defpackage.ra8;
import defpackage.rc6;
import defpackage.rh;
import defpackage.s47;
import defpackage.s76;
import defpackage.ta8;
import defpackage.v65;
import defpackage.v89;
import defpackage.w89;
import defpackage.x07;
import defpackage.xl;
import defpackage.y89;
import defpackage.yr;
import defpackage.ze4;
import defpackage.zl2;
import java.util.Set;
import javax.net.ssl.TrustManagerFactory;

/* JADX INFO: loaded from: classes5.dex */
public final class UpridWebFullScreenDialog extends FullScreenDialog<FragmentUpridWebBinding> implements UpridWebView {
    public static final a f;
    public static final /* synthetic */ ze4<Object>[] g;
    public static final Set<String> h;
    public static final String i;
    public static final String j;
    public final gl4 c;
    public boolean d;
    public final en2 e;
    public UpridWebPresenter presenter;

    public static final class a {
    }

    public static final class b {
        public b() {
        }

        @JavascriptInterface
        public final boolean onClick() {
            v89.g gVar = v89.g.INSTANCE;
            a aVar = UpridWebFullScreenDialog.f;
            UpridWebFullScreenDialog.this.g(gVar);
            return true;
        }
    }

    public static final class c {
        public c() {
        }

        @JavascriptInterface
        public final void share(String str) {
            str.getClass();
            UpridWebFullScreenDialog upridWebFullScreenDialog = UpridWebFullScreenDialog.this;
            upridWebFullScreenDialog.e().topWebView.post(new ht8(1, upridWebFullScreenDialog, str));
        }
    }

    public static final class d extends fn2 {
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, TrustManagerFactory trustManagerFactory) {
            super(trustManagerFactory);
            this.c = str;
        }

        @Override // android.webkit.WebViewClient
        public final void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
            if (str != null && ta8.D(str, "successDelivery", false)) {
                UpridWebPresenter upridWebPresenter = UpridWebFullScreenDialog.this.presenter;
                if (upridWebPresenter == null) {
                    aa4.j("presenter");
                    throw null;
                }
                upridWebPresenter.sendLink(str);
            }
            super.doUpdateVisitedHistory(webView, str, z);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            if (webView != null) {
                webView.loadUrl("javascript:(function backClick() {\n                        var btns = document.getElementsByClassName('button__component_1tapq button__ghost_1tapq button__m_1tapq button__component_1b4rh button__ghost_1b4rh');\n                        for (var i = 0, n = btns.length; i < n; i++) {\n                            btns[i].setAttribute('onClick', 'Android.onClick()');\n                            }\n                        })() ");
            }
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            String strValueOf = String.valueOf(webResourceRequest != null ? webResourceRequest.getUrl() : null);
            boolean zD = ta8.D(strValueOf, "cardissued.checkscan.org/", false);
            final UpridWebFullScreenDialog upridWebFullScreenDialog = UpridWebFullScreenDialog.this;
            if (zD) {
                ph phVar = new ph(upridWebFullScreenDialog, 3);
                a aVar = UpridWebFullScreenDialog.f;
                upridWebFullScreenDialog.f(strValueOf, phVar);
                return null;
            }
            int i = 4;
            if (ta8.D(strValueOf, "reject_userexists.checkscan.org/", false)) {
                xl xlVar = new xl(upridWebFullScreenDialog, i);
                a aVar2 = UpridWebFullScreenDialog.f;
                upridWebFullScreenDialog.f(strValueOf, xlVar);
                return null;
            }
            if (ta8.D(strValueOf, "reject_inappropriate.checkscan.org/", false)) {
                rh rhVar = new rh(upridWebFullScreenDialog, 4);
                a aVar3 = UpridWebFullScreenDialog.f;
                upridWebFullScreenDialog.f(strValueOf, rhVar);
                return null;
            }
            if (ta8.D(strValueOf, "tryagain.checkscan.org/", false)) {
                kd.j.b.i.e.a();
                w89 w89Var = new w89(0, webView, this.c);
                a aVar4 = UpridWebFullScreenDialog.f;
                upridWebFullScreenDialog.f(strValueOf, w89Var);
                return null;
            }
            int i2 = 1;
            if (ta8.D(strValueOf, "https://checkscan.org/", false)) {
                kd.j.b.C0272j.e.a();
                s76 s76Var = new s76(upridWebFullScreenDialog, 1);
                a aVar5 = UpridWebFullScreenDialog.f;
                upridWebFullScreenDialog.f(strValueOf, s76Var);
                return null;
            }
            if (ta8.D(strValueOf, UpridWebFullScreenDialog.i, false)) {
                kd.j.b.g.e.a();
                upridWebFullScreenDialog.f(strValueOf, new rc6(upridWebFullScreenDialog, 2));
                return null;
            }
            if (ta8.D(strValueOf, UpridWebFullScreenDialog.j, false)) {
                kd.j.b.d.e.a();
                upridWebFullScreenDialog.f(strValueOf, new v65(upridWebFullScreenDialog, i2));
                return null;
            }
            if (!ta8.D(strValueOf, "https://ordered_card_userexists.checkscan.org", false)) {
                return super.shouldInterceptRequest(webView, webResourceRequest);
            }
            upridWebFullScreenDialog.f(strValueOf, new Runnable() { // from class: x89
                @Override // java.lang.Runnable
                public final void run() {
                    v89.d dVar = new v89.d();
                    UpridWebFullScreenDialog.a aVar6 = UpridWebFullScreenDialog.f;
                    upridWebFullScreenDialog.g(dVar);
                }
            });
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            Uri url;
            String string = (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null) ? null : url.toString();
            if (string == null || !ra8.C(string, "intent:", false)) {
                return super.shouldOverrideUrlLoading(webView, webResourceRequest);
            }
            UpridWebFullScreenDialog upridWebFullScreenDialog = UpridWebFullScreenDialog.this;
            a aVar = UpridWebFullScreenDialog.f;
            try {
                Intent uri = Intent.parseUri(string, 1);
                if (aa4.e(uri.getAction(), "android.intent.action.SEND")) {
                    uri = Intent.createChooser(uri, null);
                }
                upridWebFullScreenDialog.startActivity(uri);
            } catch (ActivityNotFoundException | Exception unused) {
            }
            return true;
        }
    }

    public static final class e extends WebChromeClient {
        public e() {
        }

        @Override // android.webkit.WebChromeClient
        public final void onProgressChanged(WebView webView, int i) {
            UpridWebFullScreenDialog upridWebFullScreenDialog = UpridWebFullScreenDialog.this;
            if (upridWebFullScreenDialog.isResumed() && i == 100) {
                upridWebFullScreenDialog.e().viewLoading.getRoot().setVisibility(8);
            }
        }
    }

    static {
        bs6 bs6Var = new bs6(UpridWebFullScreenDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
        f = new a();
        h = yr.k0(new String[]{"https://alfabank.ru", "https://*.alfabank.ru"});
        i = ta8.D("prod", "dev", true) ? "https://xplatform-test.alfabank.ru/universal-dc-form-web-ui/checkscan-questionnaire/cashback" : "https://xplatform.alfabank.ru/universal-dc-form-web-ui/checkscan-questionnaire/cashback";
        j = ta8.D("prod", "dev", true) ? "testjmb.alfabank.ru/land/alfaform-dc-new/error" : "anketa.alfabank.ru/dc-short/error";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UpridWebFullScreenDialog() {
        super(R.layout.fragment_uprid_web);
        this.c = new gl4(FragmentUpridWebBinding.class);
        this.e = new en2((s47) (this instanceof og4 ? m2.c(s47.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(s47.class), null, null)));
    }

    public final FragmentUpridWebBinding e() {
        return (FragmentUpridWebBinding) this.c.getValue(this, g[0]);
    }

    public final void f(String str, Runnable runnable) {
        if (!isResumed() || this.d) {
            return;
        }
        this.d = true;
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        viewLifecycleOwner.getClass();
        av0.c(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new y89(this, str, runnable, null), 3);
    }

    public final void g(v89 v89Var) {
        getParentFragmentManager().setFragmentResult("UPRID_RESULT_KEY", BundleKt.bundleOf(new b36("UPRID_RESULT_KEY", v89Var)));
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        String str;
        view.getClass();
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        if (arguments == null || (str = arguments.getString("URL_KEY")) == null) {
            str = new String();
        }
        FragmentUpridWebBinding fragmentUpridWebBindingE = e();
        FrameLayout frameLayout = fragmentUpridWebBindingE.layoutRoot;
        frameLayout.getClass();
        le9.d(16, frameLayout);
        WebView webView = fragmentUpridWebBindingE.topWebView;
        webView.setBackgroundColor(0);
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setSupportZoom(true);
        settings.setDefaultTextEncodingName("utf-8");
        webView.addJavascriptInterface(new b(), "Android");
        webView.addJavascriptInterface(new c(), "AndroidShare");
        if (WebViewFeature.isFeatureSupported(WebViewFeature.DOCUMENT_START_SCRIPT)) {
            WebViewCompat.addDocumentStartJavaScript(webView, "(function() {\n            if (navigator.share) return;\n            navigator.share = function(data) {\n                AndroidShare.share((data && (data.url || data.text || data.title)) || '');\n                return Promise.resolve();\n            };\n        })()", h);
        } else {
            Log.w("UpridWebFullScreenDialog", "DOCUMENT_START_SCRIPT не поддерживается: кнопка «поделиться» работать не будет");
        }
        webView.setWebViewClient(new d(str, this.e.a()));
        webView.setWebChromeClient(new e());
        webView.loadUrl(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final UpridWebPresenter providePresenter() {
        boolean z = this instanceof og4;
        return new UpridWebPresenter((ca0) (z ? m2.c(ca0.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(ca0.class), null, null)), (zl2) (z ? m2.c(zl2.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(zl2.class), null, null)));
    }
}
