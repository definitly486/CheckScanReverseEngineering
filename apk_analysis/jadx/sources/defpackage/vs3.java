package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.CmcdData;
import java.io.Closeable;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class vs3 {
    public static final Logger a = Logger.getLogger(vs3.class.getName());
    public static final Set<h88.a> b = Collections.unmodifiableSet(EnumSet.of(h88.a.OK, h88.a.INVALID_ARGUMENT, h88.a.NOT_FOUND, h88.a.ALREADY_EXISTS, h88.a.FAILED_PRECONDITION, h88.a.ABORTED, h88.a.OUT_OF_RANGE, h88.a.DATA_LOSS));
    public static final la5.b c;
    public static final la5.b d;
    public static final la5.f e;
    public static final la5.b f;
    public static final la5.f g;
    public static final la5.b h;
    public static final la5.b i;
    public static final la5.b j;
    public static final la5.b k;
    public static final long l;
    public static final at6 m;
    public static final io.grpc.b.C0204b<Boolean> n;
    public static final a o;
    public static final b p;
    public static final c q;
    public static final d r;

    public class a extends io.grpc.c {
    }

    public class b implements yt7.c<Executor> {
        @Override // yt7.c
        public final void b(Executor executor) {
            ((ExecutorService) executor).shutdown();
        }

        @Override // yt7.c
        public final Executor create() {
            return Executors.newCachedThreadPool(vs3.d("grpc-default-executor-%d"));
        }

        public final String toString() {
            return "grpc-default-executor";
        }
    }

    public class c implements yt7.c<ScheduledExecutorService> {
        @Override // yt7.c
        public final void b(ScheduledExecutorService scheduledExecutorService) {
            scheduledExecutorService.shutdown();
        }

        @Override // yt7.c
        public final ScheduledExecutorService create() {
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, vs3.d("grpc-timer-%d"));
            try {
                scheduledExecutorServiceNewScheduledThreadPool.getClass().getMethod("setRemoveOnCancelPolicy", Boolean.TYPE).invoke(scheduledExecutorServiceNewScheduledThreadPool, Boolean.TRUE);
            } catch (NoSuchMethodException unused) {
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                ti0.f(e2);
                return null;
            }
            return Executors.unconfigurableScheduledExecutorService(scheduledExecutorServiceNewScheduledThreadPool);
        }
    }

    public class d implements kd8<a98> {
        @Override // defpackage.kd8
        /* JADX INFO: renamed from: get */
        public final a98 get2() {
            return new a98();
        }
    }

    public class e implements em1 {
        public final /* synthetic */ io.grpc.c.a a;
        public final /* synthetic */ em1 b;

        public e(io.grpc.c.a aVar, em1 em1Var) {
            this.a = aVar;
            this.b = em1Var;
        }

        @Override // defpackage.em1
        public final cm1 b(ra5<?, ?> ra5Var, la5 la5Var, io.grpc.b bVar, io.grpc.c[] cVarArr) {
            io.grpc.b bVar2 = io.grpc.b.h;
            o8.l(bVar, "callOptions cannot be null");
            io.grpc.c cVarA = this.a.a(new io.grpc.c.b(bVar, 0, false, false), la5Var);
            o8.s(cVarArr[cVarArr.length - 1] == vs3.o, "lb tracer already assigned");
            cVarArr[cVarArr.length - 1] = cVarA;
            return this.b.b(ra5Var, la5Var, bVar, cVarArr);
        }

        @Override // defpackage.l94
        public final m94 c() {
            return this.b.c();
        }
    }

    public static final class f implements n94.a<byte[]> {
        @Override // la5.g
        public final byte[] a(Object obj) {
            return (byte[]) obj;
        }

        @Override // la5.g
        public final Object b(byte[] bArr) {
            return bArr;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'NO_ERROR' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class g {
        private static final /* synthetic */ g[] $VALUES;
        public static final g CANCEL;
        public static final g COMPRESSION_ERROR;
        public static final g CONNECT_ERROR;
        public static final g ENHANCE_YOUR_CALM;
        public static final g FLOW_CONTROL_ERROR;
        public static final g FRAME_SIZE_ERROR;
        public static final g HTTP_1_1_REQUIRED;
        public static final g INADEQUATE_SECURITY;
        public static final g INTERNAL_ERROR;
        public static final g NO_ERROR;
        public static final g PROTOCOL_ERROR;
        public static final g REFUSED_STREAM;
        public static final g SETTINGS_TIMEOUT;
        public static final g STREAM_CLOSED;
        private static final g[] codeMap;
        private final int code;
        private final h88 status;

        static {
            h88 h88Var = h88.m;
            g gVar = new g("NO_ERROR", 0, 0, h88Var);
            NO_ERROR = gVar;
            h88 h88Var2 = h88.l;
            g gVar2 = new g("PROTOCOL_ERROR", 1, 1, h88Var2);
            PROTOCOL_ERROR = gVar2;
            g gVar3 = new g("INTERNAL_ERROR", 2, 2, h88Var2);
            INTERNAL_ERROR = gVar3;
            g gVar4 = new g("FLOW_CONTROL_ERROR", 3, 3, h88Var2);
            FLOW_CONTROL_ERROR = gVar4;
            g gVar5 = new g("SETTINGS_TIMEOUT", 4, 4, h88Var2);
            SETTINGS_TIMEOUT = gVar5;
            g gVar6 = new g("STREAM_CLOSED", 5, 5, h88Var2);
            STREAM_CLOSED = gVar6;
            g gVar7 = new g("FRAME_SIZE_ERROR", 6, 6, h88Var2);
            FRAME_SIZE_ERROR = gVar7;
            g gVar8 = new g("REFUSED_STREAM", 7, 7, h88Var);
            REFUSED_STREAM = gVar8;
            g gVar9 = new g("CANCEL", 8, 8, h88.f);
            CANCEL = gVar9;
            g gVar10 = new g("COMPRESSION_ERROR", 9, 9, h88Var2);
            COMPRESSION_ERROR = gVar10;
            g gVar11 = new g("CONNECT_ERROR", 10, 10, h88Var2);
            CONNECT_ERROR = gVar11;
            g gVar12 = new g("ENHANCE_YOUR_CALM", 11, 11, h88.j.h("Bandwidth exhausted"));
            ENHANCE_YOUR_CALM = gVar12;
            g gVar13 = new g("INADEQUATE_SECURITY", 12, 12, h88.i.h("Permission denied as protocol is not secure enough to call"));
            INADEQUATE_SECURITY = gVar13;
            g gVar14 = new g("HTTP_1_1_REQUIRED", 13, 13, h88.g);
            HTTP_1_1_REQUIRED = gVar14;
            $VALUES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6, gVar7, gVar8, gVar9, gVar10, gVar11, gVar12, gVar13, gVar14};
            g[] gVarArrValues = values();
            g[] gVarArr = new g[gVarArrValues[gVarArrValues.length - 1].code + 1];
            for (g gVar15 : gVarArrValues) {
                gVarArr[gVar15.code] = gVar15;
            }
            codeMap = gVarArr;
        }

        public g(String str, int i, int i2, h88 h88Var) {
            super(str, i);
            this.code = i2;
            String str2 = "HTTP/2 error code: " + name();
            this.status = h88Var.h(h88Var.b != null ? me0.d(fh.d(str2, " ("), h88Var.b, ")") : str2);
        }

        public static g a(long j) {
            g[] gVarArr = codeMap;
            if (j >= gVarArr.length || j < 0) {
                return null;
            }
            return gVarArr[(int) j];
        }

        public static h88 d(long j) {
            g gVarA = a(j);
            if (gVarA != null) {
                return gVarA.status;
            }
            return h88.d(INTERNAL_ERROR.status.a.d()).h("Unrecognized HTTP/2 error code: " + j);
        }

        public static g valueOf(String str) {
            return (g) Enum.valueOf(g.class, str);
        }

        public static g[] values() {
            return (g[]) $VALUES.clone();
        }
    }

    public static class h implements la5.c<Long> {
        @Override // la5.c
        public final String a(Long l) {
            long jMax = Math.max(1L, l.longValue());
            if (jMax < 100000000) {
                return jMax + "n";
            }
            if (jMax < 100000000000L) {
                return k2.b(jMax / 1000, "u", new StringBuilder());
            }
            if (jMax < 100000000000000L) {
                return k2.b(jMax / 1000000, CmcdData.OBJECT_TYPE_MANIFEST, new StringBuilder());
            }
            if (jMax < 100000000000000000L) {
                return k2.b(jMax / C.NANOS_PER_SECOND, ExifInterface.LATITUDE_SOUTH, new StringBuilder());
            }
            if (jMax < 6000000000000000000L) {
                return k2.b(jMax / 60000000000L, "M", new StringBuilder());
            }
            return k2.b(jMax / 3600000000000L, "H", new StringBuilder());
        }

        @Override // la5.c
        public final Long b(String str) {
            o8.f(str.length() > 0, "empty timeout");
            o8.f(str.length() <= 9, "bad timeout format");
            long j = Long.parseLong(str.substring(0, str.length() - 1));
            char cCharAt = str.charAt(str.length() - 1);
            if (cCharAt == 'H') {
                return Long.valueOf(TimeUnit.HOURS.toNanos(j));
            }
            if (cCharAt == 'M') {
                return Long.valueOf(TimeUnit.MINUTES.toNanos(j));
            }
            if (cCharAt == 'S') {
                return Long.valueOf(TimeUnit.SECONDS.toNanos(j));
            }
            if (cCharAt == 'u') {
                return Long.valueOf(TimeUnit.MICROSECONDS.toNanos(j));
            }
            if (cCharAt == 'm') {
                return Long.valueOf(TimeUnit.MILLISECONDS.toNanos(j));
            }
            if (cCharAt == 'n') {
                return Long.valueOf(j);
            }
            defpackage.d.c(cCharAt, "Invalid timeout unit: ");
            return null;
        }
    }

    static {
        Charset.forName("US-ASCII");
        c = new la5.b("grpc-timeout", new h());
        la5.a aVar = la5.d;
        d = new la5.b("grpc-encoding", aVar);
        e = n94.a("grpc-accept-encoding", new f());
        f = new la5.b("content-encoding", aVar);
        g = n94.a("accept-encoding", new f());
        h = new la5.b("content-length", aVar);
        i = new la5.b("content-type", aVar);
        j = new la5.b("te", aVar);
        k = new la5.b("user-agent", aVar);
        k68.a(',');
        y91.n.d.getClass();
        l = 20000000000L;
        m = new at6();
        n = new io.grpc.b.C0204b<>("io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER");
        o = new a();
        p = new b();
        q = new c();
        r = new d();
    }

    public static URI a(String str) {
        String str2;
        o8.l(str, "authority");
        try {
            str2 = str;
            try {
                return new URI(null, str2, null, null, null);
            } catch (URISyntaxException e2) {
                e = e2;
                cc.e("Invalid authority: ".concat(str2), e);
                return null;
            }
        } catch (URISyntaxException e3) {
            e = e3;
            str2 = str;
        }
    }

    public static void b(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException e2) {
            a.log(Level.WARNING, "exception caught in closeQuietly", (Throwable) e2);
        }
    }

    public static io.grpc.c[] c(io.grpc.b bVar, la5 la5Var, int i2, boolean z, boolean z2) {
        List<io.grpc.c.a> list = bVar.d;
        int size = list.size();
        io.grpc.c[] cVarArr = new io.grpc.c[size + 1];
        io.grpc.b bVar2 = io.grpc.b.h;
        io.grpc.c.b bVar3 = new io.grpc.c.b(bVar, i2, z, z2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            cVarArr[i3] = list.get(i3).a(bVar3, la5Var);
        }
        cVarArr[size] = o;
        return cVarArr;
    }

    public static mt8 d(String str) {
        Boolean bool = Boolean.TRUE;
        String.format(Locale.ROOT, str, 0);
        return new mt8(Executors.defaultThreadFactory(), str, new AtomicLong(0L), bool);
    }

    public static em1 e(io.grpc.h.g gVar, boolean z) {
        io.grpc.h.j jVar = gVar.a;
        h88 h88Var = gVar.c;
        nz4 nz4VarA = jVar != null ? ((z29) jVar.e()).a() : null;
        if (nz4VarA != null) {
            io.grpc.c.a aVar = gVar.b;
            return aVar == null ? nz4VarA : new e(aVar, nz4VarA);
        }
        if (!h88Var.f()) {
            if (gVar.d) {
                return new j53(g(h88Var), dm1.a.DROPPED);
            }
            if (!z) {
                return new j53(g(h88Var), dm1.a.PROCESSED);
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0029  */
    /* JADX WARN: Code duplicated, block: B:25:0x0035  */
    public static h88 f(int i2) {
        h88.a aVar;
        if ((i2 >= 100 && i2 < 200) || i2 == 400) {
            aVar = h88.a.INTERNAL;
        } else if (i2 == 401) {
            aVar = h88.a.UNAUTHENTICATED;
        } else if (i2 == 403) {
            aVar = h88.a.PERMISSION_DENIED;
        } else if (i2 == 404) {
            aVar = h88.a.UNIMPLEMENTED;
        } else if (i2 == 429) {
            aVar = h88.a.UNAVAILABLE;
        } else if (i2 != 431) {
            switch (i2) {
                case TypedValues.PositionType.TYPE_DRAWPATH /* 502 */:
                case TypedValues.PositionType.TYPE_PERCENT_WIDTH /* 503 */:
                case TypedValues.PositionType.TYPE_PERCENT_HEIGHT /* 504 */:
                    aVar = h88.a.UNAVAILABLE;
                    break;
                default:
                    aVar = h88.a.UNKNOWN;
                    break;
            }
        } else {
            aVar = h88.a.INTERNAL;
        }
        return aVar.a().h("HTTP status code " + i2);
    }

    public static h88 g(h88 h88Var) {
        o8.e(h88Var != null);
        if (!b.contains(h88Var.a)) {
            return h88Var;
        }
        return h88.l.h("Inappropriate status code from control plane: " + h88Var.a + " " + h88Var.b).g(h88Var.c);
    }

    public static h88 h(h88.a aVar, String str, h88 h88Var) {
        String string;
        h88 h88VarA = aVar.a();
        StringBuilder sbD = fh.d(str, ": ");
        String str2 = h88Var.b;
        h88.a aVar2 = h88Var.a;
        if (str2 == null) {
            string = aVar2.toString();
        } else {
            string = aVar2 + ": " + h88Var.b;
        }
        sbD.append(string);
        return h88VarA.h(sbD.toString()).g(h88Var.c);
    }
}
