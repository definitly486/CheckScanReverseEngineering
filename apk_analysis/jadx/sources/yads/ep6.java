package yads;

import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: loaded from: classes6.dex */
public final class ep6 extends WebViewClient {
    public final /* synthetic */ jp6 a;

    public ep6(jp6 jp6Var) {
        this.a = jp6Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        Log.w("NativeBridge", "WebView renderer gone: " + renderProcessGoneDetail.toString() + "for WebView: " + webView);
        if (((WebView) this.a.b.get()) == webView) {
            Log.w("NativeBridge", "Deallocating the Native bridge as it is unusable. No further events will be generated for this session.");
            jp6 jp6Var = this.a;
            jp6Var.getClass();
            jp6Var.b = new np6(null);
        }
        webView.destroy();
        return true;
    }
}
