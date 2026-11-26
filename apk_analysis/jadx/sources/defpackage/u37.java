package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class u37 {
    private static final /* synthetic */ u37[] $VALUES;
    public static final u37 GET;
    public static final u37 POST;

    static {
        u37 u37Var = new u37("POST", 0);
        POST = u37Var;
        u37 u37Var2 = new u37("GET", 1);
        GET = u37Var2;
        $VALUES = new u37[]{u37Var, u37Var2};
    }

    public u37() {
        throw null;
    }

    public static u37 valueOf(String str) {
        return (u37) Enum.valueOf(u37.class, str);
    }

    public static u37[] values() {
        return (u37[]) $VALUES.clone();
    }
}
