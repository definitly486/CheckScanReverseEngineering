package com.my.target;

import android.content.Context;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackException;
import defpackage.ah;
import defpackage.c21;
import defpackage.c9a;
import defpackage.fp;
import defpackage.i01;
import defpackage.j2a;
import defpackage.kha;
import defpackage.kn9;
import defpackage.pfa;
import defpackage.rn9;
import defpackage.u0a;
import defpackage.v2a;
import defpackage.ve1;
import defpackage.x8a;
import defpackage.xda;
import defpackage.y14;
import defpackage.z94;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class w1 implements t1, z0.a, AudioManager.OnAudioFocusChangeListener, n.a, f0.a {
    public float A;
    public o1 B;
    public final rf C;
    public final j1 b;
    public k0 c;
    public o d;
    public kha e;
    public final List f;
    public final p0.a g;
    public final w4 i;
    public v2a k;
    public boolean l;
    public z0 m;
    public long n;
    public final fp o;
    public boolean r;
    public boolean s;
    public long u;
    public float v;
    public float w;
    public yj x;
    public n y;
    public f0 z;
    public boolean p = true;
    public int q = 0;
    public int t = 0;
    public final a D = new a();
    public final Handler j = new Handler(Looper.getMainLooper());
    public final x8a h = new x8a();

    public class a implements kn9 {
        public f1 a;

        public a() {
        }
    }

    public class b implements u0a {
        public b() {
        }

        @Override // defpackage.u0a
        public final void a() {
            z94 z94Var;
            z94.a aVar;
            w1 w1Var = w1.this;
            if (w1Var.z == null || w1Var.k == null) {
                return;
            }
            b3.a aVar2 = w1Var.g.a.b;
            if (aVar2 != null && (aVar = (z94Var = z94.this).h) != null) {
                aVar.b(z94Var);
            }
            w1Var.k.f = true;
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0059  */
        @Override // defpackage.u0a
        public final void b() {
            v2a v2aVar;
            String str;
            w1 w1Var = w1.this;
            List list = w1Var.f;
            if (w1Var.m != null) {
                if (list.size() <= w1Var.t || w1Var.D()) {
                    w1Var.m.b();
                    w1Var.j.removeCallbacks(w1Var.o);
                    w1Var.q = 0;
                    w1Var.g.a.i = true;
                } else {
                    w1Var.A();
                }
            }
            StringBuilder sb = new StringBuilder("DoubleInterstitialPromoPresenter.InterstitialMediaPresenterImpl: Failed playing video ");
            int size = list.size();
            int i = w1Var.t;
            if (size > i) {
                v2aVar = (v2a) list.get(i);
            } else if (i > 0) {
                int size2 = list.size();
                int i2 = w1Var.t - 1;
                if (size2 > i2) {
                    v2aVar = (v2a) list.get(i2);
                } else {
                    v2aVar = null;
                }
            } else {
                v2aVar = null;
            }
            if (v2aVar == null) {
                str = "<null, nb=" + w1Var.t + ", s=" + list.size() + ">";
            } else {
                str = v2aVar.a.B;
            }
            i01.d(sb, str, null);
        }

        @Override // defpackage.u0a
        public final void c() {
            w1 w1Var = w1.this;
            n nVar = w1Var.y;
            if (nVar != null) {
                if (nVar.isPlaying()) {
                    kha khaVar = w1Var.e;
                    if (khaVar == null || khaVar.e0) {
                        w1Var.t();
                        k0 k0Var = w1Var.c;
                        if (k0Var != null) {
                            k0Var.i();
                        }
                    }
                } else if (w1Var.y.getPosition() > 0) {
                    w1Var.resume();
                    k0 k0Var2 = w1Var.c;
                    if (k0Var2 != null) {
                        k0Var2.l();
                    }
                } else {
                    kha khaVar2 = w1Var.e;
                    if (khaVar2 != null && !khaVar2.Y) {
                        w1Var.s = true;
                    }
                    w1Var.u();
                }
            }
            w1Var.w();
        }

        @Override // defpackage.u0a
        public final void d() {
            w1 w1Var = w1.this;
            n nVar = w1Var.y;
            if (nVar == null) {
                return;
            }
            nVar.a();
            k0 k0Var = w1Var.c;
            if (k0Var != null) {
                k0Var.d(!w1Var.y.c());
            }
        }
    }

    public w1(j1 j1Var, ArrayList arrayList, p0.a aVar) {
        yj yjVar;
        this.l = true;
        this.b = j1Var;
        this.f = arrayList;
        this.g = aVar;
        b bVar = new b();
        Context context = j1Var.a;
        w4 w4Var = new w4(context, this, bVar, this);
        this.i = w4Var;
        rf progressBar = w4Var.getProgressBar();
        this.C = progressBar;
        v2a v2aVar = (v2a) arrayList.get(this.t);
        this.k = v2aVar;
        xda xdaVar = v2aVar.a;
        this.l = xdaVar.k();
        this.v = xdaVar.T * 1000.0f;
        this.w = xdaVar.S * 1000.0f;
        progressBar.setCountBars(arrayList.size());
        kha khaVar = xdaVar.Z;
        if (khaVar != null) {
            this.e = khaVar;
            this.k.getClass();
            w4Var.a(xdaVar, D());
            z0 interstitialView = w4Var.getInterstitialView();
            this.m = interstitialView;
            if (interstitialView instanceof j2a) {
                j2a j2aVar = (j2a) interstitialView;
                f0 videoView = j2aVar.getVideoView();
                this.z = videoView;
                videoView.setAdVideoViewListener(this);
                this.B = o1.a(this.e.a, new ah(this));
                this.c = k0.a(this.e, this.k.b, new ah(this), context);
                this.B.d(this.z);
                this.A = this.e.z;
                n videoPlayer = j2aVar.getVideoPlayer();
                this.y = videoPlayer;
                videoPlayer.a(this);
                this.x = j2aVar.getVideoContent();
                progressBar.a(this.t, this.w / 1000.0f);
                this.x.setDuration(this.e.z);
                this.x.setPauseEnabled(this.e.e0);
                boolean z = this.e.X;
                n nVar = this.y;
                if (z) {
                    nVar.setVolume(0.0f);
                } else {
                    nVar.setVolume(1.0f);
                }
            }
            kha khaVar2 = this.e;
            if (khaVar2 != null && (yjVar = this.x) != null) {
                if (khaVar2.Y) {
                    u();
                } else {
                    yjVar.e();
                }
            }
        } else {
            this.k.getClass();
            w4Var.a(xdaVar, D());
            progressBar.a(this.t, this.w / 1000.0f);
        }
        this.m = w4Var.getInterstitialView();
        this.o = new fp(this, 2);
        y(xdaVar);
        z(xdaVar);
        aVar.b(this.k, w4Var.getRootLayout());
    }

    public final void A() {
        yj yjVar;
        this.t++;
        destroy();
        List list = this.f;
        int size = list.size();
        int i = this.t;
        w4 w4Var = this.i;
        if (size <= i) {
            if (D()) {
                e();
                return;
            }
            if (!(this.m instanceof k4)) {
                if (w4Var.getChildCount() != 0) {
                    w4Var.removeAllViews();
                }
                k4 k4Var = new k4(w4Var.b, this.D, w4Var.getContext());
                w4Var.c = k4Var;
                k4Var.setDoubleBanners(list);
                w4Var.addView(w4Var.c.a());
                this.m = w4Var.getInterstitialView();
                z(((v2a) list.get(this.t - 1)).a);
            }
            this.t = list.size();
            return;
        }
        float f = this.w / 1000.0f;
        rf rfVar = this.C;
        ArrayList arrayList = rfVar.b;
        for (int i2 = 0; i2 < i; i2++) {
            ((c9a) arrayList.get(i2)).setMaxTime(f);
            ((c9a) arrayList.get(i2)).setTimeChanged(f);
        }
        v2a v2aVar = (v2a) list.get(this.t);
        this.k = v2aVar;
        xda xdaVar = v2aVar.a;
        this.l = xdaVar.k();
        this.v = xdaVar.T * 1000.0f;
        this.w = xdaVar.S * 1000.0f;
        kha khaVar = xdaVar.Z;
        if (khaVar != null) {
            this.e = khaVar;
            this.k.getClass();
            w4Var.a(xdaVar, D());
            z0 interstitialView = w4Var.getInterstitialView();
            this.m = interstitialView;
            if (interstitialView instanceof j2a) {
                j2a j2aVar = (j2a) interstitialView;
                f0 videoView = j2aVar.getVideoView();
                this.z = videoView;
                videoView.setAdVideoViewListener(this);
                this.B = o1.a(this.e.a, new ah(this));
                this.c = k0.a(this.e, this.k.b, new ah(this), this.b.a);
                this.B.d(this.z);
                this.A = this.e.z;
                n videoPlayer = j2aVar.getVideoPlayer();
                this.y = videoPlayer;
                videoPlayer.a(this);
                this.x = j2aVar.getVideoContent();
                rfVar.a(this.t, this.w / 1000.0f);
                this.x.setDuration(this.e.z);
                this.x.setPauseEnabled(this.e.e0);
                boolean z = this.e.X;
                n nVar = this.y;
                if (z) {
                    nVar.setVolume(0.0f);
                } else {
                    nVar.setVolume(1.0f);
                }
            }
            kha khaVar2 = this.e;
            if (khaVar2 != null && (yjVar = this.x) != null) {
                if (khaVar2.Y) {
                    u();
                } else {
                    yjVar.e();
                }
            }
        } else {
            this.k.getClass();
            w4Var.a(xdaVar, D());
            rfVar.a(this.t, this.w / 1000.0f);
        }
        this.j.removeCallbacks(this.o);
        this.m = w4Var.getInterstitialView();
        y(xdaVar);
        z(xdaVar);
        this.g.b(this.k, w4Var.getRootLayout());
    }

    public final void B() {
        z0 z0Var = this.m;
        if (z0Var != null) {
            z0Var.b();
            this.g.a.i = true;
            this.r = true;
            if (E() && this.u > 0) {
                v();
            } else {
                this.j.removeCallbacks(this.o);
                this.q = 0;
            }
        }
    }

    public final boolean C() {
        v2a v2aVar = this.k;
        if (v2aVar == null) {
            return false;
        }
        xda xdaVar = v2aVar.a;
        kha khaVar = xdaVar.Z;
        return (khaVar == null || !khaVar.Y) ? xdaVar.V : khaVar.c0;
    }

    public final boolean D() {
        Iterator it = this.f.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (!((v2a) it.next()).e) {
                i++;
            }
        }
        return i == 1;
    }

    public final boolean E() {
        v2a v2aVar = this.k;
        return v2aVar != null && v2aVar.a.U && !D() && this.f.size() > this.t;
    }

    @Override // com.my.target.z0.a
    public final void a() {
        z0 z0Var;
        v2a v2aVar = this.k;
        if (v2aVar == null || (z0Var = this.m) == null) {
            return;
        }
        z0Var.setBanner(v2aVar.a);
    }

    @Override // com.my.target.n.a
    public final void b(String str) {
        rn9 rn9Var;
        if (this.x == null || this.y == null || this.z == null) {
            return;
        }
        y14.r(null, "InterstitialDoublePromoPresenter: Video playing error - ".concat(str));
        k0 k0Var = this.c;
        if (k0Var != null) {
            k0Var.j();
        }
        if (this.p) {
            y14.r(null, "InterstitialDoublePromoPresenter: Try to play video stream from URL");
            this.p = false;
            kha khaVar = this.e;
            if (khaVar != null && (rn9Var = (rn9) khaVar.h0) != null) {
                this.y.c(this.z.getContext(), Uri.parse(rn9Var.a));
                return;
            }
        }
        n nVar = this.y;
        nVar.stop();
        nVar.destroy();
        this.y = null;
        this.x.c();
    }

    @Override // com.my.target.n.a
    public final void c() {
        k0 k0Var = this.c;
        if (k0Var != null) {
            k0Var.g();
        }
        yj yjVar = this.x;
        if (yjVar == null || this.y == null) {
            return;
        }
        yjVar.b();
        this.y.stop();
        v2a v2aVar = this.k;
        if (v2aVar != null) {
            v2aVar.f = true;
            if (D() || !this.k.a.U) {
                return;
            }
            A();
        }
    }

    @Override // com.my.target.n.a
    public final void d(float f, float f2) {
        if (this.x == null || this.y == null || this.m == null) {
            return;
        }
        float f3 = this.A;
        if (f > f3) {
            d(f2, f3);
            return;
        }
        if (f != 0.0f) {
            if (this.q == 2) {
                float f4 = 1000.0f * f;
                this.n = (long) (this.w - f4);
                if (E()) {
                    this.u = (long) (this.v - f4);
                }
            }
            this.x.getVideoControlView().getProgressView().setTimeChanged(f);
            k0 k0Var = this.c;
            if (k0Var != null) {
                k0Var.c(f, f2);
            }
            v2a v2aVar = this.k;
            if (v2aVar != null) {
                o1 o1Var = this.B;
                if (o1Var != null && !v2aVar.f) {
                    o1Var.c(f, f2);
                }
                v2a v2aVar2 = this.k;
                float volume = this.y.getVolume();
                b3.a aVar = this.g.a.b;
                if (aVar != null) {
                    xda xdaVar = v2aVar2.a;
                    z94.b bVar = (z94.b) aVar;
                    if (y14.a(bVar.a, volume) != 0) {
                        bVar.a = volume;
                    }
                }
            }
            if (this.q == 2 && !D()) {
                int size = this.f.size();
                int i = this.t;
                if (size > i) {
                    ((c9a) this.C.b.get(i)).setTimeChanged(f);
                }
            }
        }
        if (f == f2) {
            if (this.y.isPlaying()) {
                c();
            } else {
                this.y.stop();
            }
        }
    }

    @Override // com.my.target.t1
    public final void destroy() {
        this.j.removeCallbacks(this.o);
        t();
        o1 o1Var = this.B;
        if (o1Var != null) {
            o1Var.b();
        }
        w();
        n nVar = this.y;
        if (nVar != null) {
            nVar.destroy();
            this.y = null;
        }
        this.e = null;
        this.z = null;
        this.x = null;
    }

    @Override // com.my.target.z0.a
    public final void e() {
        k0 k0Var = this.c;
        if (k0Var != null) {
            k0Var.h();
        }
        destroy();
        w();
        v2a v2aVar = this.k;
        if (v2aVar != null) {
            p0 p0Var = this.g.a;
            xda xdaVar = v2aVar.a;
            xdaVar.Q.c(PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_INIT_FAILED);
            m1.d(xdaVar.a, "closedByUser", 999, null);
            p0Var.t();
        }
        f1 f1Var = this.D.a;
        if (f1Var == null || f1Var.c == null) {
            return;
        }
        o1 o1Var = f1Var.f;
        if (o1Var != null) {
            o1Var.b();
        }
        k0 k0Var2 = f1Var.e;
        if (k0Var2 != null) {
            k0Var2.h();
        }
        f1Var.c.destroy();
    }

    @Override // com.my.target.n.a
    public final void f() {
        yj yjVar = this.x;
        if (yjVar == null) {
            return;
        }
        yjVar.d();
    }

    @Override // com.my.target.n.a
    public final void g() {
    }

    @Override // com.my.target.t1
    public final View getCloseButton() {
        z0 z0Var = this.m;
        if (z0Var == null) {
            return null;
        }
        return z0Var.getCloseButton();
    }

    @Override // com.my.target.n.a
    public final void h() {
    }

    @Override // com.my.target.t1
    public final View i() {
        return this.i.getRootLayout();
    }

    @Override // com.my.target.n.a
    public final void j() {
        n nVar;
        y14.r(null, "DoubleInterstitialPromoPresenter: Video playing timeout");
        k0 k0Var = this.c;
        if (k0Var != null) {
            k0Var.k();
        }
        if (this.x == null || (nVar = this.y) == null) {
            return;
        }
        nVar.stop();
        nVar.destroy();
        this.y = null;
        this.x.c();
    }

    @Override // com.my.target.n.a
    public final void k() {
        yj yjVar = this.x;
        if (yjVar == null) {
            return;
        }
        yjVar.f();
    }

    @Override // com.my.target.n.a
    public final void o() {
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        if (i == -1 || i == -2) {
            t();
            y14.r(null, "DoubleInterstitialPromoPresenter: Audiofocus loss, pausing");
        }
    }

    @Override // com.my.target.z0.a
    public final void p() {
        z0 z0Var;
        q qVar;
        v2a v2aVar = this.k;
        if (v2aVar == null || (z0Var = this.m) == null || (qVar = v2aVar.a.H) == null) {
            return;
        }
        Context context = z0Var.a().getContext();
        o oVar = this.d;
        if (oVar == null) {
            y14.n(context, qVar.b, null, null, null);
        } else {
            oVar.b();
            pause();
        }
    }

    @Override // com.my.target.t1
    public final void pause() {
        t();
        this.j.removeCallbacks(this.o);
        w();
    }

    @Override // com.my.target.f0.a
    public final void r() {
        if (!(this.y instanceof h)) {
            b("Playback within no hardware accelerated view is available only with ExoPlayer");
            return;
        }
        f0 f0Var = this.z;
        if (f0Var != null) {
            f0Var.setViewMode(1);
            this.y.b(this.z);
        }
        kha khaVar = this.e;
        if (khaVar != null) {
            rn9 rn9Var = (rn9) khaVar.h0;
            if (!this.y.isPlaying() || rn9Var == null) {
                return;
            }
            if (rn9Var.d != null) {
                this.p = true;
            }
            x(rn9Var);
        }
    }

    @Override // com.my.target.t1
    public final void resume() {
        AudioManager audioManager;
        if (this.n > 0 || (E() && this.u > 0)) {
            v();
        }
        w();
        n nVar = this.y;
        if (nVar == null || this.z == null) {
            return;
        }
        nVar.resume();
        if (this.y.c()) {
            AudioManager audioManager2 = (AudioManager) this.z.getContext().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            if (audioManager2 != null) {
                audioManager2.abandonAudioFocus(this);
            }
        } else if (this.y.isPlaying() && (audioManager = (AudioManager) this.z.getContext().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO)) != null) {
            audioManager.requestAudioFocus(this, 3, 2);
        }
        f1 f1Var = this.D.a;
        if (f1Var != null) {
            f1Var.p();
        }
    }

    @Override // com.my.target.n.a
    public final void s() {
    }

    @Override // com.my.target.t1
    public final void stop() {
        t();
        this.j.removeCallbacks(this.o);
        w();
    }

    public final void t() {
        f0 f0Var;
        if (this.y == null || (f0Var = this.z) == null) {
            return;
        }
        AudioManager audioManager = (AudioManager) f0Var.getContext().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (audioManager != null) {
            audioManager.abandonAudioFocus(this);
        }
        this.y.pause();
    }

    public final void u() {
        k0 k0Var;
        AudioManager audioManager;
        kha khaVar = this.e;
        if (khaVar == null || (k0Var = this.c) == null || this.y == null || this.z == null) {
            return;
        }
        rn9 rn9Var = (rn9) khaVar.h0;
        k0Var.f();
        if (rn9Var != null) {
            if (!this.y.c() && (audioManager = (AudioManager) this.z.getContext().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO)) != null) {
                audioManager.requestAudioFocus(this, 3, 2);
            }
            this.y.a(this);
            this.y.b(this.z);
            x(rn9Var);
        }
    }

    public final void v() {
        if (this.m != null) {
            Handler handler = this.j;
            fp fpVar = this.o;
            handler.removeCallbacks(fpVar);
            handler.postDelayed(fpVar, 200L);
            boolean zD = D();
            List list = this.f;
            boolean z = zD || list.size() == this.t;
            long j = this.n / 1000;
            if (j >= 1 && z) {
                this.m.setRemainingAllowCloseDelay((int) j);
            } else if (E()) {
                long j2 = this.u / 1000;
                if (j2 >= 1) {
                    this.m.setRemainingAllowCloseDelay((int) j2);
                }
            }
            if (!z) {
                E();
            }
            if (this.q == 2 || D()) {
                return;
            }
            int size = list.size();
            int i = this.t;
            if (size > i) {
                ((c9a) this.C.b.get(i)).setTimeChanged((this.w - this.n) / 1000.0f);
            }
        }
    }

    public final void w() {
        this.j.removeCallbacks(this.h);
    }

    public final void x(rn9 rn9Var) {
        n nVar = this.y;
        if (nVar == null || this.z == null) {
            return;
        }
        String str = (String) rn9Var.d;
        if (str != null) {
            this.p = true;
            nVar.c(this.z.getContext(), Uri.parse(str));
        } else {
            this.p = false;
            nVar.c(this.z.getContext(), Uri.parse(rn9Var.a));
        }
    }

    public final void y(xda xdaVar) {
        q qVar;
        if (this.m == null || (qVar = xdaVar.H) == null || qVar.c == null) {
            return;
        }
        v2a v2aVar = this.k;
        o oVar = new o(qVar, v2aVar != null ? v2aVar.a.d() : "", this.m.a().getContext());
        this.d = oVar;
        oVar.e = new c21(this, 7);
        oVar.f = new ve1(this);
    }

    public final void z(xda xdaVar) {
        p0 p0Var = this.g.a;
        if (this.m == null) {
            return;
        }
        kha khaVar = xdaVar.Z;
        boolean z = false;
        this.r = false;
        this.s = false;
        if (E()) {
            this.u = (long) this.v;
        } else {
            this.u = 0L;
        }
        boolean z2 = true;
        if (khaVar == null || !khaVar.Y || this.f.size() == this.t) {
            this.q = E() ? 1 : 0;
            boolean zC = C();
            if (this.m != null) {
                if (zC) {
                    long j = (long) this.w;
                    this.n = j;
                    if (j > 0) {
                        y14.r(null, "DoubleInterstitialPromoPresenter: Banner will be allowed to close in " + this.n + " millis");
                        this.q = 1;
                        v();
                    } else {
                        y14.r(null, "DoubleInterstitialPromoPresenter: Banner is allowed to close");
                        B();
                        z = true;
                    }
                } else {
                    this.q = E() ? 1 : 0;
                    this.m.c();
                    if (E()) {
                        v();
                    }
                }
                p0Var.i = z;
            }
        } else {
            this.q = 2;
            if (C()) {
                this.w = (long) (Math.min(khaVar.f0, this.A) * 1000.0f);
                this.C.a(this.t, khaVar.z);
                long j2 = (long) this.w;
                this.n = j2;
                if (j2 > 0) {
                    this.q = 2;
                    v();
                } else {
                    B();
                    z = true;
                }
            } else {
                this.m.c();
            }
            if (E()) {
                v();
            }
            z2 = z;
        }
        p0Var.i = z2;
    }

    @Override // com.my.target.n.a
    public final void a(float f) {
        yj yjVar = this.x;
        if (yjVar == null) {
            return;
        }
        yjVar.a(f);
    }

    @Override // com.my.target.z0.a
    public final void c(int i, pfa pfaVar) {
        v2a v2aVar = this.k;
        if (v2aVar == null) {
            return;
        }
        this.g.a(v2aVar.a, i, y14.j(pfaVar), this.i.getRootLayout().getContext());
        if (this.l) {
            e();
        }
    }

    @Override // com.my.target.z0.a
    public final void d() {
        v2a v2aVar = this.k;
        if (v2aVar == null || this.m == null) {
            return;
        }
        xda xdaVar = v2aVar.a;
        w();
        String str = xdaVar.c0;
        if (str == null) {
            return;
        }
        y14.n(this.m.a().getContext(), str, null, null, null);
    }
}
