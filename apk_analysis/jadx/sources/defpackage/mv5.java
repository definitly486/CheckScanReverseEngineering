package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.EnumMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class mv5 {
    public final Logger a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a INBOUND;
        public static final a OUTBOUND;

        static {
            a aVar = new a("INBOUND", 0);
            INBOUND = aVar;
            a aVar2 = new a("OUTBOUND", 1);
            OUTBOUND = aVar2;
            $VALUES = new a[]{aVar, aVar2};
        }

        public a() {
            throw null;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    public enum b {
        HEADER_TABLE_SIZE(1),
        ENABLE_PUSH(2),
        MAX_CONCURRENT_STREAMS(4),
        MAX_FRAME_SIZE(5),
        MAX_HEADER_LIST_SIZE(6),
        INITIAL_WINDOW_SIZE(7);

        private final int bit;

        b(int i) {
            this.bit = i;
        }

        public final int a() {
            return this.bit;
        }
    }

    public mv5() {
        Level level = Level.FINE;
        Logger logger = Logger.getLogger(lv5.class.getName());
        o8.l(level, FirebaseAnalytics.Param.LEVEL);
        o8.l(logger, "logger");
        this.a = logger;
    }

    public static String h(bu0 bu0Var) {
        long j = bu0Var.c;
        if (j <= 64) {
            return bu0Var.u0().g();
        }
        return bu0Var.x0((int) Math.min(j, 64L)).g() + "...";
    }

    public final boolean a() {
        return this.a.isLoggable(Level.FINE);
    }

    public final void b(a aVar, int i, bu0 bu0Var, int i2, boolean z) {
        if (a()) {
            this.a.log(Level.FINE, aVar + " DATA: streamId=" + i + " endStream=" + z + " length=" + i2 + " bytes=" + h(bu0Var));
        }
    }

    public final void c(a aVar, int i, q03 q03Var, gx0 gx0Var) {
        if (a()) {
            Level level = Level.FINE;
            StringBuilder sb = new StringBuilder();
            sb.append(aVar);
            sb.append(" GO_AWAY: lastStreamId=");
            sb.append(i);
            sb.append(" errorCode=");
            sb.append(q03Var);
            sb.append(" length=");
            sb.append(gx0Var.f());
            sb.append(" bytes=");
            bu0 bu0Var = new bu0();
            bu0Var.z0(gx0Var);
            sb.append(h(bu0Var));
            this.a.log(level, sb.toString());
        }
    }

    public final void d(a aVar, long j) {
        if (a()) {
            this.a.log(Level.FINE, aVar + " PING: ack=false bytes=" + j);
        }
    }

    public final void e(a aVar, int i, q03 q03Var) {
        if (a()) {
            this.a.log(Level.FINE, aVar + " RST_STREAM: streamId=" + i + " errorCode=" + q03Var);
        }
    }

    public final void f(a aVar, pr7 pr7Var) {
        if (a()) {
            Level level = Level.FINE;
            StringBuilder sb = new StringBuilder();
            sb.append(aVar);
            sb.append(" SETTINGS: ack=false settings=");
            EnumMap enumMap = new EnumMap(b.class);
            for (b bVar : b.values()) {
                if (((1 << bVar.a()) & pr7Var.a) != 0) {
                    enumMap.put(bVar, Integer.valueOf(pr7Var.b[bVar.a()]));
                }
            }
            sb.append(enumMap.toString());
            this.a.log(level, sb.toString());
        }
    }

    public final void g(a aVar, int i, long j) {
        if (a()) {
            this.a.log(Level.FINE, aVar + " WINDOW_UPDATE: streamId=" + i + " windowSizeIncrement=" + j);
        }
    }
}
