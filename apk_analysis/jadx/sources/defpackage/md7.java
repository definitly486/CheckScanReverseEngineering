package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class md7 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ md7[] $VALUES;
    public static final md7 FILL;
    public static final md7 FIT;

    static {
        md7 md7Var = new md7("FILL", 0);
        FILL = md7Var;
        md7 md7Var2 = new md7("FIT", 1);
        FIT = md7Var2;
        md7[] md7VarArr = {md7Var, md7Var2};
        $VALUES = md7VarArr;
        $ENTRIES = new i03(md7VarArr);
    }

    public md7() {
        throw null;
    }

    public static md7 valueOf(String str) {
        return (md7) Enum.valueOf(md7.class, str);
    }

    public static md7[] values() {
        return (md7[]) $VALUES.clone();
    }
}
