package com.my.target;

import android.media.AudioManager;
import android.net.Uri;
import android.os.Looper;
import android.text.TextUtils;
import androidx.media3.common.MimeTypes;
import defpackage.kha;
import defpackage.rd0;
import defpackage.rn9;
import defpackage.w4a;
import defpackage.y14;

/* JADX INFO: loaded from: classes4.dex */
public final class t2 implements AudioManager.OnAudioFocusChangeListener, n.a, f0.a {
    public final c3 b;
    public final kha c;
    public final n d;
    public final o1 e;
    public final m2.b f;
    public final k0 g;
    public final float h;
    public final f0 i;
    public boolean j;

    public t2(kha khaVar, f0 f0Var, c3 c3Var, m2.b bVar, f3 f3Var, n nVar, rd0 rd0Var) {
        this.b = c3Var;
        this.i = f0Var;
        this.d = nVar;
        this.f = bVar;
        f0Var.setAdVideoViewListener(this);
        this.c = khaVar;
        o1 o1VarA = o1.a(khaVar.a, rd0Var);
        this.e = o1VarA;
        this.g = k0.a(khaVar, f3Var.b, rd0Var, f3Var.c);
        o1VarA.d(f0Var);
        this.h = khaVar.z;
        nVar.a(this);
        if (khaVar.X) {
            nVar.setVolume(0.0f);
        } else {
            nVar.setVolume(1.0f);
        }
    }

    @Override // com.my.target.n.a
    public final void a(float f) {
        this.b.e.setSoundState(f != 0.0f);
    }

    @Override // com.my.target.n.a
    public final void b(String str) {
        y14.r(null, "InterstitialPromoMediaPresenterS2: Video playing error - ".concat(str));
        this.g.j();
        boolean z = this.j;
        n nVar = this.d;
        if (z) {
            y14.r(null, "InterstitialPromoMediaPresenterS2: Try to play video stream from URL");
            this.j = false;
            rn9 rn9Var = (rn9) this.c.h0;
            if (rn9Var != null) {
                nVar.c(this.i.getContext(), Uri.parse(rn9Var.a));
                return;
            }
        }
        this.b.j();
        nVar.stop();
        nVar.destroy();
    }

    @Override // com.my.target.n.a
    public final void c() {
        this.g.g();
        c3 c3Var = this.b;
        dg dgVar = c3Var.g;
        hg hgVar = c3Var.e;
        kha khaVar = c3Var.b.Z;
        if (khaVar != null) {
            if (khaVar.a0) {
                hgVar.a(2, !TextUtils.isEmpty(khaVar.U) ? khaVar.U : null);
                hgVar.d(true);
            } else {
                c3Var.r = true;
            }
        }
        hgVar.b(true);
        hgVar.e(false);
        dgVar.setVisible(false);
        dgVar.setTimeChanged(0.0f);
        c3Var.h.b();
        if (!c3Var.t) {
            c3Var.m();
            c3Var.s = true;
        }
        this.d.stop();
    }

    @Override // com.my.target.n.a
    public final void d(float f, float f2) {
        float f3 = this.h;
        if (f > f3) {
            d(f2, f3);
            return;
        }
        n nVar = this.d;
        if (f != 0.0f) {
            c3 c3Var = this.b;
            if (c3Var.n == c3.a.c) {
                c3Var.o = (long) (c3Var.p - (1000.0f * f));
            }
            c3Var.g.setTimeChanged(f);
            this.g.c(f, f2);
            this.e.c(f, f2);
            this.f.a(nVar.getVolume());
        }
        if (f == f2) {
            if (nVar.isPlaying()) {
                c();
            }
            nVar.stop();
        }
    }

    public final void e() {
        AudioManager audioManager = (AudioManager) this.i.getContext().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (audioManager != null) {
            audioManager.abandonAudioFocus(this);
        }
        this.d.pause();
    }

