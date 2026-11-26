package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class z79 {
    public final a a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a Error;
        public static final a Forbidden;
        public static final a Success;

        static {
            a aVar = new a("Success", 0);
            Success = aVar;
            a aVar2 = new a("Forbidden", 1);
            Forbidden = aVar2;
            a aVar3 = new a("Error", 2);
            Error = aVar3;
            $VALUES = new a[]{aVar, aVar2, aVar3};
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

    public z79(a aVar) {
        aVar.getClass();
        this.a = aVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof z79) && this.a == ((z79) obj).a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "UpdateCityResult(result=" + this.a + ")";
    }
}
