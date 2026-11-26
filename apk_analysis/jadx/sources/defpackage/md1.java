package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class md1 {
    private static final /* synthetic */ md1[] $VALUES;
    public static final md1 REWARD_ECHECKS_OLD;
    public static final md1 REWARD_INN_MAX;
    public static final md1 REWARD_IN_MONTH;
    public static final md1 REWARD_MOBILE_MIN;
    public static final md1 REWARD_NOT_INCOME;
    public static final md1 REWARD_NO_VALID;
    public static final md1 REWARD_RETURN;
    public static final md1 REWARD_TOTAL_MIN;

    static {
        md1 md1Var = new md1("REWARD_IN_MONTH", 0);
        REWARD_IN_MONTH = md1Var;
        md1 md1Var2 = new md1("REWARD_TOTAL_MIN", 1);
        REWARD_TOTAL_MIN = md1Var2;
        md1 md1Var3 = new md1("REWARD_MOBILE_MIN", 2);
        REWARD_MOBILE_MIN = md1Var3;
        md1 md1Var4 = new md1("REWARD_INN_MAX", 3);
        REWARD_INN_MAX = md1Var4;
        md1 md1Var5 = new md1("REWARD_RETURN", 4);
        REWARD_RETURN = md1Var5;
        md1 md1Var6 = new md1("REWARD_NOT_INCOME", 5);
        REWARD_NOT_INCOME = md1Var6;
        md1 md1Var7 = new md1("REWARD_NO_VALID", 6);
        REWARD_NO_VALID = md1Var7;
        md1 md1Var8 = new md1("REWARD_ECHECKS_OLD", 7);
        REWARD_ECHECKS_OLD = md1Var8;
        $VALUES = new md1[]{md1Var, md1Var2, md1Var3, md1Var4, md1Var5, md1Var6, md1Var7, md1Var8};
    }

    public md1() {
        throw null;
    }

    public static md1 valueOf(String str) {
        return (md1) Enum.valueOf(md1.class, str);
    }

    public static md1[] values() {
        return (md1[]) $VALUES.clone();
    }
}
