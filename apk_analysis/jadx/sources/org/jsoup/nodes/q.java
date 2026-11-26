package org.jsoup.nodes;

import defpackage.ja8;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class q {
    public static final q c;
    public final b a;
    public final b b;

    public static class a {
        public static final /* synthetic */ int c = 0;
        public final q a;
        public final q b;

        public a(q qVar, q qVar2) {
            this.a = qVar;
            this.b = qVar2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.a.equals(aVar.a)) {
                return this.b.equals(aVar.b);
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.a, this.b);
        }

        public final String toString() {
            StringBuilder sbA = ja8.a();
            sbA.append(this.a);
            sbA.append('=');
            sbA.append(this.b);
            return ja8.k(sbA);
        }
    }

    public static class b {
        public final int a;
        public final int b;
        public final int c;

        public b(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && b.class == obj.getClass()) {
                b bVar = (b) obj;
                if (this.a == bVar.a && this.b == bVar.b && this.c == bVar.c) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(Integer.valueOf(this.a), Integer.valueOf(this.b), Integer.valueOf(this.c));
        }

        public final String toString() {
            return this.b + StringUtils.COMMA + this.c + StringUtils.PROCESS_POSTFIX_DELIMITER + this.a;
        }
    }

    static {
        b bVar = new b(-1, -1, -1);
        c = new q(bVar, bVar);
    }

    public q(b bVar, b bVar2) {
        this.a = bVar;
        this.b = bVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || q.class != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        if (this.a.equals(qVar.a)) {
            return this.b.equals(qVar.b);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b);
    }

    public final String toString() {
        return this.a + "-" + this.b;
    }
}
