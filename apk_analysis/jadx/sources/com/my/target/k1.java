package com.my.target;

import android.content.Context;
import android.os.CountDownTimer;
import android.view.View;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.FrameLayout;
import defpackage.d6a;
import defpackage.gia;
import defpackage.j1a;
import defpackage.j4a;
import defpackage.kha;
import defpackage.n4a;
import defpackage.pp9;
import defpackage.rn9;
import defpackage.up9;
import defpackage.y14;
import defpackage.y8a;
import defpackage.yy9;
import defpackage.z94;
import defpackage.zn9;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
public final class k1 implements t1 {
    public final ra b;
    public final u0 c;
    public final j1a d;
    public final fk e;
    public c f;
    public k0 g;
    public n0 h;
    public int i = -1;
    public v j;

    public static final class b implements zf.a {
        public final k0 b;
        public final dg c;
        public final s1 d;

        public b(dg dgVar, k0 k0Var, s1 s1Var) {
            this.c = dgVar;
            this.b = k0Var;
            this.d = s1Var;
        }

        @Override // com.my.target.n.a
        public final void a(float f) {
            this.b.d(f > 0.0f);
        }

        @Override // com.my.target.n.a
        public final void b(String str) {
            this.b.j();
        }

        @Override // com.my.target.n.a
        public final void c() {
            this.b.g();
            b3.a aVar = ((u0) this.d).b;
            if (aVar != null) {
                ((z94.b) aVar).b();
            }
        }

        @Override // com.my.target.n.a
        public final void d(float f, float f2) {
            this.c.setTimeChanged(f);
            this.b.c(f, f2);
        }

        @Override // com.my.target.n.a
        public final void f() {
            this.b.i();
        }

        @Override // com.my.target.n.a
        public final void g() {
        }

        @Override // com.my.target.n.a
        public final void h() {
            this.b.l();
        }

        @Override // com.my.target.n.a
        public final void j() {
            this.b.k();
        }

        @Override // com.my.target.n.a
        public final void k() {
        }

        @Override // com.my.target.zf.a
        public final void l() {
        }

        @Override // com.my.target.zf.a
        public final void m() {
        }

        @Override // com.my.target.zf.a
        public final void n() {
        }

        @Override // com.my.target.n.a
        public final void o() {
            k0 k0Var = this.b;
            k0Var.e();
            if (k0Var.b()) {
                return;
            }
            e0 e0Var = k0Var.l;
            m1.e(e0Var.b, "playbackStopped", Collections.EMPTY_MAP, 1);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public final void onAudioFocusChange(int i) {
        }

        @Override // com.my.target.zf.a
        public final void q() {
        }

        @Override // com.my.target.n.a
        public final void s() {
        }
    }

    public static class c extends CountDownTimer {
        public final k1 a;
        public final int b;

        public c(int i, k1 k1Var) {
            super(((long) i) * 1000, 1000L);
            this.b = i;
            this.a = k1Var;
        }

        @Override // android.os.CountDownTimer
        public final void onFinish() {
            k1 k1Var = this.a;
            ra raVar = k1Var.b;
            int i = k1Var.i;
            if (i == 0) {
                raVar.e.setVisibility(8);
                raVar.g.setVisibility(0);
                return;
            }
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                raVar.e.setVisibility(8);
                raVar.g.setVisibility(8);
                raVar.h.setVisibility(0);
                return;
            }
            raVar.e.setVisibility(8);
            raVar.g.setVisibility(0);
            u0 u0Var = k1Var.c;
            if (u0Var.e) {
                return;
            }
            u0Var.e = true;
        }

        @Override // android.os.CountDownTimer
        public final void onTick(long j) {
            int i = (int) (j / 1000);
            int i2 = this.b - i;
            k1 k1Var = this.a;
            fk fkVar = k1Var.e;
            fkVar.setProgress(i2);
            fkVar.setDigit(i);
            k1Var.c.getClass();
        }
    }

