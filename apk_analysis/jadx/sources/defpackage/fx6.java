package defpackage;

import io.grpc.h;
import io.grpc.i;
import io.grpc.l;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class fx6 extends i {
    public static l.b d(Map map) {
        Long lValueOf;
        List list = null;
        if (map.containsKey("subsetSize")) {
            Object obj = map.get("subsetSize");
            if (obj instanceof Double) {
                Double d = (Double) obj;
                long jLongValue = d.longValue();
                if (jLongValue != d.doubleValue()) {
                    throw new ClassCastException("Number expected to be long: " + d);
                }
                lValueOf = Long.valueOf(jLongValue);
            } else {
                if (!(obj instanceof String)) {
                    nz0.d("value '%s' for key '%s' is not a long integer", new Object[]{obj, "subsetSize"});
                    return null;
                }
                try {
                    lValueOf = Long.valueOf(Long.parseLong((String) obj));
                } catch (NumberFormatException unused) {
                    nz0.d("value '%s' for key '%s' is not a long integer", new Object[]{obj, "subsetSize"});
                    return null;
                }
            }
        } else {
            lValueOf = null;
        }
        if (lValueOf == null) {
            return new l.b(h88.m.h("Subset size missing in random_subsetting_experimental, LB policy config=" + map));
        }
        List listF = pl2.f("childPolicy", map);
        if (listF != null) {
            pl2.a(listF);
            list = listF;
        }
        l.b bVarE = ir3.e(list);
        h88 h88Var = bVarE.a;
        if (h88Var != null) {
            return new l.b(h88.m.h("Failed to parse child in random_subsetting_experimental, LB policy config=" + map).g(h88Var.a()));
        }
        long jLongValue2 = lValueOf.longValue();
        o8.f(jLongValue2 > 0, "Subset size must be greater than 0");
        int iY = fa4.Y(jLongValue2);
        Object obj2 = bVarE.b;
        o8.l(obj2, "childConfig");
        o8.s(((long) iY) != 0, "Subset size must be set before building the config");
        return new l.b(new ex6.c(iY, obj2));
    }

    @Override // io.grpc.h.c
    public final h a(h.e eVar) {
        return new ex6(eVar);
    }

    @Override // io.grpc.i
    public final String b() {
        return "random_subsetting_experimental";
    }

    @Override // io.grpc.i
    public final l.b c(Map<String, ?> map) {
        try {
            return d(map);
        } catch (RuntimeException e) {
            return new l.b(h88.m.g(e).h("Failed parsing configuration for random_subsetting_experimental"));
        }
    }
}
