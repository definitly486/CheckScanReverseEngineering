package yads;

import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.view.animation.Interpolator;
import defpackage.j59;
import defpackage.lr8;
import defpackage.nl3;
import defpackage.u96;
import defpackage.zk9;
import java.util.Iterator;
import java.util.List;
import yads.hd3;
import yads.ii1;

/* JADX INFO: loaded from: classes6.dex */
public final class ii1 extends oh2 {
    public final oi1 b;
    public final jv1 c;
    public final bo2 d;

    public ii1(v41 v41Var, oi1 oi1Var, jv1 jv1Var, bo2 bo2Var) {
        super(v41Var);
        this.b = oi1Var;
        this.c = jv1Var;
        this.d = bo2Var;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0059  */
    public final void a(final yi1 yi1Var, final tt ttVar, final zh1 zh1Var, zh1 zh1Var2) {
        boolean z;
        boolean z2;
        List list;
        List list2;
        List list3 = zh1Var.t;
        Boolean boolValueOf = null;
        boolean zE = defpackage.aa4.e(list3 != null ? Integer.valueOf(list3.size()) : null, (zh1Var2 == null || (list2 = zh1Var2.t) == null) ? null : Integer.valueOf(list2.size()));
        boolean z3 = false;
        if (zE) {
            List list4 = zh1Var.t;
            if (list4 != null) {
                int i = 0;
                z2 = true;
                for (Object obj : list4) {
                    int i2 = i + 1;
                    if (i < 0) {
                        u96.o();
                        throw null;
                    }
                    wd1 wd1Var = (wd1) obj;
                    if (!z2) {
                        z2 = false;
                    } else if (gb1.a(wd1Var, (zh1Var2 == null || (list = zh1Var2.t) == null) ? null : (wd1) list.get(i))) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    i = i2;
                }
            } else {
                z2 = true;
            }
            if (z2) {
                return;
            }
        }
        a(yi1Var, ttVar, zh1Var.t);
        List list5 = zh1Var.t;
        if (list5 != null) {
            if (list5.isEmpty()) {
                z3 = true;
                break;
            }
            Iterator it = list5.iterator();
            do {
                if (!it.hasNext()) {
                    z3 = true;
                    break;
                }
                wd1 wd1Var2 = (wd1) it.next();
                if (wd1Var2 == null || (wd1Var2 instanceof vd1)) {
                    z = true;
                } else {
                    if (!(wd1Var2 instanceof ud1)) {
                        defpackage.me0.e();
                        return;
                    }
                    z = ((ud1) wd1Var2).a.a instanceof xr2;
                }
            } while (z);
            boolValueOf = Boolean.valueOf(z3);
        }
        if (defpackage.aa4.e(boolValueOf, Boolean.FALSE)) {
            nl3 nl3Var = new nl3() { // from class: dz9
                @Override // defpackage.nl3
                public final Object invoke(Object obj2) {
                    return ii1.a(this.b, yi1Var, ttVar, zh1Var, obj2);
                }
            };
            List<wd1> list6 = zh1Var.t;
            if (list6 != null) {
                for (wd1 wd1Var3 : list6) {
                    if (wd1Var3 instanceof ud1) {
                        yi1Var.m.a(((ud1) wd1Var3).a.a.a(ttVar.b, nl3Var));
                    }
                }
            }
        }
    }

    public final void b(yi1 yi1Var, zh1 zh1Var, zh1 zh1Var2, fs2 fs2Var) {
        if (ls2.a(zh1Var.N, zh1Var2 != null ? zh1Var2.N : null)) {
            return;
        }
        yi1Var.setImageScale(jf2.a((vi1) zh1Var.N.a(fs2Var)));
        as2 as2Var = zh1Var.N;
        if (as2Var instanceof xr2) {
            return;
        }
        yi1Var.m.a(as2Var.a(fs2Var, new zk9(1, this, yi1Var)));
    }

    public final void c(final yi1 yi1Var, final zh1 zh1Var, zh1 zh1Var2, final fs2 fs2Var) {
        if (ls2.a(zh1Var.P, zh1Var2 != null ? zh1Var2.P : null)) {
            if (ls2.a(zh1Var.Q, zh1Var2 != null ? zh1Var2.Q : null)) {
                return;
            }
        }
        as2 as2Var = zh1Var.P;
        a(yi1Var, as2Var != null ? (Integer) as2Var.a(fs2Var) : null, (y41) zh1Var.Q.a(fs2Var));
        if (ls2.a(zh1Var.P) && (zh1Var.Q instanceof xr2)) {
            return;
        }
        nl3 nl3Var = new nl3() { // from class: cz9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return ii1.b(this.b, yi1Var, zh1Var, fs2Var, obj);
            }
        };
        as2 as2Var2 = zh1Var.P;
        yi1Var.m.a(as2Var2 != null ? as2Var2.a(fs2Var, nl3Var) : null);
        yi1Var.m.a(zh1Var.Q.a(fs2Var, nl3Var));
    }

