package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class n91 {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a DEBUG;
        public static final a ERROR;
        public static final a INFO;
        public static final a WARNING;

        static {
            a aVar = new a("DEBUG", 0);
            DEBUG = aVar;
            a aVar2 = new a("INFO", 1);
            INFO = aVar2;
            a aVar3 = new a("WARNING", 2);
            WARNING = aVar3;
            a aVar4 = new a("ERROR", 3);
            ERROR = aVar4;
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

    public abstract void a(a aVar, String str);

    public abstract void b(a aVar, String str, Object... objArr);
}
