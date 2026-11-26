package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class aa5 implements dy1 {
    public final a a;
    public final boolean b;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a ADD;
        public static final a EXCLUDE_INTERSECTIONS;
        public static final a INTERSECT;
        public static final a MERGE;
        public static final a SUBTRACT;

        static {
            a aVar = new a("MERGE", 0);
            MERGE = aVar;
            a aVar2 = new a("ADD", 1);
            ADD = aVar2;
            a aVar3 = new a("SUBTRACT", 2);
            SUBTRACT = aVar3;
            a aVar4 = new a("INTERSECT", 3);
            INTERSECT = aVar4;
            a aVar5 = new a("EXCLUDE_INTERSECTIONS", 4);
            EXCLUDE_INTERSECTIONS = aVar5;
            $VALUES = new a[]{aVar, aVar2, aVar3, aVar4, aVar5};
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

    public aa5(String str, a aVar, boolean z) {
        this.a = aVar;
        this.b = z;
    }

    @Override // defpackage.dy1
    public final sx1 a(ox4 ox4Var, nw4 nw4Var, nd0 nd0Var) {
        if (ox4Var.n.a.contains(px4.MergePathsApi19)) {
            return new ba5(this);
        }
        gv4.b("Animation contains merge paths but they are disabled.");
        return null;
    }

    public final String toString() {
        return "MergePaths{mode=" + this.a + '}';
    }
}
