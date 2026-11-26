package yads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b81 {
    public static boolean a(p41 p41Var, p41 p41Var2, fs2 fs2Var, fs2 fs2Var2) {
        if (p41Var.a() != null && p41Var2.a() != null && !defpackage.aa4.e(p41Var.a(), p41Var2.a()) && (p41Var.r() != null || p41Var.A() != null || p41Var.B() != null || p41Var2.r() != null || p41Var2.A() != null || p41Var2.B() != null)) {
            return false;
        }
        if ((p41Var instanceof ka1) && (p41Var2 instanceof ka1) && !defpackage.aa4.e(((ka1) p41Var).j, ((ka1) p41Var2).j)) {
            return false;
        }
        if ((p41Var instanceof j81) && (p41Var2 instanceof j81)) {
            j81 j81Var = (j81) p41Var;
            Object objA = j81Var.I.a(fs2Var);
            h81 h81Var = h81.OVERLAP;
            j81 j81Var2 = (j81) p41Var2;
            if ((objA == h81Var) != (j81Var2.I.a(fs2Var2) == h81Var) || jf2.a(j81Var, fs2Var) != jf2.a(j81Var2, fs2Var2)) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(br0 br0Var, br0 br0Var2, fs2 fs2Var, fs2 fs2Var2) {
        if (!defpackage.aa4.e(br0Var != null ? br0Var.getClass() : null, br0Var2 != null ? br0Var2.getClass() : null)) {
            return false;
        }
        if (br0Var == null || br0Var2 == null || br0Var == br0Var2) {
            return true;
        }
        return a(br0Var.a(), br0Var2.a(), fs2Var, fs2Var2) && a(a(br0Var, fs2Var), a(br0Var2, fs2Var2));
    }

    public static boolean a(db1 db1Var, db1 db1Var2, long j, fs2 fs2Var, fs2 fs2Var2) {
        Object obj;
        Object next;
        if (db1Var == null) {
            return false;
        }
        Iterator it = db1Var.c.iterator();
        do {
            obj = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((cb1) next).b != j);
        cb1 cb1Var = (cb1) next;
        for (Object obj2 : db1Var2.c) {
            if (((cb1) obj2).b == j) {
                obj = obj2;
                break;
            }
        }
        cb1 cb1Var2 = (cb1) obj;
        if (cb1Var == null || cb1Var2 == null) {
            return false;
        }
        return a(cb1Var.a, cb1Var2.a, fs2Var, fs2Var2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(List list, List list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        ArrayList<defpackage.b36> arrayListZ0 = defpackage.qn1.z0(list, list2);
        if (arrayListZ0.isEmpty()) {
            return true;
        }
        for (defpackage.b36 b36Var : arrayListZ0) {
            cn1 cn1Var = (cn1) b36Var.b;
            br0 br0Var = cn1Var.a;
            cn1 cn1Var2 = (cn1) b36Var.c;
            if (!a(br0Var, cn1Var2.a, cn1Var.b, cn1Var2.b)) {
                return false;
            }
        }
        return true;
    }

    public static List a(br0 br0Var, fs2 fs2Var) {
        if (br0Var instanceof up0) {
            j81 j81Var = ((up0) br0Var).a;
            return f71.a(j81Var.B, j81Var.z, fs2Var);
        }
        boolean z = br0Var instanceof yp0;
        List list = defpackage.kx2.b;
        if (z) {
            List list2 = ((yp0) br0Var).a.y;
            if (list2 != null) {
                list = list2;
            }
            return f71.a(list, fs2Var);
        }
        if ((br0Var instanceof zp0) || (br0Var instanceof xp0) || (br0Var instanceof jq0) || (br0Var instanceof eq0) || (br0Var instanceof wp0) || (br0Var instanceof cq0) || (br0Var instanceof iq0) || (br0Var instanceof gq0) || (br0Var instanceof vp0) || (br0Var instanceof bq0) || (br0Var instanceof dq0) || (br0Var instanceof aq0) || (br0Var instanceof fq0) || (br0Var instanceof kq0) || (br0Var instanceof hq0)) {
            return list;
        }
        defpackage.me0.e();
        return null;
    }
}
