package com.my.target;

import android.media.AudioManager;
import android.net.Uri;
import android.os.Looper;
import androidx.media3.common.MimeTypes;
import defpackage.ao9;
import defpackage.f5a;
import defpackage.kha;
import defpackage.kn9;
import defpackage.p5;
import defpackage.pfa;
import defpackage.rn9;
import defpackage.u0a;
import defpackage.ud0;
import defpackage.v2a;
import defpackage.w4a;
import defpackage.y14;
import defpackage.z94;

/* JADX INFO: loaded from: classes4.dex */
public final class f1 implements f5a, AudioManager.OnAudioFocusChangeListener, n.a, f0.a {
    public yj b;
    public n c;
    public f0 d;
    public k0 e;
    public o1 f;
    public kha g;
    public float h = 0.0f;
    public boolean i = true;
    public o j;
    public v2a k;
    public final kn9 l;

    public static class a implements u0a {
        public final f5a a;

        public a(f1 f1Var) {
            this.a = f1Var;
        }

        @Override // defpackage.u0a
        public final void a() {
        }

        @Override // defpackage.u0a
        public final void b() {
            y14.r(null, "DoubleInterstitialCardPresenter.InterstitialMediaListenerImpl: Error video playing");
        }

        @Override // defpackage.u0a
        public final void c() {
            k0 k0Var;
            AudioManager audioManager;
            f1 f1Var = (f1) this.a;
            n nVar = f1Var.c;
            if (nVar == null) {
                return;
            }
            if (nVar.isPlaying()) {
                kha khaVar = f1Var.g;
                if (khaVar == null || khaVar.e0) {
                    f1Var.i();
                    k0 k0Var2 = f1Var.e;
                    if (k0Var2 != null) {
                        k0Var2.i();
                        return;
                    }
                    return;
                }
                return;
            }
            if (f1Var.c.getPosition() > 0) {
                f1Var.p();
                k0 k0Var3 = f1Var.e;
                if (k0Var3 != null) {
                    k0Var3.l();
                    return;
                }
                return;
            }
            kha khaVar2 = f1Var.g;
            if (khaVar2 == null || (k0Var = f1Var.e) == null || f1Var.c == null || f1Var.d == null) {
                return;
            }
            rn9 rn9Var = (rn9) khaVar2.h0;
            k0Var.f();
            if (rn9Var != null) {
                if (!f1Var.c.c() && (audioManager = (AudioManager) f1Var.d.getContext().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO)) != null) {
                    audioManager.requestAudioFocus(f1Var, 3, 2);
                }
                f1Var.c.a(f1Var);
                f1Var.c.b(f1Var.d);
                f1Var.f(rn9Var);
            }
        }

