package defpackage;

import android.content.Intent;
import android.webkit.WebView;
import com.my.tracker.obfuscated.d;
import yads.ji0;
import yads.nm;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class w89 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ w89(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                WebView webView = (WebView) obj2;
                String str = (String) obj;
                if (webView != null) {
                    webView.loadUrl(str);
                }
                break;
            case 1:
                ((d) obj2).b((Intent) obj);
                break;
            default:
                ((nm) obj2).d((ji0) obj);
                break;
        }
    }
}
