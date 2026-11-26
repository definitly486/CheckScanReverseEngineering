package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class sq0 {
    private static final /* synthetic */ sq0[] $VALUES;
    public static final sq0 CATEGORIES;
    public static final sq0 CATEGORY_FLOW;
    public static final sq0 COUPON;
    public static final sq0 COUPON_SEARCH;
    public static final sq0 FAVORITE_PREVIEWS;
    public static final sq0 HOW_GET_CASHBACK_SLIDES;
    public static final sq0 NOT_IMPLEMENTED;
    public static final sq0 ONLINE_SHOP;
    public static final sq0 SELECTION_FLOW;
    public static final sq0 SPECIALS;
    public static final sq0 TOP_FLOW;

    static {
        sq0 sq0Var = new sq0("CATEGORY_FLOW", 0);
        CATEGORY_FLOW = sq0Var;
        sq0 sq0Var2 = new sq0("SELECTION_FLOW", 1);
        SELECTION_FLOW = sq0Var2;
        sq0 sq0Var3 = new sq0("ONLINE_SHOP", 2);
        ONLINE_SHOP = sq0Var3;
        sq0 sq0Var4 = new sq0("SPECIALS", 3);
        SPECIALS = sq0Var4;
        sq0 sq0Var5 = new sq0("CATEGORIES", 4);
        CATEGORIES = sq0Var5;
        sq0 sq0Var6 = new sq0("COUPON", 5);
        COUPON = sq0Var6;
        sq0 sq0Var7 = new sq0("TOP_FLOW", 6);
        TOP_FLOW = sq0Var7;
        sq0 sq0Var8 = new sq0("COUPON_SEARCH", 7);
        COUPON_SEARCH = sq0Var8;
        sq0 sq0Var9 = new sq0("FAVORITE_PREVIEWS", 8);
        FAVORITE_PREVIEWS = sq0Var9;
        sq0 sq0Var10 = new sq0("HOW_GET_CASHBACK_SLIDES", 9);
        HOW_GET_CASHBACK_SLIDES = sq0Var10;
        sq0 sq0Var11 = new sq0("NOT_IMPLEMENTED", 10);
        NOT_IMPLEMENTED = sq0Var11;
        $VALUES = new sq0[]{sq0Var, sq0Var2, sq0Var3, sq0Var4, sq0Var5, sq0Var6, sq0Var7, sq0Var8, sq0Var9, sq0Var10, sq0Var11};
    }

    public sq0() {
        throw null;
    }

    public static sq0 valueOf(String str) {
        return (sq0) Enum.valueOf(sq0.class, str);
    }

    public static sq0[] values() {
        return (sq0[]) $VALUES.clone();
    }
}
