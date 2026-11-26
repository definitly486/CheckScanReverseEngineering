package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class i69 {
    private static final /* synthetic */ i69[] $VALUES;
    public static final i69 CLOSED;
    public static final i69 SHOWN;

    static {
        i69 i69Var = new i69("SHOWN", 0);
        SHOWN = i69Var;
        i69 i69Var2 = new i69("CLOSED", 1);
        CLOSED = i69Var2;
        $VALUES = new i69[]{i69Var, i69Var2};
    }

    public i69() {
        throw null;
    }

    public static i69 valueOf(String str) {
        return (i69) Enum.valueOf(i69.class, str);
    }

    public static i69[] values() {
        return (i69[]) $VALUES.clone();
    }
}
