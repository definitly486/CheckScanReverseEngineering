package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class si7 {
    private static final /* synthetic */ si7[] $VALUES;
    public static final si7 Bank;
    public static final si7 Shop;

    static {
        si7 si7Var = new si7("Bank", 0);
        Bank = si7Var;
        si7 si7Var2 = new si7("Shop", 1);
        Shop = si7Var2;
        $VALUES = new si7[]{si7Var, si7Var2};
    }

    public si7() {
        throw null;
    }

    public static si7 valueOf(String str) {
        return (si7) Enum.valueOf(si7.class, str);
    }

    public static si7[] values() {
        return (si7[]) $VALUES.clone();
    }
}
