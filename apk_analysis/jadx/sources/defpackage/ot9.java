package defpackage;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.my.target.dl;

/* JADX INFO: loaded from: classes4.dex */
public final class ot9 extends WebChromeClient {
    public final /* synthetic */ dl a;

    public ot9(dl dlVar) {
        this.a = dlVar;
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i) {
        dl dlVar = this.a;
        if (i < 100 && dlVar.m.getVisibility() == 8) {
            dlVar.m.setVisibility(0);
            dlVar.h.setVisibility(8);
        }
        dlVar.m.setProgress(i);
        if (i >= 100) {
            dlVar.m.setVisibility(8);
            dlVar.h.setVisibility(0);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onReceivedTitle(WebView webView, String str) {
        super.onReceivedTitle(webView, str);
        dl dlVar = this.a;
        dlVar.f.setText(webView.getTitle());
        dlVar.f.setVisibility(0);
    }
}
