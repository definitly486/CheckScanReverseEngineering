package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class s03 {
    private static final /* synthetic */ s03[] $VALUES;
    public static final s03 BOUNDARY;
    public static final s03 END;
    public static final s03 IMMEDIATE;

    static {
        s03 s03Var = new s03("IMMEDIATE", 0);
        IMMEDIATE = s03Var;
        s03 s03Var2 = new s03("BOUNDARY", 1);
        BOUNDARY = s03Var2;
        s03 s03Var3 = new s03("END", 2);
        END = s03Var3;
        $VALUES = new s03[]{s03Var, s03Var2, s03Var3};
    }

    public s03() {
        throw null;
    }

    public static s03 valueOf(String str) {
        return (s03) Enum.valueOf(s03.class, str);
    }

    public static s03[] values() {
        return (s03[]) $VALUES.clone();
    }
}
