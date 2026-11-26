package com.warefly.checkscan.presentation.electrocheque.view;

import android.os.Bundle;
import android.view.View;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Toast;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.LayoutWebviewBinding;
import com.warefly.checkscan.presentation.electrocheque.presenter.WebViewFragmentPresenter;
import com.warefly.checkscan.presentation.electrocheque.presenter.WebViewFragmentView;
import com.warefly.checkscan.presentation.electrocheque.view.WebViewFragment;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.c4;
import defpackage.e;
import defpackage.jf6;
import defpackage.m2;
import defpackage.n2;
import defpackage.ol4;
import defpackage.pg9;
import defpackage.qg9;
import defpackage.t65;
import defpackage.uf3;
import defpackage.uv2;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class WebViewFragment extends BaseFragment<LayoutWebviewBinding> implements WebViewFragmentView {
    public static final /* synthetic */ ze4<Object>[] h;
    public final int f = R.layout.layout_webview;
    public final ol4 g = new ol4(LayoutWebviewBinding.class);
    public WebViewFragmentPresenter presenter;

    static {
        bs6 bs6Var = new bs6(WebViewFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;", 0);
        x07.a.getClass();
        h = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.presentation.electrocheque.presenter.WebViewFragmentView
    public final void loadUrl(String str) {
        str.getClass();
        n().webviewContent.loadUrl(str);
    }

    public final LayoutWebviewBinding n() {
        return (LayoutWebviewBinding) this.g.getValue(this, h[0]);
    }

    public final WebViewFragmentPresenter o() {
        WebViewFragmentPresenter webViewFragmentPresenter = this.presenter;
        if (webViewFragmentPresenter != null) {
            return webViewFragmentPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        LayoutWebviewBinding layoutWebviewBindingN = n();
        layoutWebviewBindingN.tvLabel.setVisibility(0);
        layoutWebviewBindingN.ivLabel.setVisibility(8);
        layoutWebviewBindingN.btnInfo.setVisibility(4);
        layoutWebviewBindingN.btnShare.setVisibility(4);
        layoutWebviewBindingN.btnCloseWeb.setVisibility(4);
        layoutWebviewBindingN.btnBack.setOnClickListener(new t65(this, 1));
        WebView webView = n().webviewContent;
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setDomStorageEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setSupportZoom(true);
        settings.setDefaultTextEncodingName("utf-8");
        webView.setScrollBarStyle(GroupFlagsKt.HasAuxSlotFlag);
        settings.setSafeBrowsingEnabled(true);
        webView.setWebViewClient(new pg9(this));
        webView.setWebChromeClient(new qg9(this));
        o().getUrl();
    }

    public final WebViewFragmentPresenter providePresenter() {
        return new WebViewFragmentPresenter((uf3) n2.c(uf3.class, e.e(this), j(), null), (uv2) m2.c(uv2.class, e.e(this), null, null), (c4) m2.c(c4.class, e.e(this), null, null), (jf6) m2.c(jf6.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.electrocheque.presenter.WebViewFragmentView
    public final void showToastMessage(int i) {
        Toast.makeText(requireContext(), i, 1).show();
    }

    @Override // com.warefly.checkscan.presentation.electrocheque.presenter.WebViewFragmentView
    public final void workWithScript() {
        n().webviewContent.evaluateJavascript("localStorage.getItem(\"auth.token\")", new ValueCallback() { // from class: og9
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                String str = (String) obj;
                ze4<Object>[] ze4VarArr = WebViewFragment.h;
                if (aa4.e(str, "null")) {
                    return;
                }
                WebViewFragmentPresenter webViewFragmentPresenterO = this.a.o();
                str.getClass();
                webViewFragmentPresenterO.loadReceipts(ra8.y(str, "\"", ""));
            }
        });
    }

    @Override // com.warefly.checkscan.presentation.electrocheque.presenter.WebViewFragmentView
    public final void showToastMessage(String str) {
        str.getClass();
    }
}
