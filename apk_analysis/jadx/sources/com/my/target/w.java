package com.my.target;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.core.view.GravityCompat;
import com.my.target.q;
import com.my.target.v;
import com.my.target.w;
import defpackage.al;
import defpackage.d6a;
import defpackage.d9a;
import defpackage.ex0;
import defpackage.gia;
import defpackage.h14;
import defpackage.kv9;
import defpackage.l3a;
import defpackage.m89;
import defpackage.pfa;
import defpackage.rk3;
import defpackage.up9;
import defpackage.w4a;
import defpackage.wv9;
import defpackage.y14;

/* JADX INFO: loaded from: classes4.dex */
public final class w implements e1.a, g1 {
    public final e1 d;
    public final f6 e;
    public final FrameLayout f;
    public final m h;
    public b i;
    public g1.a j;
    public long k;
    public long l;
    public wv9 m;
    public long n;
    public long o;
    public v p;
    public final d9a b = new d9a(200, w4a.g);
    public final al c = new al(this, 2);
    public final Handler g = new Handler(Looper.getMainLooper());

    public static class a implements View.OnClickListener {
        public final w b;

        public a(w wVar) {
            this.b = wVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            w wVar = this.b;
            g1.a aVar = wVar.j;
            wv9 wv9Var = wVar.m;
            if (aVar == null || wv9Var == null) {
                return;
            }
            aVar.e(wv9Var);
        }
    }

    public static class b implements Runnable {
        public final w b;

        public b(w wVar) {
            this.b = wVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            g1.a aVar = this.b.j;
            if (aVar != null) {
                aVar.e();
            }
        }
    }

    public w(Context context) {
        e1 e1Var = new e1(context);
        this.d = e1Var;
        f6 f6Var = new f6(context);
        this.e = f6Var;
        FrameLayout frameLayout = new FrameLayout(context);
        this.f = frameLayout;
        f6Var.setContentDescription("Close");
        l3a.n(f6Var, "close_button");
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = GravityCompat.END;
        f6Var.setVisibility(8);
        f6Var.setLayoutParams(layoutParams);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 1;
        e1Var.setLayoutParams(layoutParams2);
        frameLayout.addView(e1Var);
        if (f6Var.getParent() == null) {
            frameLayout.addView(f6Var);
        }
        Bitmap bitmapA = kv9.a((int) rk3.b(context, 1, 28.0f));
        if (bitmapA != null) {
            f6Var.a(bitmapA, false);
        }
        m mVar = new m(context);
        this.h = mVar;
        int iD = l3a.d(10, context);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.setMargins(iD, iD, iD, iD);
        frameLayout.addView(mVar, layoutParams3);
    }

    @Override // com.my.target.g1
    public final void a(int i) {
        e1 e1Var = this.d;
        WebView webView = e1Var.getWebView();
        if (webView != null) {
            webView.evaluateJavascript("window.playerDestroy && window.playerDestroy();", null);
        }
        this.f.removeView(e1Var);
        e1Var.a(i);
    }

    @Override // com.my.target.e1.a
    public final void b(String str) {
        wv9 wv9Var = this.m;
        pfa giaVar = (wv9Var == null || !wv9Var.Q.c) ? new gia() : new up9(0, new d6a());
        g1.a aVar = this.j;
        if (aVar != null) {
            aVar.g(this.m, str, 1, y14.j(giaVar), this.f.getContext());
        }
    }

    @Override // com.my.target.e1.a
    public final void c(WebView webView) {
        g1.a aVar = this.j;
        if (aVar != null) {
            aVar.c(webView);
        }
    }

    @Override // com.my.target.t1
    public final void destroy() {
        a(0);
    }

    @Override // com.my.target.g1
    public final void e(g1.a aVar) {
        this.j = aVar;
    }

