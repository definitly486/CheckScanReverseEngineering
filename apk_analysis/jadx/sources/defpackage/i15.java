package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class i15 {
    public final a a;
    public final jl b;
    public final fl c;
    public final boolean d;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a MASK_MODE_ADD;
        public static final a MASK_MODE_INTERSECT;
        public static final a MASK_MODE_NONE;
        public static final a MASK_MODE_SUBTRACT;

        static {
            a aVar = new a("MASK_MODE_ADD", 0);
            MASK_MODE_ADD = aVar;
            a aVar2 = new a("MASK_MODE_SUBTRACT", 1);
            MASK_MODE_SUBTRACT = aVar2;
            a aVar3 = new a("MASK_MODE_INTERSECT", 2);
            MASK_MODE_INTERSECT = aVar3;
            a aVar4 = new a("MASK_MODE_NONE", 3);
            MASK_MODE_NONE = aVar4;
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

    public i15(a aVar, jl jlVar, fl flVar, boolean z) {
        this.a = aVar;
        this.b = jlVar;
        this.c = flVar;
        this.d = z;
    }
}
