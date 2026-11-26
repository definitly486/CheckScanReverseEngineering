package yads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ls4 extends qs implements fa3, tu4, hh6 {
    public static boolean j;
    public final Context b;
    public final ih6 c;
    public final uu4 d;
    public final nl5 e;
    public ha3 f;
    public ga3 g;
    public boolean h;
    public boolean i;

    public ls4(Context context, xj6 xj6Var, AttributeSet attributeSet, int i) {
        int i2;
        xj6Var = (i & 2) != 0 ? new xj6() : xj6Var;
        attributeSet = (i & 4) != 0 ? null : attributeSet;
        Context applicationContext = context.getApplicationContext();
        ih6 ih6Var = new ih6();
        uu4 uu4VarA = uu4.h.a(applicationContext);
        super(applicationContext, attributeSet);
        this.b = applicationContext;
        this.c = ih6Var;
        this.d = uu4VarA;
        this.e = new nl5();
        setBackgroundColor(0);
        setVisibility(4);
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        setScrollBarStyle(0);
        getSettings().setJavaScriptEnabled(true);
        getSettings().setSupportZoom(false);
        getSettings().setBuiltInZoomControls(false);
        getSettings().setTextZoom(100);
        getSettings().setMinimumFontSize(1);
        getSettings().setMinimumLogicalFontSize(1);
        WebSettings settings = getSettings();
        yg5.a();
        synchronized (zg5.k) {
        }
        int iOrdinal = xj6Var.a.ordinal();
        if (iOrdinal == 0) {
            i2 = -1;
        } else if (iOrdinal != 1) {
            i2 = 3;
            if (iOrdinal != 2) {
                if (iOrdinal != 3) {
                    defpackage.me0.e();
                    throw null;
                }
                i2 = 2;
            }
        } else {
            i2 = 1;
        }
        settings.setCacheMode(i2);
        WebSettings settings2 = getSettings();
        if (za.a(21)) {
            settings2.setMixedContentMode(2);
        }
        getSettings().setMediaPlaybackRequiresUserGesture(false);
        setWebViewClient(new ea3(this));
        setWebChromeClient(new aa3());
        if (j) {
            return;
        }
        j = true;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001a  */
    @Override // yads.tu4
    public final void a(ou4 ou4Var) {
        boolean z;
        if (ou4Var == ou4.SCREEN_OFF) {
            z = false;
        } else {
            this.c.getClass();
            if (ih6.a(this) && this.d.a()) {
                z = true;
            } else {
                z = false;
            }
        }
        a(z);
    }

    @Override // yads.qs
    public final String b() {
        return defpackage.bj.c("<style type='text/css'> \n  * { \n      -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; \n      -webkit-focus-ring-color: rgba(0, 0, 0, 0) !important; \n      outline: none !important; \n    } \n</style> \n", wj6.a());
    }

    @Override // yads.qs
    public final void c() {
        setHtmlWebViewListener(null);
        super.c();
    }

    public abstract void d();

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        ha3 ha3Var;
        if (motionEvent != null && motionEvent.getAction() == 0 && (ha3Var = this.f) != null) {
            ha3Var.a();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.i = true;
        this.d.a(this);
        this.c.getClass();
        a(ih6.a(this));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.i = false;
        this.c.getClass();
        a(ih6.a(this));
        this.d.b(this);
        super.onDetachedFromWindow();
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        this.c.getClass();
        a(ih6.a(this));
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.c.getClass();
        a(ih6.a(this));
    }

    public final void setHtmlWebViewErrorListener(ga3 ga3Var) {
        this.g = ga3Var;
    }

    public void setHtmlWebViewListener(ha3 ha3Var) {
        this.f = ha3Var;
    }

    @Override // yads.fa3
    public void a() {
        nl5 nl5Var = this.e;
        synchronized (nl5Var.a) {
            if (nl5Var.b) {
                return;
            }
            nl5Var.b = true;
            j59 j59Var = j59.a;
            a(this);
        }
    }

    public static final void a(ls4 ls4Var) {
        ls4Var.d();
    }

    @Override // yads.fa3
    public void a(int i) {
        ga3 ga3Var = this.g;
        if (ga3Var != null) {
            ga3Var.a(i);
        }
    }

    @Override // yads.fa3
    public void a(Context context, String str) {
        ha3 ha3Var = this.f;
        if (ha3Var != null) {
            ha3Var.a(str);
        }
    }

    public final void a(boolean z) {
        if (this.h != z) {
            this.h = z;
            ha3 ha3Var = this.f;
            if (ha3Var != null) {
                ha3Var.a(z);
            }
        }
    }
}
