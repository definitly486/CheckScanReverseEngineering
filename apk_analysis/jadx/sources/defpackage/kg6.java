package defpackage;

import android.util.SparseArray;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class kg6 {
    public static final SparseArray<ig6> a = new SparseArray<>();
    public static final HashMap<ig6, Integer> b;

    static {
        HashMap<ig6, Integer> map = new HashMap<>();
        b = map;
        map.put(ig6.DEFAULT, 0);
        map.put(ig6.VERY_LOW, 1);
        map.put(ig6.HIGHEST, 2);
        for (ig6 ig6Var : map.keySet()) {
            a.append(b.get(ig6Var).intValue(), ig6Var);
        }
    }

    public static int a(ig6 ig6Var) {
        Integer num = b.get(ig6Var);
        if (num != null) {
            return num.intValue();
        }
        qz0.i(ig6Var, "PriorityMapping is missing known Priority value ");
        return 0;
    }

    public static ig6 b(int i) {
        ig6 ig6Var = a.get(i);
        if (ig6Var != null) {
            return ig6Var;
        }
        fg.c(jh.b(i, "Unknown Priority for value "));
        return null;
    }
}
