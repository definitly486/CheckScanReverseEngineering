package yads;

import android.content.Context;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes6.dex */
public final class bc5 {
    public final zg5 a;

    public bc5() {
        zg5 zg5Var;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        this.a = zg5Var2;
    }

    public final SSLSocketFactory a(Context context) {
        fe5 fe5VarA = this.a.a(context);
        int i = cc0.a;
        de5 de5Var = new de5(context);
        if (fe5VarA == null || !fe5VarA.x) {
            if (!za.a(21)) {
                return null;
            }
            int i2 = ay4.b;
            try {
                SSLContext sSLContext = SSLContext.getInstance("TLSv1.2");
                try {
                    sSLContext.init(null, null, null);
                } catch (KeyManagementException unused) {
                }
                return new ay4(sSLContext.getSocketFactory());
            } catch (NoSuchAlgorithmException unused2) {
                return null;
            }
        }
        dh5 dh5VarA = bs3.a(de5Var);
        try {
            SSLContext sSLContext2 = SSLContext.getInstance("TLS");
            sSLContext2.init(null, new X509TrustManager[]{dh5VarA}, null);
            return sSLContext2.getSocketFactory();
        } catch (KeyManagementException e) {
            defpackage.h2.e("Failed to initialize SSLContext", e);
            return null;
        } catch (NoSuchAlgorithmException e2) {
            defpackage.h2.e("No system TLS", e2);
            return null;
        }
    }
}