        @Override // defpackage.u0a
        public final void d() {
            f1 f1Var = (f1) this.a;
            n nVar = f1Var.c;
            if (nVar == null) {
                return;
            }
            nVar.a();
            k0 k0Var = f1Var.e;
            if (k0Var != null) {
                k0Var.d(!f1Var.c.c());
            }
        }
    }

    public f1(w1.a aVar) {
        this.l = aVar;
        aVar.a = this;
    }

    @Override // com.my.target.n.a
    public final void a(float f) {
        yj yjVar = this.b;
        if (yjVar == null) {
            return;
        }
        yjVar.a(f);
    }

    @Override // com.my.target.n.a
    public final void b(String str) {
        rn9 rn9Var;
        if (this.b == null || this.c == null || this.d == null) {
            return;
        }
        y14.r(null, "DoubleInterstitialCardPresenter: Video playing error - ".concat(str));
        k0 k0Var = this.e;
        if (k0Var != null) {
            k0Var.j();
        }
        if (this.i) {
            y14.r(null, "DoubleInterstitialCardPresenter: Try to play video stream from URL");
            this.i = false;
            kha khaVar = this.g;
            if (khaVar != null && (rn9Var = (rn9) khaVar.h0) != null) {
                this.c.c(this.d.getContext(), Uri.parse(rn9Var.a));
                return;
            }
        }
        this.b.c();
        this.c.stop();
        this.c.destroy();
    }

    @Override // com.my.target.n.a
    public final void c() {
        z94 z94Var;
        z94.a aVar;
        y14.r(null, "DoubleInterstitialCardPresenter: Video completed");
        k0 k0Var = this.e;
        if (k0Var != null) {
            k0Var.g();
        }
        yj yjVar = this.b;
        if (yjVar == null || this.c == null) {
            return;
        }
        yjVar.b();
        this.c.stop();
        v2a v2aVar = this.k;
        if (v2aVar != null) {
            v2aVar.f = true;
            b3.a aVar2 = w1.this.g.a.b;
            if (aVar2 == null || (aVar = (z94Var = z94.this).h) == null) {
                return;
            }
            aVar.b(z94Var);
        }
    }

    @Override // com.my.target.n.a
    public final void d(float f, float f2) {
        o1 o1Var;
        yj yjVar = this.b;
        if (yjVar == null || this.c == null) {
            return;
        }
        float f3 = this.h;
        if (f > f3) {
            d(f2, f3);
            return;
        }
        if (f != 0.0f) {
            yjVar.getVideoControlView().getProgressView().setTimeChanged(f);
            k0 k0Var = this.e;
            if (k0Var != null) {
                k0Var.c(f, f2);
            }
            v2a v2aVar = this.k;
            if (v2aVar != null && (o1Var = this.f) != null && !v2aVar.f) {
                o1Var.c(f, f2);
            }
        }
        if (f == f2) {
            if (this.c.isPlaying()) {
                c();
            }
            this.c.stop();
        }
    }

    public final void e(v2a v2aVar, o4 o4Var) {
        yj yjVar;
        yj yjVar2;
        this.k = v2aVar;
        kha khaVar = v2aVar.a.Z;
        this.g = khaVar;
        if (khaVar != null && (yjVar = this.b) != null && this.c != null) {
            this.h = khaVar.z;
            yjVar.setPauseEnabled(khaVar.e0);
            this.e = k0.a(this.g, v2aVar.b, new p5(this, v2aVar), this.b.getContext());
            this.f = o1.a(this.g.a, new ud0(this, v2aVar));
            boolean z = this.g.X;
            n nVar = this.c;
            if (z) {
                nVar.setVolume(0.0f);
            } else {
                nVar.setVolume(1.0f);
            }
            n nVar2 = this.c;
            if (nVar2 != null && !nVar2.isPlaying() && this.g != null && (yjVar2 = this.b) != null) {
                yjVar2.e();
                this.b.setDuration(this.h);
            }
        }
        w1.this.g.b(v2aVar, o4Var);
    }

    public final void f(rn9 rn9Var) {
        n nVar = this.c;
        if (nVar == null || this.d == null) {
            return;
        }
        String str = (String) rn9Var.d;
        if (str != null) {
            this.i = true;
            nVar.c(this.d.getContext(), Uri.parse(str));
        } else {
            this.i = false;
            nVar.c(this.d.getContext(), Uri.parse(rn9Var.a));
        }
    }

    @Override // com.my.target.n.a
    public final void g() {
    }

    @Override // com.my.target.n.a
    public final void h() {
    }

    public final void i() {
        f0 f0Var;
        if (this.c == null || (f0Var = this.d) == null) {
            return;
        }
        AudioManager audioManager = (AudioManager) f0Var.getContext().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (audioManager != null) {
            audioManager.abandonAudioFocus(this);
        }
        this.c.pause();
    }

    @Override // com.my.target.n.a
    public final void j() {
        y14.r(null, "DoubleInterstitialCardPresenter: Video playing timeout");
        k0 k0Var = this.e;
        if (k0Var != null) {
            k0Var.k();
        }
        yj yjVar = this.b;
        if (yjVar == null || this.c == null) {
            return;
        }
        yjVar.c();
        this.c.stop();
        this.c.destroy();
    }

    @Override // com.my.target.n.a
    public final void k() {
        yj yjVar = this.b;
        if (yjVar == null) {
            return;
        }
        yjVar.f();
    }

    @Override // com.my.target.n.a
    public final void o() {
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(final int i) {
        if (!Looper.getMainLooper().isCurrentThread()) {
            w4a.c(new Runnable() { // from class: i6a
                @Override // java.lang.Runnable
                public final void run() {
                    int i2 = i;
                    if (i2 == -2 || i2 == -1) {
                        this.b.i();
                        y14.r(null, "DoubleInterstitialCardPresenter: Audiofocus loss, pausing");
                    }
                }
            });
        } else if (i == -2 || i == -1) {
            i();
            y14.r(null, "DoubleInterstitialCardPresenter: Audiofocus loss, pausing");
        }
    }

    public final void p() {
        AudioManager audioManager;
        n nVar = this.c;
        if (nVar == null || this.d == null) {
            return;
        }
        nVar.resume();
        if (this.c.c()) {
            AudioManager audioManager2 = (AudioManager) this.d.getContext().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            if (audioManager2 != null) {
                audioManager2.abandonAudioFocus(this);
                return;
            }
            return;
        }
        if (!this.c.isPlaying() || (audioManager = (AudioManager) this.d.getContext().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO)) == null) {
            return;
        }
        audioManager.requestAudioFocus(this, 3, 2);
    }

    @Override // com.my.target.f0.a
    public final void r() {
        if (!(this.c instanceof h)) {
            b("DoubleInterstitialCardPresenter: Playback within no hardware accelerated view is available only with ExoPlayer");
            return;
        }
        f0 f0Var = this.d;
        if (f0Var != null) {
            f0Var.setViewMode(1);
            this.c.b(this.d);
        }
        kha khaVar = this.g;
        if (khaVar != null) {
            rn9 rn9Var = (rn9) khaVar.h0;
            if (!this.c.isPlaying() || rn9Var == null) {
                return;
            }
            if (rn9Var.d != null) {
                this.i = true;
            }
            f(rn9Var);
        }
    }

    @Override // com.my.target.n.a
    public final void s() {
    }

    @Override // com.my.target.n.a
    public final void f() {
        yj yjVar = this.b;
        if (yjVar == null) {
            return;
        }
        yjVar.d();
    }

    public final void c(ao9 ao9Var, int i, pfa pfaVar, o4 o4Var) {
        w1.a aVar = (w1.a) this.l;
        w1 w1Var = w1.this;
        if (w1Var.k == null) {
            return;
        }
        w1Var.g.a(ao9Var, i, y14.j(pfaVar), o4Var.getContext());
        if (w1Var.l) {
            w1Var.e();
        }
        f1 f1Var = aVar.a;
        if (f1Var != null) {
            f1Var.i();
        }
    }
}
