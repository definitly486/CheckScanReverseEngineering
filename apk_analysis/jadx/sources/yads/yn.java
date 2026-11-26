package yads;

import android.content.Context;
import android.view.ViewGroup;
import com.yandex.mobile.ads.banner.BannerAdView;
import defpackage.rm9;

/* JADX INFO: loaded from: classes6.dex */
public final class yn extends z93 implements gh6 {
    public final defpackage.y22 A;
    public final db B;
    public boolean C;
    public defpackage.mb4 D;
    public final BannerAdView E;
    public final wn F;
    public final gd6 G;
    public final ao H;
    public final zn I;
    public final ah4 J;
    public final qo1 K;
    public final wf6 L;
    public go M;
    public go N;
    public final BannerAdView z;

    public yn(Context context, e4 e4Var, BannerAdView bannerAdView, wn wnVar, t5 t5Var) {
        gd6 gd6Var = new gd6();
        ao aoVar = new ao();
        zn znVar = new zn(bannerAdView.getSdkEnvironmentModule$mobileads_externalRelease());
        ah4 ah4Var = new ah4(e4Var);
        qo1 qo1Var = new qo1();
        wf6 wf6Var = new wf6();
        defpackage.y22 y22VarA = xn.a(rm9.b(), new i90());
        db dbVar = new db(bannerAdView);
        super(context, bannerAdView.getAdConfiguration$mobileads_externalRelease(), t5Var, bannerAdView.getSdkEnvironmentModule$mobileads_externalRelease());
        this.z = bannerAdView;
        this.A = y22VarA;
        this.B = dbVar;
        this.C = true;
        bannerAdView.addVisibilityChangeListener(this);
        this.E = bannerAdView;
        this.F = wnVar;
        this.G = gd6Var;
        this.H = aoVar;
        this.I = znVar;
        this.J = ah4Var;
        this.K = qo1Var;
        this.L = wf6Var;
        bannerAdView.setHorizontalScrollBarEnabled(false);
        bannerAdView.setVerticalScrollBarEnabled(false);
        bannerAdView.setVisibility(8);
        bannerAdView.setBackgroundColor(0);
        wnVar.b.f = ah4Var;
    }

    @Override // yads.pp
    public final void a(d9 d9Var) {
        synchronized (this) {
            this.b.a(s5.NETWORK_REQUEST);
            this.w = d9Var;
        }
        this.J.d = d9Var;
        zn znVar = this.I;
        znVar.getClass();
        o54 o54Var = d9Var.q;
        go goVarA = (o54Var != null ? new o34(d9Var, o54Var) : new mg5(znVar.a)).a(this.a, this, this.x);
        this.N = goVarA;
        goVarA.a(this.a, d9Var);
    }

    @Override // yads.pp
    public final void b() {
        super.b();
        this.z.removeVisibilityChangeListener(this);
        this.C = false;
        defpackage.mb4 mb4Var = this.D;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.D = null;
        wn wnVar = this.F;
        wnVar.c = null;
        wnVar.b.a(null);
        this.L.a(this.E, true);
        this.E.setVisibility(8);
        eh6.a((ViewGroup) this.E);
    }

    @Override // yads.pp
    public final void c() {
        go[] goVarArr = {this.M, this.N};
        for (int i = 0; i < 2; i++) {
            go goVar = goVarArr[i];
            if (goVar != null) {
                goVar.a(this.a);
            }
        }
        super.c();
    }

    @Override // yads.pp
    public final void f() {
        super.f();
        n();
    }

    @Override // yads.pp
    public final void h() {
        super.h();
        go goVar = this.M;
        if (goVar != this.N) {
            go goVar2 = new go[]{goVar}[0];
            if (goVar2 != null) {
                goVar2.a(this.a);
            }
            this.M = this.N;
        }
        sl5 sl5Var = this.c.d.a;
        if (rl5.FLEXIBLE != (sl5Var != null ? sl5Var.b() : null) || this.E.getLayoutParams() == null) {
            return;
        }
        this.E.getLayoutParams().height = -2;
    }

    public final void m() {
        n();
    }

    public final void n() {
        defpackage.mb4 mb4Var = this.D;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.D = null;
        d9 d9Var = this.w;
        if (d9Var != null && d9Var.K && this.C && this.o.a()) {
            e55 e55Var = this.B.a;
            defpackage.ze4 ze4Var = db.b[0];
            pn3 pn3Var = (pn3) e55Var.a.get();
            if (pn3Var == null || eh6.b(pn3Var)) {
                return;
            }
            this.D = defpackage.av0.c(this.A, null, null, new h55(d9Var, this, null), 3);
        }
    }

    @Override // yads.pp
    public final void b(m4 m4Var) {
        super.b(m4Var);
        int i = m4Var.a;
        if (5 == i || 2 == i) {
            return;
        }
        n();
    }

    @Override // yads.pp, yads.tu4
    public final void a(ou4 ou4Var) {
        super.a(ou4Var);
        n();
    }
}
