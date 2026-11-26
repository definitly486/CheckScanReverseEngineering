package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class cu7 {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ cu7[] $VALUES;
    public static final cu7 START;
    public static final cu7 STOP;
    public static final cu7 STOP_AND_RESET_REPLAY_CACHE;

    static {
        cu7 cu7Var = new cu7("START", 0);
        START = cu7Var;
        cu7 cu7Var2 = new cu7("STOP", 1);
        STOP = cu7Var2;
        cu7 cu7Var3 = new cu7("STOP_AND_RESET_REPLAY_CACHE", 2);
        STOP_AND_RESET_REPLAY_CACHE = cu7Var3;
        cu7[] cu7VarArr = {cu7Var, cu7Var2, cu7Var3};
        $VALUES = cu7VarArr;
        $ENTRIES = new i03(cu7VarArr);
    }

    public cu7() {
        throw null;
    }

    public static cu7 valueOf(String str) {
        return (cu7) Enum.valueOf(cu7.class, str);
    }

    public static cu7[] values() {
        return (cu7[]) $VALUES.clone();
    }
}
