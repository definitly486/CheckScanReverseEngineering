package yads;

import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes6.dex */
public final class l50 implements da3 {
    public final da3[] a;

    public l50(da3... da3VarArr) {
        this.a = da3VarArr;
    }

    @Override // yads.da3
    public final WebResourceResponse a(WebView webView, WebResourceRequest webResourceRequest) {
        for (da3 da3Var : this.a) {
            WebResourceResponse webResourceResponseA = da3Var.a(webView, webResourceRequest);
            if (webResourceResponseA != null) {
                return webResourceResponseA;
            }
        }
        return null;
    }
}
