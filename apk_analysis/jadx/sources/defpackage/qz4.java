package defpackage;

import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import com.warefly.checkscan.presentation.balance.managementAlfa.ManagementAlfaFullScreenDialog;
import javax.net.ssl.TrustManagerFactory;

/* JADX INFO: loaded from: classes5.dex */
public final class qz4 extends fn2 {
    public final /* synthetic */ String b;
    public final /* synthetic */ ManagementAlfaFullScreenDialog c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qz4(String str, ManagementAlfaFullScreenDialog managementAlfaFullScreenDialog, TrustManagerFactory trustManagerFactory) {
        super(trustManagerFactory);
        this.b = str;
        this.c = managementAlfaFullScreenDialog;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        if (webView != null) {
            webView.loadUrl("javascript:(function backClick() {\n                        var btns = document.getElementsByClassName('button__text_1tapq button__stretchText_1tapq');\n                        for (var i = 0, n = btns.length; i < n; i++) {\n                            btns[i].setAttribute('onClick', 'Android.onClick()');\n                            }\n                        })() ");
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        webResourceRequest.getClass();
        String string = webResourceRequest.getUrl().toString();
        int iHashCode = string.hashCode();
        if (iHashCode != -1136831122) {
            if (iHashCode == 1330741027 && string.equals("https://checkscan.org/")) {
                this.c.dismiss();
                return true;
            }
        } else if (string.equals("https://tryagain.checkscan.org/")) {
            if (webView != null) {
                webView.loadUrl(this.b);
            }
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }
}
