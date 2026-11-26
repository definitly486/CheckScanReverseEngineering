package yads;

import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import defpackage.j59;
import defpackage.nl3;
import defpackage.r07;
import defpackage.u96;
import defpackage.x07;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import yads.dj1;

/* JADX INFO: loaded from: classes6.dex */
public final class dj1 extends oh2 {
    public final es4 b;

    public dj1(v41 v41Var, es4 es4Var) {
        super(v41Var);
        this.b = es4Var;
    }

    public static void a(ds1 ds1Var, fs2 fs2Var, bj1 bj1Var) {
        bg3 bg3VarA;
        sf3 sf3Var;
        vf3 uf3Var;
        int i;
        DisplayMetrics displayMetrics = ds1Var.getResources().getDisplayMetrics();
        gy1 gy1Var = bj1Var.d;
        gy1 gy1Var2 = bj1Var.u;
        gy1 gy1Var3 = bj1Var.t;
        float fDoubleValue = (float) ((Number) bj1Var.c.a(fs2Var)).doubleValue();
        float fDoubleValue2 = (float) ((Number) bj1Var.y.a(fs2Var)).doubleValue();
        if (gy1Var2 != null) {
            bg3VarA = a(gy1Var2, displayMetrics, fs2Var, bj1Var.s, 1.0f);
        } else if (gy1Var != null) {
            bg3VarA = a(gy1Var, displayMetrics, fs2Var, bj1Var.s, 1.0f / fDoubleValue);
        } else {
            bg3VarA = gy1Var3 != null ? a(gy1Var3, displayMetrics, fs2Var, bj1Var.s, fDoubleValue2) : null;
            if (bg3VarA == null) {
                f02 f02Var = bj1Var.E;
                as2 as2Var = bj1Var.s;
                if (f02Var instanceof e02) {
                    bg3VarA = a(((e02) f02Var).a, displayMetrics, fs2Var, as2Var, 1.0f);
                } else {
                    if (!(f02Var instanceof d02)) {
                        defpackage.me0.e();
                        return;
                    }
                    bg3VarA = cj1.a(((Number) as2Var.a(fs2Var)).intValue(), pq.b(((d02) f02Var).a.b, displayMetrics, fs2Var), 1.0f);
                }
            }
        }
        bg3 bg3Var = bg3VarA;
        as2 as2Var2 = bj1Var.b;
        bg3 bg3VarA2 = gy1Var != null ? a(gy1Var, displayMetrics, fs2Var, as2Var2, 1.0f) : a(bg3Var, fDoubleValue, (Integer) as2Var2.a(fs2Var));
        bg3 bg3VarA3 = gy1Var3 != null ? a(gy1Var3, displayMetrics, fs2Var, bj1Var.s, 1.0f) : a(bg3Var, fDoubleValue2, (Integer) null);
        aj1 aj1Var = (aj1) bj1Var.h.a(fs2Var);
        if (aj1Var == aj1.WORM) {
            sf3Var = sf3.WORM;
        } else {
            sf3Var = aj1Var == aj1.SLIDER ? sf3.SLIDER : sf3.SCALE;
        }
        sf3 sf3Var2 = sf3Var;
        Object ej1Var = bj1Var.v;
        if (ej1Var == null) {
            ej1Var = new ej1(new ub1(bj1Var.F));
        }
        if (ej1Var instanceof ej1) {
            uf3Var = new tf3(pq.a(((ej1) ej1Var).a.a, displayMetrics, fs2Var));
        } else {
            if (!(ej1Var instanceof fj1)) {
                defpackage.me0.e();
                return;
            }
            fj1 fj1Var = (fj1) ej1Var;
            float fA = pq.a(fj1Var.a().a, displayMetrics, fs2Var);
            long jLongValue = ((Number) fj1Var.a().b.a(fs2Var)).longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                i = (int) jLongValue;
            } else {
                i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            uf3Var = new uf3(i, fA);
        }
        ds1Var.setStyle(new cg3(sf3Var2, bg3VarA2, bg3Var, bg3VarA3, uf3Var));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v7, types: [T, yads.lh5] */
    public final void b(tt ttVar, ds1 ds1Var, aq0 aq0Var) {
        br0 br0VarX = ttVar.a().x();
        if (br0VarX != null) {
            fs2 fs2VarB = ttVar.b();
            p41 p41VarA = aq0Var.a();
            r07 r07Var = new r07();
            ArrayList<lh5> arrayList = new ArrayList();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator it = xd2.a(br0VarX, fs2VarB).a(new mh5(arrayList, r07Var)).b(new nh5(arrayList, r07Var)).iterator();
            it.getClass();
            int i = 0;
            while (true) {
                p41 p41Var = null;
                if (!it.hasNext()) {
                    Integer num = (Integer) defpackage.qn1.e0(linkedHashMap.values());
                    if (num != null) {
                        int iIntValue = num.intValue();
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        for (Map.Entry entry : linkedHashMap.entrySet()) {
                            if (((Number) entry.getValue()).intValue() == iIntValue) {
                                linkedHashMap2.put(entry.getKey(), entry.getValue());
                            }
                        }
                        Set setKeySet = linkedHashMap2.keySet();
                        if (!setKeySet.isEmpty()) {
                            if (setKeySet.size() > 1) {
                                Log.w("SearchUtil", "Distance clash when searching for the nearest " + x07.a(ur1.class).f() + ". First found is taken");
                            }
                            p41Var = (p41) defpackage.qn1.S(setKeySet);
                        }
                    }
                    ur1 ur1Var = (ur1) p41Var;
                    if (ur1Var == null) {
                        break;
                    }
                    this.b.a(ds1Var, ur1Var);
                    break;
                }
                int i2 = i + 1;
                if (i < 0) {
                    u96.o();
                    throw null;
                }
                p41 p41VarA2 = ((cn1) it.next()).a().a();
                if (p41VarA2 == p41VarA) {
                    for (lh5 lh5Var : arrayList) {
                        if (((p41) lh5Var.b()) != null) {
                            linkedHashMap.put(lh5Var.b(), Integer.valueOf(lh5Var.a()));
                        }
                    }
                    arrayList.clear();
                    r07Var.b = new lh5(null);
                }
                if (p41VarA2 instanceof ur1) {
                    ur1 ur1Var2 = (ur1) p41VarA2;
                    if (aq0Var.b().A == null || defpackage.aa4.e(ur1Var2.a(), aq0Var.b().A)) {
                        T t = r07Var.b;
                        if (t != 0) {
                            linkedHashMap.put(p41VarA2, Integer.valueOf(((lh5) t).a()));
                        } else {
                            arrayList.add(new lh5(ur1Var2));
                        }
                    }
                }
                i = i2;
            }
        }
        a(ttVar, ds1Var, aq0Var);
    }

    @Override // yads.oh2
    public final /* bridge */ /* synthetic */ void a(View view, tt ttVar, p41 p41Var, p41 p41Var2) {
        a((ds1) view, ttVar, (bj1) p41Var);
    }

    public static final j59 a(dj1 dj1Var, ds1 ds1Var, fs2 fs2Var, bj1 bj1Var, Object obj) {
        dj1Var.getClass();
        a(ds1Var, fs2Var, bj1Var);
        return j59.a;
    }

    public final void a(final ds1 ds1Var, tt ttVar, final bj1 bj1Var) {
        final fs2 fs2Var = ttVar.b;
        a(ds1Var, fs2Var, bj1Var);
        nl3 nl3Var = new nl3() { // from class: lt9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return dj1.a(this.b, ds1Var, fs2Var, bj1Var, obj);
            }
        };
        ds1Var.f.a(bj1Var.h.a(fs2Var, nl3Var));
        ds1Var.f.a(bj1Var.b.a(fs2Var, nl3Var));
        ds1Var.f.a(bj1Var.c.a(fs2Var, nl3Var));
        ds1Var.f.a(bj1Var.s.a(fs2Var, nl3Var));
        ds1Var.f.a(bj1Var.y.a(fs2Var, nl3Var));
        js2.a(ds1Var, bj1Var.E, fs2Var, nl3Var);
        js2.a(ds1Var, bj1Var.d, fs2Var, nl3Var);
        js2.a(ds1Var, bj1Var.u, fs2Var, nl3Var);
        js2.a(ds1Var, bj1Var.t, fs2Var, nl3Var);
        Object ej1Var = bj1Var.v;
        if (ej1Var == null) {
            ej1Var = new ej1(new ub1(bj1Var.F));
        }
        if (ej1Var instanceof ej1) {
            ej1 ej1Var2 = (ej1) ej1Var;
            ds1Var.f.a(ej1Var2.a.a.b.a(fs2Var, nl3Var));
            ds1Var.f.a(ej1Var2.a.a.a.a(fs2Var, nl3Var));
        } else if (ej1Var instanceof fj1) {
            fj1 fj1Var = (fj1) ej1Var;
            ds1Var.f.a(fj1Var.a.a.b.a(fs2Var, nl3Var));
            ds1Var.f.a(fj1Var.a.a.a.a(fs2Var, nl3Var));
            ds1Var.f.a(fj1Var.a.b.a(fs2Var, nl3Var));
        }
        Object objA = bj1Var.R.a();
        if (objA instanceof af1) {
            js2.a(ds1Var, (af1) objA, fs2Var, nl3Var);
        }
        Object objA2 = bj1Var.q.a();
        if (objA2 instanceof af1) {
            js2.a(ds1Var, (af1) objA2, fs2Var, nl3Var);
        }
    }

