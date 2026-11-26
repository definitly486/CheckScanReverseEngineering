package defpackage;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.OkHttpClient;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.http2.ConnectionShutdownException;

/* JADX INFO: loaded from: classes5.dex */
public final class o67 implements f94 {
    public final OkHttpClient a;

    public o67(OkHttpClient okHttpClient) {
        okHttpClient.getClass();
        this.a = okHttpClient;
    }

    public static int d(z47 z47Var, int i) {
        String strN = z47.n(z47Var, "Retry-After");
        if (strN == null) {
            return i;
        }
        Pattern patternCompile = Pattern.compile("\\d+");
        patternCompile.getClass();
        if (!patternCompile.matcher(strN).matches()) {
            return Integer.MAX_VALUE;
        }
        Integer numValueOf = Integer.valueOf(strN);
        numValueOf.getClass();
        return numValueOf.intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r21v1, types: [javax.net.ssl.SSLSocketFactory] */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r22v1, types: [javax.net.ssl.HostnameVerifier] */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1, types: [u81] */
    /* JADX WARN: Type inference failed for: r23v2 */
    @Override // defpackage.f94
    public final z47 a(ez6 ez6Var) {
        ?? r23;
        ?? r22;
        ?? r21;
        b37 b37Var = ez6Var.e;
        jy6 jy6Var = ez6Var.a;
        z47 z47Var = null;
        List listI0 = kx2.b;
        z47 z47Var2 = null;
        int i = 0;
        b37 b37VarB = b37Var;
        boolean z = true;
        while (true) {
            b37VarB.getClass();
            if (jy6Var.l != null) {
                ah.f("Check failed.");
                return null;
            }
            synchronized (jy6Var) {
                if (jy6Var.n) {
                    throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()");
                }
                if (jy6Var.m) {
                    throw new IllegalStateException("Check failed.");
                }
                j59 j59Var = j59.a;
            }
            if (z) {
                py6 py6Var = jy6Var.d;
                fz3 fz3Var = b37VarB.a;
                OkHttpClient okHttpClient = jy6Var.b;
                if (fz3Var.j) {
                    SSLSocketFactory sSLSocketFactory = okHttpClient.q;
                    if (sSLSocketFactory == null) {
                        ah.f("CLEARTEXT-only client");
                        return z47Var;
                    }
                    HostnameVerifier hostnameVerifier = okHttpClient.u;
                    r23 = okHttpClient.v;
                    r21 = sSLSocketFactory;
                    r22 = hostnameVerifier;
                } else {
                    z47 z47Var3 = z47Var;
                    z47 z47Var4 = z47Var3;
                    r23 = z47Var4;
                    r21 = z47Var3;
                    r22 = z47Var4;
                }
                jy6Var.i = new p13(py6Var, new l9(fz3Var.d, fz3Var.e, okHttpClient.m, okHttpClient.p, r21, r22, r23, okHttpClient.o, okHttpClient.t, okHttpClient.s, okHttpClient.n), jy6Var, jy6Var.e);
            }
            try {
                if (jy6Var.p) {
                    throw new IOException("Canceled");
                }
                try {
                    z47 z47VarB = ez6Var.b(b37VarB);
                    if (z47Var2 != null) {
                        z47.a aVarP = z47VarB.p();
                        z47.a aVarP2 = z47Var2.p();
                        aVarP2.g = null;
                        z47 z47VarA = aVarP2.a();
                        if (z47VarA.h != null) {
                            throw new IllegalArgumentException("priorResponse.body != null");
                        }
                        aVarP.j = z47VarA;
                        z47VarB = aVarP.a();
                    }
                    z47Var2 = z47VarB;
                    b37VarB = b(z47Var2, jy6Var.l);
                    if (b37VarB == null) {
                        jy6Var.d(false);
                        return z47Var2;
                    }
                    b57 b57Var = z47Var2.h;
                    if (b57Var != null) {
                        gb9.d(b57Var);
                    }
                    i++;
                    if (i > 20) {
                        throw new ProtocolException("Too many follow-up requests: " + i);
                    }
                    jy6Var.d(true);
                    z = true;
                    z47Var = null;
                } catch (IOException e) {
                    if (!c(e, jy6Var, b37VarB, !(e instanceof ConnectionShutdownException))) {
                        Iterator it = listI0.iterator();
                        while (it.hasNext()) {
                            sj0.c(e, (Exception) it.next());
                        }
                        throw e;
                    }
                    listI0 = qn1.i0(e, listI0);
                    jy6Var.d(true);
                    z = false;
                } catch (RouteException e2) {
                    if (!c(e2.c, jy6Var, b37VarB, false)) {
                        IOException iOException = e2.b;
                        Iterator it2 = listI0.iterator();
                        while (it2.hasNext()) {
                            sj0.c(iOException, (Exception) it2.next());
                        }
                        throw iOException;
                    }
                    listI0 = qn1.i0(e2.b, listI0);
                    jy6Var.d(true);
                    z = false;
                }
            } catch (Throwable th) {
                jy6Var.d(true);
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0122  */
    /* JADX WARN: Code duplicated, block: B:105:0x013f  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:78:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:88:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:92:0x0108  */
    /* JADX WARN: Code duplicated, block: B:98:0x0119 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:99:0x011b  */
    public final b37 b(z47 z47Var, n13 n13Var) throws ProtocolException {
        OkHttpClient okHttpClient;
        String strN;
        b37 b37Var;
        fz3.a aVar;
        fz3 fz3VarA;
        b37.a aVarA;
        boolean z;
        z47 z47Var2;
        ly6 ly6Var;
        i87 i87Var = (n13Var == null || (ly6Var = n13Var.f) == null) ? null : ly6Var.b;
        int i = z47Var.e;
        String str = z47Var.b.b;
        if (i == 307 || i == 308) {
            okHttpClient = this.a;
            if (okHttpClient.i) {
                strN = z47.n(z47Var, "Location");
                b37Var = z47Var.b;
                if (strN != null) {
                    fz3 fz3Var = b37Var.a;
                    fz3Var.getClass();
                    try {
                        aVar = new fz3.a();
                        aVar.c(fz3Var, strN);
                    } catch (IllegalArgumentException unused) {
                        aVar = null;
                    }
                    if (aVar != null) {
                        fz3VarA = aVar.a();
                    } else {
                        fz3VarA = null;
                    }
                    if (fz3VarA != null && (aa4.e(fz3VarA.a, b37Var.a.a) || okHttpClient.j)) {
                        aVarA = b37Var.a();
                        if (zd3.f(str)) {
                            int i2 = z47Var.e;
                            z = !str.equals("PROPFIND") || i2 == 308 || i2 == 307;
                            if (!str.equals("PROPFIND") || i2 == 308 || i2 == 307) {
                                aVarA.c(str, z ? b37Var.d : null);
                            } else {
                                aVarA.c("GET", null);
                            }
                            if (!z) {
                                aVarA.c.g("Transfer-Encoding");
                                aVarA.c.g("Content-Length");
                                aVarA.c.g("Content-Type");
                            }
                        }
                        if (!gb9.a(b37Var.a, fz3VarA)) {
                            aVarA.c.g("Authorization");
                        }
                        aVarA.a = fz3VarA;
                        return aVarA.a();
                    }
                }
            }
        } else {
            if (i == 401) {
                this.a.h.getClass();
                return null;
            }
            if (i != 421) {
                if (i == 503) {
                    z47 z47Var3 = z47Var.k;
                    if ((z47Var3 == null || z47Var3.e != 503) && d(z47Var, Integer.MAX_VALUE) == 0) {
                        return z47Var.b;
                    }
                } else {
                    if (i == 407) {
                        i87Var.getClass();
                        if (i87Var.b.type() != Proxy.Type.HTTP) {
                            throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                        }
                        this.a.o.getClass();
                        return null;
                    }
                    if (i != 408) {
                        switch (i) {
                            case 300:
                            case 301:
                            case 302:
                            case 303:
                                okHttpClient = this.a;
                                if (okHttpClient.i) {
                                    strN = z47.n(z47Var, "Location");
                                    b37Var = z47Var.b;
                                    if (strN != null) {
                                        fz3 fz3Var2 = b37Var.a;
                                        fz3Var2.getClass();
                                        aVar = new fz3.a();
                                        aVar.c(fz3Var2, strN);
                                        if (aVar != null) {
                                            fz3VarA = aVar.a();
                                        } else {
                                            fz3VarA = null;
                                        }
                                        if (fz3VarA != null) {
                                            aVarA = b37Var.a();
                                            if (zd3.f(str)) {
                                                int i3 = z47Var.e;
                                                if (str.equals("PROPFIND")) {
                                                }
                                                if (str.equals("PROPFIND")) {
                                                    aVarA.c(str, z ? b37Var.d : null);
                                                } else {
                                                    aVarA.c(str, z ? b37Var.d : null);
                                                }
                                                if (!z) {
                                                    aVarA.c.g("Transfer-Encoding");
                                                    aVarA.c.g("Content-Length");
                                                    aVarA.c.g("Content-Type");
                                                }
                                            }
                                            if (!gb9.a(b37Var.a, fz3VarA)) {
                                                aVarA.c.g("Authorization");
                                            }
                                            aVarA.a = fz3VarA;
                                            return aVarA.a();
                                        }
                                    }
                                }
                            default:
                                return null;
                        }
                    } else if (this.a.g && (((z47Var2 = z47Var.k) == null || z47Var2.e != 408) && d(z47Var, 0) <= 0)) {
                        return z47Var.b;
                    }
                }
            } else if (n13Var != null && !aa4.e(n13Var.c.b.h.d, n13Var.f.b.a.h.d)) {
                ly6 ly6Var2 = n13Var.f;
                synchronized (ly6Var2) {
                    ly6Var2.k = true;
                }
                return z47Var.b;
            }
        }
        return null;
    }

    public final boolean c(IOException iOException, jy6 jy6Var, b37 b37Var, boolean z) {
        boolean zA;
        k87 k87Var;
        ly6 ly6Var;
        if (this.a.g && ((!z || !(iOException instanceof FileNotFoundException)) && !(iOException instanceof ProtocolException) && (!(iOException instanceof InterruptedIOException) ? (!(iOException instanceof SSLHandshakeException) || !(iOException.getCause() instanceof CertificateException)) && !(iOException instanceof SSLPeerUnverifiedException) : (iOException instanceof SocketTimeoutException) && !z))) {
            p13 p13Var = jy6Var.i;
            p13Var.getClass();
            int i = p13Var.g;
            if (i == 0 && p13Var.h == 0 && p13Var.i == 0) {
                zA = false;
            } else if (p13Var.j != null) {
                zA = true;
            } else {
                i87 i87Var = null;
                if (i <= 1 && p13Var.h <= 1 && p13Var.i <= 0 && (ly6Var = p13Var.c.j) != null) {
                    synchronized (ly6Var) {
                        if (ly6Var.l == 0 && gb9.a(ly6Var.b.a.h, p13Var.b.h)) {
                            i87Var = ly6Var.b;
                        }
                    }
                }
                if (i87Var != null) {
                    p13Var.j = i87Var;
                } else {
                    k87.a aVar = p13Var.e;
                    if ((aVar == null || !aVar.a()) && (k87Var = p13Var.f) != null) {
                        zA = k87Var.a();
                    }
                }
                zA = true;
            }
            if (zA) {
                return true;
            }
        }
        return false;
    }
}