    public k1(j1a j1aVar, u0 u0Var, defpackage.k2 k2Var, Context context) {
        int i;
        int i2;
        rn9 rn9Var;
        this.d = j1aVar;
        y8a y8aVar = j1aVar.a0;
        if (y8aVar == null || (rn9Var = y8aVar.g) == null) {
            i = 0;
            i2 = 0;
        } else {
            int i3 = rn9Var.b;
            i2 = rn9Var.c;
            i = i3;
        }
        ra raVar = new ra(this, this, new a(this, j1aVar.P), i, i2, context);
        this.b = raVar;
        this.e = raVar.getProgressView();
        this.c = u0Var;
        if (y8aVar != null) {
            kha khaVar = new kha(pp9.d);
            khaVar.h0 = y8aVar.g;
            khaVar.a.g((n4a) y8aVar.b, y8aVar.h);
            this.g = k0.a(khaVar, null, k2Var, context);
        }
    }

    public final void b(int i) {
        fk fkVar = this.e;
        fkVar.setMax(i);
        fkVar.h = 0.0f;
        c cVar = new c(i, this);
        this.f = cVar;
        cVar.start();
    }

    public final void c() {
        j1a j1aVar = this.d;
        this.c.g(j1aVar, j1aVar.G, 2, y14.j(j1aVar.Q.c ? new up9(64, new d6a()) : new gia()), this.b.getContext());
    }

    public final void d() {
        int i = this.i;
        if (i == 0 || i == -1) {
            ra raVar = this.b;
            raVar.getVideoView().getVideoPlayer().destroy();
            this.g = null;
            this.i = 1;
            oa interactiveView = raVar.getInteractiveView();
            j4a j4aVar = this.d.X;
            String str = j4aVar.d;
            String str2 = j4aVar.c;
            WebView webView = interactiveView.getWebView();
            if (str != null) {
                webView.loadUrl(str);
            } else {
                if (str2 == null) {
                    raVar.e.setVisibility(8);
                    raVar.g.setVisibility(0);
                    u0 u0Var = this.c;
                    if (u0Var.e) {
                        return;
                    }
                    u0Var.e = true;
                    return;
                }
                webView.loadDataWithBaseURL("https://ad.mail.ru/", str2, "text/html", "UTF-8", null);
            }
            int i2 = j4aVar.e;
            raVar.e.setVisibility(0);
            raVar.g.setVisibility(8);
            b(i2);
            FrameLayout frameLayout = raVar.i;
            qa qaVar = raVar.b;
            oa oaVar = raVar.c;
            if (oaVar.getParent() == null) {
                if (qaVar.getParent() != null) {
                    frameLayout.removeView(qaVar);
                }
                frameLayout.addView(oaVar, -1, -1);
            }
            n0 n0VarA = n0.a((n4a) j4aVar.b, null);
            this.h = n0VarA;
            n0VarA.b(raVar.getInteractiveView());
            this.h.c();
        }
    }

    @Override // com.my.target.t1
    public final void destroy() {
        c cVar = this.f;
        if (cVar != null) {
            cVar.cancel();
            this.f = null;
        }
    }

    @Override // com.my.target.t1
    public final View getCloseButton() {
        return null;
    }

    @Override // com.my.target.t1
    public final View i() {
        return this.b;
    }

    @Override // com.my.target.t1
    public final void pause() {
        n videoPlayer = this.b.getVideoView().getVideoPlayer();
        if (videoPlayer.isPlaying()) {
            videoPlayer.pause();
            k0 k0Var = this.g;
            if (k0Var != null) {
                k0Var.i();
            }
        }
    }

    @Override // com.my.target.t1
    public final void resume() {
        n videoPlayer = this.b.getVideoView().getVideoPlayer();
        if (videoPlayer.b()) {
            videoPlayer.resume();
            k0 k0Var = this.g;
            if (k0Var != null) {
                k0Var.l();
            }
        }
    }

    @Override // com.my.target.t1
    public final void stop() {
    }

    public static final class a extends yy9 {
        public final k1 a;
        public final zn9 b;

        public a(k1 k1Var, zn9 zn9Var) {
            this.a = k1Var;
            this.b = zn9Var;
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            k1 k1Var = this.a;
            ra raVar = k1Var.b;
            raVar.e.setVisibility(8);
            raVar.g.setVisibility(0);
            u0 u0Var = k1Var.c;
            if (u0Var.e) {
                return;
            }
            u0Var.e = true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (!this.b.a) {
                return super.shouldOverrideUrlLoading(webView, str);
            }
            this.a.c();
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (this.b.a) {
                this.a.c();
                return true;
            }
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }
    }
}
