package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class u98 {
    private static final /* synthetic */ u98[] $VALUES;
    public static final u98 LEGACY_STRICT;
    public static final u98 LENIENT;
    public static final u98 STRICT;

    static {
        u98 u98Var = new u98("LENIENT", 0);
        LENIENT = u98Var;
        u98 u98Var2 = new u98("LEGACY_STRICT", 1);
        LEGACY_STRICT = u98Var2;
        u98 u98Var3 = new u98("STRICT", 2);
        STRICT = u98Var3;
        $VALUES = new u98[]{u98Var, u98Var2, u98Var3};
    }

    public u98() {
        throw null;
    }

    public static u98 valueOf(String str) {
        return (u98) Enum.valueOf(u98.class, str);
    }

    public static u98[] values() {
        return (u98[]) $VALUES.clone();
    }
}
