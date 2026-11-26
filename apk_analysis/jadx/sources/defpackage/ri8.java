package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class ri8 {
    private static final /* synthetic */ ri8[] $VALUES;
    public static final ri8 Balance;
    public static final ri8 Bonuses;
    public static final ri8 Cheques;
    public static final ri8 Discount;
    public static final ri8 Games;
    public static final ri8 Tasks;

    static {
        ri8 ri8Var = new ri8("Cheques", 0);
        Cheques = ri8Var;
        ri8 ri8Var2 = new ri8("Bonuses", 1);
        Bonuses = ri8Var2;
        ri8 ri8Var3 = new ri8("Discount", 2);
        Discount = ri8Var3;
        ri8 ri8Var4 = new ri8("Balance", 3);
        Balance = ri8Var4;
        ri8 ri8Var5 = new ri8("Tasks", 4);
        Tasks = ri8Var5;
        ri8 ri8Var6 = new ri8("Games", 5);
        Games = ri8Var6;
        $VALUES = new ri8[]{ri8Var, ri8Var2, ri8Var3, ri8Var4, ri8Var5, ri8Var6};
    }

    public ri8() {
        throw null;
    }

    public static ri8 valueOf(String str) {
        return (ri8) Enum.valueOf(ri8.class, str);
    }

    public static ri8[] values() {
        return (ri8[]) $VALUES.clone();
    }
}
