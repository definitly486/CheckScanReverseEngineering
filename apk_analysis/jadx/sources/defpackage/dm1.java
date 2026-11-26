package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface dm1 extends j98 {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a DROPPED;
        public static final a MISCARRIED;
        public static final a PROCESSED;
        public static final a REFUSED;

        static {
            a aVar = new a("PROCESSED", 0);
            PROCESSED = aVar;
            a aVar2 = new a("REFUSED", 1);
            REFUSED = aVar2;
            a aVar3 = new a("DROPPED", 2);
            DROPPED = aVar3;
            a aVar4 = new a("MISCARRIED", 3);
            MISCARRIED = aVar4;
            $VALUES = new a[]{aVar, aVar2, aVar3, aVar4};
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

    void b(la5 la5Var);

    void c(h88 h88Var, a aVar, la5 la5Var);
}
