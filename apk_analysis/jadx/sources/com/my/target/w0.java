package com.my.target;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.my.target.a2.b;
import com.my.target.a2.c;
import com.my.tracker.ads.AdFormat;
import com.tapjoy.TJAdUnitConstants;
import defpackage.a3a;
import defpackage.bn9;
import defpackage.d6a;
import defpackage.d9a;
import defpackage.ex0;
import defpackage.gia;
import defpackage.jfa;
import defpackage.l3a;
import defpackage.oha;
import defpackage.pfa;
import defpackage.up9;
import defpackage.w4a;
import defpackage.wv9;
import defpackage.y14;
import defpackage.zi4;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class w0 implements g1 {
    public final d9a b;
    public final bn9 c;
    public final d3 d;
    public final oha e;
    public final a2 f;
    public final WeakReference g;
    public final Context h;
    public final m i;
    public String j;
    public Integer k;
    public v l;
    public yc m;
    public g1.a n;
    public wv9 o;
    public boolean p;
    public long q;
    public long r;
    public boolean s;
    public boolean t;
    public jfa u;

    public w0(Context context) {
        a2 a2Var = new a2();
        d3 d3Var = new d3(context);
        this.b = new d9a(200, w4a.g);
        this.c = new bn9(this, 1);
        this.t = true;
        this.u = new jfa();
        this.f = a2Var;
        this.h = context.getApplicationContext();
        this.d = d3Var;
        if (context instanceof Activity) {
            this.g = new WeakReference((Activity) context);
        } else {
            this.g = new WeakReference(null);
        }
        this.j = "loading";
        this.e = new oha();
        d3Var.setOnCloseListener(new zi4(this, 5));
        this.i = new m(context);
        a2Var.c = this;
    }

    @Override // com.my.target.g1
    public final void a(int i) {
        yc ycVar;
        this.b.e(this.c);
        if (!this.p) {
            this.p = true;
            if (i <= 0 && (ycVar = this.m) != null) {
                ycVar.d(true);
            }
        }
        d3 d3Var = this.d;
        ViewParent parent = d3Var.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(d3Var);
        }
        this.f.d = null;
        yc ycVar2 = this.m;
        if (ycVar2 != null) {
            ycVar2.a(i);
            this.m = null;
        }
        d3Var.removeAllViews();
    }

    public final void b(Uri uri) {
        wv9 wv9Var = this.o;
        pfa giaVar = (wv9Var == null || !wv9Var.Q.c) ? new gia() : new up9(0, new d6a());
        g1.a aVar = this.n;
        if (aVar != null) {
            aVar.g(this.o, uri.toString(), 1, y14.j(giaVar), this.d.getContext());
        }
    }

    public final boolean c(jfa jfaVar) {
        if (!"none".equals(jfaVar.b)) {
            Activity activity = (Activity) this.g.get();
            if (activity != null) {
                try {
                    ActivityInfo activityInfo = activity.getPackageManager().getActivityInfo(new ComponentName(activity, activity.getClass()), 0);
                    int i = activityInfo.screenOrientation;
                    if (i == -1) {
                        int i2 = activityInfo.configChanges;
                        if ((i2 & 128) != 0 && (i2 & 1024) != 0) {
                            return true;
                        }
                    } else if (i == jfaVar.a) {
                    }
                } catch (Throwable unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean d(int i) {
        Activity activity = (Activity) this.g.get();
        if (activity == null || !c(this.u)) {
            this.f.d("setOrientationProperties", "Attempted to lock orientation to unsupported value: ".concat(this.u.b));
            return false;
        }
        if (this.k == null) {
            this.k = Integer.valueOf(activity.getRequestedOrientation());
        }
        activity.setRequestedOrientation(i);
        return true;
    }

    @Override // com.my.target.t1
    public final void destroy() {
        a(0);
    }

    @Override // com.my.target.g1
    public final void e(g1.a aVar) {
        this.n = aVar;
    }

    @Override // com.my.target.g1
    public final void f(wv9 wv9Var) {
        this.o = wv9Var;
        long j = (long) (wv9Var.S * 1000.0f);
        this.q = j;
        d3 d3Var = this.d;
        if (j > 0) {
            y14.r(null, "InterstitialHtmlPresenter: Banner will be allowed to close in " + wv9Var.S + " seconds");
            this.q = (long) (wv9Var.S * 1000.0f);
            this.b.b(this.c);
            this.r = System.currentTimeMillis();
            g1.a aVar = this.n;
            if (aVar != null) {
                aVar.a(false);
            }
        } else {
            y14.r(null, "InterstitialMraidPresenter: Banner is allowed to close");
            d3Var.setCloseVisible(true);
        }
        String str = wv9Var.X;
        Context context = this.h;
        if (str != null) {
            yc ycVar = new yc(context);
            this.m = ycVar;
            a2 a2Var = this.f;
            a2Var.d = ycVar;
            WebSettings settings = ycVar.getSettings();
            if (settings != null) {
                settings.setJavaScriptEnabled(true);
                if (AdFormat.INTERSTITIAL.equals(a2Var.a)) {
                    settings.setMediaPlaybackRequiresUserGesture(false);
                }
            }
            a2Var.d.setScrollContainer(false);
            a2Var.d.setVerticalScrollBarEnabled(false);
            a2Var.d.setHorizontalScrollBarEnabled(false);
            a2Var.d.setWebViewClient(a2Var.b);
            a2Var.d.setWebChromeClient(a2Var.new b());
            a2Var.d.setVisibilityChangedListener(a2Var.new c());
            d3Var.addView(this.m, new FrameLayout.LayoutParams(-1, -1));
            yc ycVar2 = a2Var.d;
            if (ycVar2 == null) {
                y14.r(null, "MraidBridge: MRAID bridge called setContentHtml before WebView was attached");
            } else {
                a2Var.e = false;
                WebView webView = ycVar2.b;
                if (webView != null) {
                    try {
                        webView.loadDataWithBaseURL("https://ad.mail.ru/", str, "text/html", "UTF-8", null);
                    } catch (Throwable th) {
                        h1.c(th);
                    }
                }
            }
        }
        q qVar = wv9Var.H;
        m mVar = this.i;
        if (qVar == null) {
            mVar.setVisibility(8);
            return;
        }
        if (mVar.getParent() != null) {
            return;
        }
        int iD = l3a.d(10, context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(iD, iD, iD, iD);
        d3Var.addView(mVar, layoutParams);
        mVar.setImageBitmap((Bitmap) qVar.a.d);
        mVar.setOnClickListener(new a3a(this));
        if (qVar.c == null) {
            return;
        }
        v vVar = new v(qVar, new ex0());
        this.l = vVar;
        vVar.c = new v0(this, wv9Var);
    }

    public final void g(String str) {
        wv9 wv9Var;
        y14.r(null, "InterstitialMraidPresenter: MRAID state set to ".concat(str));
        this.j = str;
        a2 a2Var = this.f;
        a2Var.getClass();
        a2Var.c("mraidbridge.setState(" + JSONObject.quote(str) + ")");
        if (TJAdUnitConstants.String.HIDDEN.equals(str)) {
            y14.r(null, "InterstitialMraidPresenter: Mraid on close");
            g1.a aVar = this.n;
            if (aVar == null || (wv9Var = this.o) == null) {
                return;
            }
            aVar.e(wv9Var);
        }
    }

    @Override // com.my.target.t1
    public final View getCloseButton() {
        return null;
    }

    public final void h() {
        Integer num;
        if (this.m == null || "loading".equals(this.j) || TJAdUnitConstants.String.HIDDEN.equals(this.j)) {
            return;
        }
        Activity activity = (Activity) this.g.get();
        if (activity != null && (num = this.k) != null) {
            activity.setRequestedOrientation(num.intValue());
        }
        this.k = null;
        if ("default".equals(this.j)) {
            this.d.setVisibility(4);
            g(TJAdUnitConstants.String.HIDDEN);
        }
    }

    @Override // com.my.target.t1
    public final View i() {
        return this.d;
    }

    public final void j() {
        DisplayMetrics displayMetrics = this.h.getResources().getDisplayMetrics();
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        oha ohaVar = this.e;
        Rect rect = ohaVar.a;
        rect.set(0, 0, i, i2);
        oha.a(rect, ohaVar.b);
        int i3 = displayMetrics.widthPixels;
        int i4 = displayMetrics.heightPixels;
        Rect rect2 = ohaVar.e;
        rect2.set(0, 0, i3, i4);
        oha.a(rect2, ohaVar.f);
        int i5 = displayMetrics.widthPixels;
        int i6 = displayMetrics.heightPixels;
        Rect rect3 = ohaVar.c;
        rect3.set(0, 0, i5, i6);
        oha.a(rect3, ohaVar.d);
        int i7 = displayMetrics.widthPixels;
        int i8 = displayMetrics.heightPixels;
        Rect rect4 = ohaVar.g;
        rect4.set(0, 0, i7, i8);
        oha.a(rect4, ohaVar.h);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0028  */
    @Override // com.my.target.t1
    public final void pause() {
        this.p = true;
        yc ycVar = this.m;
        if (ycVar != null) {
            ycVar.d(false);
        }
        if (this.r > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.r;
            if (jCurrentTimeMillis > 0) {
                long j = this.q;
                if (jCurrentTimeMillis < j) {
                    this.q = j - jCurrentTimeMillis;
                } else {
                    this.q = 0L;
                }
            } else {
                this.q = 0L;
            }
        }
        this.b.e(this.c);
    }

    @Override // com.my.target.t1
    public final void resume() {
        WebView webView;
        this.p = false;
        yc ycVar = this.m;
        if (ycVar != null && (webView = ycVar.b) != null) {
            try {
                webView.onResume();
            } catch (Throwable th) {
                h1.c(th);
            }
        }
        if (this.q > 0) {
            this.b.b(this.c);
            this.r = System.currentTimeMillis();
            g1.a aVar = this.n;
            if (aVar != null) {
                aVar.a(false);
            }
        }
    }

    @Override // com.my.target.t1
    public final void stop() {
        this.p = true;
        yc ycVar = this.m;
        if (ycVar != null) {
            ycVar.d(false);
        }
    }
}
