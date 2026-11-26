package yads;

import android.content.Context;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.View;
import com.yandex.mobile.ads.R$id;
import defpackage.cq9;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.pn7;
import defpackage.ps7;
import defpackage.ux;
import defpackage.wp9;
import defpackage.ws6;
import defpackage.xp9;
import defpackage.xs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import yads.c62;

/* JADX INFO: loaded from: classes6.dex */
public final class c62 extends oh2 {
    public static final x52 o = new x52(x52.u, null, null, x52.v, x52.w, x52.x, null, null, null, x52.y, x52.z, x52.A, null, null, null, x52.B, x52.C, x52.D, null, x52.E);
    public final v41 b;
    public final qh2 c;
    public final ws6 d;
    public final qg6 e;
    public final pu5 f;
    public final bt0 g;
    public final oi1 h;
    public final bj2 i;
    public final rt1 j;
    public final Context k;
    public final my1 l;
    public final zu5 m;
    public Long n;

    public c62(v41 v41Var, qh2 qh2Var, ws6 ws6Var, qg6 qg6Var, pu5 pu5Var, bt0 bt0Var, oi1 oi1Var, bj2 bj2Var, rt1 rt1Var, Context context, my1 my1Var, zu5 zu5Var) {
        super(v41Var);
        this.b = v41Var;
        this.c = qh2Var;
        this.d = ws6Var;
        this.e = qg6Var;
        this.f = pu5Var;
        this.g = bt0Var;
        this.h = oi1Var;
        this.i = bj2Var;
        this.j = rt1Var;
        this.k = context;
        this.l = my1Var;
        this.m = zu5Var;
        qg6Var.a("DIV2.TAB_HEADER_VIEW", new tu5(context), 12);
        qg6Var.a("DIV2.TAB_ITEM_VIEW", new xp9(this, 0), 2);
    }

    public static final j59 b(m62 m62Var, boolean z) {
        m62Var.d.setOnInterceptTouchEventListener(z ? ms4.a : null);
        return j59.a;
    }

