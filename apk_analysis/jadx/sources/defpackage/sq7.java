package defpackage;

import com.google.common.base.VerifyException;
import io.grpc.i;
import io.grpc.j;
import io.grpc.l;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class sq7 {

    public static final class a {
        public final String a;
        public final Map<String, ?> b;

        public a(String str, Map<String, ?> map) {
            o8.l(str, "policyName");
            this.a = str;
            o8.l(map, "rawConfigValue");
            this.b = map;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (this.a.equals(aVar.a) && this.b.equals(aVar.b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.a, this.b);
        }

        public final String toString() {
            od5.a aVarB = od5.b(this);
            aVarB.d(this.a, "policyName");
            aVarB.d(this.b, "rawConfigValue");
            return aVarB.toString();
        }
    }

    public static final class b {
        public final i a;
        public final Object b;

        public b(i iVar, Object obj) {
            o8.l(iVar, "provider");
            this.a = iVar;
            this.b = obj;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && b.class == obj.getClass()) {
                b bVar = (b) obj;
                if (Objects.equals(this.a, bVar.a) && Objects.equals(this.b, bVar.b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.a, this.b);
        }

        public final String toString() {
            od5.a aVarB = od5.b(this);
            aVarB.d(this.a, "provider");
            aVarB.d(this.b, "config");
            return aVarB.toString();
        }
    }

    public static Set a(String str, Map map) {
        h88.a aVarValueOf;
        List listF = pl2.f(str, map);
        if (listF == null) {
            return null;
        }
        EnumSet enumSetNoneOf = EnumSet.noneOf(h88.a.class);
        for (Object obj : listF) {
            if (obj instanceof Double) {
                Double d = (Double) obj;
                int iIntValue = d.intValue();
                tc9.a("Status code %s is not integral", ((double) iIntValue) == d.doubleValue(), obj);
                aVarValueOf = h88.d(iIntValue).a;
                tc9.a("Status code %s is not valid", aVarValueOf.d() == d.intValue(), obj);
            } else {
                if (!(obj instanceof String)) {
                    StringBuilder sb = new StringBuilder("Can not convert status code ");
                    sb.append(obj);
                    Class<?> cls = obj.getClass();
                    sb.append(" to Status.Code, because its type is ");
                    sb.append(cls);
                    throw new VerifyException(sb.toString());
                }
                try {
                    aVarValueOf = h88.a.valueOf((String) obj);
                } catch (IllegalArgumentException e) {
                    throw new VerifyException(ch.c(obj, "Status code ", " is not valid"), e);
                }
            }
            enumSetNoneOf.add(aVarValueOf);
        }
        return Collections.unmodifiableSet(enumSetNoneOf);
    }

    public static List<Map<String, ?>> b(Map<String, ?> map) {
        String strK;
        ArrayList arrayList = new ArrayList();
        if (map.containsKey("loadBalancingConfig")) {
            List listF = pl2.f("loadBalancingConfig", map);
            if (listF == null) {
                listF = null;
            } else {
                pl2.a(listF);
            }
            arrayList.addAll(listF);
        }
        if (arrayList.isEmpty() && (strK = pl2.k("loadBalancingPolicy", map)) != null) {
            arrayList.add(Collections.singletonMap(strK.toLowerCase(Locale.ROOT), Collections.EMPTY_MAP));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static l.b c(List<a> list, j jVar) {
        ArrayList arrayList = new ArrayList();
        for (a aVar : list) {
            String str = aVar.a;
            i iVarB = jVar.b(str);
            if (iVarB != null) {
                if (!arrayList.isEmpty()) {
                    Logger.getLogger(sq7.class.getName()).log(Level.FINEST, "{0} specified by Service Config are not available", arrayList);
                }
                l.b bVarC = iVarB.c(aVar.b);
                return bVarC.a != null ? bVarC : new l.b(new b(iVarB, bVarC.b));
            }
            arrayList.add(str);
        }
        return new l.b(h88.g.h("None of " + arrayList + " specified by Service Config are available."));
    }

    public static List<a> d(List<Map<String, ?>> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Map<String, ?> map : list) {
            if (map.size() != 1) {
                throw new RuntimeException("There are " + map.size() + " fields in a LoadBalancingConfig object. Exactly one is expected. Config=" + map);
            }
            String key = map.entrySet().iterator().next().getKey();
            arrayList.add(new a(key, pl2.j(key, map)));
        }
        return Collections.unmodifiableList(arrayList);
    }
}
