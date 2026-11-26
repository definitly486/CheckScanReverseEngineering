package defpackage;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.my.target.dl;

/* JADX INFO: loaded from: classes4.dex */
public final class nt9 extends WebViewClient {
    public final /* synthetic */ dl a;

    public nt9(dl dlVar) {
        this.a = dlVar;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        webView.loadUrl(str);
        this.a.e.setText(dl.a(str));
        return true;
    }
}
