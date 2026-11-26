package defpackage;

import gt.a;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.EnumSet;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes5.dex */
public final class hv5 extends io.grpc.e<hv5> {
    public static final sw1 m;
    public static final sw1 n;
    public static final au7 o;
    public final iz4 a;
    public final g39.a b = g39.c;
    public final au7 c = o;
    public final au7 d = new au7(vs3.q);
    public SSLSocketFactory e;
    public final sw1 f;
    public final c g;
    public final long h;
    public final long i;
    public final int j;
    public final int k;
    public final int l;

    public class a implements yt7.c<Executor> {
        @Override // yt7.c
        public final void b(Executor executor) {
            ((ExecutorService) executor).shutdown();
        }

        @Override // yt7.c
        public final Executor create() {
            return Executors.newCachedThreadPool(vs3.d("grpc-okhttp-%d"));
        }
    }

    public static /* synthetic */ class b {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[c.values().length];
            b = iArr;
            try {
                iArr[c.PLAINTEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[c.TLS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[cm5.values().length];
            a = iArr2;
            try {
                iArr2[cm5.TLS.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[cm5.PLAINTEXT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class c {
        private static final /* synthetic */ c[] $VALUES;
        public static final c PLAINTEXT;
        public static final c TLS;

        static {
            c cVar = new c("TLS", 0);
            TLS = cVar;
            c cVar2 = new c("PLAINTEXT", 1);
            PLAINTEXT = cVar2;
            $VALUES = new c[]{cVar, cVar2};
        }

        public c() {
            throw null;
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) $VALUES.clone();
        }
    }

    public final class d implements iz4.a {
        public d() {
        }

        @Override // iz4.a
        public final int a() {
            int[] iArr = b.b;
            c cVar = hv5.this.g;
            int i = iArr[cVar.ordinal()];
            if (i == 1) {
                return 80;
            }
            if (i == 2) {
                return 443;
            }
            throw new AssertionError(cVar + " not handled");
        }
    }

    public final class e {
        public e() {
        }
    }

    public static final class f implements fm1 {
        public final pq5<Executor> b;
        public final Executor c;
        public final pq5<ScheduledExecutorService> d;
        public final ScheduledExecutorService e;
        public final g39.a f;
        public final SSLSocketFactory g;
        public final sw1 h;
        public final int i;
        public final boolean j;
        public final gt k;
        public final long l;
        public final int m;
        public final int n;
        public boolean o;

        public f(pq5 pq5Var, au7 au7Var, SSLSocketFactory sSLSocketFactory, sw1 sw1Var, int i, boolean z, long j, long j2, int i2, int i3, g39.a aVar) {
            this.b = pq5Var;
            this.c = (Executor) pq5Var.a();
            this.d = au7Var;
            this.e = (ScheduledExecutorService) au7Var.a();
            this.g = sSLSocketFactory;
            this.h = sw1Var;
            this.i = i;
            this.j = z;
            this.k = new gt(j);
            this.l = j2;
            this.m = i2;
            this.n = i3;
            o8.l(aVar, "transportTracerFactory");
            this.f = aVar;
        }

        @Override // defpackage.fm1
        public final ScheduledExecutorService A() {
            return this.e;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.o) {
                return;
            }
            this.o = true;
            this.b.b(this.c);
            this.d.b(this.e);
        }

        @Override // defpackage.fm1
        public final mw1 d0(SocketAddress socketAddress, fm1.a aVar, p94.g gVar) {
            if (this.o) {
                ah.f("The transport factory is closed.");
                return null;
            }
            gt gtVar = this.k;
            long j = gtVar.a.get();
            lv5 lv5Var = new lv5(this, (InetSocketAddress) socketAddress, aVar.a, aVar.b, aVar.c, new iv5(gtVar.new a(j)));
            if (this.j) {
                lv5Var.K = true;
                lv5Var.L = j;
                lv5Var.M = this.l;
            }
            return lv5Var;
        }
    }

    static {
        Logger.getLogger(hv5.class.getName());
        sw1 sw1Var = sw1.e;
        sw1.a aVar = new sw1.a(sw1Var);
        zj1 zj1Var = zj1.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256;
        zj1 zj1Var2 = zj1.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256;
        zj1 zj1Var3 = zj1.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384;
        zj1 zj1Var4 = zj1.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384;
        zj1 zj1Var5 = zj1.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256;
        zj1 zj1Var6 = zj1.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256;
        aVar.a(zj1Var, zj1Var2, zj1Var3, zj1Var4, zj1Var5, zj1Var6, zj1.TLS_AES_128_GCM_SHA256, zj1.TLS_AES_256_GCM_SHA384, zj1.TLS_CHACHA20_POLY1305_SHA256);
        zw8 zw8Var = zw8.TLS_1_3;
        zw8 zw8Var2 = zw8.TLS_1_2;
        aVar.c(zw8Var, zw8Var2);
        aVar.b();
        m = new sw1(aVar);
        sw1.a aVar2 = new sw1.a(sw1Var);
        aVar2.a(zj1Var, zj1Var2, zj1Var3, zj1Var4, zj1Var5, zj1Var6);
        aVar2.c(zw8Var2);
        aVar2.b();
        n = new sw1(aVar2);
        o = new au7(new a());
        EnumSet.of(xw8.MTLS, xw8.CUSTOM_MANAGERS);
    }

    public hv5(String str) {
        this.f = ov5.c instanceof ov5.a ? m : n;
        this.g = c.TLS;
        this.h = Long.MAX_VALUE;
        this.i = vs3.l;
        this.j = 65535;
        this.k = 4194304;
        this.l = Integer.MAX_VALUE;
        this.a = new iz4(str, new e(), new d());
    }
}
