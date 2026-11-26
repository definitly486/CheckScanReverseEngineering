package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class fv9 {
    public final b a;
    public final a b;

    public static final class a {
        public final List a;

        /* JADX INFO: renamed from: fv9$a$a, reason: collision with other inner class name */
        public static final class C0187a {
            public final String a;
            public final int b;
            public final int c;

            public C0187a(String str, int i, int i2) {
                this.a = str;
                this.b = i;
                this.c = i2;
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("Frame{url='");
                sb.append(this.a);
                sb.append("', width='");
                sb.append(this.b);
                sb.append("', height='");
                return l2.e(sb, "'}", this.c);
            }
        }

        public a(ArrayList arrayList) {
            this.a = arrayList;
        }

        public final String toString() {
            return qg.f(new StringBuilder("Assets{firstFrame="), this.a, '}');
        }
    }

    public static final class b {
        public final String a;
        public final String b;
        public final String c;

        public b(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Text{title='");
            sb.append(this.a);
            sb.append("', body='");
            sb.append(this.b);
            sb.append("', domain='");
            return me0.d(sb, this.c, "'}");
        }
    }

    public fv9(b bVar, a aVar) {
        this.a = bVar;
        this.b = aVar;
    }

    public final String toString() {
        return "YandexAdInfoExtension{text=" + this.a + ", assets=" + this.b + '}';
    }
}
