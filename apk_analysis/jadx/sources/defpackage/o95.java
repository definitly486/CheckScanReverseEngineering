package defpackage;

import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public interface o95 {

    public static final class a {
        public n95 a;
    }

    public static final class b {
        public final String a;
        public final Map<String, String> b;

        public b(String str, Map<String, String> map) {
            this.a = str;
            this.b = rn1.b(map);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "Key(key=" + this.a + ", extras=" + this.b + ")";
        }
    }

    public static final class c {
        public final x04 a;
        public final Map<String, Object> b;

        public c(x04 x04Var, Map<String, ? extends Object> map) {
            this.a = x04Var;
            this.b = rn1.b(map);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return aa4.e(this.a, cVar.a) && aa4.e(this.b, cVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "Value(image=" + this.a + ", extras=" + this.b + ")";
        }
    }

    c a(b bVar);

    void b(long j);

    long c();

    void clear();

    void e(long j);

    void f(b bVar, c cVar);

    long getSize();
}
