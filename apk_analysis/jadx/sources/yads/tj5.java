package yads;

import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes6.dex */
public abstract class tj5 {
    /* JADX WARN: Multi-variable type inference failed */
    public static qj5 a(Set set, xx4 xx4Var) {
        if (set instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) set;
            if (!(sortedSet instanceof qj5)) {
                xx4Var.getClass();
                return new rj5(sortedSet, xx4Var);
            }
            qj5 qj5Var = (qj5) sortedSet;
            xx4 xx4Var2 = qj5Var.c;
            xx4Var2.getClass();
            xx4Var.getClass();
            return new rj5((SortedSet) qj5Var.b, new yx4(Arrays.asList(xx4Var2, xx4Var)));
        }
        if (!(set instanceof qj5)) {
            set.getClass();
            xx4Var.getClass();
            return new qj5(set, xx4Var);
        }
        qj5 qj5Var2 = (qj5) set;
        xx4 xx4Var3 = qj5Var2.c;
        xx4Var3.getClass();
        xx4Var.getClass();
        return new qj5(qj5Var2.b, new yx4(Arrays.asList(xx4Var3, xx4Var)));
    }

    public static Set a() {
        return Collections.newSetFromMap(new IdentityHashMap());
    }

    public static int a(Set set) {
        Iterator it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i = ~(~(i + (next != null ? next.hashCode() : 0)));
        }
        return i;
    }

    public static boolean a(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size() && set.containsAll(set2)) {
                    return true;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }
}
