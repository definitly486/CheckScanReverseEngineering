package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class cg4 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ cg4[] $VALUES;
    public static final cg4 Factory;
    public static final cg4 Scoped;
    public static final cg4 Singleton;

    static {
        cg4 cg4Var = new cg4("Singleton", 0);
        Singleton = cg4Var;
        cg4 cg4Var2 = new cg4("Factory", 1);
        Factory = cg4Var2;
        cg4 cg4Var3 = new cg4("Scoped", 2);
        Scoped = cg4Var3;
        cg4[] cg4VarArr = {cg4Var, cg4Var2, cg4Var3};
        $VALUES = cg4VarArr;
        $ENTRIES = new i03(cg4VarArr);
    }

    public cg4() {
        throw null;
    }

    public static cg4 valueOf(String str) {
        return (cg4) Enum.valueOf(cg4.class, str);
    }

    public static cg4[] values() {
        return (cg4[]) $VALUES.clone();
    }
}
