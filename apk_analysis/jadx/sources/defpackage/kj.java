package defpackage;

import android.net.http.X509TrustManagerExtensions;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes5.dex */
public final class kj extends z86 {
    public static final boolean e;
    public final ArrayList c;
    public final lm1 d;

    public static final class a implements m39 {
        public final X509TrustManager a;
        public final Method b;

        public a(X509TrustManager x509TrustManager, Method method) {
            this.a = x509TrustManager;
            this.b = method;
        }

        @Override // defpackage.m39
        public final X509Certificate a(X509Certificate x509Certificate) {
            try {
                Object objInvoke = this.b.invoke(this.a, x509Certificate);
                objInvoke.getClass();
                return ((TrustAnchor) objInvoke).getTrustedCert();
            } catch (IllegalAccessException e) {
                throw new AssertionError("unable to get issues and signature", e);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a.equals(aVar.a) && this.b.equals(aVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "CustomTrustRootIndex(trustManager=" + this.a + ", findByIssuerAndSignatureMethod=" + this.b + ')';
        }
    }

    static {
        boolean z = false;
        if (z86.a.c() && Build.VERSION.SDK_INT < 30) {
            z = true;
        }
        e = z;
    }

    public kj() throws NoSuchMethodException {
        t68 t68Var;
        Method method;
        Method method2;
        Method method3 = null;
        try {
            Class<?> cls = Class.forName("com.android.org.conscrypt".concat(".OpenSSLSocketImpl"));
            Class.forName("com.android.org.conscrypt".concat(".OpenSSLSocketFactoryImpl"));
            Class.forName("com.android.org.conscrypt".concat(".SSLParametersImpl"));
            t68Var = new t68(cls);
        } catch (Exception e2) {
            z86.a.getClass();
            z86.i("unable to load android socket classes", 5, e2);
            t68Var = null;
        }
        ArrayList arrayListG = yr.G(new m48[]{t68Var, new sk2(fk.f), new sk2(gx1.a), new sk2(jt0.a)});
        ArrayList arrayList = new ArrayList();
        for (Object obj : arrayListG) {
            if (((m48) obj).isSupported()) {
                arrayList.add(obj);
            }
        }
        this.c = arrayList;
        try {
            Class<?> cls2 = Class.forName("dalvik.system.CloseGuard");
            Method method4 = cls2.getMethod("get", null);
            method2 = cls2.getMethod(TtmlNode.TEXT_EMPHASIS_MARK_OPEN, String.class);
            method = cls2.getMethod("warnIfOpen", null);
            method3 = method4;
        } catch (Exception unused) {
            method = null;
            method2 = null;
        }
        this.d = new lm1(method3, method2, method);
    }

    @Override // defpackage.z86
    public final y14 b(X509TrustManager x509TrustManager) {
        X509TrustManagerExtensions x509TrustManagerExtensions;
        try {
            x509TrustManagerExtensions = new X509TrustManagerExtensions(x509TrustManager);
        } catch (IllegalArgumentException unused) {
            x509TrustManagerExtensions = null;
        }
        gh ghVar = x509TrustManagerExtensions != null ? new gh(x509TrustManager, x509TrustManagerExtensions) : null;
        return ghVar != null ? ghVar : new pe0(c(x509TrustManager));
    }

    @Override // defpackage.z86
    public final m39 c(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new a(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.c(x509TrustManager);
        }
    }

    @Override // defpackage.z86
    public final void d(SSLSocket sSLSocket, String str, List<ts6> list) {
        Object next;
        Iterator it = this.c.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((m48) next).a(sSLSocket));
        m48 m48Var = (m48) next;
        if (m48Var != null) {
            m48Var.c(sSLSocket, str, list);
        }
    }

    @Override // defpackage.z86
    public final void e(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        inetSocketAddress.getClass();
        try {
            socket.connect(inetSocketAddress, i);
        } catch (ClassCastException e2) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e2;
            }
            throw new IOException("Exception in connect", e2);
        }
    }

    @Override // defpackage.z86
    public final String f(SSLSocket sSLSocket) {
        Object next;
        Iterator it = this.c.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((m48) next).a(sSLSocket));
        m48 m48Var = (m48) next;
        if (m48Var != null) {
            return m48Var.b(sSLSocket);
        }
        return null;
    }

    @Override // defpackage.z86
    public final Object g() {
        lm1 lm1Var = this.d;
        lm1Var.getClass();
        Method method = (Method) lm1Var.b;
        if (method != null) {
            try {
                Object objInvoke = method.invoke(null, null);
                Method method2 = (Method) lm1Var.c;
                method2.getClass();
                method2.invoke(objInvoke, "response.body().close()");
                return objInvoke;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    @Override // defpackage.z86
    public final boolean h(String str) {
        str.getClass();
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(str);
    }

    @Override // defpackage.z86
    public final void k(Object obj, String str) {
        lm1 lm1Var = this.d;
        lm1Var.getClass();
        if (obj != null) {
            try {
                Method method = (Method) lm1Var.d;
                method.getClass();
                method.invoke(obj, null);
                return;
            } catch (Exception unused) {
            }
        }
        z86.j(this, str, 4);
    }
}
