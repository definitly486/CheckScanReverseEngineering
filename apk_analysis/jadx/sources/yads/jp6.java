package yads;

import android.os.Handler;
import android.text.TextUtils;
import android.webkit.WebView;
import java.util.Collections;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class jp6 extends s9 {
    public WebView g;
    public Long h;
    public final Map i;
    public final String j;

    public jp6(String str, String str2, Map map) {
        super(str);
        this.h = null;
        this.i = map;
        this.j = str2;
    }

    @Override // yads.s9
    public final void a(dp6 dp6Var, q9 q9Var) {
        JSONObject jSONObject = new JSONObject();
        Map mapUnmodifiableMap = Collections.unmodifiableMap(q9Var.c);
        for (String str : mapUnmodifiableMap.keySet()) {
            h96 h96Var = (h96) mapUnmodifiableMap.get(str);
            h96Var.getClass();
            JSONObject jSONObject2 = new JSONObject();
            rp6.a(jSONObject2, "vendorKey", h96Var.a);
            rp6.a(jSONObject2, "resourceUrl", h96Var.b.toString());
            rp6.a(jSONObject2, "verificationParameters", h96Var.c);
            rp6.a(jSONObject, str, jSONObject2);
        }
        a(dp6Var, q9Var, jSONObject);
    }

    @Override // yads.s9
    public final void b() {
        WebView webView = new WebView(kq6.b.a);
        this.g = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.g.getSettings().setAllowContentAccess(false);
        this.g.getSettings().setAllowFileAccess(false);
        this.g.setWebViewClient(new ep6(this));
        this.b = new np6(this.g);
        nq6.a(this.g, this.j);
        for (String str : this.i.keySet()) {
            String externalForm = ((h96) this.i.get(str)).b.toExternalForm();
            WebView webView2 = this.g;
            if (externalForm != null && !TextUtils.isEmpty(str)) {
                nq6.a(webView2, "(function() {this.omidVerificationProperties = this.omidVerificationProperties || {};Object.defineProperty(this.omidVerificationProperties, 'injectionId', {get: function() {var currentScript = document && document.currentScript;return currentScript && currentScript.getAttribute('data-injection-id');}, configurable: true});var script = document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");script.setAttribute(\"data-injection-id\",\"%INJECTION_ID%\");document.body.appendChild(script);})();".replace("%SCRIPT_SRC%", externalForm).replace("%INJECTION_ID%", str));
            }
        }
        this.h = Long.valueOf(System.nanoTime());
    }

    @Override // yads.s9
    public final void a() {
        this.b.clear();
        new Handler().postDelayed(new fp6(this), Math.max(4000 - (this.h == null ? 4000L : (System.nanoTime() - this.h.longValue()) / 1000000), 2000L));
        this.g = null;
    }
}
