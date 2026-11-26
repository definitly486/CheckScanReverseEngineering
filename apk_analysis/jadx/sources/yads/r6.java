package yads;

import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class r6 implements c13 {
    public final RelativeLayout a;
    public final a3 b;
    public final m2 c;
    public final n6 d;
    public final ExtendedNativeAdView e;
    public final z2 f;
    public final l15 g;
    public final l10 h;
    public final aa5 i;
    public final ArrayList j;
    public final List k;
    public final long l;
    public int m;
    public boolean n;

    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
        	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    public r6(android.app.Activity r26, yads.pg4 r27, yads.bj4 r28, yads.oa5 r29, java.util.ArrayList r30, yads.fo1 r31, android.widget.RelativeLayout r32, yads.a3 r33, yads.m2 r34, yads.sr3 r35, yads.n6 r36) {
        /*
            Method dump skipped, instruction units count: 528
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.r6.<init>(android.app.Activity, yads.pg4, yads.bj4, yads.oa5, java.util.ArrayList, yads.fo1, android.widget.RelativeLayout, yads.a3, yads.m2, yads.sr3, yads.n6):void");
    }

    public final void a(int i) {
        this.m++;
        if (((rr3) this.j.get(i)).a()) {
            a();
            this.i.a(this.e, this.l, this.g.a);
        } else if (this.m >= this.j.size()) {
            this.c.e();
        } else {
            b();
        }
    }

    public final void b() {
        u6 u6Var = (u6) defpackage.qn1.W(this.m - 1, this.k);
        long j = u6Var != null ? u6Var.a : 0L;
        this.g.a += j;
        l10 l10Var = this.h;
        l10Var.a += l10Var.b;
        l10Var.b = 0L;
        if (this.m < this.j.size()) {
            a(this.m);
        }
    }

    @Override // yads.c13
    public final void c() {
        RelativeLayout relativeLayout = this.a;
        ExtendedNativeAdView extendedNativeAdView = this.e;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        relativeLayout.removeAllViews();
        relativeLayout.addView(extendedNativeAdView, layoutParams);
        z2 z2Var = this.f;
        ExtendedNativeAdView extendedNativeAdView2 = this.e;
        z2Var.getClass();
        try {
            if (z2Var.a instanceof ni4) {
                ((ni4) z2Var.a).b(z2Var.e.a(extendedNativeAdView2, z2Var.d));
                ((ni4) z2Var.a).b(z2Var.c);
            }
            this.m = 1;
            this.n = false;
            rr3 rr3Var = (rr3) defpackage.qn1.V(this.j);
            if (rr3Var != null ? rr3Var.a() : false) {
                a();
                this.i.a(this.e, this.l, this.g.a);
            } else if (this.m >= this.j.size()) {
                this.c.e();
            } else {
                b();
            }
        } catch (yf4 unused) {
            z2Var.b.e();
        }
    }

    @Override // yads.c13
    public final void invalidate() {
        Iterator it = this.j.iterator();
        while (it.hasNext()) {
            ((rr3) it.next()).b();
        }
        pg4 pg4Var = this.f.a;
        if (pg4Var instanceof ni4) {
            ((ni4) pg4Var).b((h80) null);
        }
    }

    public final void a() {
        this.a.setContentDescription("pageIndex: " + this.m);
    }
}
