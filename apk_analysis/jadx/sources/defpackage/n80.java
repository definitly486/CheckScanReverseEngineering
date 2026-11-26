package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class n80 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ n80[] $VALUES;
    public static final n80 BREATH;
    public static final n80 HEARTBEAT;
    public static final n80 NONE;
    public static final n80 ROTATE;
    public static final n80 SHAKE;

    static {
        n80 n80Var = new n80("NONE", 0);
        NONE = n80Var;
        n80 n80Var2 = new n80("HEARTBEAT", 1);
        HEARTBEAT = n80Var2;
        n80 n80Var3 = new n80("SHAKE", 2);
        SHAKE = n80Var3;
        n80 n80Var4 = new n80("BREATH", 3);
        BREATH = n80Var4;
        n80 n80Var5 = new n80("ROTATE", 4);
        ROTATE = n80Var5;
        n80[] n80VarArr = {n80Var, n80Var2, n80Var3, n80Var4, n80Var5};
        $VALUES = n80VarArr;
        $ENTRIES = new i03(n80VarArr);
    }

    public n80() {
        throw null;
    }

    public static n80 valueOf(String str) {
        return (n80) Enum.valueOf(n80.class, str);
    }

    public static n80[] values() {
        return (n80[]) $VALUES.clone();
    }
}
