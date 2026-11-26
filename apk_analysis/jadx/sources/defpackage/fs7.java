package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class fs7 implements dy1 {
    public final a a;
    public final dl b;
    public final dl c;
    public final dl d;
    public final boolean e;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a INDIVIDUALLY;
        public static final a SIMULTANEOUSLY;

        static {
            a aVar = new a("SIMULTANEOUSLY", 0);
            SIMULTANEOUSLY = aVar;
            a aVar2 = new a("INDIVIDUALLY", 1);
            INDIVIDUALLY = aVar2;
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

    public fs7(String str, a aVar, dl dlVar, dl dlVar2, dl dlVar3, boolean z) {
        this.a = aVar;
        this.b = dlVar;
        this.c = dlVar2;
        this.d = dlVar3;
        this.e = z;
    }

    @Override // defpackage.dy1
    public final sx1 a(ox4 ox4Var, nw4 nw4Var, nd0 nd0Var) {
        return new j39(nd0Var, this);
    }

    public final String toString() {
        return "Trim Path: {start: " + this.b + ", end: " + this.c + ", offset: " + this.d + "}";
    }
}
