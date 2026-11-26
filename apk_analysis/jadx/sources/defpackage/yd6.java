package defpackage;

import androidx.compose.material3.internal.CalendarModelKt;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public final class yd6 {
    public static final Object a = new Object();
    public static final UUID b;
    public static UUID c;
    public static volatile qb6 d;
    public static long e;
    public static long f;
    public static volatile boolean g;
    public static volatile boolean h;
    public static volatile na6 i;

    static {
        UUID uuid = new UUID(0L, 0L);
        b = uuid;
        c = uuid;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0055 A[Catch: all -> 0x001d, TryCatch #0 {all -> 0x001d, blocks: (B:4:0x0003, B:6:0x000f, B:9:0x0014, B:11:0x0018, B:15:0x0024, B:17:0x002d, B:22:0x003a, B:24:0x0040, B:30:0x004e, B:40:0x0074, B:31:0x0051, B:33:0x0055, B:34:0x005c, B:14:0x0020, B:36:0x0069, B:38:0x0071), top: B:49:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x005c A[Catch: all -> 0x001d, TryCatch #0 {all -> 0x001d, blocks: (B:4:0x0003, B:6:0x000f, B:9:0x0014, B:11:0x0018, B:15:0x0024, B:17:0x002d, B:22:0x003a, B:24:0x0040, B:30:0x004e, B:40:0x0074, B:31:0x0051, B:33:0x0055, B:34:0x005c, B:14:0x0020, B:36:0x0069, B:38:0x0071), top: B:49:0x0003 }] */
    public static UUID a() {
        boolean z;
        UUID uuid;
        na6 na6Var;
        synchronized (a) {
            try {
                UUID uuid2 = c;
                UUID uuid3 = b;
                UUID uuidA = null;
                z = false;
                if (aa4.e(uuid2, uuid3) || g) {
                    uuid = aa4.e(c, uuid3) ? null : c;
                } else {
                    qb6 qb6Var = d;
                    long jCurrentTimeMillis = qb6Var != null ? qb6Var.currentTimeMillis() : System.currentTimeMillis();
                    long j = f;
                    if (j > 0 && j + 1800000 <= jCurrentTimeMillis) {
                        if (h) {
                            c = uuid3;
                            e = 0L;
                            f = 0L;
                        } else {
                            uuidA = gu8.a();
                            c = uuidA;
                            e = jCurrentTimeMillis;
                            f = jCurrentTimeMillis;
                        }
                        uuid = uuidA;
                        z = true;
                    } else {
                        long j2 = e;
                        if (j2 > 0 && j2 + CalendarModelKt.MillisecondsIn24Hours <= jCurrentTimeMillis) {
                            if (h) {
                                c = uuid3;
                                e = 0L;
                                f = 0L;
                            } else {
                                uuidA = gu8.a();
                                c = uuidA;
                                e = jCurrentTimeMillis;
                                f = jCurrentTimeMillis;
                            }
                            uuid = uuidA;
                            z = true;
                        } else {
                            uuid = c;
                        }
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z && (na6Var = i) != null) {
            na6Var.invoke();
        }
        return uuid;
    }

    public static void b() {
        boolean z;
        na6 na6Var;
        synchronized (a) {
            try {
                z = false;
                if (!g && !h && !aa4.e(c, b)) {
                    qb6 qb6Var = d;
                    long jCurrentTimeMillis = qb6Var != null ? qb6Var.currentTimeMillis() : System.currentTimeMillis();
                    long j = f;
                    if (j > 0 && j + 1800000 <= jCurrentTimeMillis) {
                        c = gu8.a();
                        e = jCurrentTimeMillis;
                        f = jCurrentTimeMillis;
                        z = true;
                    } else {
                        f = jCurrentTimeMillis;
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z || (na6Var = i) == null) {
            return;
        }
        na6Var.invoke();
    }
}
