package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class uo4 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ uo4[] $VALUES;
    public static final uo4 DEBUG;
    public static final uo4 ERROR;
    public static final uo4 INFO;
    public static final uo4 NONE;
    public static final uo4 WARNING;

    static {
        uo4 uo4Var = new uo4("DEBUG", 0);
        DEBUG = uo4Var;
        uo4 uo4Var2 = new uo4("INFO", 1);
        INFO = uo4Var2;
        uo4 uo4Var3 = new uo4("WARNING", 2);
        WARNING = uo4Var3;
        uo4 uo4Var4 = new uo4("ERROR", 3);
        ERROR = uo4Var4;
        uo4 uo4Var5 = new uo4("NONE", 4);
        NONE = uo4Var5;
        uo4[] uo4VarArr = {uo4Var, uo4Var2, uo4Var3, uo4Var4, uo4Var5};
        $VALUES = uo4VarArr;
        $ENTRIES = new i03(uo4VarArr);
    }

    public uo4() {
        throw null;
    }

    public static uo4 valueOf(String str) {
        return (uo4) Enum.valueOf(uo4.class, str);
    }

    public static uo4[] values() {
        return (uo4[]) $VALUES.clone();
    }
}
