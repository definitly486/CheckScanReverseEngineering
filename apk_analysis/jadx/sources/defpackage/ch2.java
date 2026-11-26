package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class ch2 implements tx0 {
    public static final Set<Integer> b = yr.k0(new Integer[]{300, 301, 404, 405, 410, 414, Integer.valueOf(TypedValues.PositionType.TYPE_TRANSITION_EASING)});

    @Override // defpackage.tx0
    public final tx0.b a(vm5 vm5Var, vm5 vm5Var2) {
        int i = vm5Var2.a;
        if (i != 304 || vm5Var == null) {
            if (200 > i || i >= 300) {
                if (!b.contains(new Integer(i))) {
                    return tx0.b.b;
                }
            }
            return new tx0.b(vm5Var2);
        }
        pm5 pm5Var = vm5Var.d;
        pm5 pm5Var2 = vm5Var2.d;
        pm5Var.getClass();
        Map<String, List<String>> map = pm5Var.a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(entry.getKey(), qn1.v0((Collection) entry.getValue()));
        }
        for (Map.Entry<String, List<String>> entry2 : pm5Var2.a.entrySet()) {
            String key = entry2.getKey();
            List<String> value = entry2.getValue();
            String lowerCase = key.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            linkedHashMap.put(lowerCase, qn1.v0(value));
        }
        return new tx0.b(new vm5(vm5Var2.a, vm5Var2.b, vm5Var2.c, new pm5(n05.l(linkedHashMap)), null, vm5Var2.f));
    }

    @Override // defpackage.tx0
    public final tx0.a b(vm5 vm5Var) {
        return new tx0.a(vm5Var);
    }
}
