package yads;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.MovementMethod;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewParent;
import android.widget.TextView;
import defpackage.bt9;
import defpackage.cv8;
import defpackage.j59;
import defpackage.nl3;
import defpackage.sv9;
import defpackage.ta8;
import defpackage.u96;
import defpackage.us9;
import defpackage.vv9;
import defpackage.xs9;
import defpackage.yr8;
import defpackage.ys9;
import java.util.List;
import yads.bp1;
import yads.g82;

/* JADX INFO: loaded from: classes6.dex */
public final class g82 extends oh2 {
    public final ef2 b;
    public final wo5 c;

    public g82(v41 v41Var, ef2 ef2Var, wo5 wo5Var) {
        super(v41Var);
        this.b = ef2Var;
        this.c = wo5Var;
    }

    /* JADX WARN: Code duplicated, block: B:66:0x0103  */
    @Override // yads.oh2
    public final void a(View view, tt ttVar, p41 p41Var, p41 p41Var2) {
        zo1 zo1Var = (zo1) view;
        b82 b82Var = (b82) p41Var;
        b82 b82Var2 = (b82) p41Var2;
        zo1Var.setDrawingPassOverrideStrategy$mobileads_externalRelease((ml2) ttVar.a.o.l.getValue());
        pq.a(zo1Var, ttVar, b82Var.b, b82Var.d, b82Var.J, b82Var.o, b82Var.D, b82Var.C, b82Var.P, b82Var.O, b82Var.c, b82Var.l);
        fs2 fs2Var = ttVar.b;
        as2 as2Var = b82Var.t;
        as2 as2Var2 = b82Var.y;
        as2 as2Var3 = b82Var.z;
        as2 as2Var4 = b82Var.x;
        as2 as2Var5 = b82Var2 != null ? b82Var2.t : null;
        as2 as2Var6 = b82Var2 != null ? b82Var2.y : null;
        as2 as2Var7 = b82Var2 != null ? b82Var2.z : null;
        as2 as2Var8 = b82Var2 != null ? b82Var2.x : null;
        ef2 ef2Var = this.b;
        if (b82Var2 == null || !ls2.a(as2Var, as2Var5) || !ls2.a(as2Var2, as2Var6) || !ls2.a(as2Var3, as2Var7) || (kw5.a() && !ls2.a(as2Var4, as2Var8))) {
            kw5.a(zo1Var, as2Var, as2Var2, as2Var3, ef2Var, fs2Var);
            kw5.a(zo1Var, as2Var, as2Var2, as2Var3, as2Var4, ef2Var, fs2Var);
            fs2Var = fs2Var;
            kw5.a(zo1Var, as2Var2, as2Var3, as2Var4, fs2Var);
        }
        e(zo1Var, b82Var, b82Var2, fs2Var);
        kw5.a(zo1Var, b82Var.v, b82Var.w, b82Var2 != null ? b82Var2.v : null, b82Var2 != null ? b82Var2.w : null, fs2Var, zo1Var);
        kw5.b(zo1Var, b82Var.H, b82Var.v, b82Var2 != null ? b82Var2.H : null, b82Var2 != null ? b82Var2.v : null, fs2Var, zo1Var);
        b(zo1Var, b82Var, b82Var2, fs2Var);
        f(zo1Var, b82Var, b82Var2, fs2Var);
        i(zo1Var, b82Var, b82Var2, fs2Var);
        d(zo1Var, b82Var, b82Var2, fs2Var);
        fs2 fs2Var2 = fs2Var;
        a(zo1Var, ttVar, b82Var, b82Var2, fs2Var2);
        if (b82Var.Q == null && b82Var.F == null) {
            a(zo1Var, ttVar, b82Var, b82Var2);
        } else {
            d(zo1Var, ttVar, b82Var);
        }
        r72 r72Var = b82Var.p;
        if ((r72Var != null ? r72Var.c : null) != null) {
            c(zo1Var, ttVar, b82Var);
        } else {
            if ((r72Var != null ? r72Var.b : null) != null) {
                c(zo1Var, ttVar, b82Var);
            } else {
                if ((r72Var != null ? r72Var.a : null) == null) {
                    a(zo1Var, r72Var, b82Var2 != null ? b82Var2.p : null, ttVar.b);
                } else {
                    c(zo1Var, ttVar, b82Var);
                }
            }
        }
        a(zo1Var, b82Var, b82Var2, fs2Var2);
        vq0 vq0Var = ttVar.a;
        m82 m82Var = b82Var.a0;
        if (m82Var == null) {
            zo1Var.getPaint().setShader(null);
        } else if (m82Var instanceof k82) {
            a(zo1Var, vq0Var, ((k82) m82Var).a, b82Var2 != null ? b82Var2.a0 : null, fs2Var2);
        } else if (m82Var instanceof l82) {
            a(zo1Var, ((l82) m82Var).a, b82Var2 != null ? b82Var2.a0 : null, fs2Var2);
        }
        g(zo1Var, b82Var, b82Var2, fs2Var2);
        c(zo1Var, b82Var, b82Var2, fs2Var2);
        h(zo1Var, b82Var, b82Var2, fs2Var2);
        zo1Var.setFocusable(zo1Var.isFocusable() || b82Var.s != null);
    }

    public final void b(zo1 zo1Var, b82 b82Var, b82 b82Var2, fs2 fs2Var) {
        if (ls2.a(b82Var.u, b82Var2 != null ? b82Var2.u : null)) {
            return;
        }
        as2 as2Var = b82Var.u;
        String str = as2Var != null ? (String) as2Var.a(fs2Var) : null;
        if (str == null || !(!ta8.M(str))) {
            str = null;
        }
        zo1Var.setFontFeatureSettings(str);
        if (ls2.a(b82Var.u)) {
            return;
        }
        yr8 yr8Var = new yr8(this, zo1Var, b82Var, fs2Var, 2);
        as2 as2Var2 = b82Var.u;
        zo1Var.r.a(as2Var2 != null ? as2Var2.a(fs2Var, yr8Var) : null);
    }

