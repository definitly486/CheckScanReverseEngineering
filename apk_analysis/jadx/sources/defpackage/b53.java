package defpackage;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class b53 {
    public static final b53 b = new b53(rn1.b(new a().a));
    public final Map<b<?>, Object> a;

    public static final class a {
        public final LinkedHashMap a = new LinkedHashMap();
    }

    public static final class b<T> {
        public final T a;

        public b(T t) {
            this.a = t;
        }
    }

    public b53(Map<b<?>, ? extends Object> map) {
        this.a = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b53) && aa4.e(this.a, ((b53) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "Extras(data=" + this.a + ")";
    }
}
