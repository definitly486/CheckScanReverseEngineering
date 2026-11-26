package defpackage;

import com.google.firebase.perf.FirebasePerformance;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class b37 {
    public final fz3 a;
    public final String b;
    public final jv3 c;
    public final g37 d;
    public final Map<Class<?>, Object> e;
    public mx0 f;

    public static class a {
        public fz3 a;
        public g37 d;
        public LinkedHashMap e = new LinkedHashMap();
        public String b = "GET";
        public jv3.a c = new jv3.a();

        public final b37 a() {
            Map mapUnmodifiableMap;
            fz3 fz3Var = this.a;
            if (fz3Var == null) {
                ah.f("url == null");
                return null;
            }
            String str = this.b;
            jv3 jv3VarE = this.c.e();
            g37 g37Var = this.d;
            LinkedHashMap linkedHashMap = this.e;
            byte[] bArr = gb9.a;
            linkedHashMap.getClass();
            if (linkedHashMap.isEmpty()) {
                mapUnmodifiableMap = mx2.b;
            } else {
                mapUnmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(linkedHashMap));
                mapUnmodifiableMap.getClass();
            }
            return new b37(fz3Var, str, jv3VarE, g37Var, mapUnmodifiableMap);
        }

        public final void b(String str, String str2) {
            str2.getClass();
            jv3.a aVar = this.c;
            aVar.getClass();
            jv3.b.a(str);
            jv3.b.b(str2, str);
            aVar.g(str);
            aVar.c(str, str2);
        }

        public final void c(String str, g37 g37Var) {
            str.getClass();
            if (str.length() <= 0) {
                fg.c("method.isEmpty() == true");
                return;
            }
            if (g37Var == null) {
                if (str.equals("POST") || str.equals(FirebasePerformance.HttpMethod.PUT) || str.equals(FirebasePerformance.HttpMethod.PATCH) || str.equals("PROPPATCH") || str.equals("REPORT")) {
                    c9.f(me0.c("method ", str, " must have a request body."));
                    return;
                }
            } else if (!zd3.f(str)) {
                c9.f(me0.c("method ", str, " must not have a request body."));
                return;
            }
            this.b = str;
            this.d = g37Var;
        }

        public final void d(Class cls, Object obj) {
            cls.getClass();
            LinkedHashMap linkedHashMap = this.e;
            if (obj == null) {
                linkedHashMap.remove(cls);
                return;
            }
            if (linkedHashMap.isEmpty()) {
                this.e = new LinkedHashMap();
            }
            LinkedHashMap linkedHashMap2 = this.e;
            Object objCast = cls.cast(obj);
            objCast.getClass();
            linkedHashMap2.put(cls, objCast);
        }

        public final void e(String str) {
            str.getClass();
            if (ra8.C(str, "ws:", true)) {
                str = "http:".concat(str.substring(3));
            } else if (ra8.C(str, "wss:", true)) {
                str = "https:".concat(str.substring(4));
            }
            fz3.a aVar = new fz3.a();
            aVar.c(null, str);
            this.a = aVar.a();
        }
    }

    public b37(fz3 fz3Var, String str, jv3 jv3Var, g37 g37Var, Map<Class<?>, ? extends Object> map) {
        fz3Var.getClass();
        str.getClass();
        this.a = fz3Var;
        this.b = str;
        this.c = jv3Var;
        this.d = g37Var;
        this.e = map;
    }

    public final a a() {
        a aVar = new a();
        aVar.e = new LinkedHashMap();
        aVar.a = this.a;
        aVar.b = this.b;
        aVar.d = this.d;
        Map<Class<?>, Object> map = this.e;
        aVar.e = map.isEmpty() ? new LinkedHashMap() : new LinkedHashMap(map);
        aVar.c = this.c.d();
        return aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        StringBuilder sb = new StringBuilder("Request{method=");
        sb.append(this.b);
        sb.append(", url=");
        sb.append(this.a);
        jv3 jv3Var = this.c;
        if (jv3Var.size() != 0) {
            sb.append(", headers=[");
            Iterator<b36<? extends String, ? extends String>> it = jv3Var.iterator();
            int i = 0;
            while (true) {
                jr jrVar = (jr) it;
                if (!jrVar.hasNext()) {
                    sb.append(']');
                    break;
                }
                Object next = jrVar.next();
                int i2 = i + 1;
                if (i < 0) {
                    u96.o();
                    throw null;
                }
                b36 b36Var = (b36) next;
                String str = (String) b36Var.b;
                String str2 = (String) b36Var.c;
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(str);
                sb.append(':');
                sb.append(str2);
                i = i2;
            }
        }
        Map<Class<?>, Object> map = this.e;
        if (!map.isEmpty()) {
            sb.append(", tags=");
            sb.append(map);
        }
        sb.append('}');
        return sb.toString();
    }
}
