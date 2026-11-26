package com.my.target;

import android.content.Context;
import android.graphics.Color;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import defpackage.ao9;
import defpackage.cha;
import defpackage.e6a;
import defpackage.ev9;
import defpackage.ex0;
import defpackage.fo9;
import defpackage.gia;
import defpackage.h14;
import defpackage.ho9;
import defpackage.kha;
import defpackage.m71;
import defpackage.mda;
import defpackage.mia;
import defpackage.oh5;
import defpackage.pfa;
import defpackage.rd0;
import defpackage.t2a;
import defpackage.up9;
import defpackage.wea;
import defpackage.xda;
import defpackage.y14;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class c3 implements t1 {
    public final xda b;
    public final t2a c;
    public final m2.a d;
    public final hg e;
    public final oh5 f;
    public final dg g;
    public final m2.b h;
    public final Handler i;
    public final boolean j;
    public t2 l;
    public final v m;
    public a n;
    public long o;
    public final long p;
    public boolean q;
    public boolean r;
    public boolean t;
    public boolean s = false;
    public final wea k = new wea(this, 2);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        public static final a a;
        public static final a b;
        public static final a c;
        private static final /* synthetic */ a[] d;

        static {
            a aVar = new a("DISABLED", 0);
            a = aVar;
            a aVar2 = new a("RULED_BY_POST", 1);
            b = aVar2;
            a aVar3 = new a("RULED_BY_VIDEO", 2);
            c = aVar3;
            d = new a[]{aVar, aVar2, aVar3};
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) d.clone();
        }
    }

    public c3(f3 f3Var, xda xdaVar, m2.a aVar, m2.b bVar, rd0 rd0Var) {
        xda xdaVar2;
        hg hgVarA;
        this.n = a.a;
        boolean z = false;
        this.b = xdaVar;
        t2a t2aVar = xdaVar.r;
        this.c = t2aVar;
        this.d = aVar;
        this.h = bVar;
        this.i = new Handler(Looper.getMainLooper());
        Context context = f3Var.c;
        dg dgVar = new dg(context);
        this.g = dgVar;
        dgVar.setColor(xdaVar.X.h);
        bg bgVar = new bg(f3Var.d, context, this);
        bgVar.setBanner(xdaVar);
        kha khaVar = xdaVar.Z;
        ArrayList arrayList = xdaVar.Y;
        if (!arrayList.isEmpty()) {
            com.my.target.core.ui.views.promo.style2.cards.b bVar2 = new com.my.target.core.ui.views.promo.style2.cards.b(context);
            mia miaVar = new mia(bVar2, arrayList, this);
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(new n2((fo9) it.next(), miaVar));
            }
            bVar2.setAdapter(new mda(arrayList2, f3Var));
            hgVarA = f3Var.a(xdaVar, bgVar, dgVar, bVar2, this);
            this.e = hgVarA;
            xdaVar2 = xdaVar;
        } else if (khaVar != null) {
            this.j = t2aVar.n;
            f0 f0Var = new f0(context);
            hg hgVarA2 = f3Var.a(xdaVar, bgVar, dgVar, f0Var, this);
            this.e = hgVarA2;
            f0Var.b(khaVar.c(), khaVar.j());
            this.l = new t2(khaVar, f0Var, this, bVar, f3Var, ho9.a(f0Var.getContext(), true), rd0Var);
            dgVar.setMaxTime(khaVar.z);
            h14 h14Var = khaVar.S;
            hgVarA2.setBackgroundImage(h14Var == null ? xdaVar.p : h14Var);
            hgVarA = hgVarA2;
            xdaVar2 = xdaVar;
        } else {
            xdaVar2 = xdaVar;
            hgVarA = f3Var.a(xdaVar2, bgVar, dgVar, null, this);
            this.e = hgVarA;
            hgVarA.f();
            hgVarA.setBackgroundImage(xdaVar2.p);
        }
        fk fkVar = hgVarA.u;
        hgVarA.setBanner(xdaVar2);
        this.f = new oh5(this, 4);
        kha khaVar2 = xdaVar2.Z;
        if (khaVar2 == null || !khaVar2.Y) {
            if (xdaVar2.V) {
                long j = (long) (xdaVar2.S * 1000.0f);
                this.p = j;
                this.o = j;
                if (j > 0) {
                    y14.r(null, "InterstitialPromoPresenterS2: Banner will be allowed to close in " + this.o + " millis");
                    this.n = a.b;
                    n();
                } else {
                    y14.r(null, "InterstitialPromoPresenterS2: Banner is allowed to close");
                    m();
                    z = true;
                }
            } else {
                this.n = a.a;
                fkVar.setVisibility(8);
            }
        } else if (khaVar2.c0) {
            long j2 = (long) (khaVar2.f0 * 1000.0f);
            this.p = j2;
            this.o = j2;
            if (j2 > 0) {
                this.n = a.c;
                n();
            } else {
                m();
                z = true;
            }
        } else {
            fkVar.setVisibility(8);
        }
        this.d.a.i = z;
        aVar.o(xdaVar2, hgVarA);
        q qVar = xdaVar2.H;
        if (qVar == null || qVar.c == null) {
            return;
        }
        v vVar = new v(qVar, new ex0());
        this.m = vVar;
        vVar.c = new m71(this);
    }

    public final void a(ao9 ao9Var, int i, pfa pfaVar) {
        hg hgVar = this.e;
        m2.a aVar = this.d;
        if (ao9Var != null) {
            cha chaVarJ = y14.j(pfaVar);
            hgVar.getClass();
            aVar.g(ao9Var, null, i, chaVarJ, hgVar.getContext());
        } else {
            cha chaVarJ2 = y14.j(pfaVar);
            hgVar.getClass();
            aVar.g(this.b, null, i, chaVarJ2, hgVar.getContext());
        }
    }

    public final void b(e6a e6aVar) {
        boolean z = this.j;
        xda xdaVar = this.b;
        if (z) {
            a(xdaVar, 1, xdaVar.Q.c ? new up9(8192, e6aVar) : new gia());
            return;
        }
        if (this.r) {
            if (this.c.d) {
                a(null, 1, xdaVar.Q.c ? new up9(8, e6aVar) : new gia());
                return;
            }
            return;
        }
        kha khaVar = xdaVar.Z;
        if (khaVar == null || khaVar.e0) {
            hg hgVar = this.e;
            hgVar.d(true);
            hgVar.a(1, null);
            hgVar.e(false);
            o();
            this.i.postDelayed(this.k, 4000L);
            this.q = true;
        }
    }

    public final void c(boolean z) {
        ev9 ev9Var = this.b.X;
        int i = ev9Var.g;
        int iArgb = Color.argb((int) (ev9Var.j * 255.0f), Color.red(i), Color.green(i), Color.blue(i));
        if (z) {
            i = iArgb;
        }
        this.e.setPanelColor(i);
    }

    public final void d() {
        q qVar = this.b.H;
        if (qVar == null) {
            return;
        }
        o();
        v vVar = this.m;
        if (vVar == null || !vVar.d()) {
            hg hgVar = this.e;
            hgVar.getClass();
            Context context = hgVar.getContext();
            if (vVar == null) {
                y14.n(context, qVar.b, null, null, null);
            } else {
                vVar.c(context);
            }
        }
    }

    @Override // com.my.target.t1
    public final void destroy() {
        this.t = true;
        t2 t2Var = this.l;
        if (t2Var != null) {
            t2Var.e();
            t2Var.d.destroy();
            t2Var.e.b();
            this.l = null;
        }
        o();
    }

    public final void g(int i) {
        kha khaVar;
        this.s = false;
        if (i != 1 || (khaVar = this.b.Z) == null || khaVar.e0) {
            t2 t2Var = this.l;
            if (t2Var != null) {
                k0 k0Var = t2Var.g;
                n nVar = t2Var.d;
                if (nVar.isPlaying()) {
                    t2Var.e();
                    k0Var.i();
                } else if (nVar.getPosition() > 0) {
                    t2Var.p();
                    k0Var.l();
                } else {
                    t2Var.i();
                }
            }
            o();
        }
    }

    @Override // com.my.target.t1
    public final View getCloseButton() {
        return this.e.getCloseButton();
    }

    public final void h(e6a e6aVar) {
        if (this.j) {
            xda xdaVar = this.b;
            a(xdaVar, 1, xdaVar.Q.c ? new up9(8192, e6aVar) : new gia());
            return;
        }
        boolean z = this.q;
        if (z && z) {
            o();
            hg hgVar = this.e;
            hgVar.d(false);
            hgVar.f();
            this.q = false;
        }
    }

    @Override // com.my.target.t1
    public final View i() {
        hg hgVar = this.e;
        hgVar.getClass();
        return hgVar;
    }

    public final void j() {
        hg hgVar = this.e;
        hgVar.d(false);
        hgVar.b(true);
        hgVar.f();
        hgVar.e(false);
        hgVar.b.setVisibility(8);
        this.g.setVisible(false);
        m();
    }

    public final void k() {
        t2 t2Var = this.l;
        if (t2Var != null) {
            n nVar = t2Var.d;
            nVar.a();
            t2Var.g.d(!nVar.c());
        }
    }

    public final void l() {
        hg hgVar = this.e;
        hgVar.d(true);
        hgVar.f();
        hgVar.b(false);
        hgVar.e(true);
        this.g.setVisible(true);
    }

    public final void m() {
        hg hgVar = this.e;
        hgVar.d.setVisibility(0);
        hgVar.u.setVisibility(8);
        m2.a aVar = this.d;
        aVar.n(0.0d);
        this.i.removeCallbacks(this.f);
        this.n = a.a;
        aVar.e();
        aVar.a.i = true;
    }

    public final void n() {
        Handler handler = this.i;
        oh5 oh5Var = this.f;
        handler.removeCallbacks(oh5Var);
        handler.postDelayed(oh5Var, 200L);
        this.d.n(this.o / 1000.0d);
        float f = this.p;
        long j = this.o;
        fk fkVar = this.e.u;
        fkVar.setDigit((int) ((j / 1000) + 1));
        fkVar.setProgress((f - j) / f);
    }

    public final void o() {
        this.q = false;
        this.i.removeCallbacks(this.k);
    }

    @Override // com.my.target.t1
    public final void pause() {
        t2 t2Var = this.l;
        if (t2Var != null) {
            t2Var.e();
        }
        this.i.removeCallbacks(this.f);
        o();
    }

    @Override // com.my.target.t1
    public final void resume() {
        if (this.t) {
            return;
        }
        if (this.n != a.a && this.o > 0) {
            n();
        }
        o();
        kha khaVar = this.b.Z;
        t2 t2Var = this.l;
        if (t2Var == null || khaVar == null || !khaVar.Y || this.s) {
            return;
        }
        t2Var.p();
    }

    @Override // com.my.target.t1
    public final void stop() {
        t2 t2Var = this.l;
        if (t2Var != null) {
            t2Var.e();
        }
        o();
    }
}
