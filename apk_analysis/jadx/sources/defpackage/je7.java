package defpackage;

import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class je7 {

    public static abstract class a {
        public abstract long a();

        public abstract Set<b> b();

        public abstract long c();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {
        private static final /* synthetic */ b[] $VALUES;
        public static final b DEVICE_CHARGING;
        public static final b DEVICE_IDLE;
        public static final b NETWORK_UNMETERED;

        static {
            b bVar = new b("NETWORK_UNMETERED", 0);
            NETWORK_UNMETERED = bVar;
            b bVar2 = new b("DEVICE_IDLE", 1);
            DEVICE_IDLE = bVar2;
            b bVar3 = new b("DEVICE_CHARGING", 2);
            DEVICE_CHARGING = bVar3;
            $VALUES = new b[]{bVar, bVar2, bVar3};
        }

        public b() {
            throw null;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }
    }

    public abstract hm1 a();

    public final long b(ig6 ig6Var, long j, int i) {
        long time = j - a().getTime();
        a aVar = c().get(ig6Var);
        long jA = aVar.a();
        int i2 = i - 1;
        return Math.min(Math.max((long) (Math.pow(3.0d, i2) * jA * Math.max(1.0d, Math.log(10000.0d) / Math.log((jA > 1 ? jA : 2L) * ((long) i2)))), time), aVar.c());
    }

    public abstract Map<ig6, a> c();
}