    public final void c(zo1 zo1Var, tt ttVar, b82 b82Var) {
        l42 l42Var;
        as2 as2Var;
        l42 l42Var2;
        as2 as2Var2;
        a(zo1Var, ttVar, b82Var);
        r72 r72Var = b82Var.p;
        if (r72Var == null) {
            return;
        }
        fs2 fs2Var = ttVar.b;
        us9 us9Var = new us9(this, zo1Var, ttVar, b82Var, 1);
        zo1Var.r.a(r72Var.d.a(fs2Var, us9Var));
        List<y72> list = r72Var.c;
        if (list != null) {
            for (y72 y72Var : list) {
                zo1Var.r.a(y72Var.q.a(fs2Var, us9Var));
                as2 as2Var3 = y72Var.f;
                zo1Var.r.a(as2Var3 != null ? as2Var3.a(fs2Var, us9Var) : null);
                as2 as2Var4 = y72Var.b;
                zo1Var.r.a(as2Var4 != null ? as2Var4.a(fs2Var, us9Var) : null);
                zo1Var.r.a(y72Var.d.a(fs2Var, us9Var));
                as2 as2Var5 = y72Var.i;
                zo1Var.r.a(as2Var5 != null ? as2Var5.a(fs2Var, us9Var) : null);
                zo1Var.r.a(y72Var.j.a(fs2Var, us9Var));
                as2 as2Var6 = y72Var.g;
                zo1Var.r.a(as2Var6 != null ? as2Var6.a(fs2Var, us9Var) : null);
                as2 as2Var7 = y72Var.l;
                zo1Var.r.a(as2Var7 != null ? as2Var7.a(fs2Var, us9Var) : null);
                as2 as2Var8 = y72Var.m;
                zo1Var.r.a(as2Var8 != null ? as2Var8.a(fs2Var, us9Var) : null);
                as2 as2Var9 = y72Var.h;
                zo1Var.r.a(as2Var9 != null ? as2Var9.a(fs2Var, us9Var) : null);
                as2 as2Var10 = y72Var.n;
                zo1Var.r.a(as2Var10 != null ? as2Var10.a(fs2Var, us9Var) : null);
                as2 as2Var11 = y72Var.o;
                zo1Var.r.a(as2Var11 != null ? as2Var11.a(fs2Var, us9Var) : null);
                as2 as2Var12 = y72Var.r;
                zo1Var.r.a(as2Var12 != null ? as2Var12.a(fs2Var, us9Var) : null);
                as2 as2Var13 = y72Var.s;
                zo1Var.r.a(as2Var13 != null ? as2Var13.a(fs2Var, us9Var) : null);
                as2 as2Var14 = y72Var.u;
                zo1Var.r.a(as2Var14 != null ? as2Var14.a(fs2Var, us9Var) : null);
                as2 as2Var15 = y72Var.v;
                zo1Var.r.a(as2Var15 != null ? as2Var15.a(fs2Var, us9Var) : null);
                h92 h92Var = y72Var.c;
                Object objA = h92Var != null ? h92Var.a() : null;
                if (objA instanceof t22) {
                    zo1Var.r.a(((t22) objA).a.a(fs2Var, us9Var));
                }
                aa2 aa2Var = y72Var.p;
                Object objA2 = aa2Var != null ? aa2Var.a() : null;
                if (objA2 instanceof qa2) {
                    qa2 qa2Var = (qa2) objA2;
                    zo1Var.r.a(qa2Var.b.a(fs2Var, us9Var));
                    zo1Var.r.a(qa2Var.a.a(fs2Var, us9Var));
                } else if (objA2 instanceof ka2) {
                    ka2 ka2Var = (ka2) objA2;
                    zo1Var.r.a(ka2Var.d.a(fs2Var, us9Var));
                    zo1Var.r.a(ka2Var.a.a(fs2Var, us9Var));
                    zo1Var.r.a(ka2Var.b.a(fs2Var, us9Var));
                    zo1Var.r.a(ka2Var.c.a(fs2Var, us9Var));
                    zo1Var.r.a(ka2Var.e.b.a(fs2Var, us9Var));
                    zo1Var.r.a(ka2Var.e.a.a(fs2Var, us9Var));
                }
                o92 o92Var = y72Var.e;
                zo1Var.r.a((o92Var == null || (l42Var2 = o92Var.b) == null || (as2Var2 = l42Var2.a) == null) ? null : as2Var2.a(fs2Var, us9Var));
                o92 o92Var2 = y72Var.e;
                zo1Var.r.a((o92Var2 == null || (l42Var = o92Var2.b) == null || (as2Var = l42Var.d) == null) ? null : as2Var.a(fs2Var, us9Var));
                if (kw5.a()) {
                    as2 as2Var16 = y72Var.k;
                    zo1Var.r.a(as2Var16 != null ? as2Var16.a(fs2Var, us9Var) : null);
                }
            }
        }
        List<x72> list2 = r72Var.b;
        if (list2 != null) {
            for (x72 x72Var : list2) {
                zo1Var.r.a(x72Var.f.a(fs2Var, us9Var));
                zo1Var.r.a(x72Var.i.a(fs2Var, us9Var));
                as2 as2Var17 = x72Var.g;
                zo1Var.r.a(as2Var17 != null ? as2Var17.a(fs2Var, us9Var) : null);
                zo1Var.r.a(x72Var.j.b.a(fs2Var, us9Var));
                zo1Var.r.a(x72Var.j.a.a(fs2Var, us9Var));
            }
        }
    }

