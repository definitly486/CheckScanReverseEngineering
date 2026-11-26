package yads;

import android.net.Uri;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.ByteArrayInputStream;

/* JADX INFO: loaded from: classes6.dex */
public final class fd5 implements da3 {
    public final String a;
    public final gd5 b;

    public fd5(String str, gd5 gd5Var) {
        this.a = str;
        this.b = gd5Var;
    }

    @Override // yads.da3
    public final WebResourceResponse a(WebView webView, WebResourceRequest webResourceRequest) {
        String strA;
        Uri url = webResourceRequest.getUrl();
        if (!defpackage.aa4.e(url != null ? url.getLastPathSegment() : null, this.a) || (strA = this.b.a()) == null || strA.length() == 0) {
            return null;
        }
        byte[] bytes = strA.getBytes(defpackage.ha1.b);
        bytes.getClass();
        return new WebResourceResponse("text/javascript", "UTF-8", new ByteArrayInputStream(bytes));
    }
}
