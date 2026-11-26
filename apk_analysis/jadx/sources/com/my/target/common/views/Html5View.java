package com.my.target.common.views;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.my.target.e1;
import defpackage.lx3;
import defpackage.mx3;
import defpackage.nx3;
import defpackage.ox3;
import defpackage.px3;
import defpackage.tx3;
import defpackage.vt9;
import defpackage.w4a;
import defpackage.wx3;
import defpackage.xx3;
import defpackage.yx3;

/* JADX INFO: loaded from: classes4.dex */
public final class Html5View extends FrameLayout {
    public final e1 b;
    public final e c;
    public final c d;
    public int e;

    public static abstract class a {
    }

    public static final class b implements e1.a {
        @Override // com.my.target.e1.a
        public final void a() {
        }

        @Override // com.my.target.e1.a
        public final void a(String str) {
        }

        @Override // com.my.target.e1.a
        public final void b(String str) {
            throw null;
        }

        @Override // com.my.target.e1.a
        public final void c(WebView webView) {
        }
    }

    public final class c {
        public c() {
        }

        @JavascriptInterface
        public void onCTAClicked() {
            w4a.c(new nx3(this));
        }

        @JavascriptInterface
        public void onCustomEvent(String str, String str2) {
            w4a.c(new mx3());
        }

        @JavascriptInterface
        public void onInteractiveFailedToLoad(String str) {
            Html5View html5View = Html5View.this;
            if (html5View.b.getWebView() == null || html5View.e == 3) {
                return;
            }
            html5View.e = 3;
            w4a.c(new lx3());
        }

        @JavascriptInterface
        public void onInteractiveFinished() {
            w4a.c(new nx3(this));
        }

        @JavascriptInterface
        public void onInteractiveLoaded() {
            Html5View html5View = Html5View.this;
            if (html5View.b.getWebView() == null || html5View.e == 3) {
                return;
            }
            html5View.e = 2;
            w4a.c(new ox3());
        }

        @JavascriptInterface
        public void onInteractiveStarted() {
            w4a.c(new nx3(this));
        }
    }

    public static final class d implements e1.e {
    }

    public static class e {
        public final Handler a = w4a.g;
        public final px3 b = new px3();
    }

    public final class f implements e1.g {
        public f() {
        }
    }

    public final class g implements e1.h {
        public g(e eVar) {
        }
    }

    public Html5View(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
        c cVar = new c();
        this.d = cVar;
        this.e = 0;
        e1 e1Var = new e1(context);
        this.b = e1Var;
        this.c = new e();
        WebView webView = e1Var.getWebView();
        if (webView != null) {
            webView.setOnLongClickListener(new vt9());
        }
        WebView webView2 = e1Var.b;
        if (webView2 != null) {
            webView2.addJavascriptInterface(cVar, "myTargetPlayableAds");
        }
        addView(e1Var, new ViewGroup.LayoutParams(-1, -1));
    }

    public boolean getIsLoaded() {
        return this.e == 2;
    }

    public void setData(String str) {
        e eVar = this.c;
        eVar.a.removeCallbacks(eVar.b);
        this.e = 0;
        this.b.setData(str);
    }

    public void setHtmlCustomEventListener(tx3 tx3Var) {
        this.d.getClass();
    }

    public void setHtmlInteractionListener(wx3 wx3Var) {
        this.b.setUserMotionEventListener(new d());
    }

    public void setHtmlInteractiveProgressListener(xx3 xx3Var) {
        this.d.getClass();
    }

    public void setHtmlLoadingListener(yx3 yx3Var) {
        g gVar = new g(this.c);
        e1 e1Var = this.b;
        e1Var.setWebViewLoadingStartListener(gVar);
        e1Var.setWebViewLoadingErrorListener(new f());
        this.d.getClass();
    }

    public void setLoadingTimeoutMillis(long j) {
        e eVar = this.c;
        if (j > 0) {
            eVar.getClass();
        } else {
            eVar.getClass();
        }
    }

    public void setWebViewBackgroundColor(int i) {
        this.b.setWebViewBackgroundColor(i);
    }

    public void setWebViewClickListener(a aVar) {
        this.b.setBannerWebViewListener(new b());
        this.d.getClass();
    }

    public Html5View(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Html5View(Context context) {
        this(context, null);
    }
}
