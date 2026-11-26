package defpackage;

import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes5.dex */
public final class ek implements sk2.a {
    @Override // sk2.a
    public final boolean a(SSLSocket sSLSocket) {
        return ra8.C(sSLSocket.getClass().getName(), "com.google.android.gms.org.conscrypt.", false);
    }

    @Override // sk2.a
    public final m48 b(SSLSocket sSLSocket) {
        Class<?> cls = sSLSocket.getClass();
        Class<?> superclass = cls;
        while (!superclass.getSimpleName().equals("OpenSSLSocketImpl")) {
            superclass = superclass.getSuperclass();
            if (superclass == null) {
                xg.d(ln.d(cls, "No OpenSSLSocketImpl superclass of socket of type "));
                return null;
            }
        }
        return new fk(superclass);
    }
}
