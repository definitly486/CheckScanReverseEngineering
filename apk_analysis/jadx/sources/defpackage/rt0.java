package defpackage;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.brandlink.presenter.BrandlinkPresenter;
import com.warefly.checkscan.presentation.brandlink.view.BrandlinkFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class rt0 extends WebViewClient {
    public final /* synthetic */ BrandlinkFragment a;

    public rt0(BrandlinkFragment brandlinkFragment) {
        this.a = brandlinkFragment;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Object aVar;
        View view;
        Uri url;
        BrandlinkFragment brandlinkFragment = this.a;
        if (!brandlinkFragment.isResumed()) {
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }
        String scheme = (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null) ? null : url.getScheme();
        if (aa4.e(scheme, brandlinkFragment.getString(R.string.deeplink_scheme))) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(webResourceRequest.getUrl());
            if (intent.resolveActivity(brandlinkFragment.requireContext().getPackageManager()) != null) {
                brandlinkFragment.startActivity(intent);
                return true;
            }
        } else {
            if (!aa4.e(scheme, "mailto")) {
                if (!aa4.e(scheme, "tg")) {
                    return super.shouldOverrideUrlLoading(webView, webResourceRequest);
                }
                BrandlinkPresenter brandlinkPresenter = brandlinkFragment.presenter;
                if (brandlinkPresenter == null) {
                    aa4.j("presenter");
                    throw null;
                }
                Uri url2 = webResourceRequest.getUrl();
                url2.getClass();
                return brandlinkPresenter.startTelegram(url2);
            }
            Uri url3 = webResourceRequest.getUrl();
            url3.getClass();
            try {
                brandlinkFragment.startActivity(new Intent("android.intent.action.VIEW", url3));
                aVar = j59.a;
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (k57.a(aVar) != null && (view = brandlinkFragment.getView()) != null) {
                oz1.i(R.string.mail_not_opened_message, view);
            }
        }
        return true;
    }
}