    public final void b(final yi1 yi1Var, final tt ttVar, final zh1 zh1Var, final ao2 ao2Var) {
        final fs2 fs2Var = ttVar.b;
        nl3 nl3Var = new nl3() { // from class: ez9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return ii1.a(yi1Var, this, ttVar, zh1Var, fs2Var, ao2Var, obj);
            }
        };
        as2 as2Var = zh1Var.K;
        yi1Var.m.a(as2Var != null ? as2Var.a(fs2Var, nl3Var) : null);
        yi1Var.m.a(zh1Var.G.a(fs2Var, nl3Var));
    }

    public static final j59 b(ii1 ii1Var, yi1 yi1Var, zh1 zh1Var, fs2 fs2Var, Object obj) {
        as2 as2Var = zh1Var.P;
        Integer num = as2Var != null ? (Integer) as2Var.a(fs2Var) : null;
        y41 y41Var = (y41) zh1Var.Q.a(fs2Var);
        ii1Var.getClass();
        a(yi1Var, num, y41Var);
        return j59.a;
    }

    public final void a(final yi1 yi1Var, final tt ttVar, final zh1 zh1Var, boolean z, ao2 ao2Var) {
        final fs2 fs2Var = ttVar.b;
        jv1 jv1Var = this.c;
        as2 as2Var = zh1Var.K;
        jv1Var.a(yi1Var, ao2Var, as2Var != null ? (String) as2Var.a(fs2Var) : null, ((Number) zh1Var.G.a(fs2Var)).intValue(), z, new defpackage.v00(yi1Var, 5), new nl3() { // from class: fz9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return ii1.a(yi1Var, this, ttVar, zh1Var, fs2Var, (hd3) obj);
            }
        });
    }

    public static void a(yi1 yi1Var, tt ttVar, List list) {
        Bitmap bitmap = yi1Var.g;
        if (bitmap == null) {
            yi1Var.setImageBitmap(null);
        } else {
            tq.a(yi1Var, ttVar, bitmap, list, new lr8(yi1Var, 1));
        }
    }

    public static final void a(ii1 ii1Var, yi1 yi1Var, zh1 zh1Var, fs2 fs2Var, hu huVar) {
        ii1Var.getClass();
        yi1Var.animate().cancel();
        od1 od1Var = zh1Var.i;
        float fDoubleValue = (float) ((Number) zh1Var.g.a(fs2Var)).doubleValue();
        if (od1Var != null && huVar != hu.MEMORY) {
            long jLongValue = ((Number) od1Var.b.a(fs2Var)).longValue();
            Interpolator interpolatorA = jf2.a((o11) od1Var.c.a(fs2Var));
            yi1Var.setAlpha((float) ((Number) od1Var.a.a(fs2Var)).doubleValue());
            yi1Var.animate().alpha(fDoubleValue).setDuration(jLongValue).setInterpolator(interpolatorA).setStartDelay(((Number) od1Var.d.a(fs2Var)).longValue());
            return;
        }
        yi1Var.setAlpha(fDoubleValue);
    }

    @Override // yads.oh2
    public final void a(View view, tt ttVar, p41 p41Var, p41 p41Var2) {
        yi1 yi1Var = (yi1) view;
        zh1 zh1Var = (zh1) p41Var;
        zh1 zh1Var2 = (zh1) p41Var2;
        pq.a(yi1Var, ttVar, zh1Var.b, zh1Var.d, zh1Var.D, zh1Var.r, zh1Var.z, zh1Var.y, zh1Var.J, zh1Var.I, zh1Var.c, zh1Var.m);
        vq0 vq0Var = ttVar.a;
        fs2 fs2Var = ttVar.b;
        ao2 ao2VarA = this.d.a(vq0Var.Q, vq0Var.O);
        tq.a(yi1Var, zh1Var.j, zh1Var2 != null ? zh1Var2.j : null, fs2Var);
        b(yi1Var, zh1Var, zh1Var2, fs2Var);
        a(yi1Var, zh1Var, zh1Var2, fs2Var);
        a(yi1Var, ttVar, zh1Var, zh1Var2, ao2VarA);
        c(yi1Var, zh1Var, zh1Var2, fs2Var);
        a(yi1Var, ttVar, zh1Var, zh1Var2);
    }

    public static final j59 a(ii1 ii1Var, yi1 yi1Var, vi1 vi1Var) {
        ii1Var.getClass();
        yi1Var.setImageScale(jf2.a(vi1Var));
        return j59.a;
    }

    public final void a(final yi1 yi1Var, final zh1 zh1Var, zh1 zh1Var2, final fs2 fs2Var) {
        if (ls2.a(zh1Var.o, zh1Var2 != null ? zh1Var2.o : null)) {
            if (ls2.a(zh1Var.p, zh1Var2 != null ? zh1Var2.p : null)) {
                return;
            }
        }
        yi1Var.setGravity(jf2.a((f11) zh1Var.o.a(fs2Var), (h11) zh1Var.p.a(fs2Var)));
        as2 as2Var = zh1Var.o;
        if ((as2Var instanceof xr2) && (zh1Var.p instanceof xr2)) {
            return;
        }
        nl3 nl3Var = new nl3() { // from class: az9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return ii1.a(this.b, yi1Var, zh1Var, fs2Var, obj);
            }
        };
        yi1Var.m.a(as2Var.a(fs2Var, nl3Var));
        yi1Var.m.a(zh1Var.p.a(fs2Var, nl3Var));
    }

    public static final j59 a(ii1 ii1Var, yi1 yi1Var, zh1 zh1Var, fs2 fs2Var, Object obj) {
        f11 f11Var = (f11) zh1Var.o.a(fs2Var);
        h11 h11Var = (h11) zh1Var.p.a(fs2Var);
        ii1Var.getClass();
        yi1Var.setGravity(jf2.a(f11Var, h11Var));
        return j59.a;
    }

    public final boolean a(yi1 yi1Var, tt ttVar, zh1 zh1Var, ao2 ao2Var) {
        fs2 fs2Var = ttVar.b;
        Uri uri = (Uri) zh1Var.B.a(fs2Var);
        boolean z = false;
        if (defpackage.aa4.e(uri, yi1Var.n)) {
            return false;
        }
        if (!yi1Var.l() && ((Boolean) zh1Var.x.a(fs2Var)).booleanValue()) {
            z = true;
        }
        yi1Var.o();
        yi1Var.setColorFilter((ColorFilter) null);
        du3 du3Var = yi1Var.h;
        if (du3Var != null) {
            du3Var.cancel();
        }
        a(yi1Var, ttVar, zh1Var, z, ao2Var);
        yi1Var.setImageUrl$mobileads_externalRelease(uri);
        du3 du3VarB = this.b.b(uri.toString(), new hi1(yi1Var, this, ttVar, zh1Var, fs2Var, ttVar.a));
        ttVar.a.a(du3VarB);
        yi1Var.setLoadReference$mobileads_externalRelease(du3VarB);
        return true;
    }

    public static final j59 a(ii1 ii1Var, yi1 yi1Var, tt ttVar, zh1 zh1Var, Object obj) {
        List list = zh1Var.t;
        ii1Var.getClass();
        a(yi1Var, ttVar, list);
        return j59.a;
    }

    public static final j59 a(yi1 yi1Var, Bitmap bitmap) {
        yi1Var.setImageBitmap(bitmap);
        return j59.a;
    }

    public static final j59 a(yi1 yi1Var, ii1 ii1Var, tt ttVar, zh1 zh1Var, fs2 fs2Var, ao2 ao2Var, Object obj) {
        if (yi1Var.l()) {
            return j59.a;
        }
        ii1Var.getClass();
        ii1Var.a(yi1Var, ttVar, zh1Var, !yi1Var.l() && ((Boolean) zh1Var.x.a(fs2Var)).booleanValue(), ao2Var);
        return j59.a;
    }

    public static final j59 a(yi1 yi1Var, Drawable drawable) {
        if (!yi1Var.l() && !yi1Var.m()) {
            yi1Var.setPlaceholder(drawable);
        }
        return j59.a;
    }

    public static final j59 a(yi1 yi1Var, ii1 ii1Var, tt ttVar, zh1 zh1Var, fs2 fs2Var, hd3 hd3Var) {
        if (!yi1Var.l() && (hd3Var instanceof gd3)) {
            yi1Var.setCurrentBitmapWithoutFilters$mobileads_externalRelease(((gd3) hd3Var).a);
            List list = zh1Var.t;
            ii1Var.getClass();
            a(yi1Var, ttVar, list);
            yi1Var.n();
            as2 as2Var = zh1Var.P;
            a(yi1Var, as2Var != null ? (Integer) as2Var.a(fs2Var) : null, (y41) zh1Var.Q.a(fs2Var));
        }
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002d  */
    public final void a(final yi1 yi1Var, final tt ttVar, final zh1 zh1Var, zh1 zh1Var2, final ao2 ao2Var) {
        boolean z;
        boolean zA = ls2.a(zh1Var.B, zh1Var2 != null ? zh1Var2.B : null);
        if (ls2.a(zh1Var.K, zh1Var2 != null ? zh1Var2.K : null)) {
            if (ls2.a(zh1Var.G, zh1Var2 != null ? zh1Var2.G : null)) {
                z = false;
            } else {
                z = true;
            }
        } else {
            z = true;
        }
        boolean z2 = ls2.a(zh1Var.K) && (zh1Var.G instanceof xr2);
        boolean z3 = !yi1Var.l() && z;
        if (z3 && !z2) {
            b(yi1Var, ttVar, zh1Var, ao2Var);
        }
        if (!zA && !ls2.a(zh1Var.B)) {
            yi1Var.m.a(zh1Var.B.a(ttVar.b, new nl3() { // from class: bz9
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return ii1.a(this.b, yi1Var, ttVar, zh1Var, ao2Var, (Uri) obj);
                }
            }));
        }
        if (a(yi1Var, ttVar, zh1Var, ao2Var) || !z3) {
            return;
        }
        a(yi1Var, ttVar, zh1Var, !yi1Var.l() && ((Boolean) zh1Var.x.a(ttVar.b)).booleanValue(), ao2Var);
    }

    public static final j59 a(ii1 ii1Var, yi1 yi1Var, tt ttVar, zh1 zh1Var, ao2 ao2Var, Uri uri) {
        ii1Var.a(yi1Var, ttVar, zh1Var, ao2Var);
        return j59.a;
    }

    public static void a(iu3 iu3Var, Integer num, y41 y41Var) {
        PorterDuff.Mode mode;
        if ((iu3Var.l() || iu3Var.m()) && num != null) {
            int iIntValue = num.intValue();
            int iOrdinal = y41Var.ordinal();
            if (iOrdinal == 0) {
                mode = PorterDuff.Mode.SRC_IN;
            } else if (iOrdinal == 1) {
                mode = PorterDuff.Mode.SRC_ATOP;
            } else if (iOrdinal == 2) {
                mode = PorterDuff.Mode.DARKEN;
            } else if (iOrdinal == 3) {
                mode = PorterDuff.Mode.LIGHTEN;
            } else if (iOrdinal == 4) {
                mode = PorterDuff.Mode.MULTIPLY;
            } else {
                if (iOrdinal != 5) {
                    defpackage.me0.e();
                    return;
                }
                mode = PorterDuff.Mode.SCREEN;
            }
            iu3Var.setColorFilter(iIntValue, mode);
            return;
        }
        iu3Var.setColorFilter((ColorFilter) null);
    }
}
