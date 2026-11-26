package com.my.target;

import android.content.Context;
import android.media.AudioManager;
import android.os.Looper;
import androidx.media3.common.MimeTypes;
import com.my.target.r0;
import defpackage.kha;
import defpackage.n5;
import defpackage.v51;
import defpackage.w4a;
import defpackage.y14;

/* JADX INFO: loaded from: classes4.dex */
public final class r0 {
    public final kha a;
    public final a b;
    public final m2.b c;
    public final c d;
    public final o1 e;
    public final k0 f;
    public final m2.a g;
    public final v51 h;
    public float i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n = true;

    public class a implements zf.a {
        public a() {
        }

        @Override // com.my.target.n.a
        public final void a(float f) {
            r0.this.d.b(f <= 0.0f);
        }

        @Override // com.my.target.n.a
        public final void b(String str) {
            y14.r(null, "InterstitialMediaPresenter$MyMediaViewListener: Video playing error: ".concat(str));
            r0 r0Var = r0.this;
            r0Var.f.j();
            if (!r0Var.n) {
                r0Var.d();
                r0Var.h.a();
            } else {
                y14.r(null, "InterstitialMediaPresenter$MyMediaViewListener: Try to play video stream from URL");
                r0Var.n = false;
                r0Var.d.c(false);
            }
        }

        @Override // com.my.target.n.a
        public final void c() {
            r0 r0Var = r0.this;
            c cVar = r0Var.d;
            k0 k0Var = r0Var.f;
            if (r0Var.m) {
                return;
            }
            r0Var.m = true;
            y14.r(null, "InterstitialMediaPresenter$MyMediaViewListener: Video playing complete");
            k0Var.g();
            r0Var.c();
            r0Var.b(cVar.getView().getContext());
            cVar.a(r0Var.a.a0);
            r0Var.c.b();
            r0Var.c();
            cVar.d();
            k0Var.f();
        }

        @Override // com.my.target.n.a
        public final void d(float f, float f2) {
            r0 r0Var = r0.this;
            kha khaVar = r0Var.a;
            r0Var.d.setTimeChanged(f);
            r0Var.m = false;
            if (!r0Var.l) {
                r0Var.l = true;
            }
            if (r0Var.k && khaVar.Y) {
                double d = (khaVar.f0 - f) + 1.0f;
                if (d >= 0.0d) {
                    r0Var.g.n(d);
                }
                if (khaVar.f0 <= f) {
                    r0Var.c();
                }
            }
            float f3 = r0Var.i;
            if (f > f3) {
                d(f3, f3);
                return;
            }
            r0Var.e.c(f, f2);
            r0Var.f.c(f, f2);
            if (f == r0Var.i) {
                c();
            }
        }

        public final void e() {
            r0 r0Var = r0.this;
            k0 k0Var = r0Var.f;
            if (r0Var.j) {
                r0Var.g();
                k0Var.d(true);
                r0Var.j = false;
            } else {
                c cVar = r0Var.d;
                r0Var.b(cVar.getView().getContext());
                cVar.a(0);
                k0Var.d(false);
                r0Var.j = true;
            }
        }

        @Override // com.my.target.n.a
        public final void f() {
        }

        @Override // com.my.target.n.a
        public final void g() {
        }

        @Override // com.my.target.n.a
        public final void h() {
        }

        @Override // com.my.target.n.a
        public final void j() {
            r0 r0Var = r0.this;
            r0Var.f.k();
            r0Var.d();
            y14.r(null, "InterstitialMediaPresenter$MyMediaViewListener: Video playing timeout");
            r0Var.h.a();
        }

        @Override // com.my.target.n.a
        public final void k() {
            r0 r0Var = r0.this;
            if (r0Var.k && r0Var.a.f0 == 0.0f) {
                r0Var.c();
            }
            r0Var.d.a();
        }

        @Override // com.my.target.zf.a
        public final void l() {
            r0 r0Var = r0.this;
            c cVar = r0Var.d;
            if (r0Var.a.e0) {
                r0Var.b(cVar.getView().getContext());
                r0Var.f.i();
                cVar.pause();
            }
        }

        @Override // com.my.target.zf.a
        public final void m() {
            r0 r0Var = r0.this;
            r0Var.d.c(r0Var.n);
        }

        @Override // com.my.target.zf.a
        public final void n() {
            r0 r0Var = r0.this;
            r0Var.f.l();
            c cVar = r0Var.d;
            cVar.resume();
            if (!r0Var.j) {
                r0Var.g();
            } else {
                r0Var.b(cVar.getView().getContext());
                cVar.a(0);
            }
        }

        @Override // com.my.target.n.a
        public final void o() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public final void onAudioFocusChange(final int i) {
            if (Looper.getMainLooper().isCurrentThread()) {
                r0.this.a(i);
            } else {
                w4a.c(new Runnable() { // from class: l1a
                    @Override // java.lang.Runnable
                    public final void run() {
                        r0.this.a(i);
                    }
                });
            }
        }

        @Override // com.my.target.zf.a
        public final void q() {
            r0 r0Var = r0.this;
            c cVar = r0Var.d;
            if (!r0Var.j) {
                r0Var.e(cVar.getView().getContext());
            }
            cVar.c(r0Var.n);
        }

        @Override // com.my.target.n.a
        public final void s() {
            r0 r0Var = r0.this;
            n videoPlayer = r0Var.d.getPromoMediaView().getVideoPlayer();
            if (videoPlayer != null) {
                r0Var.c.a(videoPlayer.getVolume());
            }
        }
    }

    public r0(x2 x2Var, kha khaVar, c cVar, m2.a aVar, m2.b bVar, v51 v51Var, n5 n5Var) {
        this.a = khaVar;
        this.g = aVar;
        this.c = bVar;
        this.h = v51Var;
        a aVar2 = new a();
        this.b = aVar2;
        this.d = cVar;
        cVar.setMediaListener(aVar2);
        o1 o1VarA = o1.a(khaVar.a, n5Var);
        this.e = o1VarA;
        o1VarA.d(cVar.getPromoMediaView());
        this.f = k0.a(khaVar, x2Var.a, n5Var, x2Var.b);
    }

    public final void a(int i) {
        if (i == -3) {
            y14.r(null, "InterstitialMediaPresenter: Audiofocus loss can duck, set volume to 0.3");
            if (this.j) {
                return;
            }
            this.d.a(1);
            return;
        }
        if (i == -2 || i == -1) {
            f();
            y14.r(null, "InterstitialMediaPresenter: Audiofocus loss, pausing");
        } else if (i == 1 || i == 2 || i == 4) {
            y14.r(null, "InterstitialMediaPresenter: Audiofocus gain, unmuting");
            if (this.j) {
                return;
            }
            g();
        }
    }

    public final void b(Context context) {
        AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (audioManager != null) {
            audioManager.abandonAudioFocus(this.b);
        }
    }

    public final void c() {
        this.d.c();
        this.g.a.i = true;
    }

    public final void d() {
        c cVar = this.d;
        b(cVar.getView().getContext());
        cVar.destroy();
    }

    public final void e(Context context) {
        AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (audioManager != null) {
            audioManager.requestAudioFocus(this.b, 3, 2);
        }
    }

    public final void f() {
        c cVar = this.d;
        cVar.pause();
        b(cVar.getView().getContext());
        if (!cVar.isPlaying() || cVar.b()) {
            return;
        }
        this.f.i();
    }

    public final void g() {
        c cVar = this.d;
        if (cVar.isPlaying()) {
            e(cVar.getView().getContext());
        }
        cVar.a(2);
    }
}
