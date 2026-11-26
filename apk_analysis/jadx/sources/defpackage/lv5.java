package defpackage;

import androidx.webkit.ProxyConfig;
import i06.b;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.grpc.StatusException;
import java.io.EOFException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.net.IDN;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URI;
import java.net.UnknownHostException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.BrokenBarrierException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.CyclicBarrier;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import zs.d;

/* JADX INFO: loaded from: classes5.dex */
public final class lv5 implements mw1, em1 {
    public static final Map<q03, h88> V;
    public static final Logger W;
    public static final boolean X;
    public static final Class<?> Y;
    public static final Method Z;
    public boolean A;
    public boolean B;
    public final SocketFactory C;
    public final SSLSocketFactory D;
    public final HostnameVerifier E;
    public Socket F;
    public int G;
    public final LinkedList H;
    public final sw1 I;
    public if4 J;
    public boolean K;
    public long L;
    public long M;
    public final iv5 N;
    public final int O;
    public final g39 P;
    public final X509TrustManager Q;
    public final g R;
    public final a S;
    public final xy3 T;
    public final int U;
    public Socket a;
    public SSLSession b;
    public final InetSocketAddress c;
    public final String d;
    public final String e;
    public final Random f;
    public final kd8<a98> g;
    public final int h;
    public final ey3 i;
    public p94.f j;
    public j13 k;
    public i06 l;
    public final Object m;
    public final m94 n;
    public int o;
    public final HashMap p;
    public final Executor q;
    public final oq7 r;
    public final ScheduledExecutorService s;
    public final int t;
    public int u;
    public e v;
    public io.grpc.a w;
    public h88 x;
    public boolean y;
    public ty3 z;

    public class a extends u1 {
        public a() {
            super(4, (byte) 0);
        }

        @Override // defpackage.u1
        public final void h() {
            lv5.this.j.c(true);
        }

