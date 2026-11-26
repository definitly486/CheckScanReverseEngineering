package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class ba3 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ ba3[] $VALUES;
    public static final ba3 BOTTOM_UP;
    public static final ba3 TOP_DOWN;

    static {
        ba3 ba3Var = new ba3("TOP_DOWN", 0);
        TOP_DOWN = ba3Var;
        ba3 ba3Var2 = new ba3("BOTTOM_UP", 1);
        BOTTOM_UP = ba3Var2;
        ba3[] ba3VarArr = {ba3Var, ba3Var2};
        $VALUES = ba3VarArr;
        $ENTRIES = new i03(ba3VarArr);
    }

    public ba3() {
        throw null;
    }

    public static ba3 valueOf(String str) {
        return (ba3) Enum.valueOf(ba3.class, str);
    }

    public static ba3[] values() {
        return (ba3[]) $VALUES.clone();
    }
}
