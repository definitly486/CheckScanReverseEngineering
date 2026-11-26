package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class n08 implements xl3<c18, dt6> {
    private static final /* synthetic */ n08[] $VALUES;
    public static final n08 INSTANCE;

    static {
        n08 n08Var = new n08("INSTANCE", 0);
        INSTANCE = n08Var;
        $VALUES = new n08[]{n08Var};
    }

    public n08() {
        throw null;
    }

    public static n08 valueOf(String str) {
        return (n08) Enum.valueOf(n08.class, str);
    }

    public static n08[] values() {
        return (n08[]) $VALUES.clone();
    }

    @Override // defpackage.xl3
    public final dt6 apply(c18 c18Var) {
        return new h18(c18Var);
    }
}
