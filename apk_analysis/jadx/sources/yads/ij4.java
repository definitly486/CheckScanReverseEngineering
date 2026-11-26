package yads;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ij4 {
    public final yk A;
    public final e16 B;
    public final ym4 C;
    public final ac0 D;
    public final lf4 E;
    public final String F;
    public final hc4 G;
    public final y06 H;
    public final a4 I;
    public final g00 J;
    public final fk K;
    public dh4 L;
    public final fj4 M;
    public final String N;
    public final List O;
    public final sj4 P;
    public final Context a;
    public final we4 b;
    public final fm4 c;
    public final ch4 d;
    public final hm4 e;
    public final bf5 f;
    public final of4 g;
    public final e4 h;
    public final d9 i;
    public final vg4 j;
    public final uj5 k;
    public final aj4 l;
    public final q80 m;
    public final hv5 n;
    public final we3 o;
    public final av p;
    public final eh4 q;
    public final j24 r;
    public final mk s;
    public final ze3 t;
    public final k65 u;
    public final yt v;
    public final kr2 w;
    public final ud4 x;
    public final b55 y;
    public final lr2 z;

    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
        	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    public ij4(android.content.Context r42, yads.rt r43, yads.we4 r44) {
        /*
            Method dump skipped, instruction units count: 798
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.ij4.<init>(android.content.Context, yads.rt, yads.we4):void");
    }

    public final void a(dh4 dh4Var) throws yf4 {
        dh4Var.a();
        this.y.a();
        this.p.getClass();
        HashMap map = dh4Var.e;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            bk bkVar = (bk) entry.getValue();
            if (bkVar != null ? bkVar.b() : false) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        Iterator it2 = linkedHashMap.entrySet().iterator();
        while (it2.hasNext()) {
            arrayList.add((String) ((Map.Entry) it2.next()).getKey());
        }
        this.x.a(arrayList, e75.BOUND_ASSETS);
        List list = this.z.a;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list) {
            if (!((ak) obj).f) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : arrayList2) {
            bk bkVarA = dh4Var.a((ak) obj2);
            if (bkVarA == null || !bkVarA.b()) {
                arrayList3.add(obj2);
            }
        }
        ArrayList arrayList4 = new ArrayList(defpackage.kn1.q(arrayList3, 10));
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            arrayList4.add(((ak) it3.next()).a);
        }
        if (!arrayList4.isEmpty()) {
            kr2 kr2Var = this.w;
            h75 h75VarA = kr2Var.b.a();
            h75VarA.b("no_view_for_asset", "reason");
            h75VarA.b(arrayList4, "assets");
            Map map2 = kr2Var.a.u;
            if (map2 != null) {
                h75VarA.a.putAll(map2);
            }
            c cVar = kr2Var.a.i;
            h75VarA.b = cVar;
            e75 e75Var = e75.AD_LOADING_RESULT;
            kr2Var.c.a(new g75("expected_view_missing", defpackage.n05.n(h75VarA.a), cVar));
        }
        this.L = dh4Var;
        this.A.a(dh4Var);
        this.d.a(dh4Var);
        m85 m85VarB = this.d.b();
        if (m85VarB.a()) {
            this.c.a(dh4Var);
            b(dh4Var);
            return;
        }
        String strB = m85VarB.b();
        this.v.a(strB);
        throw new yf4(String.format("Resource for required view " + strB + " is not present", Arrays.copyOf(new Object[0], 0)), strB);
    }

    public final void b(dh4 dh4Var) {
        this.c.a(dh4Var, this.J);
        boolean z = defpackage.aa4.e(this.i.b(), jj4.LoadingOnShow.a()) || defpackage.aa4.e(this.i.b(), jj4.LoadingOnBack.a());
        if (this.C.a() && !z) {
            loadImages();
        }
        List list = this.u.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            bk bkVarA = dh4Var.a((ak) obj);
            if (bkVarA != null ? bkVarA.b() : false) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ak) it.next()).a);
        }
        this.x.a(arrayList2, e75.RENDERED_ASSETS);
        i();
    }

    public final sj4 d() {
        return this.P;
    }

    public final void destroy() {
        dh4 dh4Var = this.L;
        if (dh4Var != null) {
            defpackage.z22.b(dh4Var.b, null);
            for (bk bkVar : dh4Var.e.values()) {
                if (bkVar != null) {
                    bkVar.destroy();
                }
            }
        }
    }

    public final List f() {
        return this.O;
    }

    public final ok4 g() {
        return this.d;
    }

    public final void h() {
        dh4 dh4Var = this.L;
        if (dh4Var != null) {
            defpackage.z22.b(dh4Var.b, null);
        }
        j();
        e16 e16Var = this.B;
        Context context = this.a;
        f16 f16Var = e16Var.a;
        if (f16Var != null) {
            f16Var.b.b(context, f16Var);
        }
        e16Var.a = null;
        mh4 mh4Var = e16Var.b;
        if (mh4Var != null) {
            mh4Var.b();
        }
        e16Var.b = null;
        dh4 dh4Var2 = this.L;
        if (dh4Var2 != null) {
            this.c.a(dh4Var2);
            this.H.a(dh4Var2);
            this.A.b = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0012  */
    public final void i() {
        boolean z;
        View viewB;
        dh4 dh4Var = this.L;
        if (dh4Var != null && (viewB = dh4Var.b()) != null) {
            z = viewB.isAttachedToWindow();
        }
        if (z) {
            this.H.a(this.a, this.M, this.L);
        }
    }

    public final void j() {
        this.H.a(this.M);
    }

    public abstract void loadImages();

    public final vg4 b() {
        return this.j;
    }

    public void a(h80 h80Var) {
        this.E.a.b = h80Var;
    }

    public final void a(View view, b05 b05Var, rh4 rh4Var) throws yf4 {
        ij4 ij4VarA = this.q.a(view);
        if (equals(ij4VarA)) {
            return;
        }
        if (ij4VarA != null) {
            ij4VarA.h();
        }
        a(this, this.q);
        this.q.a(view, this);
        a(new dh4(rh4Var, this.h, this.f, b05Var, this.o, this.g, this.s, this.P, this.l, this.i, this.e, this.b, this.r, this.k, this.D, nn0.b));
        a(view);
    }

    public final void a(zh4 zh4Var) {
        this.I.g.e = zh4Var;
        this.t.h = zh4Var;
        o1 o1Var = this.E.b;
        o1Var.g = zh4Var;
        o1Var.f.b.k = zh4Var;
        this.H.a(new yj4(zh4Var, this.A));
        this.v.c.e = zh4Var;
        this.w.b.e = zh4Var;
        this.x.b.e = zh4Var;
        this.y.c.e = zh4Var;
    }

    public static void a(ij4 ij4Var, eh4 eh4Var) {
        boolean z;
        eh4Var.getClass();
        synchronized (eh4.b) {
            Iterator it = eh4Var.a.entrySet().iterator();
            z = false;
            while (it.hasNext()) {
                if (((ij4) ((Map.Entry) it.next()).getValue()) == ij4Var) {
                    it.remove();
                    z = true;
                }
            }
        }
        if (z) {
            ij4Var.h();
        }
    }

    public final void a(View view, b05 b05Var, rh4 rh4Var, pz pzVar) {
        eh4 eh4Var;
        eh4 eh4Var2 = eh4.c;
        if (eh4Var2 == null) {
            synchronized (eh4.b) {
                eh4Var = eh4.c;
                if (eh4Var == null) {
                    eh4Var = new eh4();
                    eh4.c = eh4Var;
                }
            }
            eh4Var2 = eh4Var;
        }
        ij4 ij4VarA = eh4Var2.a(view);
        if (equals(ij4VarA)) {
            return;
        }
        if (ij4VarA != null) {
            ij4VarA.h();
        }
        a(this, eh4Var2);
        eh4Var2.a(view, this);
        dh4 dh4Var = new dh4(rh4Var, this.h, this.f, b05Var, this.o, this.g, this.s, this.P, this.l, this.i, this.e, this.b, this.r, this.k, this.D, pzVar.a);
        dh4Var.a();
        this.L = dh4Var;
        this.A.b = dh4Var;
        this.d.a(dh4Var);
        this.c.a(dh4Var);
        fk fkVar = this.K;
        pzVar.b = new ek(fkVar.a, fkVar.b, dh4Var, fkVar.c, fkVar.d, fkVar.e);
        b(dh4Var);
        a(view);
    }

    public final void a(View view) {
        e16 e16Var = this.B;
        hj4 hj4Var = new hj4(this);
        e16Var.getClass();
        Context context = view.getContext();
        f16 f16Var = e16Var.a;
        if (f16Var != null) {
            f16Var.b.b(context, f16Var);
        }
        Activity activity = null;
        e16Var.a = null;
        mh4 mh4Var = e16Var.b;
        if (mh4Var != null) {
            mh4Var.b();
        }
        e16Var.b = null;
        Context context2 = view.getContext();
        int i = 0;
        while (context2 instanceof ContextWrapper) {
            int i2 = i + 1;
            if (i >= 10) {
                break;
            }
            if (context2 instanceof Activity) {
                activity = (Activity) context2;
                break;
            } else {
                context2 = ((ContextWrapper) context2).getBaseContext();
                i = i2;
            }
        }
        if (activity != null) {
            f16 f16Var2 = new f16(activity, hj4Var);
            e16Var.a = f16Var2;
            f16Var2.b.a(activity, f16Var2);
        }
        mh4 mh4Var2 = new mh4(view, hj4Var);
        e16Var.b = mh4Var2;
        mh4Var2.a();
    }
}
