package yads;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import defpackage.j59;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: loaded from: classes6.dex */
public final class w41 {
    public final kf2 a;
    public final g82 b;
    public final a91 c;
    public final lz1 d;
    public final ii1 e;
    public final hh1 f;
    public final ph1 g;
    public final rg1 h;
    public final cs1 i;
    public final c62 j;
    public final c32 k;
    public final la1 l;
    public final dj1 m;
    public final d22 n;
    public final jk1 o;
    public final wy1 p;
    public final rg2 q;
    public final hd1 r;
    public final es4 s;
    public final m52 t;

    public w41(kf2 kf2Var, g82 g82Var, a91 a91Var, lz1 lz1Var, ii1 ii1Var, hh1 hh1Var, ph1 ph1Var, rg1 rg1Var, cs1 cs1Var, c62 c62Var, c32 c32Var, la1 la1Var, dj1 dj1Var, d22 d22Var, jk1 jk1Var, wy1 wy1Var, rg2 rg2Var, hd1 hd1Var, es4 es4Var, m52 m52Var) {
        this.a = kf2Var;
        this.b = g82Var;
        this.c = a91Var;
        this.d = lz1Var;
        this.e = ii1Var;
        this.f = hh1Var;
        this.g = ph1Var;
        this.h = rg1Var;
        this.i = cs1Var;
        this.j = c62Var;
        this.k = c32Var;
        this.l = la1Var;
        this.m = dj1Var;
        this.n = d22Var;
        this.o = jk1Var;
        this.p = wy1Var;
        this.q = rg2Var;
        this.r = hd1Var;
        this.s = es4Var;
        this.t = m52Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(tt ttVar, View view, br0 br0Var, n32 n32Var) {
        try {
            gs2 gs2Var = ttVar.a.z.a(n32Var, br0Var, ttVar.b).a;
            if (!defpackage.aa4.e(ttVar.b, gs2Var)) {
                ttVar = new tt(ttVar.a, gs2Var);
            }
            vq0 vq0Var = ttVar.a;
            fs2 fs2Var = ttVar.b;
            vq0Var.getClass();
            if (!((Boolean) this.a.b(br0Var, fs2Var)).booleanValue()) {
                tq.a(view, br0Var.a().v(), fs2Var);
                return;
            }
            hd1 hd1Var = this.r;
            p41 p41VarA = br0Var.a();
            if (hd1Var.a(p41VarA)) {
                Iterator it = hd1Var.a.iterator();
                while (it.hasNext()) {
                    ((id1) it.next()).a(p41VarA);
                }
            }
            if (!(br0Var instanceof vp0)) {
                view.getClass();
                br0 br0VarA = ((wh1) view).a();
                if (br0VarA != null) {
                    this.r.a(vq0Var, fs2Var, view, br0VarA.a());
                }
            }
            if (br0Var instanceof jq0) {
                g82 g82Var = this.b;
                view.getClass();
                g82Var.a(ttVar, (zo1) view, (jq0) br0Var, (n32) null);
            } else if (br0Var instanceof zp0) {
                ii1 ii1Var = this.e;
                view.getClass();
                ii1Var.a(ttVar, (yi1) view, (zp0) br0Var, (n32) null);
            } else if (br0Var instanceof xp0) {
                hh1 hh1Var = this.f;
                view.getClass();
                hh1Var.a(ttVar, (nh1) view, (xp0) br0Var, (n32) null);
            } else if (br0Var instanceof eq0) {
                lz1 lz1Var = this.d;
                view.getClass();
                lz1Var.a(ttVar, (wz1) view, (eq0) br0Var, (n32) null);
            } else if (br0Var instanceof up0) {
                a(ttVar, view, (up0) br0Var, n32Var);
            } else if (br0Var instanceof yp0) {
                a(ttVar, view, (yp0) br0Var, n32Var);
            } else if (br0Var instanceof wp0) {
                a(ttVar, view, (wp0) br0Var, n32Var);
            } else if (br0Var instanceof cq0) {
                cs1 cs1Var = this.i;
                view.getClass();
                cs1Var.a(ttVar, (et1) view, (cq0) br0Var, n32Var);
            } else if (br0Var instanceof iq0) {
                a(ttVar, view, (iq0) br0Var, n32Var);
            } else if (br0Var instanceof gq0) {
                c32 c32Var = this.k;
                view.getClass();
                c32Var.a(ttVar, (k32) view, (gq0) br0Var, n32Var);
            } else if (br0Var instanceof vp0) {
                la1 la1Var = this.l;
                view.getClass();
                la1Var.a(ttVar, (bb1) view, (vp0) br0Var, n32Var);
            } else if (br0Var instanceof aq0) {
                dj1 dj1Var = this.m;
                view.getClass();
                dj1Var.b(ttVar, (ds1) view, (aq0) br0Var);
            } else if (br0Var instanceof fq0) {
                d22 d22Var = this.n;
                view.getClass();
                d22Var.a(ttVar, (s22) view, (fq0) br0Var, n32Var);
            } else if (br0Var instanceof bq0) {
                jk1 jk1Var = this.o;
                view.getClass();
                jk1Var.a(ttVar, (bn1) view, (bq0) br0Var, n32Var);
            } else if (br0Var instanceof dq0) {
                wy1 wy1Var = this.p;
                view.getClass();
                wy1Var.a(ttVar, (gz1) view, (dq0) br0Var, n32Var);
            } else if (br0Var instanceof kq0) {
                rg2 rg2Var = this.q;
                view.getClass();
                rg2Var.a(ttVar, (mh2) view, (kq0) br0Var, n32Var);
            } else {
                if (!(br0Var instanceof hq0)) {
                    throw new NoWhenBranchMatchedException();
                }
                m52 m52Var = this.t;
                view.getClass();
                m52Var.a(ttVar, (s52) view, (hq0) br0Var, n32Var);
            }
            j59 j59Var = j59.a;
            if (br0Var instanceof vp0) {
                return;
            }
            hd1 hd1Var2 = this.r;
            p41 p41VarA2 = br0Var.a();
            if (hd1Var2.a(p41VarA2)) {
                for (id1 id1Var : hd1Var2.a) {
                    if (id1Var.a(p41VarA2)) {
                        id1Var.a(vq0Var, view, p41VarA2);
                    }
                }
            }
        } catch (ft4 e) {
            ht4 ht4Var = e.b;
            if (ht4Var != ht4.MISSING_VARIABLE && ht4Var != ht4.INVALID_VALUE && ht4Var != ht4.TYPE_MISMATCH) {
                throw e;
            }
        }
    }

    public final void a() {
        es4 es4Var = this.s;
        Iterator it = es4Var.a.entrySet().iterator();
        while (it.hasNext()) {
            et1 et1Var = (et1) ((Map.Entry) it.next()).getValue();
            Iterator it2 = et1Var.d.iterator();
            while (it2.hasNext()) {
                et1Var.a.unregisterOnPageChangeCallback((ViewPager2.OnPageChangeCallback) it2.next());
            }
            et1Var.d.clear();
        }
        for (ds4 ds4Var : es4Var.b) {
            et1 et1Var2 = (et1) es4Var.a.get(ds4Var.b);
            if (et1Var2 != null) {
                ds4Var.a.a(et1Var2);
            }
        }
        es4Var.a.clear();
        es4Var.b.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void a(tt ttVar, View view, up0 up0Var, n32 n32Var) {
        fs2 fs2VarA;
        a91 a91Var = this.c;
        view.getClass();
        ViewGroup viewGroup = (ViewGroup) view;
        a91Var.getClass();
        wh1 wh1Var = (wh1) viewGroup;
        up0 up0Var2 = (up0) wh1Var.a();
        tt ttVarC = wh1Var.c();
        if (ttVarC == null || (fs2VarA = ttVarC.b) == null) {
            fs2VarA = vq0.a(ttVar.a.y);
        }
        fs2 fs2Var = fs2VarA;
        if (up0Var == up0Var2) {
            a91Var.a(viewGroup, ttVar, up0Var.a, up0Var2.a, fs2Var, n32Var, false);
            return;
        }
        a91Var.b.a(ttVar, viewGroup, up0Var, up0Var2);
        a91Var.a(viewGroup, ttVar, up0Var.a, up0Var2 != null ? up0Var2.a : null);
        Iterator<View> it = ViewGroupKt.getChildren(viewGroup).iterator();
        while (it.hasNext()) {
        }
        a91Var.a(viewGroup, ttVar, up0Var.a, up0Var2 != null ? up0Var2.a : null, fs2Var, n32Var, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v2, types: [java.lang.Throwable] */
    public final void a(tt ttVar, View view, yp0 yp0Var, n32 n32Var) {
        List list;
        List listH;
        ph1 ph1Var = this.g;
        view.getClass();
        uh1 uh1Var = (uh1) view;
        ph1Var.a(ttVar, uh1Var, yp0Var, n32Var);
        oh1 oh1Var = yp0Var.a;
        yp0 yp0Var2 = (yp0) uh1Var.f.c;
        ArrayList arrayList = null;
        oh1 oh1Var2 = yp0Var2 != null ? yp0Var2.a : null;
        fs2 fs2Var = ttVar.b;
        List list2 = oh1Var.y;
        if (list2 == null) {
            list2 = defpackage.kx2.b;
        }
        vq0 vq0Var = ttVar.a;
        f71.a(list2, fs2Var);
        vq0Var.getClass();
        vq0 vq0Var2 = ttVar.a;
        fs2 fs2Var2 = ttVar.b;
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        int i2 = 0;
        for (Object obj : list2) {
            int i3 = i2 + 1;
            if (i2 >= 0) {
                br0 br0Var = (br0) obj;
                vq0 vq0Var3 = ttVar.a;
                if (br0Var.a().a() != null) {
                    vq0Var3.getClass();
                    if (ph1Var.b.a.a.get(ttVar.a.O) == null) {
                        listH = u96.h(br0Var);
                    } else {
                        throw new ClassCastException();
                    }
                } else {
                    listH = u96.h(br0Var);
                }
                listH.size();
                defpackage.nn1.s(listH, arrayList2);
                i2 = i3;
            } else {
                u96.o();
                throw null;
            }
        }
        ArrayList arrayListA = du1.a.a((List) arrayList2);
        for (Object obj2 : arrayList2) {
            int i4 = i + 1;
            if (i >= 0) {
                br0 br0Var2 = (br0) obj2;
                View childAt = uh1Var.getChildAt(i);
                ArrayList arrayList3 = arrayList;
                p41 p41VarA = br0Var2.a();
                ArrayList arrayList4 = arrayListA;
                ((w41) ph1Var.c.get()).a(ttVar, childAt, br0Var2, n32Var.a((String) arrayListA.get(i)));
                ph1Var.b(childAt, p41VarA, fs2Var2);
                if (jf2.a(p41VarA)) {
                    vq0Var2.w.put(childAt, br0Var2);
                }
                arrayList = arrayList3;
                arrayListA = arrayList4;
                i = i4;
            } else {
                ?? r16 = arrayList;
                u96.o();
                throw r16;
            }
        }
        tq.a(uh1Var, ttVar.a, f71.a(arrayList2, fs2Var), (oh1Var2 == null || (list = oh1Var2.y) == null) ? arrayList : f71.a(list, fs2Var));
    }

    public final void a(tt ttVar, View view, wp0 wp0Var, n32 n32Var) {
        rg1 rg1Var = this.h;
        view.getClass();
        cy1 cy1Var = (cy1) view;
        rg1Var.getClass();
        wp0 wp0Var2 = (wp0) cy1Var.b.c;
        if (wp0Var == wp0Var2) {
            RecyclerView.Adapter adapter = cy1Var.getAdapter();
            if ((adapter instanceof pg1 ? (pg1) adapter : null) == null) {
                return;
            }
            if (rg1Var.e.a.get(ttVar.a.O) == null) {
                tq.a((w41) rg1Var.d.get(), ttVar, cy1Var);
                return;
            }
            throw new ClassCastException();
        }
        rg1Var.b.a(ttVar, cy1Var, wp0Var, wp0Var2);
        rg1Var.a(cy1Var, ttVar, wp0Var.a, n32Var);
    }

    public final void a(tt ttVar, View view, iq0 iq0Var, n32 n32Var) {
        c62 c62Var = this.j;
        view.getClass();
        m62 m62Var = (m62) view;
        c62Var.getClass();
        iq0 iq0Var2 = (iq0) m62Var.f.c;
        if (iq0Var2 == iq0Var) {
            a62 a62Var = m62Var.e;
            if (a62Var != null) {
                if (a62Var.w.a.get(a62Var.q.a.O) != null) {
                    throw new ClassCastException();
                }
            }
        } else {
            c62Var.b.a(ttVar, m62Var, iq0Var, iq0Var2);
            c62Var.a(m62Var, ttVar, iq0Var.a);
        }
        c62Var.a(n32Var, ttVar, m62Var, iq0Var2 != null ? iq0Var2.a : null, iq0Var.a, (w41) c62Var.d.get(), m62Var);
    }
}
