package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class cu0 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ cu0[] $VALUES;
    public static final cu0 DROP_LATEST;
    public static final cu0 DROP_OLDEST;
    public static final cu0 SUSPEND;

    static {
        cu0 cu0Var = new cu0("SUSPEND", 0);
        SUSPEND = cu0Var;
        cu0 cu0Var2 = new cu0("DROP_OLDEST", 1);
        DROP_OLDEST = cu0Var2;
        cu0 cu0Var3 = new cu0("DROP_LATEST", 2);
        DROP_LATEST = cu0Var3;
        cu0[] cu0VarArr = {cu0Var, cu0Var2, cu0Var3};
        $VALUES = cu0VarArr;
        $ENTRIES = new i03(cu0VarArr);
    }

    public cu0() {
        throw null;
    }

    public static cu0 valueOf(String str) {
        return (cu0) Enum.valueOf(cu0.class, str);
    }

    public static cu0[] values() {
        return (cu0[]) $VALUES.clone();
    }
}
