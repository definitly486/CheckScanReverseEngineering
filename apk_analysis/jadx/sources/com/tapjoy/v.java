package com.tapjoy;

import android.app.Activity;
import android.webkit.WebView;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class v implements Runnable {
    public final WebView a;
    public final boolean b;
    public final boolean c;
    public final /* synthetic */ TJAdUnitJSBridge d;

    public v(TJAdUnitJSBridge tJAdUnitJSBridge, WebView webView, boolean z, boolean z2) {
        this.d = tJAdUnitJSBridge;
        this.a = webView;
        this.b = z;
        this.c = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!(this.d.b.getContext() instanceof Activity)) {
            TapjoyLog.e("Unable to present offerwall. No Activity context provided.");
            return;
        }
        boolean z = this.b;
        WebView webView = this.a;
        if (!z) {
            webView.setVisibility(4);
            if (this.a.getParent() instanceof RelativeLayout) {
                ((RelativeLayout) this.a.getParent()).getBackground().setAlpha(0);
                ((RelativeLayout) this.a.getParent()).setBackgroundColor(0);
                return;
            }
            return;
        }
        webView.setVisibility(0);
        boolean z2 = this.c;
        WebView webView2 = this.a;
        if (z2) {
            if (webView2.getParent() instanceof RelativeLayout) {
                ((RelativeLayout) this.a.getParent()).getBackground().setAlpha(0);
                ((RelativeLayout) this.a.getParent()).setBackgroundColor(0);
                return;
            }
            return;
        }
        if (webView2.getParent() instanceof RelativeLayout) {
            ((RelativeLayout) this.a.getParent()).getBackground().setAlpha(255);
            ((RelativeLayout) this.a.getParent()).setBackgroundColor(-1);
        }
        this.a.setLayerType(0, null);
    }
}
