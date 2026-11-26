package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class od5 {

    public static final class a {
        public final String a;
        public final b b;
        public b c;
        public boolean d;

        /* JADX INFO: renamed from: od5$a$a, reason: collision with other inner class name */
        public static final class C0309a extends b {
        }

        public static class b {
            public String a;
            public Object b;
            public b c;
        }

        public a(String str) {
            b bVar = new b();
            this.b = bVar;
            this.c = bVar;
            this.d = false;
            this.a = str;
        }

        public final void a(int i, String str) {
            e(str, String.valueOf(i));
        }

        public final void b(long j, String str) {
            e(str, String.valueOf(j));
        }

        public final void c(String str, boolean z) {
            e(str, String.valueOf(z));
        }

        public final void d(Object obj, String str) {
            b bVar = new b();
            this.c.c = bVar;
            this.c = bVar;
            bVar.b = obj;
            bVar.a = str;
        }

        public final void e(String str, String str2) {
            C0309a c0309a = new C0309a();
            this.c.c = c0309a;
            this.c = c0309a;
            c0309a.b = str2;
            c0309a.a = str;
        }

        public final String toString() {
            boolean z = this.d;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.a);
            sb.append('{');
            String str = "";
            for (b bVar = this.b.c; bVar != null; bVar = bVar.c) {
                Object obj = bVar.b;
                if ((bVar instanceof C0309a) || obj != null || !z) {
                    sb.append(str);
                    String str2 = bVar.a;
                    if (str2 != null) {
                        sb.append(str2);
                        sb.append('=');
                    }
                    if (obj == null || !obj.getClass().isArray()) {
                        sb.append(obj);
                    } else {
                        String strDeepToString = Arrays.deepToString(new Object[]{obj});
                        sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                    }
                    str = ", ";
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    public static <T> T a(T t, T t2) {
        if (t != null) {
            return t;
        }
        if (t2 != null) {
            return t2;
        }
        o2.d("Both parameters are null");
        return null;
    }

    public static a b(Object obj) {
        return new a(obj.getClass().getSimpleName());
    }
}
