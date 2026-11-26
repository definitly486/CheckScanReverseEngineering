package defpackage;

import java.io.Closeable;

/* JADX INFO: loaded from: classes5.dex */
public final class z47 implements Closeable {
    public final b37 b;
    public final ts6 c;
    public final String d;
    public final int e;
    public final lu3 f;
    public final jv3 g;
    public final b57 h;
    public final z47 i;
    public final z47 j;
    public final z47 k;
    public final long l;
    public final long m;
    public final n13 n;
    public mx0 o;

    public static class a {
        public b37 a;
        public ts6 b;
        public String d;
        public lu3 e;
        public b57 g;
        public z47 h;
        public z47 i;
        public z47 j;
        public long k;
        public long l;
        public n13 m;
        public int c = -1;
        public jv3.a f = new jv3.a();

        public static void b(z47 z47Var, String str) {
            if (z47Var != null) {
                if (z47Var.h != null) {
                    c9.f(str.concat(".body != null"));
                    return;
                }
                if (z47Var.i != null) {
                    c9.f(str.concat(".networkResponse != null"));
                } else if (z47Var.j != null) {
                    c9.f(str.concat(".cacheResponse != null"));
                } else {
                    if (z47Var.k == null) {
                        return;
                    }
                    c9.f(str.concat(".priorResponse != null"));
                }
            }
        }

        public final z47 a() {
            int i = this.c;
            if (i < 0) {
                js2.c(this.c, "code < 0: ");
                return null;
            }
            b37 b37Var = this.a;
            if (b37Var == null) {
                ah.f("request == null");
                return null;
            }
            ts6 ts6Var = this.b;
            if (ts6Var == null) {
                ah.f("protocol == null");
                return null;
            }
            String str = this.d;
            if (str != null) {
                return new z47(b37Var, ts6Var, str, i, this.e, this.f.e(), this.g, this.h, this.i, this.j, this.k, this.l, this.m);
            }
            ah.f("message == null");
            return null;
        }
    }

    public z47(b37 b37Var, ts6 ts6Var, String str, int i, lu3 lu3Var, jv3 jv3Var, b57 b57Var, z47 z47Var, z47 z47Var2, z47 z47Var3, long j, long j2, n13 n13Var) {
        b37Var.getClass();
        ts6Var.getClass();
        str.getClass();
        this.b = b37Var;
        this.c = ts6Var;
        this.d = str;
        this.e = i;
        this.f = lu3Var;
        this.g = jv3Var;
        this.h = b57Var;
        this.i = z47Var;
        this.j = z47Var2;
        this.k = z47Var3;
        this.l = j;
        this.m = j2;
        this.n = n13Var;
    }

    public static String n(z47 z47Var, String str) {
        z47Var.getClass();
        String strA = z47Var.g.a(str);
        if (strA == null) {
            return null;
        }
        return strA;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        b57 b57Var = this.h;
        if (b57Var != null) {
            b57Var.close();
        } else {
            ah.f("response is not eligible for a body and must not be closed");
        }
    }

    public final mx0 m() {
        mx0 mx0Var = this.o;
        if (mx0Var != null) {
            return mx0Var;
        }
        int i = mx0.n;
        mx0 mx0VarA = mx0.b.a(this.g);
        this.o = mx0VarA;
        return mx0VarA;
    }

    public final boolean o() {
        int i = this.e;
        return 200 <= i && i < 300;
    }

    public final a p() {
        a aVar = new a();
        aVar.a = this.b;
        aVar.b = this.c;
        aVar.c = this.e;
        aVar.d = this.d;
        aVar.e = this.f;
        aVar.f = this.g.d();
        aVar.g = this.h;
        aVar.h = this.i;
        aVar.i = this.j;
        aVar.j = this.k;
        aVar.k = this.l;
        aVar.l = this.m;
        aVar.m = this.n;
        return aVar;
    }

    public final String toString() {
        return "Response{protocol=" + this.c + ", code=" + this.e + ", message=" + this.d + ", url=" + this.b.a + '}';
    }
}
