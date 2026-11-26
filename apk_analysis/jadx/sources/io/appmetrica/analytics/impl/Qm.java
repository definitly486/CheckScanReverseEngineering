package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.ta8;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.networktasks.internal.NetworkTask;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class Qm {
    public final Rm a;
    public final Object b = new Object();
    public volatile NetworkTask c;

    public Qm(Rm rm) {
        this.a = rm;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003c  */
    public final C1341vm a(C1290tm c1290tm, C1238rm c1238rm, long j) {
        String str;
        String strA = Vm.a(c1238rm.h);
        Map map = c1238rm.i.a;
        String str2 = c1290tm.j;
        String str3 = e().k;
        if (!Vm.a(Vm.a(str2))) {
            str2 = Vm.a(Vm.a(str3)) ? str3 : null;
        }
        String str4 = e().a;
        if (str4 == null) {
            str = c1290tm.h;
        } else {
            str = ta8.M(str4) ? null : str4;
            if (str == null) {
                str = c1290tm.h;
            }
        }
        C1416ym c1416ym = new C1416ym(c1290tm.b);
        String str5 = c1290tm.i;
        c1416ym.o = this.a.i.currentTimeSeconds();
        c1416ym.a = e().d;
        c1416ym.c = c1290tm.d;
        c1416ym.f = c1290tm.c;
        c1416ym.g = c1238rm.e;
        c1416ym.b = c1290tm.e;
        c1416ym.d = c1290tm.f;
        c1416ym.e = c1290tm.g;
        c1416ym.h = c1290tm.n;
        c1416ym.i = c1290tm.o;
        c1416ym.j = str2;
        c1416ym.k = strA;
        this.a.k.getClass();
        HashMap mapA = Vm.a(str2);
        c1416ym.q = xo.a(map) ? xo.a((Map) mapA) : mapA.equals(map);
        c1416ym.l = Vm.a(map);
        c1416ym.r = c1290tm.m;
        c1416ym.n = c1290tm.k;
        c1416ym.s = c1290tm.p;
        c1416ym.p = true;
        c1416ym.t = j;
        C1238rm c1238rmD = d();
        long j2 = c1238rmD.n;
        if (j2 == 0) {
            c1238rmD.n = j;
        } else {
            j = j2;
        }
        c1416ym.u = j;
        c1416ym.v = false;
        c1416ym.w = c1290tm.q;
        c1416ym.x = c1290tm.r;
        c1416ym.y = c1290tm.s;
        c1416ym.z = c1290tm.t;
        c1416ym.A = c1290tm.u;
        c1416ym.B = c1290tm.v;
        return new C1341vm(str, str5, new C1441zm(c1416ym));
    }

    public final void b(C1341vm c1341vm) {
        this.a.l.a(c1341vm);
        C1316um c1316um = this.a.g;
        c1316um.b.a(c1341vm.a);
        c1316um.b.b(c1341vm.b);
        Ho ho = c1316um.b.a;
        Ho.a(ho.a);
        Ho.a(ho.b);
        c1316um.a.save(c1341vm.c);
        this.a.e.a(c1341vm);
    }

    public final NetworkTask c() {
        NetworkTask networkTaskA;
        synchronized (this.b) {
            try {
                if (g()) {
                    networkTaskA = this.c;
                    if (networkTaskA == null || networkTaskA.isRemoved()) {
                        networkTaskA = C0998ie.a(this, d());
                        this.c = networkTaskA;
                    }
                } else {
                    networkTaskA = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return networkTaskA;
    }

    public final C1238rm d() {
        return (C1238rm) this.a.l.a();
    }

    public final C1341vm e() {
        C1341vm c1341vm;
        Yl yl = this.a.l;
        synchronized (yl) {
            c1341vm = yl.c.a;
        }
        return c1341vm;
    }

    public final void f() {
        C1341vm c1341vm;
        Yl yl = this.a.l;
        synchronized (yl) {
            c1341vm = yl.c.a;
        }
        C1441zm c1441zm = c1341vm.c;
        C1416ym c1416ymA = c1441zm.a(c1441zm.m);
        String strA = c1341vm.a;
        String str = c1341vm.b;
        String str2 = this.a.m.a().id;
        if (str2 == null || (StringUtils.isNotNullOrEmpty(c1341vm.d) && !str2.equals(c1341vm.d))) {
            Bj.a.reportError((str2 == null ? "null_uuid" : "wrong_uuid").concat("_on_service"), defpackage.pg.g("The only true uuid: ", str2, "; backup uuid: ", c1341vm.d));
        }
        if (str2 == null) {
            str2 = c1341vm.d;
        }
        c1416ymA.a = str2;
        String str3 = c1341vm.a;
        if (str3 == null || str3.length() == 0) {
            strA = this.a.h.a();
            str = "";
        }
        List<String> list = this.a.c.e;
        if (list == null || list.isEmpty()) {
            list = null;
        }
        c1416ymA.g = list;
        C1341vm c1341vm2 = new C1341vm(strA, str, new C1441zm(c1416ymA));
        b(c1341vm2);
        a(c1341vm2);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002e  */
    public final boolean g() {
        boolean z;
        boolean z2 = false;
        if (Fa.I.h().isRestrictedForSdk()) {
            return false;
        }
        C1341vm c1341vmE = e();
        Set set = AbstractC1264sm.a;
        if (c1341vmE.w) {
            z = true;
        } else {
            if (AbstractC1264sm.b.currentTimeSeconds() > c1341vmE.o + ((long) c1341vmE.z.a)) {
                z = true;
            } else {
                z = false;
            }
        }
        if (!z) {
            if (AbstractC1264sm.a(c1341vmE.d) && AbstractC1264sm.a(c1341vmE.a) && AbstractC1264sm.a(c1341vmE.b)) {
                z2 = true;
            }
            z = !z2;
            Q3 q3 = this.a.k;
            Map map = d().h;
            N3 n3 = this.a.j;
            q3.getClass();
            boolean zA = Q3.a(map, c1341vmE, n3);
            if (z2 && !zA) {
                return true;
            }
        }
        return z;
    }

    public final Context b() {
        return this.a.a;
    }

    public final C0808b5 a() {
        return this.a.f;
    }

    public final boolean a(List<String> list, Map<String, String> map) {
        return !AbstractC1264sm.a(e(), list, map, new Pm(this));
    }

    public final void a(C1341vm c1341vm) {
        ArrayList arrayList;
        Rm rm = this.a;
        Vl vl = rm.d;
        String str = rm.b;
        synchronized (vl.a.b) {
            try {
                Xl xl = vl.a;
                xl.c = c1341vm;
                Collection collection = (Collection) xl.a.a.get(str);
                if (collection == null) {
                    arrayList = new ArrayList();
                } else {
                    arrayList = new ArrayList(collection);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((InterfaceC0954gm) it.next()).a(c1341vm);
        }
    }

    public final void a(Zl zl) {
        ArrayList arrayList;
        this.c = null;
        Rm rm = this.a;
        Vl vl = rm.d;
        String str = rm.f.a;
        C1341vm c1341vmE = e();
        synchronized (vl.a.b) {
            try {
                Collection collection = (Collection) vl.a.a.a.get(str);
                if (collection == null) {
                    arrayList = new ArrayList();
                } else {
                    arrayList = new ArrayList(collection);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((InterfaceC0954gm) it.next()).a(zl, c1341vmE);
        }
    }

    public final void a(C1187pm c1187pm) {
        this.a.l.a(c1187pm);
        C1238rm c1238rmD = d();
        if (c1238rmD.k) {
            List list = c1238rmD.j;
            if (list != null && !list.isEmpty()) {
                if (xo.a(list, c1238rmD.e)) {
                    return;
                }
                C1341vm c1341vmE = e();
                C1441zm c1441zm = c1341vmE.c;
                C1416ym c1416ymA = c1441zm.a(c1441zm.m);
                String str = c1341vmE.a;
                String str2 = c1341vmE.b;
                c1416ymA.g = list;
                C1341vm c1341vm = new C1341vm(str, str2, new C1441zm(c1416ymA));
                b(c1341vm);
                a(c1341vm);
                return;
            }
            List list2 = c1238rmD.e;
            if (list2 == null || !(!list2.isEmpty())) {
                return;
            }
            C1341vm c1341vmE2 = e();
            C1441zm c1441zm2 = c1341vmE2.c;
            C1416ym c1416ymA2 = c1441zm2.a(c1441zm2.m);
            String str3 = c1341vmE2.a;
            String str4 = c1341vmE2.b;
            c1416ymA2.g = null;
            C1341vm c1341vm2 = new C1341vm(str3, str4, new C1441zm(c1416ymA2));
            b(c1341vm2);
            a(c1341vm2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0032  */
    public final void a(C1290tm c1290tm, C1238rm c1238rm, Map<String, ? extends List<String>> map) {
        Long lValueOf;
        if (xo.a((Map) map)) {
            lValueOf = null;
        } else {
            List list = (List) CollectionUtils.getFromMapIgnoreCase(map, "Date");
            if (xo.a((Collection) list)) {
                lValueOf = null;
            } else {
                try {
                    lValueOf = Long.valueOf(new SimpleDateFormat("E, d MMM yyyy HH:mm:ss z", Locale.US).parse((String) list.get(0)).getTime());
                } catch (Throwable unused) {
                    lValueOf = null;
                }
            }
        }
        long jLongValue = lValueOf != null ? lValueOf.longValue() : 0L;
        AbstractC1107mk.a.a(jLongValue, c1290tm.l);
        C1341vm c1341vmA = a(c1290tm, c1238rm, jLongValue);
        this.c = null;
        b(c1341vmA);
        a(c1341vmA);
    }
}