    public final void d(final zo1 zo1Var, final tt ttVar, final b82 b82Var) {
        l42 l42Var;
        as2 as2Var;
        l42 l42Var2;
        as2 as2Var2;
        fs2 fs2Var = ttVar.b;
        b(zo1Var, ttVar, b82Var);
        a(zo1Var, (String) b82Var.W.a(fs2Var));
        zo1Var.r.a(b82Var.W.a(fs2Var, new ys9(this, zo1Var, ttVar, b82Var, 1)));
        nl3 nl3Var = new nl3() { // from class: qv9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return g82.b(this.b, zo1Var, ttVar, b82Var, obj);
            }
        };
        zo1Var.r.a(b82Var.v.a(fs2Var, nl3Var));
        zo1Var.r.a(b82Var.w.a(fs2Var, nl3Var));
        as2 as2Var3 = b82Var.t;
        zo1Var.r.a(as2Var3 != null ? as2Var3.a(fs2Var, nl3Var) : null);
        as2 as2Var4 = b82Var.I;
        zo1Var.r.a(as2Var4 != null ? as2Var4.a(fs2Var, nl3Var) : null);
        List<y72> list = b82Var.Q;
        if (list != null) {
            for (y72 y72Var : list) {
                zo1Var.r.a(y72Var.q.a(fs2Var, nl3Var));
                as2 as2Var5 = y72Var.f;
                zo1Var.r.a(as2Var5 != null ? as2Var5.a(fs2Var, nl3Var) : null);
                as2 as2Var6 = y72Var.b;
                zo1Var.r.a(as2Var6 != null ? as2Var6.a(fs2Var, nl3Var) : null);
                zo1Var.r.a(y72Var.d.a(fs2Var, nl3Var));
                as2 as2Var7 = y72Var.i;
                zo1Var.r.a(as2Var7 != null ? as2Var7.a(fs2Var, nl3Var) : null);
                zo1Var.r.a(y72Var.j.a(fs2Var, nl3Var));
                as2 as2Var8 = y72Var.g;
                zo1Var.r.a(as2Var8 != null ? as2Var8.a(fs2Var, nl3Var) : null);
                as2 as2Var9 = y72Var.l;
                zo1Var.r.a(as2Var9 != null ? as2Var9.a(fs2Var, nl3Var) : null);
                as2 as2Var10 = y72Var.m;
                zo1Var.r.a(as2Var10 != null ? as2Var10.a(fs2Var, nl3Var) : null);
                as2 as2Var11 = y72Var.h;
                zo1Var.r.a(as2Var11 != null ? as2Var11.a(fs2Var, nl3Var) : null);
                as2 as2Var12 = y72Var.n;
                zo1Var.r.a(as2Var12 != null ? as2Var12.a(fs2Var, nl3Var) : null);
                as2 as2Var13 = y72Var.o;
                zo1Var.r.a(as2Var13 != null ? as2Var13.a(fs2Var, nl3Var) : null);
                as2 as2Var14 = y72Var.r;
                zo1Var.r.a(as2Var14 != null ? as2Var14.a(fs2Var, nl3Var) : null);
                as2 as2Var15 = y72Var.s;
                zo1Var.r.a(as2Var15 != null ? as2Var15.a(fs2Var, nl3Var) : null);
                as2 as2Var16 = y72Var.u;
                zo1Var.r.a(as2Var16 != null ? as2Var16.a(fs2Var, nl3Var) : null);
                as2 as2Var17 = y72Var.v;
                zo1Var.r.a(as2Var17 != null ? as2Var17.a(fs2Var, nl3Var) : null);
                h92 h92Var = y72Var.c;
                Object objA = h92Var != null ? h92Var.a() : null;
                if (objA instanceof t22) {
                    zo1Var.r.a(((t22) objA).a.a(fs2Var, nl3Var));
                }
                aa2 aa2Var = y72Var.p;
                Object objA2 = aa2Var != null ? aa2Var.a() : null;
                if (objA2 instanceof qa2) {
                    qa2 qa2Var = (qa2) objA2;
                    zo1Var.r.a(qa2Var.b.a(fs2Var, nl3Var));
                    zo1Var.r.a(qa2Var.a.a(fs2Var, nl3Var));
                } else if (objA2 instanceof ka2) {
                    ka2 ka2Var = (ka2) objA2;
                    zo1Var.r.a(ka2Var.d.a(fs2Var, nl3Var));
                    zo1Var.r.a(ka2Var.a.a(fs2Var, nl3Var));
                    zo1Var.r.a(ka2Var.b.a(fs2Var, nl3Var));
                    zo1Var.r.a(ka2Var.c.a(fs2Var, nl3Var));
                    zo1Var.r.a(ka2Var.e.b.a(fs2Var, nl3Var));
                    zo1Var.r.a(ka2Var.e.a.a(fs2Var, nl3Var));
                }
                o92 o92Var = y72Var.e;
                zo1Var.r.a((o92Var == null || (l42Var2 = o92Var.b) == null || (as2Var2 = l42Var2.a) == null) ? null : as2Var2.a(fs2Var, nl3Var));
                o92 o92Var2 = y72Var.e;
                zo1Var.r.a((o92Var2 == null || (l42Var = o92Var2.b) == null || (as2Var = l42Var.d) == null) ? null : as2Var.a(fs2Var, nl3Var));
                if (kw5.a()) {
                    as2 as2Var18 = y72Var.k;
                    zo1Var.r.a(as2Var18 != null ? as2Var18.a(fs2Var, nl3Var) : null);
                }
            }
        }
        List<x72> list2 = b82Var.F;
        if (list2 != null) {
            for (x72 x72Var : list2) {
                zo1Var.r.a(x72Var.f.a(fs2Var, nl3Var));
                zo1Var.r.a(x72Var.d.a(fs2Var, nl3Var));
                zo1Var.r.a(x72Var.i.a(fs2Var, nl3Var));
                zo1Var.r.a(x72Var.b.a(fs2Var, nl3Var));
                as2 as2Var19 = x72Var.g;
                zo1Var.r.a(as2Var19 != null ? as2Var19.a(fs2Var, nl3Var) : null);
                zo1Var.r.a(x72Var.j.b.a(fs2Var, nl3Var));
                zo1Var.r.a(x72Var.j.a.a(fs2Var, nl3Var));
            }
        }
    }

    public final void e(zo1 zo1Var, b82 b82Var, b82 b82Var2, fs2 fs2Var) {
        if (ls2.a(b82Var.X, b82Var2 != null ? b82Var2.X : null)) {
            if (ls2.a(b82Var.Y, b82Var2 != null ? b82Var2.Y : null)) {
                return;
            }
        }
        f11 f11Var = (f11) b82Var.X.a(fs2Var);
        zo1Var.setGravity(jf2.a(f11Var, (h11) b82Var.Y.a(fs2Var)));
        int iOrdinal = f11Var.ordinal();
        int i = 4;
        if (iOrdinal != 1) {
            i = (iOrdinal == 2 || iOrdinal == 4) ? 6 : 5;
        }
        zo1Var.setTextAlignment(i);
        as2 as2Var = b82Var.X;
        if ((as2Var instanceof xr2) && (b82Var.Y instanceof xr2)) {
            return;
        }
        bt9 bt9Var = new bt9(this, zo1Var, b82Var, fs2Var);
        zo1Var.r.a(as2Var.a(fs2Var, bt9Var));
        zo1Var.r.a(b82Var.Y.a(fs2Var, bt9Var));
    }

    public final void f(zo1 zo1Var, b82 b82Var, b82 b82Var2, fs2 fs2Var) {
        if (ls2.a(b82Var.Z, b82Var2 != null ? b82Var2.Z : null)) {
            if (ls2.a(b82Var.s, b82Var2 != null ? b82Var2.s : null)) {
                return;
            }
        }
        int iIntValue = ((Number) b82Var.Z.a(fs2Var)).intValue();
        as2 as2Var = b82Var.s;
        Integer num = as2Var != null ? (Integer) as2Var.a(fs2Var) : null;
        zo1Var.setTextColor(new ColorStateList(new int[][]{new int[]{R.attr.state_focused}, new int[0]}, new int[]{num != null ? num.intValue() : iIntValue, iIntValue}));
        if ((b82Var.Z instanceof xr2) && ls2.a(b82Var.s)) {
            return;
        }
        vv9 vv9Var = new vv9(this, zo1Var, b82Var, fs2Var, 0);
        zo1Var.r.a(b82Var.Z.a(fs2Var, vv9Var));
        as2 as2Var2 = b82Var.s;
        zo1Var.r.a(as2Var2 != null ? as2Var2.a(fs2Var, vv9Var) : null);
    }

    public final void g(final zo1 zo1Var, final b82 b82Var, b82 b82Var2, final fs2 fs2Var) {
        nv1 nv1Var;
        ac1 ac1Var;
        as2 as2Var;
        nv1 nv1Var2;
        ac1 ac1Var2;
        as2 as2Var2;
        nv1 nv1Var3;
        ac1 ac1Var3;
        as2 as2Var3;
        nv1 nv1Var4;
        ac1 ac1Var4;
        as2 as2Var4;
        as2 as2Var5;
        as2 as2Var6;
        as2 as2Var7;
        nv1 nv1Var5;
        ac1 ac1Var5;
        nv1 nv1Var6;
        ac1 ac1Var6;
        nv1 nv1Var7;
        ac1 ac1Var7;
        nv1 nv1Var8;
        ac1 ac1Var8;
        xz1 xz1Var;
        nv1 nv1Var9;
        ac1 ac1Var9;
        nv1 nv1Var10;
        ac1 ac1Var10;
        xz1 xz1Var2;
        nv1 nv1Var11;
        ac1 ac1Var11;
        nv1 nv1Var12;
        ac1 ac1Var12;
        xz1 xz1Var3;
        nv1 nv1Var13;
        ac1 ac1Var13;
        nv1 nv1Var14;
        ac1 ac1Var14;
        xz1 xz1Var4;
        nv1 nv1Var15;
        ac1 ac1Var15;
        nv1 nv1Var16;
        ac1 ac1Var16;
        xz1 xz1Var5;
        xz1 xz1Var6;
        xz1 xz1Var7;
        xz1 xz1Var8 = b82Var.b0;
        tp0 tp0VarA = null;
        if (ls2.a(xz1Var8 != null ? xz1Var8.a : null, (b82Var2 == null || (xz1Var7 = b82Var2.b0) == null) ? null : xz1Var7.a)) {
            xz1 xz1Var9 = b82Var.b0;
            if (ls2.a(xz1Var9 != null ? xz1Var9.b : null, (b82Var2 == null || (xz1Var6 = b82Var2.b0) == null) ? null : xz1Var6.b)) {
                xz1 xz1Var10 = b82Var.b0;
                if (ls2.a(xz1Var10 != null ? xz1Var10.c : null, (b82Var2 == null || (xz1Var5 = b82Var2.b0) == null) ? null : xz1Var5.c)) {
                    xz1 xz1Var11 = b82Var.b0;
                    if (ls2.a((xz1Var11 == null || (nv1Var16 = xz1Var11.d) == null || (ac1Var16 = nv1Var16.a) == null) ? null : ac1Var16.b, (b82Var2 == null || (xz1Var4 = b82Var2.b0) == null || (nv1Var15 = xz1Var4.d) == null || (ac1Var15 = nv1Var15.a) == null) ? null : ac1Var15.b)) {
                        xz1 xz1Var12 = b82Var.b0;
                        if (ls2.a((xz1Var12 == null || (nv1Var14 = xz1Var12.d) == null || (ac1Var14 = nv1Var14.a) == null) ? null : ac1Var14.a, (b82Var2 == null || (xz1Var3 = b82Var2.b0) == null || (nv1Var13 = xz1Var3.d) == null || (ac1Var13 = nv1Var13.a) == null) ? null : ac1Var13.a)) {
                            xz1 xz1Var13 = b82Var.b0;
                            if (ls2.a((xz1Var13 == null || (nv1Var12 = xz1Var13.d) == null || (ac1Var12 = nv1Var12.b) == null) ? null : ac1Var12.b, (b82Var2 == null || (xz1Var2 = b82Var2.b0) == null || (nv1Var11 = xz1Var2.d) == null || (ac1Var11 = nv1Var11.b) == null) ? null : ac1Var11.b)) {
                                xz1 xz1Var14 = b82Var.b0;
                                if (ls2.a((xz1Var14 == null || (nv1Var10 = xz1Var14.d) == null || (ac1Var10 = nv1Var10.b) == null) ? null : ac1Var10.a, (b82Var2 == null || (xz1Var = b82Var2.b0) == null || (nv1Var9 = xz1Var.d) == null || (ac1Var9 = nv1Var9.b) == null) ? null : ac1Var9.a)) {
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
        final xz1 xz1Var15 = b82Var.b0;
        final DisplayMetrics displayMetrics = zo1Var.getResources().getDisplayMetrics();
        a(zo1Var, xz1Var15 != null ? a(xz1Var15, fs2Var, displayMetrics, ((Number) b82Var.Z.a(fs2Var)).intValue()) : null);
        xz1 xz1Var16 = b82Var.b0;
        if (ls2.a(xz1Var16 != null ? xz1Var16.a : null)) {
            xz1 xz1Var17 = b82Var.b0;
            if (ls2.a(xz1Var17 != null ? xz1Var17.b : null)) {
                xz1 xz1Var18 = b82Var.b0;
                if (ls2.a(xz1Var18 != null ? xz1Var18.c : null)) {
                    xz1 xz1Var19 = b82Var.b0;
                    if (ls2.a((xz1Var19 == null || (nv1Var8 = xz1Var19.d) == null || (ac1Var8 = nv1Var8.a) == null) ? null : ac1Var8.b)) {
                        xz1 xz1Var20 = b82Var.b0;
                        if (ls2.a((xz1Var20 == null || (nv1Var7 = xz1Var20.d) == null || (ac1Var7 = nv1Var7.a) == null) ? null : ac1Var7.a)) {
                            xz1 xz1Var21 = b82Var.b0;
                            if (ls2.a((xz1Var21 == null || (nv1Var6 = xz1Var21.d) == null || (ac1Var6 = nv1Var6.b) == null) ? null : ac1Var6.b)) {
                                xz1 xz1Var22 = b82Var.b0;
                                if (ls2.a((xz1Var22 == null || (nv1Var5 = xz1Var22.d) == null || (ac1Var5 = nv1Var5.b) == null) ? null : ac1Var5.a)) {
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
        nl3 nl3Var = new nl3() { // from class: nv9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return g82.a(this.b, zo1Var, xz1Var15, fs2Var, displayMetrics, b82Var, obj);
            }
        };
        zo1Var.r.a((xz1Var15 == null || (as2Var7 = xz1Var15.a) == null) ? null : as2Var7.a(fs2Var, nl3Var));
        zo1Var.r.a((xz1Var15 == null || (as2Var6 = xz1Var15.c) == null) ? null : as2Var6.a(fs2Var, nl3Var));
        zo1Var.r.a((xz1Var15 == null || (as2Var5 = xz1Var15.b) == null) ? null : as2Var5.a(fs2Var, nl3Var));
        zo1Var.r.a((xz1Var15 == null || (nv1Var4 = xz1Var15.d) == null || (ac1Var4 = nv1Var4.a) == null || (as2Var4 = ac1Var4.b) == null) ? null : as2Var4.a(fs2Var, nl3Var));
        zo1Var.r.a((xz1Var15 == null || (nv1Var3 = xz1Var15.d) == null || (ac1Var3 = nv1Var3.a) == null || (as2Var3 = ac1Var3.a) == null) ? null : as2Var3.a(fs2Var, nl3Var));
        zo1Var.r.a((xz1Var15 == null || (nv1Var2 = xz1Var15.d) == null || (ac1Var2 = nv1Var2.b) == null || (as2Var2 = ac1Var2.b) == null) ? null : as2Var2.a(fs2Var, nl3Var));
        if (xz1Var15 != null && (nv1Var = xz1Var15.d) != null && (ac1Var = nv1Var.b) != null && (as2Var = ac1Var.a) != null) {
            tp0VarA = as2Var.a(fs2Var, nl3Var);
        }
        zo1Var.r.a(tp0VarA);
    }

    public final void h(zo1 zo1Var, b82 b82Var, b82 b82Var2, fs2 fs2Var) {
        if (ls2.a(b82Var.c0, b82Var2 != null ? b82Var2.c0 : null)) {
            return;
        }
        zo1Var.setTightenWidth(((Boolean) b82Var.c0.a(fs2Var)).booleanValue());
        as2 as2Var = b82Var.c0;
        if (as2Var instanceof xr2) {
            return;
        }
        zo1Var.r.a(as2Var.a(fs2Var, new cv8(1, this, zo1Var)));
    }

    public final void i(zo1 zo1Var, b82 b82Var, b82 b82Var2, fs2 fs2Var) {
        if (ls2.a(b82Var.k0, b82Var2 != null ? b82Var2.k0 : null)) {
            return;
        }
        int iOrdinal = ((bp1) b82Var.k0.a(fs2Var)).ordinal();
        if (iOrdinal == 0) {
            zo1Var.setPaintFlags(zo1Var.getPaintFlags() & (-9));
        } else if (iOrdinal == 1) {
            zo1Var.setPaintFlags(zo1Var.getPaintFlags() | 8);
        }
        as2 as2Var = b82Var.k0;
        if (as2Var instanceof xr2) {
            return;
        }
        zo1Var.r.a(as2Var.a(fs2Var, new defpackage.ml1(1, this, zo1Var)));
    }

    public static final j59 b(g82 g82Var, zo1 zo1Var, b82 b82Var, fs2 fs2Var, Object obj) {
        as2 as2Var = b82Var.u;
        String str = null;
        String str2 = as2Var != null ? (String) as2Var.a(fs2Var) : null;
        g82Var.getClass();
        if (str2 != null && (!ta8.M(str2))) {
            str = str2;
        }
        zo1Var.setFontFeatureSettings(str);
        return j59.a;
    }

    public static final j59 b(g82 g82Var, zo1 zo1Var, bp1 bp1Var) {
        g82Var.getClass();
        int iOrdinal = bp1Var.ordinal();
        if (iOrdinal == 0) {
            zo1Var.setPaintFlags(zo1Var.getPaintFlags() & (-9));
        } else if (iOrdinal == 1) {
            zo1Var.setPaintFlags(zo1Var.getPaintFlags() | 8);
        }
        return j59.a;
    }

    public static final j59 b(g82 g82Var, zo1 zo1Var, boolean z) {
        g82Var.getClass();
        zo1Var.setTightenWidth(z);
        return j59.a;
    }

    public static final j59 b(g82 g82Var, zo1 zo1Var, tt ttVar, b82 b82Var, Object obj) {
        g82Var.b(zo1Var, ttVar, b82Var);
        return j59.a;
    }

    public final void b(zo1 zo1Var, tt ttVar, b82 b82Var) {
        wo5 wo5Var = this.c;
        defpackage.u uVar = new defpackage.u(zo1Var, 6);
        wo5Var.getClass();
        wo5Var.a(ttVar, zo1Var, b82Var, (String) b82Var.W.a(ttVar.b), b82Var.Q, b82Var.F, null, uVar);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0079  */
    public static void a(zo1 zo1Var, vq0 vq0Var, Long l, Long l2) {
        int i;
        lb lbVar = zo1Var.s;
        if (lbVar != null) {
            lbVar.b();
        }
        int i2 = Integer.MIN_VALUE;
        if (l != null && l2 != null) {
            lb lbVar2 = new lb(zo1Var, (ml2) vq0Var.w().l.getValue());
            long jLongValue = l.longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                i = (int) jLongValue;
            } else {
                i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            long jLongValue2 = l2.longValue();
            long j2 = jLongValue2 >> 31;
            if (j2 == 0 || j2 == -1) {
                i2 = (int) jLongValue2;
            } else if (jLongValue2 > 0) {
                i2 = Integer.MAX_VALUE;
            }
            lbVar2.a(new jb(i, i2));
            zo1Var.setAdaptiveMaxLines$mobileads_externalRelease(lbVar2);
            return;
        }
        if (l != null) {
            long jLongValue3 = l.longValue();
            long j3 = jLongValue3 >> 31;
            if (j3 == 0 || j3 == -1) {
                i2 = (int) jLongValue3;
            } else if (jLongValue3 > 0) {
                i2 = Integer.MAX_VALUE;
            }
        } else {
            i2 = Integer.MAX_VALUE;
        }
        zo1Var.setMaxLines(i2);
    }

    public final void a(zo1 zo1Var, String str) {
        if (zo1Var.getHyphenationFrequency() != 0) {
            zo1Var.setHyphenationFrequency(0);
        }
    }

    public static final int a(g82 g82Var, zo1 zo1Var) {
        g82Var.getClass();
        return Math.min((zo1Var.getWidth() - zo1Var.getPaddingRight()) - zo1Var.getPaddingLeft(), (int) zo1Var.getPaint().measureText(zo1Var.getText().toString()));
    }

    public static final j59 a(g82 g82Var, zo1 zo1Var, tt ttVar, b82 b82Var, fs2 fs2Var, Object obj) {
        vq0 vq0Var = ttVar.a;
        as2 as2Var = b82Var.L;
        Long l = as2Var != null ? (Long) as2Var.a(fs2Var) : null;
        as2 as2Var2 = b82Var.M;
        Long l2 = as2Var2 != null ? (Long) as2Var2.a(fs2Var) : null;
        g82Var.getClass();
        a(zo1Var, vq0Var, l, l2);
        return j59.a;
    }

    public final void a(final zo1 zo1Var, final tt ttVar, final b82 b82Var, b82 b82Var2, final fs2 fs2Var) {
        if (ls2.a(b82Var.L, b82Var2 != null ? b82Var2.L : null)) {
            if (ls2.a(b82Var.M, b82Var2 != null ? b82Var2.M : null)) {
                return;
            }
        }
        vq0 vq0Var = ttVar.a;
        as2 as2Var = b82Var.L;
        Long l = as2Var != null ? (Long) as2Var.a(fs2Var) : null;
        as2 as2Var2 = b82Var.M;
        a(zo1Var, vq0Var, l, as2Var2 != null ? (Long) as2Var2.a(fs2Var) : null);
        if (ls2.a(b82Var.L) && ls2.a(b82Var.M)) {
            return;
        }
        nl3 nl3Var = new nl3() { // from class: ov9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return g82.a(this, zo1Var, ttVar, b82Var, fs2Var, obj);
            }
        };
        as2 as2Var3 = b82Var.L;
        zo1Var.r.a(as2Var3 != null ? as2Var3.a(fs2Var, nl3Var) : null);
        as2 as2Var4 = b82Var.M;
        zo1Var.r.a(as2Var4 != null ? as2Var4.a(fs2Var, nl3Var) : null);
    }

    public static final j59 a(g82 g82Var, zo1 zo1Var, bp1 bp1Var) {
        g82Var.getClass();
        int iOrdinal = bp1Var.ordinal();
        if (iOrdinal == 0) {
            zo1Var.setPaintFlags(zo1Var.getPaintFlags() & (-17));
        } else if (iOrdinal == 1) {
            zo1Var.setPaintFlags(zo1Var.getPaintFlags() | 16);
        }
        return j59.a;
    }

    public static final j59 a(g82 g82Var, zo1 zo1Var, boolean z) {
        g82Var.getClass();
        MovementMethod movementMethod = zo1Var.getMovementMethod();
        zo1Var.setTextIsSelectable(z);
        if (movementMethod instanceof oi5) {
            zo1Var.setMovementMethod(movementMethod);
        }
        return j59.a;
    }

    public final void a(final zo1 zo1Var, final vq0 vq0Var, final dp1 dp1Var, m82 m82Var, final fs2 fs2Var) {
        ds2 ds2Var;
        if (m82Var instanceof k82) {
            k82 k82Var = (k82) m82Var;
            if (ls2.a(dp1Var.a, k82Var.a.a) && ls2.a(dp1Var.c, k82Var.a.c)) {
                List list = dp1Var.b;
                List list2 = k82Var.a.b;
                if (list == null && list2 == null) {
                    return;
                }
                if (list != null && list2 != null && list.size() == list2.size()) {
                    int i = 0;
                    for (Object obj : list) {
                        int i2 = i + 1;
                        if (i >= 0) {
                            if (gb1.a((cp1) obj, (cp1) list2.get(i))) {
                                i = i2;
                            }
                        } else {
                            u96.o();
                            throw null;
                        }
                    }
                    return;
                }
            }
        }
        a(zo1Var, ((Number) dp1Var.a.a(fs2Var)).longValue(), z30.a(gb1.a(dp1Var, fs2Var), vq0Var));
        if ((dp1Var.a instanceof xr2) && ((ds2Var = dp1Var.c) == null || (ds2Var instanceof y50))) {
            List<cp1> list3 = dp1Var.b;
            if (list3 == null || list3.isEmpty()) {
                return;
            }
            for (cp1 cp1Var : list3) {
                if (cp1Var != null && (!(cp1Var.a instanceof xr2) || !(cp1Var.b instanceof xr2))) {
                }
            }
            return;
        }
        nl3 nl3Var = new nl3() { // from class: tv9
            @Override // defpackage.nl3
            public final Object invoke(Object obj2) {
                return g82.a(this.b, zo1Var, dp1Var, fs2Var, vq0Var, obj2);
            }
        };
        zo1Var.r.a(dp1Var.a.a(fs2Var, nl3Var));
        ds2 ds2Var2 = dp1Var.c;
        zo1Var.r.a(ds2Var2 != null ? ds2Var2.a(fs2Var, nl3Var) : null);
        List<cp1> list4 = dp1Var.b;
        if (list4 != null) {
            for (cp1 cp1Var2 : list4) {
                if (cp1Var2 != null) {
                    zo1Var.a(cp1Var2.a.a(fs2Var, nl3Var));
                    zo1Var.a(cp1Var2.b.a(fs2Var, nl3Var));
                }
            }
        }
    }

    public static final j59 a(g82 g82Var, zo1 zo1Var, dp1 dp1Var, fs2 fs2Var, vq0 vq0Var, Object obj) {
        g82Var.a(zo1Var, ((Number) dp1Var.a.a(fs2Var)).longValue(), z30.a(gb1.a(dp1Var, fs2Var), vq0Var));
        return j59.a;
    }

    public final void a(final zo1 zo1Var, final gw1 gw1Var, m82 m82Var, final fs2 fs2Var) {
        List listA;
        if (m82Var instanceof l82) {
            l82 l82Var = (l82) m82Var;
            if (defpackage.aa4.e(gw1Var.e, l82Var.a.e) && defpackage.aa4.e(gw1Var.a, l82Var.a.a) && defpackage.aa4.e(gw1Var.b, l82Var.a.b) && ls2.a(gw1Var.d, l82Var.a.d)) {
                return;
            }
        }
        final DisplayMetrics displayMetrics = zo1Var.getResources().getDisplayMetrics();
        u35 u35VarA = a(gw1Var.e, displayMetrics, fs2Var);
        p35 p35VarA = a(gw1Var.a, displayMetrics, fs2Var);
        p35 p35VarA2 = a(gw1Var.b, displayMetrics, fs2Var);
        ds2 ds2Var = gw1Var.d;
        if (ds2Var == null || (listA = ds2Var.a(fs2Var)) == null) {
            listA = defpackage.kx2.b;
        }
        List list = listA;
        if (oh6.a(zo1Var) && !zo1Var.isLayoutRequested()) {
            TextPaint paint = zo1Var.getPaint();
            int i = v35.g;
            paint.setShader(q35.a(u35VarA, p35VarA, p35VarA2, defpackage.qn1.s0(list), a(this, zo1Var), (zo1Var.getHeight() - zo1Var.getPaddingBottom()) - zo1Var.getPaddingTop()));
            zo1Var.invalidate();
        } else {
            zo1Var.addOnLayoutChangeListener(new f82(zo1Var, u35VarA, p35VarA, p35VarA2, list, this));
        }
        ds2 ds2Var2 = gw1Var.d;
        if (ds2Var2 == null || (ds2Var2 instanceof y50)) {
            return;
        }
        zo1Var.r.a(ds2Var2.a(fs2Var, new nl3() { // from class: rv9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return g82.a(this.b, zo1Var, gw1Var, displayMetrics, fs2Var, (List) obj);
            }
        }));
    }

    public static final j59 a(g82 g82Var, zo1 zo1Var, gw1 gw1Var, DisplayMetrics displayMetrics, fs2 fs2Var, List list) {
        gx1 gx1Var = gw1Var.e;
        g82Var.getClass();
        u35 u35VarA = a(gx1Var, displayMetrics, fs2Var);
        p35 p35VarA = a(gw1Var.a, displayMetrics, fs2Var);
        p35 p35VarA2 = a(gw1Var.b, displayMetrics, fs2Var);
        if (oh6.a(zo1Var) && !zo1Var.isLayoutRequested()) {
            TextPaint paint = zo1Var.getPaint();
            int i = v35.g;
            paint.setShader(q35.a(u35VarA, p35VarA, p35VarA2, defpackage.qn1.s0(list), a(g82Var, zo1Var), (zo1Var.getHeight() - zo1Var.getPaddingBottom()) - zo1Var.getPaddingTop()));
            zo1Var.invalidate();
        } else {
            zo1Var.addOnLayoutChangeListener(new f82(zo1Var, u35VarA, p35VarA, p35VarA2, list, g82Var));
        }
        return j59.a;
    }

    public static u35 a(gx1 gx1Var, DisplayMetrics displayMetrics, fs2 fs2Var) {
        s35 s35Var;
        if (gx1Var instanceof ex1) {
            return new r35(pq.a((Number) ((ex1) gx1Var).a.b.a(fs2Var), displayMetrics));
        }
        if (!(gx1Var instanceof fx1)) {
            defpackage.me0.e();
            return null;
        }
        int iOrdinal = ((tx1) ((fx1) gx1Var).a.a.a(fs2Var)).ordinal();
        if (iOrdinal == 0) {
            s35Var = s35.NEAREST_CORNER;
        } else if (iOrdinal == 1) {
            s35Var = s35.FARTHEST_CORNER;
        } else if (iOrdinal == 2) {
            s35Var = s35.NEAREST_SIDE;
        } else if (iOrdinal == 3) {
            s35Var = s35.FARTHEST_SIDE;
        } else {
            defpackage.me0.e();
            return null;
        }
        return new t35(s35Var);
    }

    public static p35 a(jw1 jw1Var, DisplayMetrics displayMetrics, fs2 fs2Var) {
        if (jw1Var instanceof hw1) {
            return new n35(pq.a((Number) ((hw1) jw1Var).a.b.a(fs2Var), displayMetrics));
        }
        if (jw1Var instanceof iw1) {
            return new o35((float) ((Number) ((iw1) jw1Var).a.a.a(fs2Var)).doubleValue());
        }
        defpackage.me0.e();
        return null;
    }

    public static final j59 a(g82 g82Var, zo1 zo1Var, tt ttVar, b82 b82Var, String str) {
        g82Var.b(zo1Var, ttVar, b82Var);
        g82Var.a(zo1Var, str);
        return j59.a;
    }

    public static final j59 a(TextView textView, Spanned spanned) {
        textView.setText(spanned, TextView.BufferType.NORMAL);
        return j59.a;
    }

    public final void a(zo1 zo1Var, tt ttVar, b82 b82Var, b82 b82Var2) {
        if (ls2.a(b82Var.W, b82Var2 != null ? b82Var2.W : null)) {
            if (ls2.a(b82Var.I, b82Var2 != null ? b82Var2.I : null)) {
                if (ls2.a(b82Var.w, b82Var2 != null ? b82Var2.w : null)) {
                    List list = b82Var.q;
                    List list2 = b82Var2 != null ? b82Var2.q : null;
                    if (list == null && list2 == null) {
                        return;
                    }
                    if (list != null && list2 != null && list.size() == list2.size()) {
                        int i = 0;
                        for (Object obj : list) {
                            int i2 = i + 1;
                            if (i >= 0) {
                                if (defpackage.aa4.e(((gd1) obj).a, ((gd1) list2.get(i)).a)) {
                                    i = i2;
                                }
                            } else {
                                u96.o();
                                throw null;
                            }
                        }
                        return;
                    }
                }
            }
        }
        fs2 fs2Var = ttVar.b;
        String str = (String) b82Var.W.a(fs2Var);
        wo5 wo5Var = this.c;
        wo5Var.getClass();
        zo1Var.setText(wo5Var.a(ttVar, zo1Var, b82Var, (String) b82Var.W.a(ttVar.b), null, null, null, null));
        a(zo1Var, str);
        if ((b82Var.W instanceof xr2) && ls2.a(b82Var.I) && ls2.a(b82Var.w)) {
            return;
        }
        sv9 sv9Var = new sv9(b82Var, fs2Var, this, ttVar, zo1Var);
        zo1Var.r.a(b82Var.W.a(fs2Var, sv9Var));
        as2 as2Var = b82Var.I;
        zo1Var.r.a(as2Var != null ? as2Var.a(fs2Var, sv9Var) : null);
        zo1Var.r.a(b82Var.w.a(fs2Var, sv9Var));
    }

    public static final j59 a(b82 b82Var, fs2 fs2Var, g82 g82Var, zo1 zo1Var, tt ttVar, Object obj) {
        String str = (String) b82Var.W.a(fs2Var);
        wo5 wo5Var = g82Var.c;
        wo5Var.getClass();
        zo1Var.setText(wo5Var.a(ttVar, zo1Var, b82Var, (String) b82Var.W.a(ttVar.b), null, null, null, null));
        g82Var.a(zo1Var, str);
        return j59.a;
    }

    public final void a(zo1 zo1Var, r72 r72Var, r72 r72Var2, fs2 fs2Var) {
        as2 as2Var;
        as2 as2Var2;
        tp0 tp0VarA = null;
        if (ls2.a(r72Var != null ? r72Var.d : null, r72Var2 != null ? r72Var2.d : null)) {
            return;
        }
        String str = (r72Var == null || (as2Var2 = r72Var.d) == null) ? null : (String) as2Var2.a(fs2Var);
        if (str == null) {
            str = "…";
        }
        zo1Var.setEllipsis(str);
        if (ls2.a(r72Var != null ? r72Var.d : null)) {
            if (ls2.a(r72Var != null ? r72Var.d : null)) {
                return;
            }
        }
        if (r72Var != null && (as2Var = r72Var.d) != null) {
            tp0VarA = as2Var.a(fs2Var, new defpackage.kl1(2, this, zo1Var));
        }
        zo1Var.r.a(tp0VarA);
    }

    public static final j59 a(g82 g82Var, zo1 zo1Var, String str) {
        g82Var.getClass();
        if (str == null) {
            str = "…";
        }
        zo1Var.setEllipsis(str);
        return j59.a;
    }

    public static final j59 a(g82 g82Var, zo1 zo1Var, tt ttVar, b82 b82Var, Object obj) {
        g82Var.a(zo1Var, ttVar, b82Var);
        return j59.a;
    }

    public final void a(zo1 zo1Var, tt ttVar, b82 b82Var) {
        r72 r72Var = b82Var.p;
        if (r72Var == null) {
            zo1Var.setEllipsis("…");
            return;
        }
        wo5 wo5Var = this.c;
        defpackage.ca2 ca2Var = new defpackage.ca2(zo1Var, 6);
        wo5Var.getClass();
        wo5Var.a(ttVar, zo1Var, b82Var, (String) r72Var.d.a(ttVar.b), r72Var.c, r72Var.b, r72Var.a, ca2Var);
    }

    public static final j59 a(an2 an2Var, Spanned spanned) {
        an2Var.setEllipsis(spanned);
        return j59.a;
    }

    public static final j59 a(g82 g82Var, zo1 zo1Var, xz1 xz1Var, fs2 fs2Var, DisplayMetrics displayMetrics, b82 b82Var, Object obj) {
        yj5 yj5VarA;
        if (xz1Var != null) {
            int iIntValue = ((Number) b82Var.Z.a(fs2Var)).intValue();
            g82Var.getClass();
            yj5VarA = a(xz1Var, fs2Var, displayMetrics, iIntValue);
        } else {
            yj5VarA = null;
        }
        g82Var.getClass();
        a(zo1Var, yj5VarA);
        return j59.a;
    }

    public static void a(zo1 zo1Var, yj5 yj5Var) {
        pi2 pi2Var;
        if (yj5Var == null) {
            ViewParent parent = zo1Var.getParent();
            pi2Var = parent instanceof pi2 ? (pi2) parent : null;
            if (pi2Var != null) {
                pi2Var.setClipChildren(true);
                pi2Var.setClipToPadding(true);
            }
            zo1Var.setClipToOutline(true);
            zo1Var.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            return;
        }
        ViewParent parent2 = zo1Var.getParent();
        pi2Var = parent2 instanceof pi2 ? (pi2) parent2 : null;
        if (pi2Var != null) {
            pi2Var.setClipChildren(false);
            pi2Var.setClipToPadding(false);
        }
        zo1Var.setClipToOutline(false);
        zo1Var.setShadowLayer(yj5Var.c, yj5Var.a, yj5Var.b, yj5Var.d);
    }

    public final void c(final zo1 zo1Var, b82 b82Var, b82 b82Var2, fs2 fs2Var) {
        if (ls2.a(b82Var.T, b82Var2 != null ? b82Var2.T : null)) {
            return;
        }
        boolean zBooleanValue = ((Boolean) b82Var.T.a(fs2Var)).booleanValue();
        MovementMethod movementMethod = zo1Var.getMovementMethod();
        zo1Var.setTextIsSelectable(zBooleanValue);
        if (movementMethod instanceof oi5) {
            zo1Var.setMovementMethod(movementMethod);
        }
        as2 as2Var = b82Var.T;
        if (as2Var instanceof xr2) {
            return;
        }
        zo1Var.r.a(as2Var.a(fs2Var, new nl3() { // from class: pv9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return g82.a(this.b, zo1Var, ((Boolean) obj).booleanValue());
            }
        }));
    }

    public final void a(zo1 zo1Var, b82 b82Var, b82 b82Var2, fs2 fs2Var) {
        if (ls2.a(b82Var.i, b82Var2 != null ? b82Var2.i : null)) {
            if (ls2.a(b82Var.j0, b82Var2 != null ? b82Var2.j0 : null)) {
                return;
            }
        }
        a(zo1Var, b82Var, fs2Var);
        if (ls2.a(b82Var.i) && (b82Var.j0 instanceof xr2)) {
            return;
        }
        xs9 xs9Var = new xs9(this, zo1Var, b82Var, fs2Var);
        as2 as2Var = b82Var.i;
        if (as2Var != null) {
            zo1Var.r.a(as2Var.a(fs2Var, xs9Var));
        }
        zo1Var.r.a(b82Var.j0.a(fs2Var, xs9Var));
    }

    public static final j59 c(g82 g82Var, zo1 zo1Var, b82 b82Var, fs2 fs2Var, Object obj) {
        f11 f11Var = (f11) b82Var.X.a(fs2Var);
        h11 h11Var = (h11) b82Var.Y.a(fs2Var);
        g82Var.getClass();
        zo1Var.setGravity(jf2.a(f11Var, h11Var));
        int iOrdinal = f11Var.ordinal();
        int i = 4;
        if (iOrdinal != 1) {
            i = (iOrdinal == 2 || iOrdinal == 4) ? 6 : 5;
        }
        zo1Var.setTextAlignment(i);
        return j59.a;
    }

    public static final j59 a(g82 g82Var, zo1 zo1Var, b82 b82Var, fs2 fs2Var, Object obj) {
        g82Var.getClass();
        a(zo1Var, b82Var, fs2Var);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0040  */
    public static void a(zo1 zo1Var, b82 b82Var, fs2 fs2Var) {
        TextUtils.TruncateAt truncateAt;
        boolean z;
        a82 a82Var = (a82) b82Var.j0.a(fs2Var);
        int iOrdinal = a82Var.ordinal();
        if (iOrdinal == 0) {
            truncateAt = null;
        } else if (iOrdinal == 1) {
            truncateAt = TextUtils.TruncateAt.START;
        } else if (iOrdinal == 2) {
            truncateAt = TextUtils.TruncateAt.END;
        } else if (iOrdinal == 3) {
            truncateAt = TextUtils.TruncateAt.MIDDLE;
        } else {
            defpackage.me0.e();
            return;
        }
        zo1Var.setEllipsisLocation(truncateAt);
        if (a82Var != a82.NONE) {
            as2 as2Var = b82Var.i;
            z = as2Var != null ? ((Boolean) as2Var.a(fs2Var)).booleanValue() : false;
        }
        zo1Var.setAutoEllipsize(z);
    }

    public static yj5 a(xz1 xz1Var, fs2 fs2Var, DisplayMetrics displayMetrics, int i) {
        float fA = pq.a((Number) xz1Var.b.a(fs2Var), displayMetrics);
        float fA2 = pq.a(xz1Var.d.a, displayMetrics, fs2Var);
        float fA3 = pq.a(xz1Var.d.b, displayMetrics, fs2Var);
        Paint paint = new Paint();
        paint.setColor(((Number) xz1Var.c.a(fs2Var)).intValue());
        paint.setAlpha((int) (((Number) xz1Var.a.a(fs2Var)).doubleValue() * ((double) (i >>> 24))));
        return new yj5(fA2, fA3, fA, paint.getColor());
    }

    public final void a(zo1 zo1Var, long j, y30 y30Var) {
        if (oh6.a(zo1Var) && !zo1Var.isLayoutRequested()) {
            TextPaint paint = zo1Var.getPaint();
            int i = lt3.e;
            paint.setShader(kt3.a(j, y30Var.a, y30Var.b, a(this, zo1Var), (zo1Var.getHeight() - zo1Var.getPaddingBottom()) - zo1Var.getPaddingTop()));
            zo1Var.invalidate();
            return;
        }
        zo1Var.addOnLayoutChangeListener(new e82(zo1Var, j, y30Var, this));
    }

    public static final j59 d(g82 g82Var, zo1 zo1Var, b82 b82Var, fs2 fs2Var, Object obj) {
        int iIntValue = ((Number) b82Var.Z.a(fs2Var)).intValue();
        as2 as2Var = b82Var.s;
        Integer num = as2Var != null ? (Integer) as2Var.a(fs2Var) : null;
        g82Var.getClass();
        zo1Var.setTextColor(new ColorStateList(new int[][]{new int[]{R.attr.state_focused}, new int[0]}, new int[]{num != null ? num.intValue() : iIntValue, iIntValue}));
        return j59.a;
    }

    public final void d(final zo1 zo1Var, b82 b82Var, b82 b82Var2, fs2 fs2Var) {
        if (ls2.a(b82Var.V, b82Var2 != null ? b82Var2.V : null)) {
            return;
        }
        int iOrdinal = ((bp1) b82Var.V.a(fs2Var)).ordinal();
        if (iOrdinal == 0) {
            zo1Var.setPaintFlags(zo1Var.getPaintFlags() & (-17));
        } else if (iOrdinal == 1) {
            zo1Var.setPaintFlags(zo1Var.getPaintFlags() | 16);
        }
        as2 as2Var = b82Var.V;
        if (as2Var instanceof xr2) {
            return;
        }
        zo1Var.r.a(as2Var.a(fs2Var, new nl3() { // from class: uv9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return g82.a(this.b, zo1Var, (bp1) obj);
            }
        }));
    }
}
