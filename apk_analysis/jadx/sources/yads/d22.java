package yads;

import android.util.DisplayMetrics;
import android.view.View;
import defpackage.j59;
import defpackage.kq8;
import defpackage.n99;
import defpackage.nl3;
import defpackage.ps9;
import defpackage.ts9;
import defpackage.us9;
import defpackage.xs9;
import defpackage.yr8;
import defpackage.ys9;
import java.util.ArrayList;
import java.util.List;
import yads.d22;
import yads.g12;

/* JADX INFO: loaded from: classes6.dex */
public final class d22 extends oh2 {
    public final ef2 b;
    public final g36 c;
    public final bo2 d;

    public d22(v41 v41Var, ef2 ef2Var, g36 g36Var, bo2 bo2Var) {
        super(v41Var);
        this.b = ef2Var;
        this.c = g36Var;
        this.d = bo2Var;
    }

    public static void a(final s22 s22Var, x12 x12Var, fs2 fs2Var) {
        final s22 s22Var2;
        final fs2 fs2Var2;
        s22Var.i.clear();
        List<v12> list = x12Var.u;
        if (list == null) {
            return;
        }
        final DisplayMetrics displayMetrics = s22Var.getResources().getDisplayMetrics();
        for (v12 v12Var : list) {
            final in5 in5Var = new in5();
            s22Var.i.add(in5Var);
            as2 as2Var = v12Var.c;
            if (as2Var == null) {
                as2Var = x12Var.s;
            }
            s22Var.I.a(as2Var.b(fs2Var, new n99(1, s22Var, in5Var)));
            as2 as2Var2 = v12Var.a;
            if (as2Var2 == null) {
                as2Var2 = x12Var.r;
            }
            s22Var.I.a(as2Var2.b(fs2Var, new nl3() { // from class: ms9
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return d22.b(s22Var, in5Var, ((Long) obj).longValue());
                }
            }));
            boolean z = true;
            final yc1 yc1Var = v12Var.b;
            if (yc1Var == null) {
                in5Var.c = 0;
                in5Var.d = 0;
                s22Var2 = s22Var;
                fs2Var2 = fs2Var;
            } else {
                as2 as2Var3 = yc1Var.e;
                if (as2Var3 == null && yc1Var.b == null) {
                    z = false;
                }
                if (!z) {
                    as2Var3 = yc1Var.c;
                }
                final as2 as2Var4 = as2Var3;
                final as2 as2Var5 = z ? yc1Var.b : yc1Var.d;
                if (as2Var4 != null) {
                    s22Var2 = s22Var;
                    DisplayMetrics displayMetrics2 = displayMetrics;
                    fs2 fs2Var3 = fs2Var;
                    kq8 kq8Var = new kq8(s22Var2, in5Var, yc1Var, fs2Var3, displayMetrics2, 1);
                    fs2Var2 = fs2Var3;
                    displayMetrics = displayMetrics2;
                    s22Var2.I.a(as2Var4.a(fs2Var2, kq8Var));
                } else {
                    s22Var2 = s22Var;
                    fs2Var2 = fs2Var;
                }
                if (as2Var5 != null) {
                    final fs2 fs2Var4 = fs2Var2;
                    final DisplayMetrics displayMetrics3 = displayMetrics;
                    nl3 nl3Var = new nl3() { // from class: ns9
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return d22.b(s22Var2, in5Var, yc1Var, fs2Var4, displayMetrics3, ((Long) obj).longValue());
                        }
                    };
                    fs2Var2 = fs2Var4;
                    displayMetrics = displayMetrics3;
                    s22Var2.I.a(as2Var5.a(fs2Var2, nl3Var));
                }
                as2 as2Var6 = yc1Var.g;
                final DisplayMetrics displayMetrics4 = displayMetrics;
                nl3 nl3Var2 = new nl3() { // from class: os9
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return d22.a(s22Var2, as2Var4, as2Var5, in5Var, fs2Var2, displayMetrics4, (g12) obj);
                    }
                };
                in5Var = in5Var;
                displayMetrics = displayMetrics4;
                as2Var6.b(fs2Var2, nl3Var2);
            }
            tc1 tc1Var = v12Var.d;
            if (tc1Var == null) {
                tc1Var = x12Var.I;
            }
            tc1 tc1Var2 = tc1Var;
            ps9 ps9Var = new ps9(s22Var2, in5Var, tc1Var2, displayMetrics, fs2Var2, 0);
            j59 j59Var = j59.a;
            ps9Var.invoke(j59Var);
            js2.a(s22Var2, tc1Var2, fs2Var2, ps9Var);
            tc1 tc1Var3 = v12Var.e;
            if (tc1Var3 == null) {
                tc1Var3 = x12Var.J;
            }
            final tc1 tc1Var4 = tc1Var3;
            nl3 nl3Var3 = new nl3() { // from class: qs9
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return d22.b(s22Var2, in5Var, tc1Var4, displayMetrics, fs2Var2, obj);
                }
            };
            nl3Var3.invoke(j59Var);
            js2.a(s22Var2, tc1Var4, fs2Var2, nl3Var3);
            s22Var = s22Var2;
            fs2Var = fs2Var2;
        }
    }

    public final void b(final s22 s22Var, final fs2 fs2Var, final w12 w12Var) {
        s22Var.setThumbTextDrawable(w12Var != null ? new cw5(y12.a(w12Var, s22Var.getResources().getDisplayMetrics(), this.b, fs2Var)) : null);
        if (w12Var == null) {
            return;
        }
        s22Var.I.a(w12Var.i.a(fs2Var, new nl3() { // from class: ws9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return d22.b(this.b, s22Var, fs2Var, w12Var, ((Integer) obj).intValue());
            }
        }));
    }

    public final void c(final s22 s22Var, final fs2 fs2Var, final tc1 tc1Var) {
        s22Var.setActiveTickMarkDrawable(tc1Var != null ? jf2.a(tc1Var, s22Var.getResources().getDisplayMetrics(), fs2Var) : null);
        js2.a(s22Var, tc1Var, fs2Var, new nl3() { // from class: ss9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return d22.c(this.b, s22Var, fs2Var, tc1Var, obj);
            }
        });
    }

    public final void d(s22 s22Var, fs2 fs2Var, tc1 tc1Var) {
        s22Var.setInactiveTickMarkDrawable(tc1Var != null ? jf2.a(tc1Var, s22Var.getResources().getDisplayMetrics(), fs2Var) : null);
        js2.a(s22Var, tc1Var, fs2Var, new xs9(this, s22Var, fs2Var, tc1Var, 0));
    }

    public final void e(final s22 s22Var, final fs2 fs2Var, final tc1 tc1Var) {
        s22Var.setActiveTrackDrawable(jf2.a(tc1Var, s22Var.getResources().getDisplayMetrics(), fs2Var));
        js2.a(s22Var, tc1Var, fs2Var, new nl3() { // from class: vs9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return d22.e(this.b, s22Var, fs2Var, tc1Var, obj);
            }
        });
    }

    public final void f(s22 s22Var, fs2 fs2Var, tc1 tc1Var) {
        s22Var.setInactiveTrackDrawable(jf2.a(tc1Var, s22Var.getResources().getDisplayMetrics(), fs2Var));
        js2.a(s22Var, tc1Var, fs2Var, new ys9(this, s22Var, fs2Var, tc1Var, 0));
    }

    public static final j59 e(d22 d22Var, s22 s22Var, fs2 fs2Var, tc1 tc1Var, Object obj) {
        d22Var.getClass();
        s22Var.setActiveTrackDrawable(jf2.a(tc1Var, s22Var.getResources().getDisplayMetrics(), fs2Var));
        return j59.a;
    }

    public static final j59 c(d22 d22Var, s22 s22Var, fs2 fs2Var, tc1 tc1Var, Object obj) {
        d22Var.getClass();
        s22Var.setActiveTickMarkDrawable(tc1Var != null ? jf2.a(tc1Var, s22Var.getResources().getDisplayMetrics(), fs2Var) : null);
        return j59.a;
    }

    public static final j59 f(d22 d22Var, s22 s22Var, fs2 fs2Var, tc1 tc1Var, Object obj) {
        d22Var.getClass();
        s22Var.setInactiveTrackDrawable(jf2.a(tc1Var, s22Var.getResources().getDisplayMetrics(), fs2Var));
        return j59.a;
    }

    public static final j59 d(d22 d22Var, s22 s22Var, fs2 fs2Var, tc1 tc1Var, Object obj) {
        d22Var.getClass();
        s22Var.setInactiveTickMarkDrawable(tc1Var != null ? jf2.a(tc1Var, s22Var.getResources().getDisplayMetrics(), fs2Var) : null);
        return j59.a;
    }

    public static final j59 b(d22 d22Var, s22 s22Var, fs2 fs2Var, tc1 tc1Var, Object obj) {
        d22Var.getClass();
        s22Var.setThumbDrawable(jf2.a(tc1Var, s22Var.getResources().getDisplayMetrics(), fs2Var));
        return j59.a;
    }

    public final void b(s22 s22Var, fs2 fs2Var, tc1 tc1Var) {
        s22Var.setThumbDrawable(jf2.a(tc1Var, s22Var.getResources().getDisplayMetrics(), fs2Var));
        js2.a(s22Var, tc1Var, fs2Var, new yr8(this, s22Var, fs2Var, tc1Var, 1));
    }

    public static final j59 b(d22 d22Var, s22 s22Var, fs2 fs2Var, w12 w12Var, int i) {
        d22Var.getClass();
        s22Var.setThumbTextDrawable(w12Var != null ? new cw5(y12.a(w12Var, s22Var.getResources().getDisplayMetrics(), d22Var.b, fs2Var)) : null);
        return j59.a;
    }

    public static final j59 b(s22 s22Var, d22 d22Var, long j) {
        s22Var.setMaxValue(j);
        d22Var.getClass();
        return j59.a;
    }

    public static final j59 b(s22 s22Var, in5 in5Var, tc1 tc1Var, DisplayMetrics displayMetrics, fs2 fs2Var, Object obj) {
        in5Var.f = jf2.a(tc1Var, displayMetrics, fs2Var);
        s22Var.requestLayout();
        s22Var.invalidate();
        return j59.a;
    }

    public static final j59 b(s22 s22Var, in5 in5Var, yc1 yc1Var, fs2 fs2Var, DisplayMetrics displayMetrics, long j) {
        in5Var.d = y12.a(j, (g12) yc1Var.g.a(fs2Var), displayMetrics);
        s22Var.requestLayout();
        s22Var.invalidate();
        return j59.a;
    }

    public static final j59 b(s22 s22Var, in5 in5Var, long j) {
        in5Var.b = j;
        s22Var.requestLayout();
        s22Var.invalidate();
        return j59.a;
    }

    @Override // yads.oh2
    public final /* bridge */ /* synthetic */ void a(View view, tt ttVar, p41 p41Var, p41 p41Var2, n32 n32Var) {
        a((s22) view, ttVar, (x12) p41Var);
    }

    public static final j59 a(s22 s22Var, d22 d22Var, long j) {
        s22Var.setMinValue(j);
        d22Var.getClass();
        return j59.a;
    }

    public static final j59 a(s22 s22Var, boolean z) {
        s22Var.setInteractive(z);
        return j59.a;
    }

    public final void a(s22 s22Var, tt ttVar, x12 x12Var) {
        fs2 fs2Var = ttVar.b;
        bo2 bo2Var = this.d;
        vq0 vq0Var = ttVar.a;
        bo2Var.a(vq0Var.Q, vq0Var.O);
        s22Var.setInterceptionAngle(0.0f);
        s22Var.I.a(x12Var.s.b(fs2Var, new defpackage.zb5(2, s22Var, this)));
        s22Var.I.a(x12Var.r.b(fs2Var, new ts9(0, s22Var, this)));
        s22Var.I.a(x12Var.o.b(fs2Var, new defpackage.om4(s22Var, 3)));
        gp4 gp4Var = s22Var.b;
        gp4Var.d = 0;
        int i = gp4Var.c;
        ArrayList arrayList = gp4Var.b;
        j59 j59Var = null;
        if (i == 0) {
            arrayList.clear();
        } else {
            int size = arrayList.size();
            gp4Var.e |= size != 0;
            for (int i2 = 0; i2 < size; i2++) {
                gp4Var.b.set(i2, null);
            }
        }
        String str = x12Var.E;
        if (str != null) {
            s22Var.I.a(this.c.a(ttVar, str, new c22(s22Var, this, ttVar)));
        }
        b(s22Var, ttVar.b, x12Var.C);
        b(s22Var, ttVar.b, x12Var.D);
        String str2 = x12Var.B;
        if (str2 == null) {
            s22Var.setThumbSecondaryDrawable(null);
            s22Var.setThumbSecondaryValue(null, false);
        } else {
            fs2 fs2Var2 = ttVar.b;
            s22Var.I.a(this.c.a(ttVar, str2, new a22(s22Var, this, ttVar)));
            tc1 tc1Var = x12Var.z;
            if (tc1Var != null) {
                a(s22Var, fs2Var2, tc1Var);
                j59Var = j59.a;
            }
            if (j59Var == null) {
                a(s22Var, fs2Var2, x12Var.C);
            }
            a(s22Var, fs2Var2, x12Var.A);
        }
        e(s22Var, fs2Var, x12Var.I);
        f(s22Var, fs2Var, x12Var.J);
        c(s22Var, fs2Var, x12Var.F);
        d(s22Var, fs2Var, x12Var.G);
        a(s22Var, x12Var, fs2Var);
    }

    public static final j59 a(d22 d22Var, s22 s22Var, fs2 fs2Var, tc1 tc1Var, Object obj) {
        d22Var.getClass();
        s22Var.setThumbSecondaryDrawable(jf2.a(tc1Var, s22Var.getResources().getDisplayMetrics(), fs2Var));
        return j59.a;
    }

    public final void a(final s22 s22Var, final fs2 fs2Var, final tc1 tc1Var) {
        if (tc1Var == null) {
            return;
        }
        s22Var.setThumbSecondaryDrawable(jf2.a(tc1Var, s22Var.getResources().getDisplayMetrics(), fs2Var));
        js2.a(s22Var, tc1Var, fs2Var, new nl3() { // from class: rs9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return d22.a(this.b, s22Var, fs2Var, tc1Var, obj);
            }
        });
    }

    public static final j59 a(d22 d22Var, s22 s22Var, fs2 fs2Var, w12 w12Var, int i) {
        d22Var.getClass();
        s22Var.setThumbSecondTextDrawable(w12Var != null ? new cw5(y12.a(w12Var, s22Var.getResources().getDisplayMetrics(), d22Var.b, fs2Var)) : null);
        return j59.a;
    }

    public final void a(s22 s22Var, fs2 fs2Var, w12 w12Var) {
        s22Var.setThumbSecondTextDrawable(w12Var != null ? new cw5(y12.a(w12Var, s22Var.getResources().getDisplayMetrics(), this.b, fs2Var)) : null);
        if (w12Var == null) {
            return;
        }
        s22Var.I.a(w12Var.i.a(fs2Var, new us9(this, s22Var, fs2Var, w12Var, 0)));
    }

    public static final j59 a(s22 s22Var, as2 as2Var, as2 as2Var2, in5 in5Var, fs2 fs2Var, DisplayMetrics displayMetrics, g12 g12Var) {
        if (as2Var != null) {
            in5Var.c = y12.a(((Number) as2Var.a(fs2Var)).longValue(), g12Var, displayMetrics);
        }
        if (as2Var2 != null) {
            in5Var.d = y12.a(((Number) as2Var2.a(fs2Var)).longValue(), g12Var, displayMetrics);
        }
        s22Var.requestLayout();
        s22Var.invalidate();
        return j59.a;
    }

    public static final j59 a(s22 s22Var, in5 in5Var, tc1 tc1Var, DisplayMetrics displayMetrics, fs2 fs2Var, Object obj) {
        in5Var.e = jf2.a(tc1Var, displayMetrics, fs2Var);
        s22Var.requestLayout();
        s22Var.invalidate();
        return j59.a;
    }

    public static final j59 a(s22 s22Var, in5 in5Var, yc1 yc1Var, fs2 fs2Var, DisplayMetrics displayMetrics, long j) {
        in5Var.c = y12.a(j, (g12) yc1Var.g.a(fs2Var), displayMetrics);
        s22Var.requestLayout();
        s22Var.invalidate();
        return j59.a;
    }

    public static final j59 a(s22 s22Var, in5 in5Var, long j) {
        in5Var.a = j;
        s22Var.requestLayout();
        s22Var.invalidate();
        return j59.a;
    }
}
