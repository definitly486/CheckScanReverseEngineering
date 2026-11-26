package yads;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import defpackage.gu2;
import defpackage.hu2;
import defpackage.q3;
import defpackage.s77;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ae4 {
    public final List a;
    public final yh4 b;
    public String c;
    public dh4 d;

    public ae4(List list, yh4 yh4Var) {
        this.a = list;
        this.b = yh4Var;
    }

    public static final boolean b(ae4 ae4Var, dh4 dh4Var) {
        Object next;
        bk bkVarA;
        Iterator it = ae4Var.a.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            ak akVar = (ak) next;
            if (akVar.f && defpackage.aa4.e(akVar.a, "sponsored")) {
                break;
            }
        }
        ak akVar2 = (ak) next;
        return akVar2 == null || ((bkVarA = dh4Var.a(akVar2)) != null && bkVarA.d());
    }

    public static final boolean c(ae4 ae4Var, dh4 dh4Var) {
        Object next;
        ak akVar;
        bk bkVarA;
        List list = ae4Var.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((ak) obj).f) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            akVar = (ak) next;
            bkVarA = dh4Var.a(akVar);
            if (bkVarA == null) {
                bkVarA = null;
            }
            if (bkVarA == null) {
                break;
            }
        } while (bkVarA.a(akVar.c));
        ak akVar2 = (ak) next;
        ae4Var.c = akVar2 != null ? akVar2.a : null;
        return akVar2 == null;
    }

    public static final boolean d(ae4 ae4Var, dh4 dh4Var) {
        Object next;
        bk bkVarA;
        List list = ae4Var.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((ak) obj).f) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            bkVarA = dh4Var.a((ak) next);
            if (bkVarA == null) {
                break;
            }
        } while (bkVarA.e());
        ak akVar = (ak) next;
        ae4Var.c = akVar != null ? akVar.a : null;
        return akVar == null;
    }

    public static final boolean e(ae4 ae4Var, dh4 dh4Var) {
        Object next;
        bk bkVarA;
        List list = ae4Var.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((ak) obj).f) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            bkVarA = dh4Var.a((ak) next);
            if (bkVarA == null) {
                break;
            }
        } while (bkVarA.b());
        ak akVar = (ak) next;
        ae4Var.c = akVar != null ? akVar.a : null;
        return akVar == null;
    }

    public final i66 a(boolean z) {
        f66 f66VarA;
        bk bkVarA;
        tg6 tg6VarC;
        Resources resources;
        DisplayMetrics displayMetrics;
        if (d() && !z) {
            return new f66(e66.REQUIRED_ASSET_CAN_NOT_BE_VISIBLE, this.c, null);
        }
        List list = this.a;
        dh4 dh4Var = this.d;
        if (dh4Var != null) {
            Iterator it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    ak akVar = (ak) it.next();
                    wr3 wr3Var = akVar.g;
                    if (wr3Var != null && (bkVarA = dh4Var.a(akVar)) != null && (tg6VarC = bkVarA.c()) != null) {
                        View viewA = dh4Var.d.a();
                        if (viewA != null && (resources = viewA.getResources()) != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
                            float f = displayMetrics.density;
                            Integer num = wr3Var.a;
                            Integer num2 = wr3Var.b;
                            if (num != null && tg6VarC.a < ((int) (num.intValue() * f))) {
                                f66VarA = d66.a(2, akVar.a, null);
                                break;
                            }
                            if (num2 != null && tg6VarC.b < ((int) (num2.intValue() * f))) {
                                f66VarA = d66.a(2, akVar.a, null);
                                break;
                            }
                        }
                    }
                }
                f66VarA = null;
                break;
            }
        }
        f66VarA = null;
        break;
        if (f66VarA != null) {
            return f66VarA;
        }
        defpackage.ar4 ar4VarE = u96.e();
        if (b() && !z) {
            ar4VarE.add(h66.NO_VISIBLE_SPONSORED_ASSET);
        }
        List list2 = this.a;
        int i = 0;
        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                if (((ak) it2.next()).f && (i = i + 1) < 0) {
                    u96.n();
                    throw null;
                }
            }
        }
        if (i >= 2 && a() && !z) {
            ar4VarE.add(h66.NO_VISIBLE_REQUIRED_ASSETS);
        }
        if (c()) {
            ar4VarE.add(h66.INCONSISTENT_ASSET_VALUE);
        }
        return new g66(u96.d(ar4VarE));
    }

    public final boolean b() {
        return !a(new q3(this, 6));
    }

    public final boolean d() {
        return !a(new s77(this));
    }

    public final m85 e() {
        return new m85(this.c, a(new gu2(this)));
    }

    public final boolean c() {
        return !a(new defpackage.ul0(this));
    }

    public final boolean a() {
        return !a(new hu2(this));
    }

    public static final boolean a(ae4 ae4Var, dh4 dh4Var) {
        List list = ae4Var.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((ak) obj).f) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            bk bkVarA = dh4Var.a((ak) it.next());
            if (bkVarA != null && bkVarA.d()) {
                return true;
            }
        }
        return false;
    }

    public final boolean a(ci4 ci4Var) {
        dh4 dh4Var = this.d;
        if (dh4Var == null) {
            return false;
        }
        this.b.getClass();
        return ci4Var.a(dh4Var);
    }
}
