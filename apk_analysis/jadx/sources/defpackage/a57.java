package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class a57<T> {
    public final z47 a;
    public final T b;
    public final b57 c;

    /* JADX WARN: Multi-variable type inference failed */
    public a57(z47 z47Var, Object obj, c57 c57Var) {
        this.a = z47Var;
        this.b = obj;
        this.c = c57Var;
    }

    public static a57 a(int i, c57 c57Var) {
        if (i < 400) {
            fg.c(jh.b(i, "code < 400: "));
            return null;
        }
        z47.a aVar = new z47.a();
        aVar.g = new gv5.c(c57Var.c, c57Var.d);
        aVar.c = i;
        aVar.d = "Response.error()";
        ts6 ts6Var = ts6.HTTP_1_1;
        ts6Var.getClass();
        aVar.b = ts6Var;
        b37.a aVar2 = new b37.a();
        aVar2.e("http://localhost/");
        aVar.a = aVar2.a();
        return b(c57Var, aVar.a());
    }

    public static a57 b(c57 c57Var, z47 z47Var) {
        if (!z47Var.o()) {
            return new a57(z47Var, null, c57Var);
        }
        fg.c("rawResponse should not be successful response");
        return null;
    }

    public static a57 c(int i, iv6 iv6Var) {
        if (i < 200 || i >= 300) {
            fg.c(jh.b(i, "code < 200 or >= 300: "));
            return null;
        }
        z47.a aVar = new z47.a();
        aVar.c = i;
        aVar.d = "Response.success()";
        ts6 ts6Var = ts6.HTTP_1_1;
        ts6Var.getClass();
        aVar.b = ts6Var;
        b37.a aVar2 = new b37.a();
        aVar2.e("http://localhost/");
        aVar.a = aVar2.a();
        return d(iv6Var, aVar.a());
    }

    public static <T> a57<T> d(T t, z47 z47Var) {
        if (z47Var.o()) {
            return new a57<>(z47Var, t, null);
        }
        fg.c("rawResponse must be successful response");
        return null;
    }

    public final String toString() {
        return this.a.toString();
    }
}