    public final void a(final n32 n32Var, final tt ttVar, m62 m62Var, y52 y52Var, final y52 y52Var2, final w41 w41Var, m62 m62Var2) {
        int i;
        c62 c62Var;
        final m62 m62Var3;
        Long l;
        final fs2 fs2VarB = ttVar.b();
        List list = y52Var2.q;
        final ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new t02((t52) it.next(), m62Var.getResources().getDisplayMetrics(), fs2VarB));
        }
        a62 a62VarH = m62Var.h();
        if (a62VarH == null || a62VarH.p != ((Boolean) y52Var2.j.a(fs2VarB)).booleanValue()) {
            a62VarH = null;
        }
        if (a62VarH != null) {
            a62VarH.q = ttVar;
            a62VarH.v = n32Var;
            a62VarH.y.clear();
            a62VarH.t.e = y52Var2;
            a62VarH.u.e = y52Var2;
            if (y52Var == y52Var2) {
                a62VarH.d();
            } else {
                a62VarH.a(new defpackage.ow0(arrayList, 4), fs2VarB, m62Var2);
            }
            c62Var = this;
            m62Var3 = m62Var;
        } else {
            long jLongValue = ((Number) y52Var2.y.a(fs2VarB)).longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                i = (int) jLongValue;
            } else {
                i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            int i2 = i;
            c62Var = this;
            a(c62Var, ttVar, y52Var2, m62Var, w41Var, n32Var, arrayList, i2);
            m62Var3 = m62Var;
        }
        List list2 = y52Var2.q;
        defpackage.nx1 nx1Var = new defpackage.nx1(m62Var3, 4);
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            x02 height = ((t52) it2.next()).a.a().getHeight();
            if (height instanceof u02) {
                u02 u02Var = (u02) height;
                m62Var2.f.a(u02Var.a.a.a(fs2VarB, nx1Var));
                m62Var2.f.a(u02Var.a.b.a(fs2VarB, nx1Var));
            }
        }
        pn7 pn7Var = new pn7(1, c62Var, m62Var3);
        m62Var2.a(y52Var2.j.a(fs2VarB, new nl3() { // from class: dq9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return c62.a(m62Var3, y52Var2, fs2VarB, this, ttVar, w41Var, n32Var, arrayList, ((Boolean) obj).booleanValue());
            }
        }));
        m62Var2.a(y52Var2.y.a(fs2VarB, pn7Var));
        vq0 vq0VarA = ttVar.a();
        boolean z = defpackage.aa4.e(vq0VarA.t(), qb1.b) || defpackage.aa4.e(vq0VarA.o(), vq0VarA.t());
        long jLongValue2 = ((Number) y52Var2.y.a(fs2VarB)).longValue();
        if (!z || (l = this.n) == null || l.longValue() != jLongValue2) {
            pn7Var.invoke(Long.valueOf(jLongValue2));
        }
        m62Var2.a(y52Var2.B.b(fs2VarB, new ux(m62Var3, this, y52Var2, 1)));
    }

    public static final j59 b(m62 m62Var, y52 y52Var, fs2 fs2Var, Object obj) {
        tq.a(m62Var.b, y52Var.A, fs2Var);
        return j59.a;
    }

    public static final List b(List list) {
        return list;
    }

    public final void a(m62 m62Var, tt ttVar, y52 y52Var) {
        fs2 fs2Var = ttVar.b;
        m62Var.setClipToPadding(false);
        wp9 wp9Var = new wp9(m62Var, y52Var, fs2Var, 0);
        wp9Var.invoke(null);
        m62Var.f.a(y52Var.E.c.a(fs2Var, wp9Var));
        m62Var.f.a(y52Var.E.d.a(fs2Var, wp9Var));
        m62Var.f.a(y52Var.E.f.a(fs2Var, wp9Var));
        m62Var.f.a(y52Var.E.a.a(fs2Var, wp9Var));
        a(m62Var.a, y52Var, fs2Var);
        a(m62Var, fs2Var, y52Var.D);
        a(m62Var, fs2Var, y52Var.C, ttVar);
        m62Var.c.setClipToPadding(false);
        yc1 yc1Var = y52Var.A;
        cq9 cq9Var = new cq9(m62Var, y52Var, fs2Var, 0);
        m62Var.f.a(yc1Var.c.a(fs2Var, cq9Var));
        m62Var.f.a(yc1Var.d.a(fs2Var, cq9Var));
        m62Var.f.a(yc1Var.f.a(fs2Var, cq9Var));
        m62Var.f.a(yc1Var.a.a(fs2Var, cq9Var));
        cq9Var.invoke(null);
        m62Var.f.a(y52Var.z.b(fs2Var, new defpackage.us(m62Var, 4)));
        m62Var.f.a(y52Var.n.b(fs2Var, new defpackage.ws2(m62Var, 3)));
        m62Var.a.setOnScrollChangedListener(new ps7(this, ttVar));
        m62Var.a.setFocusTracker(ttVar.a.K);
        m62Var.f.a(y52Var.u.b(fs2Var, new xs(m62Var, 5)));
    }

    public static final j59 a(m62 m62Var, y52 y52Var, fs2 fs2Var, Object obj) {
        tq.b(m62Var.a, y52Var.E, fs2Var);
        return j59.a;
    }

    public final void a(final m62 m62Var, final fs2 fs2Var, final u52 u52Var, final tt ttVar) {
        if (u52Var == null) {
            return;
        }
        a(m62Var.a, fs2Var, u52Var, ttVar);
        nl3 nl3Var = new nl3() { // from class: yp9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return c62.a(this.b, m62Var, fs2Var, u52Var, ttVar, obj);
            }
        };
        u52Var.c.b.a(fs2Var, nl3Var);
        u52Var.c.a.a(fs2Var, nl3Var);
        u52Var.a.b.a(fs2Var, nl3Var);
        u52Var.a.a.a(fs2Var, nl3Var);
        u52Var.b.a(fs2Var, nl3Var);
    }

    public static final j59 a(c62 c62Var, m62 m62Var, fs2 fs2Var, u52 u52Var, tt ttVar, Object obj) {
        c62Var.a(m62Var.a, fs2Var, u52Var, ttVar);
        return j59.a;
    }

    public final void a(final m62 m62Var, final fs2 fs2Var, final x52 x52Var) {
        as2 as2Var;
        as2 as2Var2;
        as2 as2Var3;
        p91 p91Var;
        as2 as2Var4;
        p91 p91Var2;
        as2 as2Var5;
        p91 p91Var3;
        as2 as2Var6;
        p91 p91Var4;
        as2 as2Var7;
        as2 as2Var8;
        as2 as2Var9;
        as2 as2Var10;
        as2 as2Var11;
        as2 as2Var12;
        a(m62Var.a, fs2Var, x52Var == null ? o : x52Var);
        nl3 nl3Var = new nl3() { // from class: zp9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return c62.a(this.b, m62Var, fs2Var, x52Var, obj);
            }
        };
        if (x52Var != null && (as2Var12 = x52Var.d) != null) {
            as2Var12.a(fs2Var, nl3Var);
        }
        if (x52Var != null && (as2Var11 = x52Var.a) != null) {
            as2Var11.a(fs2Var, nl3Var);
        }
        if (x52Var != null && (as2Var10 = x52Var.p) != null) {
            as2Var10.a(fs2Var, nl3Var);
        }
        if (x52Var != null && (as2Var9 = x52Var.m) != null) {
            as2Var9.a(fs2Var, nl3Var);
        }
        if (x52Var != null && (as2Var8 = x52Var.g) != null) {
            as2Var8.a(fs2Var, nl3Var);
        }
        if (x52Var != null && (p91Var4 = x52Var.h) != null && (as2Var7 = p91Var4.c) != null) {
            as2Var7.a(fs2Var, nl3Var);
        }
        if (x52Var != null && (p91Var3 = x52Var.h) != null && (as2Var6 = p91Var3.d) != null) {
            as2Var6.a(fs2Var, nl3Var);
        }
        if (x52Var != null && (p91Var2 = x52Var.h) != null && (as2Var5 = p91Var2.b) != null) {
            as2Var5.a(fs2Var, nl3Var);
        }
        if (x52Var != null && (p91Var = x52Var.h) != null && (as2Var4 = p91Var.a) != null) {
            as2Var4.a(fs2Var, nl3Var);
        }
        if (x52Var != null && (as2Var3 = x52Var.q) != null) {
            as2Var3.a(fs2Var, nl3Var);
        }
        if (x52Var != null && (as2Var2 = x52Var.f) != null) {
            as2Var2.a(fs2Var, nl3Var);
        }
        if (x52Var == null || (as2Var = x52Var.e) == null) {
            return;
        }
        as2Var.a(fs2Var, nl3Var);
    }

    public static final j59 a(c62 c62Var, m62 m62Var, fs2 fs2Var, x52 x52Var, Object obj) {
        uu5 uu5Var = m62Var.a;
        if (x52Var == null) {
            x52Var = o;
        }
        c62Var.getClass();
        a(uu5Var, fs2Var, x52Var);
        return j59.a;
    }

    public static final j59 a(m62 m62Var, int i) {
        m62Var.b.setBackgroundColor(i);
        return j59.a;
    }

    public static final j59 a(m62 m62Var, boolean z) {
        m62Var.b.setVisibility(z ? 0 : 8);
        return j59.a;
    }

    public static final j59 a(m62 m62Var, Object obj) {
        a62 a62Var = m62Var.e;
        if (a62Var != null) {
            a62Var.d();
        }
        return j59.a;
    }

    public static final j59 a(m62 m62Var, c62 c62Var, y52 y52Var, boolean z) {
        Set<Integer> setX0;
        a62 a62Var = m62Var.e;
        if (a62Var != null) {
            int size = y52Var.q.size() - 1;
            c62Var.getClass();
            if (z) {
                setX0 = new LinkedHashSet<>();
            } else {
                setX0 = defpackage.qn1.x0(new defpackage.y74(0, size, 1));
            }
            a62Var.c.setDisabledScrollPages(setX0);
        }
        return j59.a;
    }

    @Override // yads.oh2
    public final /* bridge */ /* synthetic */ void a(View view, tt ttVar, p41 p41Var, p41 p41Var2) {
        a((m62) view, ttVar, (y52) p41Var);
    }

    public static final lu5 a(c62 c62Var) {
        return new lu5(c62Var.k, null);
    }

    public static final void a(c62 c62Var, tt ttVar) {
        c62Var.getClass();
        vq0 vq0Var = ttVar.a;
    }

    public static final List a(List list) {
        return list;
    }

    public static final void a(c62 c62Var, tt ttVar, y52 y52Var, m62 m62Var, w41 w41Var, n32 n32Var, List list, int i) {
        a62 a62VarA = c62Var.a(ttVar, y52Var, m62Var, w41Var, n32Var);
        a62VarA.a(new defpackage.ah1(list, 2), i);
        m62Var.setDivTabsAdapter(a62VarA);
    }

    public static final j59 a(c62 c62Var, m62 m62Var, long j) {
        cs4 cs4VarC;
        int i;
        c62Var.n = Long.valueOf(j);
        a62 a62VarH = m62Var.h();
        if (a62VarH != null && (cs4VarC = a62VarH.c()) != null) {
            long j2 = j >> 31;
            if (j2 == 0 || j2 == -1) {
                i = (int) j;
            } else {
                i = j > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            if (cs4VarC.a() != i) {
                cs4VarC.a.setCurrentItem(i, true);
            }
        }
        return j59.a;
    }

    public static final j59 a(m62 m62Var, y52 y52Var, fs2 fs2Var, c62 c62Var, tt ttVar, w41 w41Var, n32 n32Var, List list, boolean z) {
        int iA;
        cs4 cs4VarC;
        a62 a62VarH = m62Var.h();
        if (a62VarH != null && a62VarH.p == z) {
            return j59.a;
        }
        a62 a62VarH2 = m62Var.h();
        if (a62VarH2 == null || (cs4VarC = a62VarH2.c()) == null) {
            long jLongValue = ((Number) y52Var.y.a(fs2Var)).longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                iA = (int) jLongValue;
            } else {
                iA = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
        } else {
            iA = cs4VarC.a();
        }
        a(c62Var, ttVar, y52Var, m62Var, w41Var, n32Var, list, iA);
        return j59.a;
    }

    public final a62 a(tt ttVar, y52 y52Var, m62 m62Var, w41 w41Var, n32 n32Var) {
        a93 f2Var;
        final e62 e62Var = new e62(ttVar, this.g, this.i, m62Var, y52Var);
        boolean zBooleanValue = ((Boolean) y52Var.j.a(ttVar.b)).booleanValue();
        if (zBooleanValue) {
            f2Var = new defpackage.e2();
        } else {
            f2Var = new defpackage.f2(9);
        }
        a93 a93Var = f2Var;
        int currentItem = m62Var.d.getCurrentItem();
        final int currentItem2 = m62Var.d.getCurrentItem();
        if (currentItem2 == currentItem) {
            d46.a(new ll3() { // from class: bq9
                @Override // defpackage.ll3
                public final Object invoke() {
                    return c62.a(e62Var, currentItem2);
                }
            });
        }
        return new a62(this.e, m62Var, new nq(R$id.monetization_ads_divkit_base_tabbed_title_container_scroller, R$id.monetization_ads_divkit_div_tabs_pager_container, R$id.monetization_ads_divkit_div_tabs_container_helper), a93Var, zBooleanValue, ttVar, this.f, this.c, w41Var, e62Var, new z52(ttVar, n32Var, this.m, this.l, y52Var), n32Var, this.j);
    }

    public static final j59 a(e62 e62Var, int i) {
        e62Var.a(i);
        return j59.a;
    }

    public static void a(final uu5 uu5Var, final y52 y52Var, final fs2 fs2Var) {
        yc1 yc1Var;
        as2 as2Var;
        yc1 yc1Var2;
        as2 as2Var2;
        as2 as2Var3;
        as2 as2Var4;
        nl3 nl3Var = new nl3() { // from class: aq9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return c62.a(y52Var, fs2Var, uu5Var, obj);
            }
        };
        tp0 tp0VarA = null;
        nl3Var.invoke(null);
        hs2 hs2VarA = s55.a(uu5Var);
        x52 x52Var = y52Var.D;
        hs2VarA.a((x52Var == null || (as2Var4 = x52Var.s) == null) ? null : as2Var4.a(fs2Var, nl3Var));
        x52 x52Var2 = y52Var.D;
        hs2VarA.a((x52Var2 == null || (as2Var3 = x52Var2.j) == null) ? null : as2Var3.a(fs2Var, nl3Var));
        x52 x52Var3 = y52Var.D;
        hs2VarA.a((x52Var3 == null || (yc1Var2 = x52Var3.t) == null || (as2Var2 = yc1Var2.f) == null) ? null : as2Var2.a(fs2Var, nl3Var));
        x52 x52Var4 = y52Var.D;
        if (x52Var4 != null && (yc1Var = x52Var4.t) != null && (as2Var = yc1Var.a) != null) {
            tp0VarA = as2Var.a(fs2Var, nl3Var);
        }
        hs2VarA.a(tp0VarA);
        hs2VarA.a(y52Var.E.f.a(fs2Var, nl3Var));
        hs2VarA.a(y52Var.E.a.a(fs2Var, nl3Var));
    }

    public static final j59 a(y52 y52Var, fs2 fs2Var, uu5 uu5Var, Object obj) {
        x52 x52Var = y52Var.D;
        if (x52Var == null) {
            x52Var = o;
        }
        yc1 yc1Var = x52Var.t;
        yc1 yc1Var2 = y52Var.E;
        as2 as2Var = x52Var.s;
        long jLongValue = ((Number) yc1Var2.a.a(fs2Var)).longValue() + ((Number) yc1Var2.f.a(fs2Var)).longValue() + ((Number) yc1Var.a.a(fs2Var)).longValue() + ((Number) yc1Var.f.a(fs2Var)).longValue() + (as2Var != null ? ((Number) as2Var.a(fs2Var)).longValue() : (long) (((Number) x52Var.j.a(fs2Var)).floatValue() * 1.3f));
        uu5Var.getLayoutParams().height = uq.b(Long.valueOf(jLongValue), uu5Var.getResources().getDisplayMetrics());
        return j59.a;
    }

    public static void a(uu5 uu5Var, fs2 fs2Var, x52 x52Var) {
        float fA;
        er erVar;
        as2 as2Var;
        as2 as2Var2;
        as2 as2Var3;
        as2 as2Var4;
        int iIntValue = ((Number) x52Var.d.a(fs2Var)).intValue();
        int iIntValue2 = ((Number) x52Var.a.a(fs2Var)).intValue();
        int iIntValue3 = ((Number) x52Var.p.a(fs2Var)).intValue();
        as2 as2Var5 = x52Var.m;
        uu5Var.setTabColors(iIntValue, iIntValue2, iIntValue3, as2Var5 != null ? ((Number) as2Var5.a(fs2Var)).intValue() : 0);
        DisplayMetrics displayMetrics = uu5Var.getResources().getDisplayMetrics();
        as2 as2Var6 = x52Var.g;
        if (as2Var6 != null) {
            fA = uq.a((Long) as2Var6.a(fs2Var), displayMetrics);
        } else {
            fA = x52Var.h == null ? -1.0f : 0.0f;
        }
        p91 p91Var = x52Var.h;
        float fA2 = (p91Var == null || (as2Var4 = p91Var.c) == null) ? fA : uq.a((Long) as2Var4.a(fs2Var), displayMetrics);
        p91 p91Var2 = x52Var.h;
        float fA3 = (p91Var2 == null || (as2Var3 = p91Var2.d) == null) ? fA : uq.a((Long) as2Var3.a(fs2Var), displayMetrics);
        p91 p91Var3 = x52Var.h;
        float fA4 = (p91Var3 == null || (as2Var2 = p91Var3.a) == null) ? fA : uq.a((Long) as2Var2.a(fs2Var), displayMetrics);
        p91 p91Var4 = x52Var.h;
        if (p91Var4 != null && (as2Var = p91Var4.b) != null) {
            fA = uq.a((Long) as2Var.a(fs2Var), displayMetrics);
        }
        uu5Var.setTabIndicatorCornersRadii(new float[]{fA2, fA2, fA3, fA3, fA, fA, fA4, fA4});
        uu5Var.setTabItemSpacing(uq.a((Long) x52Var.q.a(fs2Var), displayMetrics));
        int iOrdinal = ((w52) x52Var.f.a(fs2Var)).ordinal();
        if (iOrdinal == 0) {
            erVar = er.SLIDE;
        } else if (iOrdinal == 1) {
            erVar = er.FADE;
        } else {
            if (iOrdinal != 2) {
                defpackage.me0.e();
                return;
            }
            erVar = er.NONE;
        }
        uu5Var.setAnimationType(erVar);
        uu5Var.setAnimationDuration(((Number) x52Var.e.a(fs2Var)).longValue());
        uu5Var.setTabTitleStyle(x52Var);
    }

    public final void a(uu5 uu5Var, fs2 fs2Var, u52 u52Var, tt ttVar) {
        DisplayMetrics displayMetrics = uu5Var.getResources().getDisplayMetrics();
        af1 af1Var = u52Var.c;
        int iA = uq.a(((Number) af1Var.b.a(fs2Var)).longValue(), (g12) af1Var.a.a(fs2Var), displayMetrics);
        af1 af1Var2 = u52Var.a;
        ttVar.a.a(this.h.b(((Uri) u52Var.b.a(fs2Var)).toString(), new b62(uu5Var, iA, uq.a(((Number) af1Var2.b.a(fs2Var)).longValue(), (g12) af1Var2.a.a(fs2Var), displayMetrics), ttVar.a)));
    }
}
