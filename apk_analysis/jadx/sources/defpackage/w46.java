package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class w46 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ w46[] $VALUES;
    public static final w46 ALWAYS;
    public static final w46 IDENTIFIED_ONLY;
    public static final w46 NEVER;

    static {
        w46 w46Var = new w46("NEVER", 0);
        NEVER = w46Var;
        w46 w46Var2 = new w46("ALWAYS", 1);
        ALWAYS = w46Var2;
        w46 w46Var3 = new w46("IDENTIFIED_ONLY", 2);
        IDENTIFIED_ONLY = w46Var3;
        w46[] w46VarArr = {w46Var, w46Var2, w46Var3};
        $VALUES = w46VarArr;
        $ENTRIES = new i03(w46VarArr);
    }

    public w46() {
        throw null;
    }

    public static w46 valueOf(String str) {
        return (w46) Enum.valueOf(w46.class, str);
    }

    public static w46[] values() {
        return (w46[]) $VALUES.clone();
    }
}