    public static ag3 a(gy1 gy1Var, DisplayMetrics displayMetrics, fs2 fs2Var, as2 as2Var, float f) {
        g12 g12Var;
        as2 as2Var2;
        as2 as2Var3;
        as2 as2Var4;
        l42 l42Var = gy1Var.e;
        if (l42Var == null || (as2Var4 = l42Var.c) == null || (g12Var = (g12) as2Var4.a(fs2Var)) == null) {
            g12Var = g12.DP;
        }
        l42 l42Var2 = gy1Var.e;
        Integer num = null;
        Integer numValueOf = (l42Var2 == null || (as2Var3 = l42Var2.d) == null) ? null : Integer.valueOf(defpackage.w65.b(pq.b(Double.valueOf(((Number) as2Var3.a(fs2Var)).doubleValue()), displayMetrics, g12Var)));
        as2 as2Var5 = gy1Var.a;
        if (as2Var5 != null) {
            as2Var = as2Var5;
        }
        int iIntValue = ((Number) as2Var.a(fs2Var)).intValue();
        float fB = pq.b(gy1Var.d, displayMetrics, fs2Var);
        float fB2 = pq.b(gy1Var.c, displayMetrics, fs2Var);
        float fB3 = pq.b(gy1Var.b, displayMetrics, fs2Var);
        Float fValueOf = numValueOf != null ? Float.valueOf(numValueOf.intValue()) : null;
        l42 l42Var3 = gy1Var.e;
        if (l42Var3 != null && (as2Var2 = l42Var3.a) != null) {
            num = (Integer) as2Var2.a(fs2Var);
        }
        return new ag3(iIntValue, new xf3(fB * f, fB2 * f, fB3 * f), fValueOf != null ? fValueOf.floatValue() : 0.0f, num != null ? num.intValue() : 0);
    }

    public static bg3 a(bg3 bg3Var, float f, Integer num) {
        int iIntValue;
        int iIntValue2;
        if (bg3Var instanceof ag3) {
            if (num != null) {
                iIntValue2 = num.intValue();
            } else {
                iIntValue2 = ((ag3) bg3Var).a;
            }
            ag3 ag3Var = (ag3) bg3Var;
            xf3 xf3Var = ag3Var.b;
            float f2 = xf3Var.a;
            float f3 = xf3Var.b;
            float f4 = xf3Var.c;
            return new ag3(iIntValue2, new xf3(f2 * f, f3 * f, f4 * f), ag3Var.c, ag3Var.d);
        }
        if (!(bg3Var instanceof zf3)) {
            defpackage.me0.e();
            return null;
        }
        if (num != null) {
            iIntValue = num.intValue();
        } else {
            iIntValue = ((zf3) bg3Var).a;
        }
        return cj1.a(iIntValue, ((zf3) bg3Var).b.a, f);
    }
}
