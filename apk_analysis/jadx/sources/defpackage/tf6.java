package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class tf6 {
    private static final /* synthetic */ tf6[] $VALUES;
    public static final tf6 Admitad;
    public static final tf6 BonusProgram;
    public static final tf6 Coupon;
    public static final tf6 Discount;
    public static final tf6 DiscountShop;
    public static final tf6 Partner;
    public static final tf6 ProductInCheque;
    public static final tf6 Redmond;
    public static final tf6 Unknown;

    static {
        tf6 tf6Var = new tf6("Admitad", 0);
        Admitad = tf6Var;
        tf6 tf6Var2 = new tf6("BonusProgram", 1);
        BonusProgram = tf6Var2;
        tf6 tf6Var3 = new tf6("Coupon", 2);
        Coupon = tf6Var3;
        tf6 tf6Var4 = new tf6("Discount", 3);
        Discount = tf6Var4;
        tf6 tf6Var5 = new tf6("DiscountShop", 4);
        DiscountShop = tf6Var5;
        tf6 tf6Var6 = new tf6("ProductInCheque", 5);
        ProductInCheque = tf6Var6;
        tf6 tf6Var7 = new tf6("Partner", 6);
        Partner = tf6Var7;
        tf6 tf6Var8 = new tf6("Redmond", 7);
        Redmond = tf6Var8;
        tf6 tf6Var9 = new tf6("Unknown", 8);
        Unknown = tf6Var9;
        $VALUES = new tf6[]{tf6Var, tf6Var2, tf6Var3, tf6Var4, tf6Var5, tf6Var6, tf6Var7, tf6Var8, tf6Var9};
    }

    public tf6() {
        throw null;
    }

    public static tf6 valueOf(String str) {
        return (tf6) Enum.valueOf(tf6.class, str);
    }

    public static tf6[] values() {
        return (tf6[]) $VALUES.clone();
    }
}
