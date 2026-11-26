package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class k80 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ k80[] $VALUES;
    public static final k80 BOTTOM;
    public static final k80 END;
    public static final k80 START;
    public static final k80 TOP;

    static {
        k80 k80Var = new k80("START", 0);
        START = k80Var;
        k80 k80Var2 = new k80("END", 1);
        END = k80Var2;
        k80 k80Var3 = new k80("TOP", 2);
        TOP = k80Var3;
        k80 k80Var4 = new k80("BOTTOM", 3);
        BOTTOM = k80Var4;
        k80[] k80VarArr = {k80Var, k80Var2, k80Var3, k80Var4};
        $VALUES = k80VarArr;
        $ENTRIES = new i03(k80VarArr);
    }

    public k80() {
        throw null;
    }

    public static k80 valueOf(String str) {
        return (k80) Enum.valueOf(k80.class, str);
    }

    public static k80[] values() {
        return (k80[]) $VALUES.clone();
    }
}
