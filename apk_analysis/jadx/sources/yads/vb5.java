package yads;

import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.ra8;
import defpackage.v39;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class vb5 implements ub5 {
    public final os2 b;
    public final ao2 c;
    public boolean d;
    public final LinkedHashMap e = new LinkedHashMap();
    public final LinkedHashMap f = new LinkedHashMap();
    public final gp4 g = new gp4();
    public final zb5 h = new zb5();
    public final LinkedHashMap i = new LinkedHashMap();
    public final ms2 j;

    public vb5(db1 db1Var, os2 os2Var, ao2 ao2Var) {
        this.b = os2Var;
        this.c = ao2Var;
        ms2 ms2VarA = os2Var.a(db1Var, ao2Var, this);
        a(ms2VarA, "", (ms2) null);
        this.j = ms2VarA;
    }

    @Override // yads.ub5
    public final ms2 a(n32 n32Var, br0 br0Var, fs2 fs2Var, fs2 fs2Var2) {
        String str = (String) n32Var.e.getValue();
        ms2 ms2Var = (ms2) this.f.get(str);
        if (ms2Var != null) {
            return ms2Var;
        }
        if (!(fs2Var instanceof gs2)) {
            return null;
        }
        ms2 ms2Var2 = (ms2) this.e.get(fs2Var2);
        if (ms2Var2 == null) {
            String str2 = String.format("Parent runtime for path '%s' is not stored.", Arrays.copyOf(new Object[]{str}, 1));
            ao2 ao2Var = this.c;
            ao2Var.b.add(new AssertionError(str2));
            ao2Var.a();
            return null;
        }
        if (a(br0Var)) {
            ms2 ms2VarA = this.b.a(n32Var, br0Var.a(), (gs2) fs2Var, this.c);
            a(ms2VarA, str, ms2Var2);
            return ms2VarA;
        }
        if (fs2Var == fs2Var2) {
            this.f.put(str, ms2Var2);
            return ms2Var2;
        }
        ms2 ms2Var3 = new ms2((gs2) fs2Var, null);
        a(ms2Var3, str, ms2Var2);
        return ms2Var3;
    }

    @Override // yads.ub5
    public final void b(vq0 vq0Var) {
        gp4 gp4Var = this.g;
        gp4Var.getClass();
        fp4 fp4Var = new fp4(gp4Var);
        while (fp4Var.hasNext()) {
            d26 d26Var = ((ms2) fp4Var.next()).b;
            if (d26Var != null) {
                if (defpackage.aa4.e(d26Var.e, vq0Var)) {
                    d26Var.e = null;
                }
                Iterator it = d26Var.d.entrySet().iterator();
                while (it.hasNext()) {
                    for (c26 c26Var : (List) ((Map.Entry) it.next()).getValue()) {
                        v39.a(c26Var.n).remove(vq0Var);
                        c26Var.a();
                    }
                }
            }
        }
    }

    @Override // yads.ub5
    public final Map c() {
        LinkedHashMap linkedHashMap = this.h.b;
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add(new defpackage.b36(entry.getKey(), ((yb5) entry.getValue()).a));
        }
        return defpackage.n05.k(arrayList);
    }

    @Override // yads.ub5
    public final void c(vq0 vq0Var) {
        gp4 gp4Var = this.g;
        gp4Var.getClass();
        fp4 fp4Var = new fp4(gp4Var);
        while (fp4Var.hasNext()) {
            d26 d26Var = ((ms2) fp4Var.next()).b;
            if (d26Var != null) {
                d26Var.a(vq0Var);
            }
        }
    }

    @Override // yads.ub5
    public final void b() {
        gp4 gp4Var = this.g;
        gp4Var.getClass();
        fp4 fp4Var = new fp4(gp4Var);
        while (fp4Var.hasNext()) {
            ms2 ms2Var = (ms2) fp4Var.next();
            if (ms2Var.c) {
                ms2Var.c = false;
                ms2Var.a.f();
            }
        }
    }

    @Override // yads.ub5
    public final void a(p41 p41Var) {
        if (this.d || p41Var.s() == null) {
            return;
        }
        this.d = true;
        ao2 ao2Var = this.c;
        ao2Var.d.add(new Throwable("You are using local variables. Please ensure that all elements that use local variables and all of their parents recursively have an 'id' attribute."));
        ao2Var.a();
    }

    public static final j59 a(nl3 nl3Var, yb5 yb5Var) {
        nl3Var.invoke(yb5Var.a);
        return j59.a;
    }

    @Override // yads.ub5
    public final ms2 a(n32 n32Var, br0 br0Var, fs2 fs2Var) {
        String str = (String) n32Var.e.getValue();
        ms2 ms2Var = (ms2) this.f.get(str);
        if (ms2Var != null) {
            return ms2Var;
        }
        if (!(fs2Var instanceof gs2)) {
            return this.j;
        }
        ms2 ms2Var2 = (ms2) this.e.get(fs2Var);
        if (ms2Var2 == null) {
            String str2 = String.format("Parent runtime for path '%s' is not stored.", Arrays.copyOf(new Object[]{str}, 1));
            ao2 ao2Var = this.c;
            ao2Var.b.add(new AssertionError(str2));
            ao2Var.a();
            return this.j;
        }
        if (!a(br0Var)) {
            this.f.put(str, ms2Var2);
            return ms2Var2;
        }
        ms2 ms2VarA = this.b.a(n32Var, br0Var.a(), (gs2) fs2Var, this.c);
        a(ms2VarA, str, ms2Var2);
        return ms2VarA;
    }

    @Override // yads.ub5
    public final ms2 a() {
        return this.j;
    }

    @Override // yads.ub5
    public final ms2 a(fs2 fs2Var) {
        return (ms2) this.e.get(fs2Var);
    }

    public final void a(ms2 ms2Var, String str, ms2 ms2Var2) {
        yb5 yb5Var;
        ArrayList arrayList;
        this.f.put(str, ms2Var);
        this.e.put(ms2Var.a, ms2Var);
        this.g.a(ms2Var);
        zb5 zb5Var = this.h;
        zb5Var.getClass();
        yb5 yb5Var2 = new yb5(ms2Var, str);
        zb5Var.b.put(str, yb5Var2);
        zb5Var.a.put(ms2Var, yb5Var2);
        if (ms2Var2 != null && (yb5Var = (yb5) zb5Var.a.get(ms2Var2)) != null && (arrayList = yb5Var.c) != null) {
            arrayList.add(yb5Var2);
        }
        if (ms2Var.c) {
            ms2Var.c = false;
            ms2Var.a.f();
        }
    }

    @Override // yads.ub5
    public final void a(vq0 vq0Var) {
        this.d = false;
        gp4 gp4Var = this.g;
        gp4Var.getClass();
        fp4 fp4Var = new fp4(gp4Var);
        while (fp4Var.hasNext()) {
            ms2 ms2Var = (ms2) fp4Var.next();
            if (!ms2Var.c) {
                ms2Var.c = true;
                d26 d26Var = ms2Var.b;
                if (d26Var != null) {
                    d26Var.a(vq0Var);
                }
                ms2Var.a.d.a();
            }
        }
    }

    @Override // yads.ub5
    public final void a(ms2 ms2Var, n32 n32Var, nl3 nl3Var) {
        zb5 zb5Var = this.h;
        String str = (String) n32Var.e.getValue();
        defpackage.zh zhVar = new defpackage.zh(nl3Var, 6);
        yb5 yb5Var = (yb5) zb5Var.a.get(ms2Var);
        if (yb5Var == null) {
            return;
        }
        if (ra8.C(yb5Var.b, str, false)) {
            zb5.a(zhVar, yb5Var);
            return;
        }
        for (yb5 yb5Var2 : yb5Var.c) {
            if (ra8.C(yb5Var2.b, str, false)) {
                zb5.a(zhVar, yb5Var2);
            }
        }
    }

    @Override // yads.ub5
    public final fs2 a(String str, fs2 fs2Var, ll3 ll3Var) {
        LinkedHashMap linkedHashMap = this.i;
        Object obj = linkedHashMap.get(str);
        if (obj == null) {
            obj = (fs2) ll3Var.invoke();
            ms2 ms2Var = (ms2) this.e.get(fs2Var);
            if (ms2Var != null) {
                this.e.put(obj, ms2Var);
            }
            linkedHashMap.put(str, obj);
        }
        return (fs2) obj;
    }

    public static boolean a(br0 br0Var) {
        List listI;
        List listO;
        p41 p41VarA = br0Var.a();
        List listS = p41VarA.s();
        return !((listS == null || listS.isEmpty()) && ((listI = p41VarA.i()) == null || listI.isEmpty()) && ((listO = p41VarA.o()) == null || listO.isEmpty()));
    }
}
