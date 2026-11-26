package yads;

import android.util.DisplayMetrics;
import defpackage.bt9;
import defpackage.j59;
import defpackage.nl3;
import yads.d62;
import yads.tf1;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d62 {
    public static final void a(final xu5 xu5Var, x52 x52Var, fs2 fs2Var, hs2 hs2Var) {
        kw5.a(xu5Var, x52Var.j, x52Var.k, (as2) null, (as2) null, fs2Var, hs2Var);
        kw5.b(xu5Var, x52Var.r, x52Var.j, null, null, fs2Var, hs2Var);
        kw5.c(xu5Var, x52Var.s, x52Var.k, null, null, fs2Var, hs2Var);
        yc1 yc1Var = x52Var.t;
        bt9 bt9Var = new bt9(yc1Var, xu5Var, fs2Var, xu5Var.getResources().getDisplayMetrics());
        hs2Var.a(yc1Var.f.a(fs2Var, bt9Var));
        hs2Var.a(yc1Var.a.a(fs2Var, bt9Var));
        as2 as2Var = yc1Var.e;
        if (as2Var == null && yc1Var.b == null) {
            hs2Var.a(yc1Var.c.a(fs2Var, bt9Var));
            hs2Var.a(yc1Var.d.a(fs2Var, bt9Var));
        } else {
            hs2Var.a(as2Var != null ? as2Var.a(fs2Var, bt9Var) : null);
            as2 as2Var2 = yc1Var.b;
            hs2Var.a(as2Var2 != null ? as2Var2.a(fs2Var, bt9Var) : null);
        }
        bt9Var.invoke(null);
        as2 as2Var3 = x52Var.o;
        if (as2Var3 == null) {
            as2Var3 = x52Var.l;
        }
        hs2Var.a(as2Var3.b(fs2Var, new nl3() { // from class: ct9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return d62.a(xu5Var, (tf1) obj);
            }
        }));
        as2 as2Var4 = x52Var.c;
        if (as2Var4 == null) {
            as2Var4 = x52Var.l;
        }
        hs2Var.a(as2Var4.b(fs2Var, new defpackage.w0(xu5Var, 3)));
    }

    public static final j59 b(xu5 xu5Var, tf1 tf1Var) {
        hf2 hf2Var;
        int iOrdinal = tf1Var.ordinal();
        if (iOrdinal == 0) {
            hf2Var = hf2.LIGHT;
        } else if (iOrdinal == 1) {
            hf2Var = hf2.MEDIUM;
        } else if (iOrdinal == 2) {
            hf2Var = hf2.REGULAR;
        } else {
            if (iOrdinal != 3) {
                defpackage.me0.e();
                return null;
            }
            hf2Var = hf2.BOLD;
        }
        xu5Var.setActiveTypefaceType(hf2Var);
        return j59.a;
    }

    public static final j59 a(yc1 yc1Var, xu5 xu5Var, fs2 fs2Var, DisplayMetrics displayMetrics, Object obj) {
        as2 as2Var = yc1Var.e;
        if (as2Var == null && yc1Var.b == null) {
            xu5Var.setTabPadding(uq.a((Long) yc1Var.c.a(fs2Var), displayMetrics), uq.a((Long) yc1Var.f.a(fs2Var), displayMetrics), uq.a((Long) yc1Var.d.a(fs2Var), displayMetrics), uq.a((Long) yc1Var.a.a(fs2Var), displayMetrics));
        } else {
            int iA = uq.a(as2Var != null ? (Long) as2Var.a(fs2Var) : null, displayMetrics);
            int iA2 = uq.a((Long) yc1Var.f.a(fs2Var), displayMetrics);
            as2 as2Var2 = yc1Var.b;
            xu5Var.setTabPadding(iA, iA2, uq.a(as2Var2 != null ? (Long) as2Var2.a(fs2Var) : null, displayMetrics), uq.a((Long) yc1Var.a.a(fs2Var), displayMetrics));
        }
        return j59.a;
    }

    public static final j59 a(xu5 xu5Var, tf1 tf1Var) {
        hf2 hf2Var;
        int iOrdinal = tf1Var.ordinal();
        if (iOrdinal == 0) {
            hf2Var = hf2.LIGHT;
        } else if (iOrdinal == 1) {
            hf2Var = hf2.MEDIUM;
        } else if (iOrdinal == 2) {
            hf2Var = hf2.REGULAR;
        } else {
            if (iOrdinal != 3) {
                defpackage.me0.e();
                return null;
            }
            hf2Var = hf2.BOLD;
        }
        xu5Var.setInactiveTypefaceType(hf2Var);
        return j59.a;
    }
}
