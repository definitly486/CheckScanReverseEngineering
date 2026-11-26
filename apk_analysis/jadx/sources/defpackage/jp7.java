package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class jp7 extends dp7 {
    /* JADX WARN: Code duplicated, block: B:15:0x0027 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:17:0x0029 A[RETURN] */
    public static <T> boolean i(zo7<? extends T> zo7Var, T t) {
        zo7Var.getClass();
        int i = 0;
        for (T t2 : zo7Var) {
            if (i < 0) {
                u96.o();
                throw null;
            }
            if (aa4.e(t, t2)) {
                if (i >= 0) {
                    return true;
                }
                return false;
            }
            i++;
        }
        i = -1;
        if (i >= 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> zo7<T> j(zo7<? extends T> zo7Var, int i) {
        if (i < 0) {
            c9.f(kv2.b(i, "Requested element count ", " is less than zero."));
            return null;
        }
        if (i == 0) {
            return zo7Var;
        }
        return zo7Var instanceof it2 ? ((it2) zo7Var).a(i) : new dt2(zo7Var, i);
    }

    public static pa3 k(zo7 zo7Var, nl3 nl3Var) {
        zo7Var.getClass();
        nl3Var.getClass();
        return new pa3(zo7Var, true, nl3Var);
    }

    public static <T> T l(zo7<? extends T> zo7Var) {
        zo7Var.getClass();
        Iterator<? extends T> it = zo7Var.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static String m(zo7 zo7Var, String str, mg6 mg6Var, int i) {
        if ((i & 32) != 0) {
            mg6Var = null;
        }
        zo7Var.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        int i2 = 0;
        for (Object obj : zo7Var) {
            i2++;
            if (i2 > 1) {
                sb.append((CharSequence) str);
            }
            eg9.a(sb, obj, mg6Var);
        }
        sb.append((CharSequence) "");
        return sb.toString();
    }

    public static f29 n(zo7 zo7Var, nl3 nl3Var) {
        zo7Var.getClass();
        return new f29(zo7Var, nl3Var);
    }

    public static pa3 o(zo7 zo7Var, nl3 nl3Var) {
        zo7Var.getClass();
        nl3Var.getClass();
        return new pa3(new f29(zo7Var, nl3Var), false, new xi1(4));
    }

    public static <T> zo7<T> p(zo7<? extends T> zo7Var, int i) {
        if (i < 0) {
            c9.f(kv2.b(i, "Requested element count ", " is less than zero."));
            return null;
        }
        if (i == 0) {
            return nx2.a;
        }
        return zo7Var instanceof it2 ? ((it2) zo7Var).b(i) : new hk8(zo7Var, i);
    }

    public static <T> List<T> q(zo7<? extends T> zo7Var) {
        zo7Var.getClass();
        Iterator<? extends T> it = zo7Var.iterator();
        if (!it.hasNext()) {
            return kx2.b;
        }
        T next = it.next();
        if (!it.hasNext()) {
            return u96.h(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static <T> Set<T> r(zo7<? extends T> zo7Var) {
        Iterator<? extends T> it = zo7Var.iterator();
        if (!it.hasNext()) {
            return ox2.b;
        }
        T next = it.next();
        if (!it.hasNext()) {
            return l1.f(next);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(next);
        while (it.hasNext()) {
            linkedHashSet.add(it.next());
        }
        return linkedHashSet;
    }
}
