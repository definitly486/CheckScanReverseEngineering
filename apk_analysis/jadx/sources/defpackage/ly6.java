package defpackage;

import com.google.firebase.perf.FirebasePerformance;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ConnectException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.OkHttpClient;
import okhttp3.b;
import okhttp3.internal.connection.RouteException;

/* JADX INFO: loaded from: classes5.dex */
public final class ly6 extends hy3.b implements lw1 {
    public final i87 b;
    public Socket c;
    public Socket d;
    public lu3 e;
    public ts6 f;
    public hy3 g;
    public iy6 h;
    public hy6 i;
    public boolean j;
    public boolean k;
    public int l;
    public int m;
    public int n;
    public int o;
    public final ArrayList p;
    public long q;

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            try {
                iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Proxy.Type.HTTP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public ly6(py6 py6Var, i87 i87Var) {
        i87Var.getClass();
        this.b = i87Var;
        this.o = 1;
        this.p = new ArrayList();
        this.q = Long.MAX_VALUE;
    }

    public static void e(OkHttpClient okHttpClient, i87 i87Var, IOException iOException) {
        okHttpClient.getClass();
        i87Var.getClass();
        iOException.getClass();
        if (i87Var.b.type() != Proxy.Type.DIRECT) {
            l9 l9Var = i87Var.a;
            l9Var.g.connectFailed(l9Var.h.g(), i87Var.b.address(), iOException);
        }
        j87 j87Var = okHttpClient.C;
        synchronized (j87Var) {
            j87Var.a.add(i87Var);
        }
    }

    @Override // defpackage.lw1
    public final ts6 a() {
        ts6 ts6Var = this.f;
        ts6Var.getClass();
        return ts6Var;
    }

    @Override // hy3.b
    public final synchronized void b(hy3 hy3Var, or7 or7Var) {
        or7Var.getClass();
        this.o = (or7Var.a & 16) != 0 ? or7Var.b[4] : Integer.MAX_VALUE;
    }

    @Override // hy3.b
    public final void c(vy3 vy3Var) {
        vy3Var.c(p03.REFUSED_STREAM, null);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0137 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:101:0x0137 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:102:? A[LOOP:0: B:18:0x005d->B:102:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x0072 A[PHI: r1
      0x0072: PHI (r1v6 java.lang.Object) = (r1v21 java.lang.Object), (r1v22 java.lang.Object) binds: [B:21:0x0064, B:23:0x006e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:56:0x00de  */
    /* JADX WARN: Code duplicated, block: B:59:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:62:0x0104  */
    /* JADX WARN: Code duplicated, block: B:63:0x010a  */
    /* JADX WARN: Code duplicated, block: B:65:0x0113  */
    /* JADX WARN: Code duplicated, block: B:67:0x0119  */
    /* JADX WARN: Code duplicated, block: B:69:0x011d  */
    /* JADX WARN: Code duplicated, block: B:71:0x0121  */
    /* JADX WARN: Code duplicated, block: B:77:0x0131  */
    /* JADX WARN: Code duplicated, block: B:95:0x0137 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x0137 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x0137 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x0137 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [ly6] */
    /* JADX WARN: Type inference failed for: r1v10, types: [okhttp3.b] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v3, types: [okhttp3.b] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r2v0, types: [javax.net.ssl.SSLSocketFactory] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [okhttp3.a] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6, types: [okhttp3.a] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    public final void d(int i, int i2, int i3, boolean z, okhttp3.a aVar, b bVar) throws Throwable {
        ?? r1;
        IOException iOException;
        Socket socket;
        Socket socket2;
        boolean z2;
        Proxy.Type type;
        bVar.getClass();
        if (this.f != null) {
            ah.f("already connected");
            return;
        }
        l9 l9Var = this.b.a;
        List<tw1> list = l9Var.j;
        uw1 uw1Var = new uw1(list);
        ?? r2 = l9Var.c;
        if (r2 == 0) {
            if (!list.contains(tw1.f)) {
                throw new RouteException(new UnknownServiceException("CLEARTEXT communication not enabled for client"));
            }
            String str = this.b.a.h.d;
            z86 z86Var = z86.a;
            if (!z86.a.h(str)) {
                throw new RouteException(new UnknownServiceException(me0.c("CLEARTEXT communication to ", str, " not permitted by network security policy")));
            }
        } else if (l9Var.i.contains(ts6.H2_PRIOR_KNOWLEDGE)) {
            throw new RouteException(new UnknownServiceException("H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"));
        }
        RouteException routeException = null;
        while (true) {
            try {
                i87 i87Var = this.b;
                try {
                    SSLSocketFactory sSLSocketFactory = i87Var.a.c;
                    Object obj = sSLSocketFactory;
                    if (sSLSocketFactory != null) {
                        Proxy.Type type2 = i87Var.b.type();
                        type = Proxy.Type.HTTP;
                        if (type2 == type) {
                            obj = type;
                            z2 = true;
                            r1 = type;
                        } else {
                            obj = type;
                            z2 = false;
                            r1 = obj;
                        }
                    } else {
                        obj = type;
                        z2 = false;
                        r1 = obj;
                    }
                    try {
                        if (z2) {
                            try {
                                g(i, i2, i3, aVar, bVar);
                                r2 = aVar;
                                r1 = bVar;
                                if (this.c != null) {
                                    break;
                                } else {
                                    break;
                                }
                            } catch (IOException e) {
                                e = e;
                                r2 = aVar;
                                r1 = bVar;
                                iOException = e;
                                socket = this.d;
                                if (socket != null) {
                                    gb9.e(socket);
                                }
                                socket2 = this.c;
                                if (socket2 != null) {
                                    gb9.e(socket2);
                                }
                                this.d = null;
                                this.c = null;
                                this.h = null;
                                this.i = null;
                                this.e = null;
                                this.f = null;
                                this.g = null;
                                this.o = 1;
                                i87 i87Var2 = this.b;
                                r1.connectFailed(r2, i87Var2.c, i87Var2.b, null, iOException);
                                if (routeException == null) {
                                    routeException = new RouteException(iOException);
                                } else {
                                    sj0.c(routeException.b, iOException);
                                    routeException.c = iOException;
                                }
                                if (z) {
                                    throw routeException;
                                }
                                uw1Var.d = true;
                                if (uw1Var.c) {
                                    throw routeException;
                                }
                                if (!(iOException instanceof ProtocolException)) {
                                    throw routeException;
                                }
                                if (!(iOException instanceof InterruptedIOException)) {
                                    throw routeException;
                                }
                                if (!(iOException instanceof SSLHandshakeException)) {
                                }
                                if (!(iOException instanceof SSLPeerUnverifiedException)) {
                                    throw routeException;
                                }
                                if (iOException instanceof SSLException) {
                                    throw routeException;
                                }
                            }
                        } else {
                            okhttp3.a aVar2 = aVar;
                            b bVar2 = bVar;
                            f(i, i2, aVar2, bVar2);
                            r1 = bVar2;
                            r2 = aVar2;
                        }
                        h(uw1Var, r2, r1);
                        i87 i87Var3 = this.b;
                        r1.connectEnd(r2, i87Var3.c, i87Var3.b, this.f);
                        break;
                    } catch (IOException e2) {
                        e = e2;
                    }
                } catch (IOException e3) {
                    e = e3;
                    r2 = aVar;
                    r1 = bVar;
                    iOException = e;
                    socket = this.d;
                    if (socket != null) {
                        gb9.e(socket);
                    }
                    socket2 = this.c;
                    if (socket2 != null) {
                        gb9.e(socket2);
                    }
                    this.d = null;
                    this.c = null;
                    this.h = null;
                    this.i = null;
                    this.e = null;
                    this.f = null;
                    this.g = null;
                    this.o = 1;
                    i87 i87Var4 = this.b;
                    r1.connectFailed(r2, i87Var4.c, i87Var4.b, null, iOException);
                    if (routeException == null) {
                        routeException = new RouteException(iOException);
                    } else {
                        sj0.c(routeException.b, iOException);
                        routeException.c = iOException;
                    }
                    if (z) {
                        throw routeException;
                    }
                    uw1Var.d = true;
                    if (uw1Var.c) {
                        throw routeException;
                    }
                    if (!(iOException instanceof ProtocolException)) {
                        throw routeException;
                    }
                    if (!(iOException instanceof InterruptedIOException)) {
                        throw routeException;
                    }
                    if (!(iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) {
                        throw routeException;
                    }
                    if (!(iOException instanceof SSLPeerUnverifiedException)) {
                        throw routeException;
                    }
                    if (iOException instanceof SSLException) {
                        throw routeException;
                    }
                }
            } catch (IOException e4) {
                e = e4;
            }
        }
        i87 i87Var5 = this.b;
        if (i87Var5.a.c != null && i87Var5.b.type() == Proxy.Type.HTTP && this.c == null) {
            throw new RouteException(new ProtocolException("Too many tunnel connections attempted: 21"));
        }
        this.q = System.nanoTime();
    }

    public final void f(int i, int i2, okhttp3.a aVar, b bVar) throws IOException {
        Socket socketCreateSocket;
        i87 i87Var = this.b;
        Proxy proxy = i87Var.b;
        l9 l9Var = i87Var.a;
        Proxy.Type type = proxy.type();
        int i3 = type == null ? -1 : a.a[type.ordinal()];
        if (i3 == 1 || i3 == 2) {
            socketCreateSocket = l9Var.b.createSocket();
            socketCreateSocket.getClass();
        } else {
            socketCreateSocket = new Socket(proxy);
        }
        this.c = socketCreateSocket;
        bVar.connectStart(aVar, this.b.c, proxy);
        socketCreateSocket.setSoTimeout(i2);
        try {
            z86 z86Var = z86.a;
            z86.a.e(socketCreateSocket, this.b.c, i);
            try {
                this.h = new iy6(vp3.f(socketCreateSocket));
                this.i = new hy6(vp3.e(socketCreateSocket));
            } catch (NullPointerException e) {
                if (aa4.e(e.getMessage(), "throw with null exception")) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.b.c);
            connectException.initCause(e2);
            throw connectException;
        }
    }

    public final void g(int i, int i2, int i3, okhttp3.a aVar, b bVar) throws IOException {
        b37.a aVar2 = new b37.a();
        i87 i87Var = this.b;
        aVar2.a = i87Var.a.h;
        aVar2.c(FirebasePerformance.HttpMethod.CONNECT, null);
        aVar2.b("Host", gb9.v(i87Var.a.h, true));
        aVar2.b("Proxy-Connection", "Keep-Alive");
        aVar2.b("User-Agent", "okhttp/4.12.0");
        b37 b37VarA = aVar2.a();
        z47.a aVar3 = new z47.a();
        aVar3.a = b37VarA;
        ts6 ts6Var = ts6.HTTP_1_1;
        ts6Var.getClass();
        aVar3.b = ts6Var;
        aVar3.c = 407;
        aVar3.d = "Preemptive Authenticate";
        aVar3.g = gb9.c;
        aVar3.k = -1L;
        aVar3.l = -1L;
        jv3.a aVar4 = aVar3.f;
        aVar4.getClass();
        jv3.b.a("Proxy-Authenticate");
        jv3.b.b("OkHttp-Preemptive", "Proxy-Authenticate");
        aVar4.g("Proxy-Authenticate");
        aVar4.c("Proxy-Authenticate", "OkHttp-Preemptive");
        aVar3.a();
        fz3 fz3Var = b37VarA.a;
        f(i, i2, aVar, bVar);
        String str = "CONNECT " + gb9.v(fz3Var, true) + " HTTP/1.1";
        iy6 iy6Var = this.h;
        iy6Var.getClass();
        hy6 hy6Var = this.i;
        hy6Var.getClass();
        dy3 dy3Var = new dy3(null, this, iy6Var, hy6Var);
        iy6Var.b.r().g(i2);
        hy6Var.b.r().g(i3);
        dy3Var.j(b37VarA.c, str);
        dy3Var.e();
        z47.a aVarH = dy3Var.h(false);
        aVarH.getClass();
        aVarH.a = b37VarA;
        z47 z47VarA = aVarH.a();
        int i4 = z47VarA.e;
        long j = gb9.j(z47VarA);
        if (j != -1) {
            dy3.d dVarI = dy3Var.i(j);
            gb9.t(dVarI, Integer.MAX_VALUE);
            dVarI.close();
        }
        if (i4 != 200) {
            if (i4 == 407) {
                ki0.d("Failed to authenticate with proxy");
                return;
            } else {
                ki0.d(jh.b(i4, "Unexpected response code for CONNECT: "));
                return;
            }
        }
        if (iy6Var.c.P() && hy6Var.c.P()) {
            return;
        }
        ki0.d("TLS tunnel buffered too many bytes!");
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void h(uw1 uw1Var, okhttp3.a aVar, b bVar) throws Throwable {
        ts6 ts6VarA;
        l9 l9Var = this.b.a;
        if (l9Var.c == null) {
            List<ts6> list = l9Var.i;
            ts6 ts6Var = ts6.H2_PRIOR_KNOWLEDGE;
            boolean zContains = list.contains(ts6Var);
            Socket socket = this.c;
            if (!zContains) {
                this.d = socket;
                this.f = ts6.HTTP_1_1;
                return;
            } else {
                this.d = socket;
                this.f = ts6Var;
                m();
                return;
            }
        }
        bVar.secureConnectStart(aVar);
        l9 l9Var2 = this.b.a;
        SSLSocketFactory sSLSocketFactory = l9Var2.c;
        SSLSocket sSLSocket = null;
        String strF = null;
        try {
            sSLSocketFactory.getClass();
            Socket socket2 = this.c;
            fz3 fz3Var = l9Var2.h;
            Socket socketCreateSocket = sSLSocketFactory.createSocket(socket2, fz3Var.d, fz3Var.e, true);
            socketCreateSocket.getClass();
            SSLSocket sSLSocket2 = (SSLSocket) socketCreateSocket;
            try {
                tw1 tw1VarA = uw1Var.a(sSLSocket2);
                if (tw1VarA.b) {
                    z86 z86Var = z86.a;
                    z86.a.d(sSLSocket2, l9Var2.h.d, l9Var2.i);
                }
                sSLSocket2.startHandshake();
                SSLSession session = sSLSocket2.getSession();
                session.getClass();
                lu3 lu3VarA = lu3.a.a(session);
                HostnameVerifier hostnameVerifier = l9Var2.d;
                hostnameVerifier.getClass();
                if (hostnameVerifier.verify(l9Var2.h.d, session)) {
                    u81 u81Var = l9Var2.e;
                    u81Var.getClass();
                    this.e = new lu3(lu3VarA.a, lu3VarA.b, lu3VarA.c, new my6(u81Var, lu3VarA, l9Var2));
                    u81Var.a(l9Var2.h.d, new ny6(this));
                    if (tw1VarA.b) {
                        z86 z86Var2 = z86.a;
                        strF = z86.a.f(sSLSocket2);
                    }
                    this.d = sSLSocket2;
                    this.h = new iy6(vp3.f(sSLSocket2));
                    this.i = new hy6(vp3.e(sSLSocket2));
                    if (strF != null) {
                        ts6.Companion.getClass();
                        ts6VarA = ts6.a.a(strF);
                    } else {
                        ts6VarA = ts6.HTTP_1_1;
                    }
                    this.f = ts6VarA;
                    z86 z86Var3 = z86.a;
                    z86.a.a(sSLSocket2);
                    bVar.secureConnectEnd(aVar, this.e);
                    if (this.f == ts6.HTTP_2) {
                        m();
                        return;
                    }
                    return;
                }
                List<Certificate> listA = lu3VarA.a();
                if (listA.isEmpty()) {
                    throw new SSLPeerUnverifiedException("Hostname " + l9Var2.h.d + " not verified (no certificates)");
                }
                Certificate certificate = listA.get(0);
                certificate.getClass();
                X509Certificate x509Certificate = (X509Certificate) certificate;
                StringBuilder sb = new StringBuilder("\n              |Hostname ");
                sb.append(l9Var2.h.d);
                sb.append(" not verified:\n              |    certificate: ");
                u81 u81Var2 = u81.c;
                StringBuilder sb2 = new StringBuilder("sha256/");
                gx0 gx0Var = gx0.e;
                byte[] encoded = x509Certificate.getPublicKey().getEncoded();
                encoded.getClass();
                sb2.append(gx0.a.d(encoded).e("SHA-256").a());
                sb.append(sb2.toString());
                sb.append("\n              |    DN: ");
                sb.append(x509Certificate.getSubjectDN().getName());
                sb.append("\n              |    subjectAltNames: ");
                sb.append(qn1.h0(ev5.a(x509Certificate, 2), ev5.a(x509Certificate, 7)));
                sb.append("\n              ");
                throw new SSLPeerUnverifiedException(na8.j(sb.toString()));
            } catch (Throwable th) {
                th = th;
                sSLSocket = sSLSocket2;
                if (sSLSocket != null) {
                    z86 z86Var4 = z86.a;
                    z86.a.a(sSLSocket);
                }
                if (sSLSocket != null) {
                    gb9.e(sSLSocket);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final boolean i(l9 l9Var, List<i87> list) {
        lu3 lu3Var;
        fz3 fz3Var = l9Var.h;
        String str = fz3Var.d;
        byte[] bArr = gb9.a;
        if (this.p.size() < this.o && !this.j) {
            i87 i87Var = this.b;
            l9 l9Var2 = i87Var.a;
            l9 l9Var3 = i87Var.a;
            if (l9Var2.a(l9Var)) {
                if (aa4.e(str, l9Var3.h.d)) {
                    return true;
                }
                if (this.g != null && list != null) {
                    List<i87> list2 = list;
                    if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                        for (i87 i87Var2 : list2) {
                            Proxy.Type type = i87Var2.b.type();
                            Proxy.Type type2 = Proxy.Type.DIRECT;
                            if (type == type2 && i87Var.b.type() == type2 && aa4.e(i87Var.c, i87Var2.c)) {
                                if (l9Var.d != ev5.a) {
                                    break;
                                }
                                byte[] bArr2 = gb9.a;
                                fz3 fz3Var2 = l9Var3.h;
                                if (fz3Var.e != fz3Var2.e) {
                                    break;
                                }
                                if (!aa4.e(str, fz3Var2.d)) {
                                    if (!this.k && (lu3Var = this.e) != null) {
                                        List<Certificate> listA = lu3Var.a();
                                        if (listA.isEmpty()) {
                                            break;
                                        }
                                        Certificate certificate = listA.get(0);
                                        certificate.getClass();
                                        if (!ev5.c(str, (X509Certificate) certificate)) {
                                            break;
                                        }
                                    } else {
                                        break;
                                        break;
                                    }
                                }
                                try {
                                    u81 u81Var = l9Var.e;
                                    u81Var.getClass();
                                    lu3 lu3Var2 = this.e;
                                    lu3Var2.getClass();
                                    List<Certificate> listA2 = lu3Var2.a();
                                    str.getClass();
                                    listA2.getClass();
                                    u81Var.a(str, new v81(u81Var, listA2, str));
                                    return true;
                                } catch (SSLPeerUnverifiedException unused) {
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final boolean j(boolean z) {
        long j;
        byte[] bArr = gb9.a;
        long jNanoTime = System.nanoTime();
        Socket socket = this.c;
        socket.getClass();
        Socket socket2 = this.d;
        socket2.getClass();
        iy6 iy6Var = this.h;
        iy6Var.getClass();
        if (socket.isClosed() || socket2.isClosed() || socket2.isInputShutdown() || socket2.isOutputShutdown()) {
            return false;
        }
        hy3 hy3Var = this.g;
        if (hy3Var != null) {
            synchronized (hy3Var) {
                if (hy3Var.g) {
                    return false;
                }
                return hy3Var.o >= hy3Var.n || jNanoTime < hy3Var.p;
            }
        }
        synchronized (this) {
            j = jNanoTime - this.q;
        }
        if (j < 10000000000L || !z) {
            return true;
        }
        try {
            int soTimeout = socket2.getSoTimeout();
            try {
                socket2.setSoTimeout(1);
                return !iy6Var.m();
            } finally {
                socket2.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public final o13 k(OkHttpClient okHttpClient, ez6 ez6Var) throws SocketException {
        okHttpClient.getClass();
        int i = ez6Var.g;
        Socket socket = this.d;
        socket.getClass();
        iy6 iy6Var = this.h;
        iy6Var.getClass();
        hy6 hy6Var = this.i;
        hy6Var.getClass();
        hy3 hy3Var = this.g;
        if (hy3Var != null) {
            return new qy3(okHttpClient, this, ez6Var, hy3Var);
        }
        socket.setSoTimeout(i);
        iy6Var.b.r().g(i);
        hy6Var.b.r().g(ez6Var.h);
        return new dy3(okHttpClient, this, iy6Var, hy6Var);
    }

    public final synchronized void l() {
        this.j = true;
    }

    public final void m() throws SocketException {
        int i;
        Socket socket = this.d;
        socket.getClass();
        iy6 iy6Var = this.h;
        iy6Var.getClass();
        hy6 hy6Var = this.i;
        hy6Var.getClass();
        socket.setSoTimeout(0);
        ho8 ho8Var = ho8.h;
        hy3.a aVar = new hy3.a(ho8Var);
        String str = this.b.a.h.d;
        str.getClass();
        aVar.b = socket;
        aVar.c = gb9.g + ' ' + str;
        aVar.d = iy6Var;
        aVar.e = hy6Var;
        aVar.f = this;
        hy3 hy3Var = new hy3(aVar);
        this.g = hy3Var;
        or7 or7Var = hy3.A;
        this.o = (or7Var.a & 16) != 0 ? or7Var.b[4] : Integer.MAX_VALUE;
        wy3 wy3Var = hy3Var.x;
        synchronized (wy3Var) {
            try {
                if (wy3Var.e) {
                    throw new IOException("closed");
                }
                Logger logger = wy3.g;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(gb9.h(">> CONNECTION " + fy3.b.g(), new Object[0]));
                }
                wy3Var.b.d(fy3.b);
                wy3Var.b.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
        wy3 wy3Var2 = hy3Var.x;
        or7 or7Var2 = hy3Var.q;
        synchronized (wy3Var2) {
            try {
                or7Var2.getClass();
                if (wy3Var2.e) {
                    throw new IOException("closed");
                }
                wy3Var2.b(0, Integer.bitCount(or7Var2.a) * 6, 4, 0);
                int i2 = 0;
                while (i2 < 10) {
                    boolean z = true;
                    if (((1 << i2) & or7Var2.a) == 0) {
                        z = false;
                    }
                    if (z) {
                        if (i2 != 4) {
                            i = i2 != 7 ? i2 : 4;
                        } else {
                            i = 3;
                        }
                        wy3Var2.b.writeShort(i);
                        wy3Var2.b.writeInt(or7Var2.b[i2]);
                    }
                    i2++;
                }
                wy3Var2.b.flush();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        int iA = hy3Var.q.a();
        if (iA != 65535) {
            hy3Var.x.T(0, iA - 65535);
        }
        ho8Var.d().c(new co8(hy3Var.d, hy3Var.y), 0L);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Connection{");
        i87 i87Var = this.b;
        sb.append(i87Var.a.h.d);
        sb.append(':');
        sb.append(i87Var.a.h.e);
        sb.append(", proxy=");
        sb.append(i87Var.b);
        sb.append(" hostAddress=");
        sb.append(i87Var.c);
        sb.append(" cipherSuite=");
        lu3 lu3Var = this.e;
        sb.append(lu3Var != null ? lu3Var.b : "none");
        sb.append(" protocol=");
        sb.append(this.f);
        sb.append('}');
        return sb.toString();
    }
}
