package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class h16 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ h16[] $VALUES;
    public static final h16 NONE;
    public static final h16 SPACE;
    public static final h16 ZERO;

    static {
        h16 h16Var = new h16("NONE", 0);
        NONE = h16Var;
        h16 h16Var2 = new h16("ZERO", 1);
        ZERO = h16Var2;
        h16 h16Var3 = new h16("SPACE", 2);
        SPACE = h16Var3;
        h16[] h16VarArr = {h16Var, h16Var2, h16Var3};
        $VALUES = h16VarArr;
        $ENTRIES = new i03(h16VarArr);
    }

    public h16() {
        throw null;
    }

    public static h16 valueOf(String str) {
        return (h16) Enum.valueOf(h16.class, str);
    }

    public static h16[] values() {
        return (h16[]) $VALUES.clone();
    }
}
