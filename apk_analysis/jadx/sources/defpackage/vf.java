package defpackage;

import android.net.http.X509TrustManagerExtensions;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes5.dex */
public final class vf extends z86 {
    public static final boolean d;
    public final ArrayList c;

    static {
        d = z86.a.c() && Build.VERSION.SDK_INT >= 29;
    }

    public vf() {
        ArrayList arrayListG = yr.G(new m48[]{(!z86.a.c() || Build.VERSION.SDK_INT < 29) ? null : new wf(), new sk2(fk.f), new sk2(gx1.a), new sk2(jt0.a)});
        ArrayList arrayList = new ArrayList();
        for (Object obj : arrayListG) {
            if (((m48) obj).isSupported()) {
                arrayList.add(obj);
            }
        }
        this.c = arrayList;
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
    public final void d(SSLSocket sSLSocket, String str, List<? extends ts6> list) {
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
    public final boolean h(String str) {
        str.getClass();
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(str);
    }
}
