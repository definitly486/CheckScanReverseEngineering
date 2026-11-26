package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class qs6 {
    private static final /* synthetic */ qs6[] $VALUES;
    public static final qs6 EDITIONS;
    public static final qs6 PROTO2;
    public static final qs6 PROTO3;

    static {
        qs6 qs6Var = new qs6("PROTO2", 0);
        PROTO2 = qs6Var;
        qs6 qs6Var2 = new qs6("PROTO3", 1);
        PROTO3 = qs6Var2;
        qs6 qs6Var3 = new qs6("EDITIONS", 2);
        EDITIONS = qs6Var3;
        $VALUES = new qs6[]{qs6Var, qs6Var2, qs6Var3};
    }

    public qs6() {
        throw null;
    }

    public static qs6 valueOf(String str) {
        return (qs6) Enum.valueOf(qs6.class, str);
    }

    public static qs6[] values() {
        return (qs6[]) $VALUES.clone();
    }
}