        @Override // defpackage.u1
        public final void i() {
            lv5.this.j.c(false);
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ CountDownLatch b;
        public final /* synthetic */ CyclicBarrier c;
        public final /* synthetic */ zs d;
        public final /* synthetic */ CountDownLatch e;

        public class a implements v48 {
            @Override // java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }

            @Override // defpackage.v48
            public final wv8 r() {
                return wv8.d;
            }

            @Override // defpackage.v48
            public final long t0(bu0 bu0Var, long j) {
                return -1L;
            }
        }

        public b(CountDownLatch countDownLatch, CyclicBarrier cyclicBarrier, zs zsVar, CountDownLatch countDownLatch2) {
            this.b = countDownLatch;
            this.c = cyclicBarrier;
            this.d = zsVar;
            this.e = countDownLatch2;
        }

        @Override // java.lang.Runnable
        public final void run() throws Throwable {
            lv5 lv5Var;
            e eVar;
            iy6 iy6Var = new iy6(new a());
            try {
                try {
                    try {
                        this.b.await();
                        this.c.await(1000L, TimeUnit.MILLISECONDS);
                    } catch (Throwable th) {
                        th = th;
                        lv5 lv5Var2 = lv5.this;
                        lv5Var2.i.getClass();
                        lv5Var2.v = lv5Var2.new e(new ey3.c(iy6Var));
                        this.e.countDown();
                        throw th;
                    }
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                } catch (BrokenBarrierException | TimeoutException unused2) {
                    lv5.this.q(0, q03.INTERNAL_ERROR, h88.m.h("Timed out waiting for second handshake thread. The transport executor pool may have run out of threads"));
                    lv5Var = lv5.this;
                    lv5Var.i.getClass();
                    eVar = lv5Var.new e(new ey3.c(iy6Var));
                    lv5Var.v = eVar;
                    this.e.countDown();
                }
                lv5 lv5Var3 = lv5.this;
                xy3 xy3Var = lv5Var3.T;
                if (xy3Var == null) {
                    lv5Var3.a = lv5Var3.C.createSocket(lv5Var3.c.getAddress(), lv5.this.c.getPort());
                } else {
                    lv5Var3.a = lv5Var3.f(xy3Var.c, xy3Var.b, xy3Var.e, xy3Var.f);
                }
                lv5 lv5Var4 = lv5.this;
                SSLSocketFactory sSLSocketFactory = lv5Var4.D;
                if (sSLSocketFactory != null) {
                    HostnameVerifier hostnameVerifier = lv5Var4.E;
                    Socket socket = lv5Var4.a;
                    String host = lv5Var4.d;
                    URI uriA = vs3.a(host);
                    if (uriA.getHost() != null) {
                        host = uriA.getHost();
                    }
                    SSLSocket sSLSocketA = rv5.a(sSLSocketFactory, hostnameVerifier, socket, host, lv5.this.i(), lv5.this.I);
                    lv5.this.b = sSLSocketA.getSession();
                    lv5 lv5Var5 = lv5.this;
                    lv5Var5.a = sSLSocketA;
                    lv5Var4 = lv5Var5;
                }
                lv5Var4.a.setTcpNoDelay(true);
                iy6 iy6Var2 = new iy6(vp3.f(lv5.this.a));
                try {
                    this.d.a(vp3.e(lv5.this.a), lv5.this.a);
                    lv5 lv5Var6 = lv5.this;
                    io.grpc.a aVar = lv5Var6.w;
                    aVar.getClass();
                    io.grpc.a.C0203a c0203a = new io.grpc.a.C0203a(aVar);
                    c0203a.c(io.grpc.f.a, lv5.this.a.getRemoteSocketAddress());
                    c0203a.c(io.grpc.f.b, lv5.this.a.getLocalSocketAddress());
                    c0203a.c(io.grpc.f.c, lv5.this.b);
                    c0203a.c(us3.a, lv5.this.b == null ? fl7.NONE : fl7.PRIVACY_AND_INTEGRITY);
                    lv5Var6.w = c0203a.a();
                    lv5 lv5Var7 = lv5.this;
                    lv5Var7.i.getClass();
                    lv5Var7.v = lv5Var7.new e(new ey3.c(iy6Var2));
                    this.e.countDown();
                    synchronized (lv5.this.m) {
                        try {
                            lv5 lv5Var8 = lv5.this;
                            Socket socket2 = lv5Var8.a;
                            o8.l(socket2, "socket");
                            lv5Var8.F = socket2;
                            SSLSession sSLSession = lv5.this.b;
                            if (sSLSession != null) {
                                new i94.a(sSLSession);
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                } catch (StatusException e) {
                    e = e;
                    iy6Var = iy6Var2;
                    lv5.this.q(0, q03.INTERNAL_ERROR, e.b);
                    lv5Var = lv5.this;
                    lv5Var.i.getClass();
                    eVar = lv5Var.new e(new ey3.c(iy6Var));
                    lv5Var.v = eVar;
                    this.e.countDown();
                } catch (Exception e2) {
                    e = e2;
                    iy6Var = iy6Var2;
                    lv5.this.m(e);
                    lv5Var = lv5.this;
                    lv5Var.i.getClass();
                    eVar = lv5Var.new e(new ey3.c(iy6Var));
                    lv5Var.v = eVar;
                    this.e.countDown();
                } catch (Throwable th3) {
                    th = th3;
                    iy6Var = iy6Var2;
                    lv5 lv5Var9 = lv5.this;
                    lv5Var9.i.getClass();
                    lv5Var9.v = lv5Var9.new e(new ey3.c(iy6Var));
                    this.e.countDown();
                    throw th;
                }
            } catch (StatusException e3) {
                e = e3;
            } catch (Exception e4) {
                e = e4;
            }
        }
    }

    public class c implements Runnable {
        public final /* synthetic */ CyclicBarrier b;
        public final /* synthetic */ CountDownLatch c;

        public c(CyclicBarrier cyclicBarrier, CountDownLatch countDownLatch) {
            this.b = cyclicBarrier;
            this.c = countDownLatch;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.b.await(1000L, TimeUnit.MILLISECONDS);
                this.c.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (BrokenBarrierException | TimeoutException unused2) {
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (lv5.this.m) {
                lv5 lv5Var = lv5.this;
                lv5Var.G = Integer.MAX_VALUE;
                o8.s(lv5Var.H.isEmpty(), "Pending streams detected during transport start. RPCs should not be started before transport is ready.");
            }
            lv5 lv5Var2 = lv5.this;
            lv5Var2.q.execute(lv5Var2.v);
        }
    }

    public class e implements Runnable {
        public final mv5 b;
        public final tk3 c;
        public boolean d;

        public e(tk3 tk3Var) {
            Level level = Level.FINE;
            this.b = new mv5();
            this.d = true;
            this.c = tk3Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            lv5 lv5Var;
            h88 h88VarH;
            String name = Thread.currentThread().getName();
            Thread.currentThread().setName("OkHttpClientTransport");
            while (true) {
                try {
                    boolean zA = ((ey3.c) this.c).a(this);
                    lv5Var = lv5.this;
                    if (!zA) {
                        break;
                    }
                    if4 if4Var = lv5Var.J;
                    if (if4Var != null) {
                        if4Var.a();
                    }
                } catch (Throwable th) {
                    try {
                        lv5 lv5Var2 = lv5.this;
                        q03 q03Var = q03.PROTOCOL_ERROR;
                        h88 h88VarG = h88.l.h("error in frame handler").g(th);
                        Map<q03, h88> map = lv5.V;
                        lv5Var2.q(0, q03Var, h88VarG);
                        try {
                            ((ey3.c) this.c).close();
                        } catch (IOException e) {
                            e = e;
                            lv5.W.log(Level.INFO, "Exception closing frame reader", (Throwable) e);
                        } catch (RuntimeException e2) {
                            if (!"bio == null".equals(e2.getMessage())) {
                                throw e2;
                            }
                        }
                    } catch (Throwable th2) {
                        try {
                            ((ey3.c) this.c).close();
                        } catch (IOException e3) {
                            lv5.W.log(Level.INFO, "Exception closing frame reader", (Throwable) e3);
                        } catch (RuntimeException e4) {
                            if (!"bio == null".equals(e4.getMessage())) {
                                throw e4;
                            }
                        }
                        lv5.this.j.e();
                        Thread.currentThread().setName(name);
                        throw th2;
                    }
                }
            }
            synchronized (lv5Var.m) {
                h88VarH = lv5.this.x;
            }
            if (h88VarH == null) {
                h88VarH = h88.m.h("End of stream or IOException");
            }
            lv5.this.q(0, q03.INTERNAL_ERROR, h88VarH);
            try {
                ((ey3.c) this.c).close();
            } catch (IOException e5) {
                e = e5;
                lv5.W.log(Level.INFO, "Exception closing frame reader", (Throwable) e);
            } catch (RuntimeException e6) {
                if (!"bio == null".equals(e6.getMessage())) {
                    throw e6;
                }
            }
            lv5.this.j.e();
            Thread.currentThread().setName(name);
        }
    }

    public static class f extends jo5 {
        public final String b;

        public f(String str) {
            this.b = str;
        }

        @Override // javax.net.ssl.SSLSession
        public final String getPeerHost() {
            return this.b;
        }
    }

    public static class g<T> extends LinkedHashMap<String, T> {
        @Override // java.util.LinkedHashMap
        public final boolean removeEldestEntry(Map.Entry<String, T> entry) {
            return size() > 100;
        }
    }

    public static final class h extends ko5 {
        public final f b;
        public final SSLSocket c;

        public h(SSLSocket sSLSocket, String str) {
            this.c = sSLSocket;
            this.b = new f(str);
        }

        @Override // javax.net.ssl.SSLSocket
        public final SSLSession getHandshakeSession() {
            return this.b;
        }

        @Override // javax.net.ssl.SSLSocket
        public final SSLParameters getSSLParameters() {
            return this.c.getSSLParameters();
        }

        @Override // java.net.Socket
        public final boolean isConnected() {
            return this.c.isConnected();
        }
    }

    static {
        Class<?> cls;
        EnumMap enumMap = new EnumMap(q03.class);
        q03 q03Var = q03.NO_ERROR;
        h88 h88Var = h88.l;
        enumMap.put(q03Var, h88Var.h("No error: A GRPC status of OK should have been sent"));
        enumMap.put(q03.PROTOCOL_ERROR, h88Var.h("Protocol error"));
        enumMap.put(q03.INTERNAL_ERROR, h88Var.h("Internal error"));
        enumMap.put(q03.FLOW_CONTROL_ERROR, h88Var.h("Flow control error"));
        enumMap.put(q03.STREAM_CLOSED, h88Var.h("Stream closed"));
        enumMap.put(q03.FRAME_TOO_LARGE, h88Var.h("Frame too large"));
        enumMap.put(q03.REFUSED_STREAM, h88.m.h("Refused stream"));
        enumMap.put(q03.CANCEL, h88.f.h("Cancelled"));
        enumMap.put(q03.COMPRESSION_ERROR, h88Var.h("Compression error"));
        enumMap.put(q03.CONNECT_ERROR, h88Var.h("Connect error"));
        enumMap.put(q03.ENHANCE_YOUR_CALM, h88.j.h("Enhance your calm"));
        enumMap.put(q03.INADEQUATE_SECURITY, h88.i.h("Inadequate security"));
        V = Collections.unmodifiableMap(enumMap);
        W = Logger.getLogger(lv5.class.getName());
        Logger logger = vs3.a;
        X = l63.a("GRPC_ENABLE_PER_RPC_AUTHORITY_CHECK", false);
        Method method = null;
        try {
            cls = Class.forName("javax.net.ssl.X509ExtendedTrustManager");
            try {
                method = cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, Socket.class);
            } catch (ClassNotFoundException | NoSuchMethodException unused) {
            }
        } catch (ClassNotFoundException | NoSuchMethodException unused2) {
            cls = null;
        }
        Y = cls;
        Z = method;
    }

    public lv5() {
        throw null;
    }

    public lv5(hv5.f fVar, InetSocketAddress inetSocketAddress, String str, io.grpc.a aVar, xy3 xy3Var, iv5 iv5Var) {
        vs3.d dVar = vs3.r;
        ey3 ey3Var = new ey3();
        this.f = new Random();
        Object obj = new Object();
        this.m = obj;
        this.p = new HashMap();
        this.G = 0;
        this.H = new LinkedList();
        this.R = new g();
        this.S = new a();
        this.U = 30000;
        o8.l(inetSocketAddress, "address");
        this.c = inetSocketAddress;
        this.d = str;
        this.t = fVar.i;
        this.h = fVar.m;
        Executor executor = fVar.c;
        o8.l(executor, "executor");
        this.q = executor;
        this.r = new oq7(fVar.c);
        ScheduledExecutorService scheduledExecutorService = fVar.e;
        o8.l(scheduledExecutorService, "scheduledExecutorService");
        this.s = scheduledExecutorService;
        this.o = 3;
        this.C = SocketFactory.getDefault();
        this.D = fVar.g;
        this.E = fv5.a;
        sw1 sw1Var = fVar.h;
        o8.l(sw1Var, "connectionSpec");
        this.I = sw1Var;
        o8.l(dVar, "stopwatchFactory");
        this.g = dVar;
        this.i = ey3Var;
        this.e = "grpc-java-okhttp/1.83.0";
        this.T = xy3Var;
        this.N = iv5Var;
        this.O = fVar.n;
        this.P = new g39(fVar.f.a);
        this.n = m94.a(lv5.class, inetSocketAddress.toString());
        io.grpc.a aVar2 = io.grpc.a.b;
        io.grpc.a.b<io.grpc.a> bVar = us3.b;
        IdentityHashMap identityHashMap = new IdentityHashMap(aVar2.a.size() + 1);
        identityHashMap.putAll(aVar2.a);
        identityHashMap.put(bVar, aVar);
        this.w = new io.grpc.a(identityHashMap);
        synchronized (obj) {
        }
        this.Q = null;
    }

    public static String n(ct ctVar) throws IOException {
        long j;
        bu0 bu0Var = new bu0();
        do {
            long jT0 = ctVar.t0(bu0Var, 1L);
            j = bu0Var.c;
            if (jT0 == -1) {
                throw new EOFException("\\n not found: " + bu0Var.i(j).g());
            }
        } while (bu0Var.Q(j - 1) != 10);
        return bu0Var.S(Long.MAX_VALUE);
    }

    public static h88 u(q03 q03Var) {
        h88 h88Var = V.get(q03Var);
        if (h88Var != null) {
            return h88Var;
        }
        return h88.g.h("Unknown http2 error code: " + q03Var.httpCode);
    }

    /* JADX WARN: Code duplicated, block: B:107:0x019e A[EDGE_INSN: B:107:0x019e->B:159:0x0247 BREAK  A[LOOP:9: B:146:0x0224->B:157:0x0243], PHI: r16
      0x019e: PHI (r16v3 a37) = (r16v1 a37), (r16v1 a37), (r16v1 a37), (r16v1 a37), (r16v1 a37), (r16v4 a37) binds: [B:188:0x019e, B:233:0x019e, B:152:0x0236, B:235:0x019e, B:144:0x0221, B:106:0x019c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:108:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:110:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:113:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:115:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:122:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:127:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:134:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:137:0x0206  */
    /* JADX WARN: Code duplicated, block: B:19:0x005d  */
    /* JADX WARN: Code duplicated, block: B:201:0x012f A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:208:0x015b A[EDGE_INSN: B:208:0x015b->B:92:0x015b BREAK  A[LOOP:3: B:86:0x0140->B:90:0x0150], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:0x01c9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:215:0x01e6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:216:0x01e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:218:0x01da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:221:0x01d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:225:0x012f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:231:0x0115 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:79:0x011c A[LOOP:7: B:51:0x00d4->B:79:0x011c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:87:0x0142  */
    /* JADX WARN: Code duplicated, block: B:90:0x0150 A[LOOP:3: B:86:0x0140->B:90:0x0150, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:94:0x015f  */
    /* JADX WARN: Multi-variable type inference failed */
    public final a37 a(InetSocketAddress inetSocketAddress, String str, String str2) {
        String strSubstring;
        a37 a37Var;
        String strQ0;
        int i;
        int i2;
        InetAddress byAddress;
        byte[] address;
        int i3;
        int i4;
        int i5;
        int i6;
        bu0 bu0Var;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        char cCharAt;
        int i13;
        int i14;
        int i15;
        int iA;
        char c2;
        int i16;
        ez3.a aVar = new ez3.a();
        aVar.c = -1;
        aVar.a = ProxyConfig.MATCH_HTTPS;
        String hostName = inetSocketAddress.getHostName();
        if (hostName == null) {
            fg.c("host == null");
            return null;
        }
        int length = hostName.length();
        int i17 = 0;
        int iCharCount = 0;
        while (true) {
            if (iCharCount >= length) {
                strSubstring = hostName.substring(0, length);
                break;
            }
            if (hostName.charAt(iCharCount) == '%') {
                bu0 bu0Var2 = new bu0();
                bu0Var2.H0(0, iCharCount, hostName);
                while (iCharCount < length) {
                    int iCodePointAt = hostName.codePointAt(iCharCount);
                    if (iCodePointAt != 37 || (i16 = iCharCount + 2) >= length) {
                        bu0Var2.J0(iCodePointAt);
                    } else {
                        int iA2 = ez3.a(hostName.charAt(iCharCount + 1));
                        int iA3 = ez3.a(hostName.charAt(i16));
                        if (iA2 == -1 || iA3 == -1) {
                            bu0Var2.J0(iCodePointAt);
                        } else {
                            bu0Var2.A0((iA2 << 4) + iA3);
                            iCharCount = i16;
                        }
                    }
                    iCharCount += Character.charCount(iCodePointAt);
                }
                strSubstring = bu0Var2.q0();
                break;
            }
            iCharCount++;
        }
        if (!strSubstring.startsWith("[") || !strSubstring.endsWith("]")) {
            a37Var = null;
            try {
                String lowerCase = IDN.toASCII(strSubstring).toLowerCase(Locale.US);
                if (!lowerCase.isEmpty()) {
                    int i18 = 0;
                    while (true) {
                        if (i18 >= lowerCase.length()) {
                            strQ0 = lowerCase;
                            break;
                        }
                        char cCharAt2 = lowerCase.charAt(i18);
                        if (cCharAt2 > 31 && cCharAt2 < 127 && " #%/:?@[\\]".indexOf(cCharAt2) == -1) {
                            i18++;
                        }
                    }
                }
            } catch (IllegalArgumentException unused) {
            }
            strQ0 = a37Var;
            break;
        }
        int length2 = strSubstring.length() - 1;
        int i19 = 16;
        byte[] bArr = new byte[16];
        int i20 = -1;
        int i21 = -1;
        int i22 = 0;
        int i23 = 1;
        a37Var = null;
        while (true) {
            try {
                if (i23 < length2) {
                    if (i22 != i19) {
                        int i24 = i23 + 2;
                        char c3 = 2;
                        if (i24 > length2 || !strSubstring.regionMatches(i23, "::", i17, 2)) {
                            if (i22 == 0) {
                                i13 = i23;
                                i14 = 0;
                                while (i13 < length2) {
                                    iA = ez3.a(strSubstring.charAt(i13));
                                    c2 = c3;
                                    if (iA == -1) {
                                        break;
                                        break;
                                    }
                                    i14 = (i14 << 4) + iA;
                                    i13++;
                                    c3 = c2;
                                }
                                i15 = i13 - i23;
                                if (i15 == 0) {
                                }
                            } else if (strSubstring.regionMatches(i23, StringUtils.PROCESS_POSTFIX_DELIMITER, i17, 1)) {
                                i23++;
                                i13 = i23;
                                i14 = 0;
                                while (i13 < length2) {
                                    iA = ez3.a(strSubstring.charAt(i13));
                                    c2 = c3;
                                    if (iA == -1) {
                                        break;
                                    }
                                    i14 = (i14 << 4) + iA;
                                    i13++;
                                    c3 = c2;
                                }
                                i15 = i13 - i23;
                                if (i15 == 0 && i15 <= 4) {
                                    int i25 = i22 + 1;
                                    bArr[i22] = (byte) (255 & (i14 >>> 8));
                                    i22 += 2;
                                    bArr[i25] = (byte) (i14 & 255);
                                    i21 = i23;
                                    i19 = 16;
                                    i23 = i13;
                                    i17 = 0;
                                }
                            } else {
                                if (strSubstring.regionMatches(i23, ".", i17, 1)) {
                                    int i26 = i22 - 2;
                                    int i27 = i26;
                                    int i28 = i21;
                                    while (true) {
                                        if (i28 >= length2) {
                                            int i29 = i20;
                                            if (i27 == i22 + 2) {
                                                i22 += 2;
                                                i20 = i29;
                                                i = 16;
                                            }
                                        } else if (i27 != 16) {
                                            if (i27 == i26) {
                                                i9 = i28;
                                                i10 = 0;
                                                while (true) {
                                                    i11 = i26;
                                                    if (i9 < length2) {
                                                        cCharAt = strSubstring.charAt(i9);
                                                        i12 = i20;
                                                        if (cCharAt < '0' && cCharAt <= '9') {
                                                            if ((i10 != 0 || i28 == i9) && (i10 = ((i10 * 10) + cCharAt) - 48) <= 255) {
                                                                i9++;
                                                                i26 = i11;
                                                                i20 = i12;
                                                            }
                                                        }
                                                    } else {
                                                        i12 = i20;
                                                    }
                                                    if (i9 - i28 == 0) {
                                                        bArr[i27] = (byte) i10;
                                                        i27++;
                                                        i28 = i9;
                                                        i26 = i11;
                                                        i20 = i12;
                                                    }
                                                }
                                            } else if (strSubstring.charAt(i28) == '.') {
                                                i28++;
                                                i9 = i28;
                                                i10 = 0;
                                                while (true) {
                                                    i11 = i26;
                                                    if (i9 < length2) {
                                                        cCharAt = strSubstring.charAt(i9);
                                                        i12 = i20;
                                                        if (cCharAt < '0') {
                                                        }
                                                    } else {
                                                        i12 = i20;
                                                    }
                                                    if (i9 - i28 == 0) {
                                                        bArr[i27] = (byte) i10;
                                                        i27++;
                                                        i28 = i9;
                                                        i26 = i11;
                                                        i20 = i12;
                                                    }
                                                    i9++;
                                                    i26 = i11;
                                                    i20 = i12;
                                                }
                                            }
                                        }
                                    }
                                }
                                if (byAddress == null) {
                                    strQ0 = a37Var;
                                    break;
                                }
                                address = byAddress.getAddress();
                                i3 = 16;
                                if (address.length == 16) {
                                    xp.g();
                                    return null;
                                }
                                i4 = i2;
                                i5 = i4;
                                i6 = -1;
                                while (i4 < address.length) {
                                    i7 = i4;
                                    while (i7 < i3 && address[i7] == 0 && address[i7 + 1] == 0) {
                                        i7 += 2;
                                        i3 = 16;
                                    }
                                    i8 = i7 - i4;
                                    if (i8 > i5) {
                                        i6 = i4;
                                        i5 = i8;
                                    }
                                    i4 = i7 + 2;
                                    i3 = 16;
                                }
                                bu0Var = new bu0();
                                while (i2 < address.length) {
                                    if (i2 == i6) {
                                        bu0Var.A0(58);
                                        i2 += i5;
                                        if (i2 == 16) {
                                            bu0Var.A0(58);
                                        }
                                    } else {
                                        if (i2 > 0) {
                                            bu0Var.A0(58);
                                        }
                                        bu0Var.C0(((address[i2] & 255) << 8) | (address[i2 + 1] & 255));
                                        i2 += 2;
                                    }
                                }
                                strQ0 = bu0Var.q0();
                            }
                            byAddress = null;
                            i2 = 0;
                            if (byAddress == null) {
                                strQ0 = a37Var;
                                break;
                            }
                            address = byAddress.getAddress();
                            i3 = 16;
                            if (address.length == 16) {
                                xp.g();
                                return null;
                            }
                            i4 = i2;
                            i5 = i4;
                            i6 = -1;
                            while (i4 < address.length) {
                                i7 = i4;
                                while (i7 < i3) {
                                    i7 += 2;
                                    i3 = 16;
                                }
                                i8 = i7 - i4;
                                if (i8 > i5) {
                                    i6 = i4;
                                    i5 = i8;
                                }
                                i4 = i7 + 2;
                                i3 = 16;
                            }
                            bu0Var = new bu0();
                            while (i2 < address.length) {
                                if (i2 == i6) {
                                    bu0Var.A0(58);
                                    i2 += i5;
                                    if (i2 == 16) {
                                        bu0Var.A0(58);
                                    }
                                } else {
                                    if (i2 > 0) {
                                        bu0Var.A0(58);
                                    }
                                    bu0Var.C0(((address[i2] & 255) << 8) | (address[i2 + 1] & 255));
                                    i2 += 2;
                                }
                            }
                            strQ0 = bu0Var.q0();
                        } else if (i20 == -1) {
                            i22 += 2;
                            if (i24 == length2) {
                                i20 = i22;
                                i = 16;
                            } else {
                                i23 = i24;
                                i20 = i22;
                                i13 = i23;
                                i14 = 0;
                                while (i13 < length2) {
                                    iA = ez3.a(strSubstring.charAt(i13));
                                    c2 = c3;
                                    if (iA == -1) {
                                        break;
                                        break;
                                    }
                                    i14 = (i14 << 4) + iA;
                                    i13++;
                                    c3 = c2;
                                }
                                i15 = i13 - i23;
                                if (i15 == 0) {
                                }
                                byAddress = null;
                                i2 = 0;
                                if (byAddress == null) {
                                    strQ0 = a37Var;
                                    break;
                                }
                                address = byAddress.getAddress();
                                i3 = 16;
                                if (address.length == 16) {
                                    xp.g();
                                    return null;
                                }
                                i4 = i2;
                                i5 = i4;
                                i6 = -1;
                                while (i4 < address.length) {
                                    i7 = i4;
                                    while (i7 < i3) {
                                        i7 += 2;
                                        i3 = 16;
                                    }
                                    i8 = i7 - i4;
                                    if (i8 > i5) {
                                        i6 = i4;
                                        i5 = i8;
                                    }
                                    i4 = i7 + 2;
                                    i3 = 16;
                                }
                                bu0Var = new bu0();
                                while (i2 < address.length) {
                                    if (i2 == i6) {
                                        bu0Var.A0(58);
                                        i2 += i5;
                                        if (i2 == 16) {
                                            bu0Var.A0(58);
                                        }
                                    } else {
                                        if (i2 > 0) {
                                            bu0Var.A0(58);
                                        }
                                        bu0Var.C0(((address[i2] & 255) << 8) | (address[i2 + 1] & 255));
                                        i2 += 2;
                                    }
                                }
                                strQ0 = bu0Var.q0();
                            }
                        }
                    }
                    i2 = i17;
                    byAddress = null;
                    if (byAddress == null) {
                        strQ0 = a37Var;
                        break;
                    }
                    address = byAddress.getAddress();
                    i3 = 16;
                    if (address.length == 16) {
                        xp.g();
                        return null;
                    }
                    i4 = i2;
                    i5 = i4;
                    i6 = -1;
                    while (i4 < address.length) {
                        i7 = i4;
                        while (i7 < i3) {
                            i7 += 2;
                            i3 = 16;
                        }
                        i8 = i7 - i4;
                        if (i8 > i5) {
                            i6 = i4;
                            i5 = i8;
                        }
                        i4 = i7 + 2;
                        i3 = 16;
                    }
                    bu0Var = new bu0();
                    while (i2 < address.length) {
                        if (i2 == i6) {
                            bu0Var.A0(58);
                            i2 += i5;
                            if (i2 == 16) {
                                bu0Var.A0(58);
                            }
                        } else {
                            if (i2 > 0) {
                                bu0Var.A0(58);
                            }
                            bu0Var.C0(((address[i2] & 255) << 8) | (address[i2 + 1] & 255));
                            i2 += 2;
                        }
                    }
                    strQ0 = bu0Var.q0();
                } else {
                    i = i19;
                }
                if (i22 != i) {
                    if (i20 == -1) {
                        byAddress = null;
                        i2 = 0;
                    } else {
                        int i30 = i22 - i20;
                        System.arraycopy(bArr, i20, bArr, 16 - i30, i30);
                        i2 = 0;
                        Arrays.fill(bArr, i20, (16 - i22) + i20, (byte) 0);
                    }
                    if (byAddress == null) {
                        strQ0 = a37Var;
                        break;
                    }
                    address = byAddress.getAddress();
                    i3 = 16;
                    if (address.length == 16) {
                        xp.g();
                        return null;
                    }
                    i4 = i2;
                    i5 = i4;
                    i6 = -1;
                    while (i4 < address.length) {
                        i7 = i4;
                        while (i7 < i3) {
                            i7 += 2;
                            i3 = 16;
                        }
                        i8 = i7 - i4;
                        if (i8 > i5) {
                            i6 = i4;
                            i5 = i8;
                        }
                        i4 = i7 + 2;
                        i3 = 16;
                    }
                    bu0Var = new bu0();
                    while (i2 < address.length) {
                        if (i2 == i6) {
                            bu0Var.A0(58);
                            i2 += i5;
                            if (i2 == 16) {
                                bu0Var.A0(58);
                            }
                        } else {
                            if (i2 > 0) {
                                bu0Var.A0(58);
                            }
                            bu0Var.C0(((address[i2] & 255) << 8) | (address[i2 + 1] & 255));
                            i2 += 2;
                        }
                    }
                    strQ0 = bu0Var.q0();
                } else {
                    i2 = 0;
                }
                byAddress = InetAddress.getByAddress(bArr);
                if (byAddress == null) {
                    strQ0 = a37Var;
                    break;
                }
                address = byAddress.getAddress();
                i3 = 16;
                if (address.length == 16) {
                    xp.g();
                    return null;
                }
                i4 = i2;
                i5 = i4;
                i6 = -1;
                while (i4 < address.length) {
                    i7 = i4;
                    while (i7 < i3) {
                        i7 += 2;
                        i3 = 16;
                    }
                    i8 = i7 - i4;
                    if (i8 > i5) {
                        i6 = i4;
                        i5 = i8;
                    }
                    i4 = i7 + 2;
                    i3 = 16;
                }
                bu0Var = new bu0();
                while (i2 < address.length) {
                    if (i2 == i6) {
                        bu0Var.A0(58);
                        i2 += i5;
                        if (i2 == 16) {
                            bu0Var.A0(58);
                        }
                    } else {
                        if (i2 > 0) {
                            bu0Var.A0(58);
                        }
                        bu0Var.C0(((address[i2] & 255) << 8) | (address[i2 + 1] & 255));
                        i2 += 2;
                    }
                }
                strQ0 = bu0Var.q0();
            } catch (UnknownHostException unused2) {
                xp.g();
                return null;
            }
        }
        if (strQ0 == 0) {
            fg.c("unexpected host: ".concat(hostName));
            return a37Var;
        }
        aVar.b = strQ0;
        int port = inetSocketAddress.getPort();
        if (port <= 0 || port > 65535) {
            fg.c(jh.b(port, "unexpected port: "));
            return a37Var;
        }
        aVar.c = port;
        if (aVar.b == null) {
            ah.f("host == null");
            return a37Var;
        }
        ez3 ez3Var = new ez3(aVar);
        a37.a aVar2 = new a37.a();
        aVar2.b = new iv3.a();
        aVar2.a = ez3Var;
        aVar2.a("Host", ez3Var.a + StringUtils.PROCESS_POSTFIX_DELIMITER + ez3Var.b);
        aVar2.a("User-Agent", this.e);
        if (str != null && str2 != null) {
            try {
                aVar2.a("Proxy-Authorization", "Basic " + gx0.q((str + StringUtils.PROCESS_POSTFIX_DELIMITER + str2).getBytes("ISO-8859-1")).a());
            } catch (UnsupportedEncodingException unused3) {
                xp.g();
                return a37Var;
            }
        }
        if (aVar2.a != null) {
            return new a37(aVar2);
        }
        ah.f("url == null");
        return a37Var;
    }

    @Override // defpackage.em1
    public final cm1 b(ra5 ra5Var, la5 la5Var, io.grpc.b bVar, io.grpc.c[] cVarArr) {
        kv5 kv5Var;
        o8.l(ra5Var, "method");
        o8.l(la5Var, "headers");
        io.grpc.a aVar = this.w;
        g88 g88Var = new g88(cVarArr);
        for (io.grpc.c cVar : cVarArr) {
            cVar.Z(aVar, la5Var);
        }
        synchronized (this.m) {
            kv5Var = new kv5(ra5Var, la5Var, this.k, this, this.l, this.m, this.t, this.h, this.d, this.e, g88Var, this.P, bVar);
        }
        return kv5Var;
    }

    @Override // defpackage.l94
    public final m94 c() {
        return this.n;
    }

    @Override // defpackage.nz4
    public final Runnable d(nz4.a aVar) {
        this.j = (p94.f) aVar;
        if (this.K) {
            if4 if4Var = new if4(new if4.c(this), this.s, this.L, this.M);
            this.J = if4Var;
            synchronized (if4Var) {
            }
        }
        zs zsVar = new zs(this.r, this);
        ey3 ey3Var = this.i;
        hy6 hy6Var = new hy6(zsVar);
        ey3Var.getClass();
        zs.d dVar = zsVar.new d(new ey3.d(hy6Var));
        synchronized (this.m) {
            j13 j13Var = new j13(this, dVar);
            this.k = j13Var;
            this.l = new i06(this, j13Var);
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        CountDownLatch countDownLatch2 = new CountDownLatch(1);
        CyclicBarrier cyclicBarrier = new CyclicBarrier(2);
        this.r.execute(new b(countDownLatch, cyclicBarrier, zsVar, countDownLatch2));
        this.q.execute(new c(cyclicBarrier, countDownLatch2));
        try {
            o();
            countDownLatch.countDown();
            this.r.execute(new d());
            return null;
        } catch (Throwable th) {
            countDownLatch.countDown();
            throw th;
        }
    }

    @Override // defpackage.nz4
    public final void e(h88 h88Var) {
        synchronized (this.m) {
            try {
                if (this.x != null) {
                    return;
                }
                this.x = h88Var;
                this.j.d(h88Var, cz7.SUBCHANNEL_SHUTDOWN);
                t();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Socket f(InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, String str, String str2) throws StatusException {
        Socket socket = null;
        try {
            InetAddress address = inetSocketAddress2.getAddress();
            SocketFactory socketFactory = this.C;
            Socket socketCreateSocket = address != null ? socketFactory.createSocket(inetSocketAddress2.getAddress(), inetSocketAddress2.getPort()) : socketFactory.createSocket(inetSocketAddress2.getHostName(), inetSocketAddress2.getPort());
            try {
                socketCreateSocket.setTcpNoDelay(true);
                socketCreateSocket.setSoTimeout(this.U);
                ct ctVarF = vp3.f(socketCreateSocket);
                hy6 hy6Var = new hy6(vp3.e(socketCreateSocket));
                a37 a37VarA = a(inetSocketAddress, str, str2);
                String[] strArr = a37VarA.b.a;
                ez3 ez3Var = a37VarA.a;
                Locale locale = Locale.US;
                hy6Var.l("CONNECT " + ez3Var.a + StringUtils.PROCESS_POSTFIX_DELIMITER + ez3Var.b + " HTTP/1.1");
                hy6Var.l("\r\n");
                int length = strArr.length / 2;
                for (int i = 0; i < length; i++) {
                    int i2 = i * 2;
                    hy6Var.l((i2 < 0 || i2 >= strArr.length) ? null : strArr[i2]);
                    hy6Var.l(": ");
                    int i3 = i2 + 1;
                    hy6Var.l((i3 < 0 || i3 >= strArr.length) ? null : strArr[i3]);
                    hy6Var.l("\r\n");
                }
                hy6Var.l("\r\n");
                hy6Var.flush();
                l88 l88VarA = l88.a(n(ctVarF));
                int i4 = l88VarA.b;
                while (!n(ctVarF).equals("")) {
                }
                if (i4 >= 200 && i4 < 300) {
                    socketCreateSocket.setSoTimeout(0);
                    return socketCreateSocket;
                }
                bu0 bu0Var = new bu0();
                try {
                    socketCreateSocket.shutdownOutput();
                    ctVarF.t0(bu0Var, 1024L);
                } catch (IOException e2) {
                    bu0Var.I0("Unable to read body: " + e2.toString());
                }
                try {
                    socketCreateSocket.close();
                } catch (IOException unused) {
                }
                Locale locale2 = Locale.US;
                throw new StatusException(h88.m.h("Response returned from proxy was not successful (expected 2xx, got " + i4 + " " + l88VarA.c + "). Response body:\n" + bu0Var.q0()));
            } catch (IOException e3) {
                e = e3;
                socket = socketCreateSocket;
                if (socket != null) {
                    vs3.b(socket);
                }
                throw new StatusException(h88.m.h("Failed trying to connect with proxy").g(e));
            }
        } catch (IOException e4) {
            e = e4;
        }
    }

    public final void g(int i, h88 h88Var, dm1.a aVar, boolean z, q03 q03Var, la5 la5Var) {
        synchronized (this.m) {
            try {
                kv5 kv5Var = (kv5) this.p.remove(Integer.valueOf(i));
                if (kv5Var != null) {
                    if (q03Var != null) {
                        this.k.h0(i, q03.CANCEL);
                    }
                    if (h88Var != null) {
                        kv5.b bVar = kv5Var.n;
                        if (la5Var == null) {
                            la5Var = new la5();
                        }
                        bVar.i(h88Var, aVar, z, la5Var);
                    }
                    if (!r()) {
                        t();
                    }
                    l(kv5Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.mw1
    public final io.grpc.a getAttributes() {
        return this.w;
    }

    public final i06.b[] h() {
        i06.b[] bVarArr;
        i06.b bVar;
        synchronized (this.m) {
            bVarArr = new i06.b[this.p.size()];
            Iterator it = this.p.values().iterator();
            int i = 0;
            while (it.hasNext()) {
                int i2 = i + 1;
                kv5.b bVar2 = ((kv5) it.next()).n;
                synchronized (bVar2.x) {
                    bVar = bVar2.K;
                }
                bVarArr[i] = bVar;
                i = i2;
            }
        }
        return bVarArr;
    }

    public final int i() {
        URI uriA = vs3.a(this.d);
        return uriA.getPort() != -1 ? uriA.getPort() : this.c.getPort();
    }

    public final h88 j() {
        synchronized (this.m) {
            try {
                h88 h88Var = this.x;
                if (h88Var != null) {
                    return h88Var;
                }
                return h88.m.h("Connection closed");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x000c  */
    public final boolean k(int i) {
        boolean z;
        synchronized (this.m) {
            if (i < this.o) {
                z = true;
                if ((i & 1) != 1) {
                    z = false;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    public final void l(kv5 kv5Var) {
        if (this.B && this.H.isEmpty() && this.p.isEmpty()) {
            this.B = false;
            if4 if4Var = this.J;
            if (if4Var != null) {
                synchronized (if4Var) {
                    try {
                        if4.d dVar = if4Var.d;
                        if (dVar == if4.d.PING_SCHEDULED || dVar == if4.d.PING_DELAYED) {
                            dVar = if4.d.IDLE;
                            if4Var.d = dVar;
                        }
                        if (dVar == if4.d.PING_SENT) {
                            if4Var.d = if4.d.IDLE_AND_PING_SENT;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
        if (kv5Var.e) {
            this.S.o(kv5Var, false);
        }
    }

    public final void m(Exception exc) {
        q(0, q03.INTERNAL_ERROR, h88.m.g(exc));
    }

    public final void o() {
        synchronized (this.m) {
            try {
                this.k.u();
                pr7 pr7Var = new pr7();
                pr7Var.a(7, this.h);
                this.k.z(pr7Var);
                int i = this.h;
                if (i > 65535) {
                    this.k.T(0, i - 65535);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void p(h88 h88Var) {
        e(h88Var);
        synchronized (this.m) {
            try {
                Iterator it = this.p.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    it.remove();
                    ((kv5) entry.getValue()).n.j(h88Var, false, new la5());
                    l((kv5) entry.getValue());
                }
                for (kv5 kv5Var : this.H) {
                    kv5Var.n.i(h88Var, dm1.a.MISCARRIED, true, new la5());
                    l(kv5Var);
                }
                this.H.clear();
                t();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void q(int i, q03 q03Var, h88 h88Var) {
        synchronized (this.m) {
            try {
                if (this.x == null) {
                    this.x = h88Var;
                    this.j.d(h88Var, new hr3(q03Var == null ? vs3.g.NO_ERROR : vs3.g.a(q03Var.httpCode)));
                }
                if (q03Var != null && !this.y) {
                    this.y = true;
                    this.k.g0(q03Var, new byte[0]);
                }
                Iterator it = this.p.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    if (((Integer) entry.getKey()).intValue() > i) {
                        it.remove();
                        ((kv5) entry.getValue()).n.i(h88Var, dm1.a.REFUSED, false, new la5());
                        l((kv5) entry.getValue());
                    }
                }
                for (kv5 kv5Var : this.H) {
                    kv5Var.n.i(h88Var, dm1.a.MISCARRIED, true, new la5());
                    l(kv5Var);
                }
                this.H.clear();
                t();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean r() {
        boolean z = false;
        while (true) {
            LinkedList linkedList = this.H;
            if (linkedList.isEmpty() || this.p.size() >= this.G) {
                break;
            }
            s((kv5) linkedList.poll());
            z = true;
        }
        return z;
    }

    public final void s(kv5 kv5Var) {
        o8.s(kv5Var.n.L == -1, "StreamId already assigned");
        this.p.put(Integer.valueOf(this.o), kv5Var);
        if (!this.B) {
            this.B = true;
            if4 if4Var = this.J;
            if (if4Var != null) {
                if4Var.b();
            }
        }
        if (kv5Var.e) {
            this.S.o(kv5Var, true);
        }
        kv5.b bVar = kv5Var.n;
        int i = this.o;
        o8.p(i, "the stream has been started with id %s", bVar.L == -1);
        bVar.L = i;
        i06 i06Var = bVar.G;
        bVar.K = i06Var.new b(i, i06Var.c, bVar);
        kv5.b bVar2 = kv5.this.n;
        o8.r(bVar2.k != null);
        synchronized (bVar2.b) {
            o8.s(!bVar2.f, "Already allocated");
            bVar2.f = true;
        }
        bVar2.f();
        g39 g39Var = bVar2.c;
        g39Var.getClass();
        g39Var.a.b();
        if (bVar.I) {
            bVar.F.x(bVar.L, bVar.y, kv5.this.q);
            for (y14 y14Var : kv5.this.l.a) {
                ((io.grpc.c) y14Var).Y();
            }
            bVar.y = null;
            bu0 bu0Var = bVar.z;
            if (bu0Var.c > 0) {
                bVar.G.a(bVar.A, bVar.K, bu0Var, bVar.B);
            }
            bVar.I = false;
        }
        ra5.a aVar = kv5Var.j.a;
        if ((aVar != ra5.a.UNARY && aVar != ra5.a.SERVER_STREAMING) || kv5Var.q) {
            this.k.flush();
        }
        int i2 = this.o;
        if (i2 < 2147483645) {
            this.o = i2 + 2;
        } else {
            this.o = Integer.MAX_VALUE;
            q(Integer.MAX_VALUE, q03.NO_ERROR, h88.m.h("Stream ids exhausted"));
        }
    }

    public final void t() {
        if (this.x == null || !this.p.isEmpty() || !this.H.isEmpty() || this.A) {
            return;
        }
        this.A = true;
        if4 if4Var = this.J;
        if (if4Var != null) {
            synchronized (if4Var) {
                try {
                    if4.d dVar = if4Var.d;
                    if4.d dVar2 = if4.d.DISCONNECTED;
                    if (dVar != dVar2) {
                        if4Var.d = dVar2;
                        ScheduledFuture<?> scheduledFuture = if4Var.e;
                        if (scheduledFuture != null) {
                            scheduledFuture.cancel(false);
                        }
                        ScheduledFuture<?> scheduledFuture2 = if4Var.f;
                        if (scheduledFuture2 != null) {
                            scheduledFuture2.cancel(false);
                            if4Var.f = null;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        ty3 ty3Var = this.z;
        if (ty3Var != null) {
            h88 h88VarJ = j();
            synchronized (ty3Var) {
                try {
                    if (!ty3Var.d) {
                        ty3Var.d = true;
                        ty3Var.e = h88VarJ;
                        LinkedHashMap linkedHashMap = ty3Var.c;
                        ty3Var.c = null;
                        for (Map.Entry entry : linkedHashMap.entrySet()) {
                            try {
                                ((Executor) entry.getValue()).execute(new sy3((em1.a) entry.getKey(), h88VarJ));
                            } catch (Throwable th2) {
                                ty3.g.log(Level.SEVERE, "Failed to execute PingCallback", th2);
                            }
                        }
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
            this.z = null;
        }
        if (!this.y) {
            this.y = true;
            this.k.g0(q03.NO_ERROR, new byte[0]);
        }
        this.k.close();
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.b(this.n.c, "logId");
        aVarB.d(this.c, "address");
        return aVarB.toString();
    }
}
