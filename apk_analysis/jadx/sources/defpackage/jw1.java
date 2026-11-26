package defpackage;

import java.io.IOException;
import okhttp3.OkHttpClient;
import okhttp3.internal.connection.RouteException;

/* JADX INFO: loaded from: classes5.dex */
public final class jw1 implements f94 {
    public static final jw1 a = new jw1();

    @Override // defpackage.f94
    public final z47 a(ez6 ez6Var) throws IOException {
        jy6 jy6Var = ez6Var.a;
        synchronized (jy6Var) {
            if (!jy6Var.o) {
                throw new IllegalStateException("released");
            }
            if (jy6Var.n) {
                throw new IllegalStateException("Check failed.");
            }
            if (jy6Var.m) {
                throw new IllegalStateException("Check failed.");
            }
            j59 j59Var = j59.a;
        }
        p13 p13Var = jy6Var.i;
        p13Var.getClass();
        OkHttpClient okHttpClient = jy6Var.b;
        okHttpClient.getClass();
        try {
            n13 n13Var = new n13(jy6Var, jy6Var.e, p13Var, p13Var.a(ez6Var.f, okHttpClient.g, !aa4.e(ez6Var.e.b, "GET"), ez6Var.g, ez6Var.h).k(okHttpClient, ez6Var));
            jy6Var.l = n13Var;
            jy6Var.q = n13Var;
            synchronized (jy6Var) {
                jy6Var.m = true;
                jy6Var.n = true;
            }
            if (!jy6Var.p) {
                return ez6.a(ez6Var, 0, n13Var, null, 61).b(ez6Var.e);
            }
            ki0.d("Canceled");
            return null;
        } catch (IOException e) {
            p13Var.b(e);
            throw new RouteException(e);
        } catch (RouteException e2) {
            p13Var.b(e2.c);
            throw e2;
        }
    }
}
