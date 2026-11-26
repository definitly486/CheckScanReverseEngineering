package defpackage;

import android.webkit.JavascriptInterface;
import com.my.target.e;

/* JADX INFO: loaded from: classes4.dex */
public final class lga {
    public final e.a a;

    public lga(e.a aVar) {
        this.a = aVar;
    }

    @JavascriptInterface
    public void VKWebAppClose(String str) {
        w4a.c(new al(this.a, 4));
    }

    @JavascriptInterface
    public void VKWebAppCopyText(String str) {
        w4a.c(new y11(1, this, str));
    }

    @JavascriptInterface
    public void VKWebAppGetCustomSdkUserInfo(String str) {
        w4a.c(new iq2(this, str));
    }

    @JavascriptInterface
    public void VKWebAppInit(String str) {
        y14.r("WebFormBridgeHandler", "App has been initialized");
    }

    @JavascriptInterface
    public void VKWebAppSetViewSettings(String str) {
        w4a.c(new bs4(this, str));
    }
}
