package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class p39 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ p39[] $VALUES;
    public static final p39 ALREADY_SELECTED;
    public static final p39 CANCELLED;
    public static final p39 REREGISTER;
    public static final p39 SUCCESSFUL;

    static {
        p39 p39Var = new p39("SUCCESSFUL", 0);
        SUCCESSFUL = p39Var;
        p39 p39Var2 = new p39("REREGISTER", 1);
        REREGISTER = p39Var2;
        p39 p39Var3 = new p39("CANCELLED", 2);
        CANCELLED = p39Var3;
        p39 p39Var4 = new p39("ALREADY_SELECTED", 3);
        ALREADY_SELECTED = p39Var4;
        p39[] p39VarArr = {p39Var, p39Var2, p39Var3, p39Var4};
        $VALUES = p39VarArr;
        $ENTRIES = new i03(p39VarArr);
    }

    public p39() {
        throw null;
    }

    public static p39 valueOf(String str) {
        return (p39) Enum.valueOf(p39.class, str);
    }

    public static p39[] values() {
        return (p39[]) $VALUES.clone();
    }
}