    @Override // com.my.target.n.a
    public final void f() {
        hg hgVar = this.b.e;
        hgVar.d(true);
        hgVar.a(0, null);
        hgVar.e(false);
    }

    @Override // com.my.target.n.a
    public final void g() {
        this.b.l();
    }

    @Override // com.my.target.n.a
    public final void h() {
        hg hgVar = this.b.e;
        hgVar.d(false);
        hgVar.b(false);
        hgVar.f();
        hgVar.e(false);
    }

    public final void i() {
        AudioManager audioManager;
        rn9 rn9Var = (rn9) this.c.h0;
        this.g.f();
        if (rn9Var != null) {
            n nVar = this.d;
            boolean zC = nVar.c();
            f0 f0Var = this.i;
            if (!zC && (audioManager = (AudioManager) f0Var.getContext().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO)) != null) {
                audioManager.requestAudioFocus(this, 3, 2);
            }
            nVar.a(this);
            nVar.b(f0Var);
            c(rn9Var);
        }
    }

    @Override // com.my.target.n.a
    public final void j() {
        y14.r(null, "InterstitialPromoMediaPresenterS2: Video playing timeout");
        this.g.k();
        this.b.j();
        n nVar = this.d;
        nVar.stop();
        nVar.destroy();
    }

    @Override // com.my.target.n.a
    public final void k() {
        c3 c3Var = this.b;
        hg hgVar = c3Var.e;
        hgVar.d(false);
        hgVar.b(false);
        hgVar.f();
        hgVar.e(false);
        c3Var.g.setVisible(true);
    }

    @Override // com.my.target.n.a
    public final void o() {
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(final int i) {
        if (!Looper.getMainLooper().isCurrentThread()) {
            w4a.c(new Runnable() { // from class: yfa
                @Override // java.lang.Runnable
                public final void run() {
                    int i2 = i;
                    if (i2 == -2 || i2 == -1) {
                        this.b.e();
                        y14.r(null, "InterstitialPromoMediaPresenterS2: Audiofocus loss, pausing");
                    }
                }
            });
        } else if (i == -2 || i == -1) {
            e();
            y14.r(null, "InterstitialPromoMediaPresenterS2: Audiofocus loss, pausing");
        }
    }

    public final void p() {
        AudioManager audioManager;
        n nVar = this.d;
        nVar.resume();
        boolean zC = nVar.c();
        f0 f0Var = this.i;
        if (zC) {
            AudioManager audioManager2 = (AudioManager) f0Var.getContext().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            if (audioManager2 != null) {
                audioManager2.abandonAudioFocus(this);
                return;
            }
            return;
        }
        if (!nVar.isPlaying() || (audioManager = (AudioManager) f0Var.getContext().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO)) == null) {
            return;
        }
        audioManager.requestAudioFocus(this, 3, 2);
    }

    @Override // com.my.target.f0.a
    public final void r() {
        n nVar = this.d;
        if (!(nVar instanceof h)) {
            b("Playback within no hardware accelerated view is available only with ExoPlayer");
            return;
        }
        f0 f0Var = this.i;
        f0Var.setViewMode(1);
        h hVar = (h) nVar;
        hVar.b(f0Var);
        rn9 rn9Var = (rn9) this.c.h0;
        if (!hVar.isPlaying() || rn9Var == null) {
            return;
        }
        if (rn9Var.d != null) {
            this.j = true;
        }
        c(rn9Var);
    }

    @Override // com.my.target.n.a
    public final void s() {
    }

    public final void c(rn9 rn9Var) {
        String str = (String) rn9Var.d;
        int i = rn9Var.b;
        int i2 = rn9Var.c;
        f0 f0Var = this.i;
        f0Var.b(i, i2);
        n nVar = this.d;
        if (str != null) {
            this.j = true;
            nVar.c(f0Var.getContext(), Uri.parse(str));
        } else {
            this.j = false;
            nVar.c(f0Var.getContext(), Uri.parse(rn9Var.a));
        }
    }
}
