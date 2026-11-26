package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class ib6 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ ib6[] $VALUES;
    public static final ib6 BATCH;
    public static final ib6 SNAPSHOT;

    static {
        ib6 ib6Var = new ib6("BATCH", 0);
        BATCH = ib6Var;
        ib6 ib6Var2 = new ib6("SNAPSHOT", 1);
        SNAPSHOT = ib6Var2;
        ib6[] ib6VarArr = {ib6Var, ib6Var2};
        $VALUES = ib6VarArr;
        $ENTRIES = new i03(ib6VarArr);
    }

    public ib6() {
        throw null;
    }

    public static ib6 valueOf(String str) {
        return (ib6) Enum.valueOf(ib6.class, str);
    }

    public static ib6[] values() {
        return (ib6[]) $VALUES.clone();
    }
}
