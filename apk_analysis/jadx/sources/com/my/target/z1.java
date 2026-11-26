package com.my.target;

import android.content.Context;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.media3.common.MimeTypes;
import defpackage.a9a;
import defpackage.fo9;
import defpackage.ig8;
import defpackage.ix9;
import defpackage.j2a;
import defpackage.kha;
import defpackage.l3a;
import defpackage.n4a;
import defpackage.nh;
import defpackage.pfa;
import defpackage.rn9;
import defpackage.u0a;
import defpackage.w4a;
import defpackage.x1a;
import defpackage.xda;
import defpackage.y14;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class z1 implements t1, z0.a, d2.b, p.a, AudioManager.OnAudioFocusChangeListener, n.a, f0.a {
    public final xda b;
    public final m2.a c;
    public final z0 d;
    public final nh f;
    public int h;
    public final o i;
    public final m2.b j;
    public final k0 k;
    public n l;
    public final f0 m;
    public final kha n;
    public final yj o;
    public final o1 p;
    public boolean r;
    public final float s;
    public long t;
    public final long u;
    public final ArrayList v;
    public final boolean x;
    public final ArrayList q = new ArrayList();
    public boolean w = true;
    public final a9a g = new a9a();
    public final Handler e = new Handler(Looper.getMainLooper());

    public class a implements u0a {
        public a() {
        }

        @Override // defpackage.u0a
        public final void a() {
            z1 z1Var = z1.this;
            if (z1Var.m == null) {
                return;
            }
            z1Var.j.b();
        }

        @Override // defpackage.u0a
        public final void b() {
            z1.this.t();
            y14.r(null, "InterstitialPresenterS4.InterstitialMediaPresenterS4Impl: Error video playing");
        }

        @Override // defpackage.u0a
        public final void c() {
            z1 z1Var = z1.this;
            k0 k0Var = z1Var.k;
            n nVar = z1Var.l;
            if (nVar != null) {
                if (nVar.isPlaying()) {
                    kha khaVar = z1Var.b.Z;
                    if (khaVar == null || khaVar.e0) {
                        z1Var.u();
                        if (k0Var != null) {
                            k0Var.i();
                        }
                    }
                } else if (z1Var.l.getPosition() > 0) {
                    z1Var.resume();
                    if (k0Var != null) {
                        k0Var.l();
                    }
                } else {
                    z1Var.v();
                }
            }
            z1Var.x();
        }

        @Override // defpackage.u0a
        public final void d() {
            z1 z1Var = z1.this;
            n nVar = z1Var.l;
            if (nVar != null) {
                nVar.a();
                k0 k0Var = z1Var.k;
                if (k0Var != null) {
                    k0Var.d(!z1Var.l.c());
                }
            }
        }
    }

    public z1(s sVar, xda xdaVar, m2.a aVar, m2.b bVar, defpackage.m5 m5Var) {
        z1 z1Var;
        boolean z = false;
        this.h = 0;
        this.j = bVar;
        this.b = xdaVar;
        this.c = aVar;
        this.x = xdaVar.k();
        ArrayList arrayList = xdaVar.Y;
        if (arrayList.isEmpty() || !xdaVar.L) {
            z1Var = this;
            if (arrayList.isEmpty()) {
                kha khaVar = xdaVar.Z;
                if (khaVar != null) {
                    z1Var.n = khaVar;
                    z0 z0VarA = sVar.a(xdaVar, z1Var, z1Var.new a(), null, null);
                    z1Var.d = z0VarA;
                    if (z0VarA instanceof j2a) {
                        j2a j2aVar = (j2a) z0VarA;
                        f0 videoView = j2aVar.getVideoView();
                        z1Var.m = videoView;
                        videoView.setAdVideoViewListener(z1Var);
                        o1 o1VarA = o1.a(khaVar.a, m5Var);
                        z1Var.p = o1VarA;
                        z1Var.k = k0.a(khaVar, sVar.a, m5Var, sVar.b);
                        o1VarA.d(videoView);
                        z1Var.s = khaVar.z;
                        n videoPlayer = j2aVar.getVideoPlayer();
                        z1Var.l = videoPlayer;
                        videoPlayer.a(z1Var);
                        yj videoContent = j2aVar.getVideoContent();
                        z1Var.o = videoContent;
                        videoContent.setDuration(khaVar.z);
                        videoContent.setPauseEnabled(khaVar.e0);
                    }
                    boolean z2 = khaVar.X;
                    n nVar = z1Var.l;
                    if (z2) {
                        nVar.setVolume(0.0f);
                    } else {
                        nVar.setVolume(1.0f);
                    }
                } else {
                    z1Var.d = sVar.a(xdaVar, z1Var, null, null, null);
                }
            } else {
                z1Var.d = sVar.a(xdaVar, z1Var, null, z1Var, null);
            }
        } else {
            z0 z0VarA2 = sVar.a(xdaVar, this, null, this, this);
            z1Var = this;
            z1Var.d = z0VarA2;
            z1Var.v = new ArrayList();
            p pVar = (p) z0VarA2;
            int i = 0;
            while (i < arrayList.size()) {
                z1Var.v.add(new ix9((fo9) arrayList.get(i), i == 0));
                i++;
            }
            ArrayList arrayList2 = z1Var.v;
            pVar.a(arrayList2, (ix9) arrayList2.get(0));
        }
        z1Var.d.setBanner(z1Var.b);
        z1Var.f = new nh(z1Var, 2);
        xda xdaVar2 = z1Var.b;
        q qVar = xdaVar2.H;
        if (qVar != null && qVar.c != null) {
            o oVar = new o(qVar, xdaVar2.d(), z1Var.d.a().getContext());
            z1Var.i = oVar;
            oVar.e = new ig8(z1Var, xdaVar2);
        }
        aVar.o(z1Var.b, z1Var.d.a());
        xda xdaVar3 = z1Var.b;
        z0 z0Var = z1Var.d;
        kha khaVar2 = xdaVar3.Z;
        if (khaVar2 == null || !khaVar2.Y) {
            if (xdaVar3.V) {
                long j = (long) (xdaVar3.S * 1000.0f);
                z1Var.u = j;
                z1Var.t = j;
                if (j > 0) {
                    y14.r(null, "InterstitialPresenterS4: Banner will be allowed to close in " + z1Var.t + " millis");
                    z1Var.h = 1;
                    z1Var.w();
                } else {
                    y14.r(null, "InterstitialPresenterS4: Banner is allowed to close");
                    z1Var.t();
                    z = true;
                }
            } else {
                z1Var.h = 0;
                z0Var.c();
            }
        } else if (khaVar2.c0) {
            long jMin = (long) (Math.min(khaVar2.f0, z1Var.s) * 1000.0f);
            z1Var.u = jMin;
            z1Var.t = jMin;
            if (jMin > 0) {
                z1Var.h = 2;
                z1Var.w();
            } else {
                z1Var.t();
                z = true;
            }
        } else {
            z1Var.h = 0;
            z0Var.c();
        }
        z1Var.c.a.i = z;
    }

    @Override // com.my.target.n.a
    public final void a(float f) {
        yj yjVar = this.o;
        if (yjVar == null) {
            return;
        }
        yjVar.a(f);
    }

    @Override // com.my.target.n.a
    public final void b(String str) {
        f0 f0Var;
        rn9 rn9Var;
        yj yjVar = this.o;
        if (yjVar == null || this.l == null || (f0Var = this.m) == null) {
            return;
        }
        y14.r(null, "InterstitialPresenterS4: Video playing error - ".concat(str));
        k0 k0Var = this.k;
        if (k0Var != null) {
            k0Var.j();
        }
        if (this.w) {
            y14.r(null, "InterstitialPresenterS4: Try to play video stream from URL");
            this.w = false;
            kha khaVar = this.n;
            if (khaVar != null && (rn9Var = (rn9) khaVar.h0) != null) {
                this.l.c(f0Var.getContext(), Uri.parse(rn9Var.a));
                return;
            }
        }
        yjVar.c();
        this.l.stop();
        this.l.destroy();
        this.l = null;
    }

    @Override // com.my.target.n.a
    public final void c() {
        k0 k0Var = this.k;
        if (k0Var != null) {
            k0Var.g();
        }
        yj yjVar = this.o;
        if (yjVar == null || this.l == null) {
            return;
        }
        yjVar.b();
        if (this.r) {
            return;
        }
        this.l.stop();
        this.t = 0L;
        t();
    }

    @Override // com.my.target.n.a
    public final void d(float f, float f2) {
        yj yjVar = this.o;
        if (yjVar == null || this.l == null) {
            return;
        }
        float f3 = this.s;
        if (f > f3) {
            d(f2, f3);
            return;
        }
        if (f != 0.0f) {
            if (this.h == 2) {
                this.t = (long) (this.u - (1000.0f * f));
            }
            yjVar.getVideoControlView().getProgressView().setTimeChanged(f);
            k0 k0Var = this.k;
            if (k0Var != null) {
                k0Var.c(f, f2);
            }
            o1 o1Var = this.p;
            if (o1Var != null) {
                o1Var.c(f, f2);
            }
            this.j.a(this.l.getVolume());
        }
        if (f == f2) {
            if (this.l.isPlaying()) {
                c();
            }
            this.l.stop();
        }
    }

    @Override // com.my.target.t1
    public final void destroy() {
        this.r = true;
        u();
        o1 o1Var = this.p;
        if (o1Var != null) {
            o1Var.b();
        }
        x();
        n nVar = this.l;
        if (nVar == null) {
            return;
        }
        nVar.destroy();
        this.l = null;
    }

    @Override // com.my.target.z0.a
    public final void e() {
        k0 k0Var = this.k;
        if (k0Var != null) {
            k0Var.h();
        }
        destroy();
        x();
        this.c.e(this.b);
    }

    @Override // com.my.target.n.a
    public final void f() {
        yj yjVar = this.o;
        if (yjVar == null) {
            return;
        }
        yjVar.d();
    }

    public final void g(fo9 fo9Var, int i, pfa pfaVar, View view) {
        this.c.g(fo9Var, null, i, y14.j(pfaVar), view.getContext());
        if (this.x) {
            e();
        }
    }

    @Override // com.my.target.t1
    public final View getCloseButton() {
        return this.d.getCloseButton();
    }

    public final void h(List list, d2 d2Var) {
        String strT = l3a.t(d2Var.getContext());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            fo9 fo9Var = (fo9) it.next();
            ArrayList arrayList = this.q;
            if (!arrayList.contains(fo9Var)) {
                arrayList.add(fo9Var);
                n4a n4aVar = fo9Var.a;
                if (strT != null) {
                    m1.c(n4aVar, strT);
                }
                m1.c(n4aVar, "show");
            }
        }
    }

    public final void i(rn9 rn9Var) {
        f0 f0Var;
        n nVar = this.l;
        if (nVar == null || (f0Var = this.m) == null) {
            return;
        }
        String str = (String) rn9Var.d;
        if (str != null) {
            this.w = true;
            nVar.c(f0Var.getContext(), Uri.parse(str));
        } else {
            this.w = false;
            nVar.c(f0Var.getContext(), Uri.parse(rn9Var.a));
        }
    }

    @Override // com.my.target.n.a
    public final void j() {
        y14.r(null, "InterstitialPresenterS4: Video playing timeout");
        k0 k0Var = this.k;
        if (k0Var != null) {
            k0Var.k();
        }
        yj yjVar = this.o;
        if (yjVar == null || this.l == null) {
            return;
        }
        yjVar.c();
        this.l.stop();
        this.l.destroy();
        this.l = null;
    }

    @Override // com.my.target.n.a
    public final void k() {
        yj yjVar = this.o;
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
        if (!Looper.getMainLooper().isCurrentThread()) {
            w4a.c(new x1a(this, i, 1));
        } else if (i == -2 || i == -1) {
            u();
            y14.r(null, "InterstitialPresenterS4: Audiofocus loss, pausing");
        }
    }

    @Override // com.my.target.z0.a
    public final void p() {
        q qVar = this.b.H;
        if (qVar == null) {
            return;
        }
        Context context = this.d.a().getContext();
        o oVar = this.i;
        if (oVar == null) {
            y14.n(context, qVar.b, null, null, null);
        } else {
            oVar.b();
        }
    }

    @Override // com.my.target.t1
    public final void pause() {
        u();
        this.e.removeCallbacks(this.f);
        x();
    }

    @Override // com.my.target.f0.a
    public final void r() {
        if (!(this.l instanceof h)) {
            b("Playback within no hardware accelerated view is available only with ExoPlayer");
            return;
        }
        f0 f0Var = this.m;
        if (f0Var != null) {
            f0Var.setViewMode(1);
            this.l.b(f0Var);
        }
        kha khaVar = this.n;
        if (khaVar != null) {
            rn9 rn9Var = (rn9) khaVar.h0;
            if (!this.l.isPlaying() || rn9Var == null) {
                return;
            }
            if (rn9Var.d != null) {
                this.w = true;
            }
            i(rn9Var);
        }
    }

    @Override // com.my.target.t1
    public final void resume() {
        f0 f0Var;
        AudioManager audioManager;
        if (this.h != 0 && this.t > 0) {
            w();
        }
        x();
        n nVar = this.l;
        if (nVar == null || (f0Var = this.m) == null) {
            return;
        }
        nVar.resume();
        if (this.l.c()) {
            AudioManager audioManager2 = (AudioManager) f0Var.getContext().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            if (audioManager2 != null) {
                audioManager2.abandonAudioFocus(this);
                return;
            }
            return;
        }
        if (!this.l.isPlaying() || (audioManager = (AudioManager) f0Var.getContext().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO)) == null) {
            return;
        }
        audioManager.requestAudioFocus(this, 3, 2);
    }

    @Override // com.my.target.n.a
    public final void s() {
    }

    @Override // com.my.target.t1
    public final void stop() {
        u();
        x();
    }

    public final void t() {
        this.d.b();
        this.e.removeCallbacks(this.f);
        m2.a aVar = this.c;
        aVar.n(0.0d);
        this.h = 0;
        aVar.e();
        aVar.a.i = true;
    }

    public final void u() {
        f0 f0Var;
        if (this.l == null || (f0Var = this.m) == null) {
            return;
        }
        AudioManager audioManager = (AudioManager) f0Var.getContext().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (audioManager != null) {
            audioManager.abandonAudioFocus(this);
        }
        this.l.pause();
    }

    public final void v() {
        k0 k0Var;
        f0 f0Var;
        AudioManager audioManager;
        kha khaVar = this.n;
        if (khaVar == null || (k0Var = this.k) == null || this.l == null || (f0Var = this.m) == null) {
            return;
        }
        rn9 rn9Var = (rn9) khaVar.h0;
        k0Var.f();
        if (rn9Var != null) {
            if (!this.l.c() && (audioManager = (AudioManager) f0Var.getContext().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO)) != null) {
                audioManager.requestAudioFocus(this, 3, 2);
            }
            this.l.a(this);
            this.l.b(f0Var);
            i(rn9Var);
        }
    }

    public final void w() {
        Handler handler = this.e;
        nh nhVar = this.f;
        handler.removeCallbacks(nhVar);
        handler.postDelayed(nhVar, 200L);
        this.c.n(this.t / 1000.0d);
        this.d.setRemainingAllowCloseDelay((int) ((this.t / 1000) + 1));
    }

    public final void x() {
        this.e.removeCallbacks(this.g);
    }

    @Override // com.my.target.z0.a
    public final void a() {
        this.d.setBanner(this.b);
    }

    @Override // com.my.target.n.a
    public final void g() {
    }

    @Override // com.my.target.z0.a
    public final void c(int i, pfa pfaVar) {
        this.c.g(this.b, null, i, y14.j(pfaVar), this.d.a().getContext());
        if (this.x) {
            e();
        }
    }

    @Override // com.my.target.t1
    public final View i() {
        return this.d.a();
    }

    @Override // com.my.target.n.a
    public final void h() {
    }

    @Override // com.my.target.z0.a
    public final void d() {
        x();
        String str = this.b.c0;
        if (str == null) {
            return;
        }
        y14.n(this.d.a().getContext(), str, null, null, null);
    }
}
