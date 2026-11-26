package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class yk1 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ yk1[] $VALUES;
    public static final yk1 ALL_JSON_OBJECTS;
    public static final yk1 NONE;
    public static final yk1 POLYMORPHIC;

    static {
        yk1 yk1Var = new yk1("NONE", 0);
        NONE = yk1Var;
        yk1 yk1Var2 = new yk1("ALL_JSON_OBJECTS", 1);
        ALL_JSON_OBJECTS = yk1Var2;
        yk1 yk1Var3 = new yk1("POLYMORPHIC", 2);
        POLYMORPHIC = yk1Var3;
        yk1[] yk1VarArr = {yk1Var, yk1Var2, yk1Var3};
        $VALUES = yk1VarArr;
        $ENTRIES = new i03(yk1VarArr);
    }

    public yk1() {
        throw null;
    }

    public static yk1 valueOf(String str) {
        return (yk1) Enum.valueOf(yk1.class, str);
    }

    public static yk1[] values() {
        return (yk1[]) $VALUES.clone();
    }
}
