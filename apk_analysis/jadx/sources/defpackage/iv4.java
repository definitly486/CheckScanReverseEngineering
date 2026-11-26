package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class iv4 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ iv4[] $VALUES;
    public static final iv4 AND;
    public static final iv4 OR;

    static {
        iv4 iv4Var = new iv4("AND", 0);
        AND = iv4Var;
        iv4 iv4Var2 = new iv4("OR", 1);
        OR = iv4Var2;
        iv4[] iv4VarArr = {iv4Var, iv4Var2};
        $VALUES = iv4VarArr;
        $ENTRIES = new i03(iv4VarArr);
    }

    public iv4() {
        throw null;
    }

    public static iv4 valueOf(String str) {
        return (iv4) Enum.valueOf(iv4.class, str);
    }

    public static iv4[] values() {
        return (iv4[]) $VALUES.clone();
    }
}