    @Override // com.my.target.g1
    public final void f(wv9 wv9Var) {
        this.m = wv9Var;
        e1 e1Var = this.d;
        e1Var.setBannerWebViewListener(this);
        String str = wv9Var.X;
        al alVar = this.c;
        d9a d9aVar = this.b;
        if (str == null) {
            g1.a aVar = this.j;
            if (aVar != null) {
                aVar.m();
                g1.a aVar2 = this.j;
                if (aVar2 != null) {
                    aVar2.a(true);
                    d9aVar.e(alVar);
                    return;
                }
                return;
            }
            return;
        }
        e1Var.setData(str);
        e1Var.setForceMediaPlayback(wv9Var.Z);
        h14 h14Var = wv9Var.R;
        f6 f6Var = this.e;
        if (h14Var != null) {
            f6Var.a((Bitmap) h14Var.d, false);
        }
        f6Var.setOnClickListener(new a(this));
        if (wv9Var.S > 0.0f) {
            y14.r(null, "InterstitialHtmlPresenter: Banner will be allowed to close in " + wv9Var.S + " seconds");
            this.l = (long) (wv9Var.S * 1000.0f);
            d9aVar.b(alVar);
            this.k = System.currentTimeMillis();
            g1.a aVar3 = this.j;
            if (aVar3 != null) {
                aVar3.a(false);
            }
        } else {
            y14.r(null, "InterstitialHtmlPresenter: Banner is allowed to close");
            f6Var.setVisibility(0);
        }
        float f = wv9Var.Y;
        if (f > 0.0f) {
            b bVar = new b(this);
            this.i = bVar;
            long j = ((long) f) * 1000;
            this.o = j;
            Handler handler = this.g;
            handler.removeCallbacks(bVar);
            this.n = System.currentTimeMillis();
            handler.postDelayed(this.i, j);
        }
        q qVar = wv9Var.H;
        m mVar = this.h;
        if (qVar == null) {
            mVar.setVisibility(8);
        } else {
            mVar.setImageBitmap((Bitmap) qVar.a.d);
            mVar.setOnClickListener(new View.OnClickListener() { // from class: cv9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    q qVar2;
                    w wVar = this.b;
                    wv9 wv9Var2 = wVar.m;
                    if (wv9Var2 == null || (qVar2 = wv9Var2.H) == null) {
                        return;
                    }
                    v vVar = wVar.p;
                    if (vVar == null || !vVar.d()) {
                        Context context = wVar.f.getContext();
                        if (vVar == null) {
                            y14.n(context, qVar2.b, null, null, null);
                        } else {
                            vVar.c(context);
                        }
                    }
                }
            });
            if (qVar.c != null) {
                v vVar = new v(qVar, new ex0());
                this.p = vVar;
                vVar.c = new m89(this, wv9Var);
            }
        }
        g1.a aVar4 = this.j;
        if (aVar4 != null) {
            aVar4.o(wv9Var, this.f);
        }
    }

    @Override // com.my.target.t1
    public final View getCloseButton() {
        return this.e;
    }

    @Override // com.my.target.t1
    public final View i() {
        return this.f;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003a  */
    /* JADX WARN: Code duplicated, block: B:9:0x001d  */
    @Override // com.my.target.t1
    public final void pause() {
        if (this.k > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.k;
            if (jCurrentTimeMillis > 0) {
                long j = this.l;
                if (jCurrentTimeMillis < j) {
                    this.l = j - jCurrentTimeMillis;
                } else {
                    this.l = 0L;
                }
            } else {
                this.l = 0L;
            }
        }
        if (this.n > 0) {
            long jCurrentTimeMillis2 = System.currentTimeMillis() - this.n;
            if (jCurrentTimeMillis2 > 0) {
                long j2 = this.o;
                if (jCurrentTimeMillis2 < j2) {
                    this.o = j2 - jCurrentTimeMillis2;
                } else {
                    this.o = 0L;
                }
            } else {
                this.o = 0L;
            }
        }
        b bVar = this.i;
        if (bVar != null) {
            this.g.removeCallbacks(bVar);
        }
        this.b.e(this.c);
    }

    @Override // com.my.target.t1
    public final void resume() {
        b bVar;
        if (this.l > 0) {
            this.b.b(this.c);
            this.k = System.currentTimeMillis();
            g1.a aVar = this.j;
            if (aVar != null) {
                aVar.a(false);
            }
        }
        long j = this.o;
        if (j <= 0 || (bVar = this.i) == null) {
            return;
        }
        Handler handler = this.g;
        handler.removeCallbacks(bVar);
        this.n = System.currentTimeMillis();
        handler.postDelayed(this.i, j);
    }

    @Override // com.my.target.t1
    public final void stop() {
    }

    @Override // com.my.target.e1.a
    public final void a() {
        g1.a aVar = this.j;
        if (aVar == null) {
            return;
        }
        aVar.a();
    }

    @Override // com.my.target.e1.a
    public final void a(String str) {
        g1.a aVar = this.j;
        if (aVar != null) {
            aVar.m();
            g1.a aVar2 = this.j;
            if (aVar2 != null) {
                aVar2.a(true);
                this.b.e(this.c);
            }
        }
    }
}
