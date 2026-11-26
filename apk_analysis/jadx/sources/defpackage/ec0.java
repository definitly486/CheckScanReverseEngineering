package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class ec0 {
    private static final /* synthetic */ ec0[] $VALUES;
    public static final ec0 Forbidden;
    public static final ec0 Ignored;
    public static final ec0 NotFound;
    public static final ec0 Unauthorized;

    static {
        ec0 ec0Var = new ec0("Ignored", 0);
        Ignored = ec0Var;
        ec0 ec0Var2 = new ec0("Unauthorized", 1);
        Unauthorized = ec0Var2;
        ec0 ec0Var3 = new ec0("Forbidden", 2);
        Forbidden = ec0Var3;
        ec0 ec0Var4 = new ec0("NotFound", 3);
        NotFound = ec0Var4;
        $VALUES = new ec0[]{ec0Var, ec0Var2, ec0Var3, ec0Var4};
    }

    public ec0() {
        throw null;
    }

    public static ec0 valueOf(String str) {
        return (ec0) Enum.valueOf(ec0.class, str);
    }

    public static ec0[] values() {
        return (ec0[]) $VALUES.clone();
    }
}
