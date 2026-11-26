package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class n00 {
    private static final /* synthetic */ n00[] $VALUES;
    public static final n00 BUFFER;
    public static final n00 DROP;
    public static final n00 ERROR;
    public static final n00 LATEST;
    public static final n00 MISSING;

    static {
        n00 n00Var = new n00("MISSING", 0);
        MISSING = n00Var;
        n00 n00Var2 = new n00("ERROR", 1);
        ERROR = n00Var2;
        n00 n00Var3 = new n00("BUFFER", 2);
        BUFFER = n00Var3;
        n00 n00Var4 = new n00("DROP", 3);
        DROP = n00Var4;
        n00 n00Var5 = new n00("LATEST", 4);
        LATEST = n00Var5;
        $VALUES = new n00[]{n00Var, n00Var2, n00Var3, n00Var4, n00Var5};
    }

    public n00() {
        throw null;
    }

    public static n00 valueOf(String str) {
        return (n00) Enum.valueOf(n00.class, str);
    }

    public static n00[] values() {
        return (n00[]) $VALUES.clone();
    }
}
